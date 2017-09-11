<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8.18.0`](#sentry8180)
-	[`sentry:8.18`](#sentry818)
-	[`sentry:8.18.0-onbuild`](#sentry8180-onbuild)
-	[`sentry:8.18-onbuild`](#sentry818-onbuild)
-	[`sentry:8.19.0`](#sentry8190)
-	[`sentry:8.19`](#sentry819)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.19.0-onbuild`](#sentry8190-onbuild)
-	[`sentry:8.19-onbuild`](#sentry819-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8.18.0`

```console
$ docker pull sentry@sha256:327bfc0b6fd963bf3801ec34288a8253835a1145e29491bc021c54b781b01843
```

-	Platforms:
	-	linux; amd64

### `sentry:8.18.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192794862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d4d048dc553adbf5559f8301e62f16b777d9d03f5a8f3fa3a1ef9f902d62b6`
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
# Fri, 08 Sep 2017 10:57:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 08 Sep 2017 10:58:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:58:14 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 08 Sep 2017 10:58:15 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 08 Sep 2017 10:58:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 10:58:36 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:58:36 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 08 Sep 2017 10:58:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:59:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 08 Sep 2017 10:59:22 GMT
ENV SENTRY_VERSION=8.18.0
# Fri, 08 Sep 2017 11:00:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 08 Sep 2017 11:00:58 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 08 Sep 2017 11:00:59 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 08 Sep 2017 11:00:59 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 08 Sep 2017 11:01:01 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:01:01 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 08 Sep 2017 11:01:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 11:01:01 GMT
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
	-	`sha256:7beb564d530d90234e9436f85edfd51c62ef948c11b8aa392e8dadaa1890ceae`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e083496818830fbfdeaa9a4ace2911595b8e8cd885b8875bc636e1edbe282`  
		Last Modified: Mon, 11 Sep 2017 15:33:38 GMT  
		Size: 63.9 MB (63853304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1544028a2d2981107e51e563fda16856f49e6a710c5cbb3b3a8df11c92e2f66f`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 620.3 KB (620270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb06932161b5362a710b17bd4a796b650cc2baf613d5c4f214d987536e8778`  
		Last Modified: Mon, 11 Sep 2017 15:33:15 GMT  
		Size: 127.6 KB (127611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a3e16a4cfd89edc7d911a0f66729d5e7c74dccda86a522cbb837a112ba054`  
		Last Modified: Mon, 11 Sep 2017 15:33:14 GMT  
		Size: 2.4 MB (2365552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96324a68c371e0e3bca366ec98a9684164bfbe983ab3d29dac09d49679ba185`  
		Last Modified: Mon, 11 Sep 2017 15:33:47 GMT  
		Size: 53.0 MB (53010921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37040e30e3dfd0a12644c3a5a79ef12fbbfd004362727aa1c2c0557e970d6e42`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bf6161a2e4fdf4f4e9839901061b6526b5d1a635ff056cc5b01a7d37bfa7de`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3787b81901a8b573ad3d78032a95e01c2845c9f12df523d5e20fb58a0a8c177`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fc69b16eab0021f4a1a3c52134b26ee475d067ecc77510b0241dcefab8085b`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.18`

```console
$ docker pull sentry@sha256:327bfc0b6fd963bf3801ec34288a8253835a1145e29491bc021c54b781b01843
```

-	Platforms:
	-	linux; amd64

### `sentry:8.18` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192794862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d4d048dc553adbf5559f8301e62f16b777d9d03f5a8f3fa3a1ef9f902d62b6`
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
# Fri, 08 Sep 2017 10:57:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 08 Sep 2017 10:58:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:58:14 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 08 Sep 2017 10:58:15 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 08 Sep 2017 10:58:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 10:58:36 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:58:36 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 08 Sep 2017 10:58:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:59:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 08 Sep 2017 10:59:22 GMT
ENV SENTRY_VERSION=8.18.0
# Fri, 08 Sep 2017 11:00:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 08 Sep 2017 11:00:58 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 08 Sep 2017 11:00:59 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 08 Sep 2017 11:00:59 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 08 Sep 2017 11:01:01 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:01:01 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 08 Sep 2017 11:01:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 11:01:01 GMT
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
	-	`sha256:7beb564d530d90234e9436f85edfd51c62ef948c11b8aa392e8dadaa1890ceae`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e083496818830fbfdeaa9a4ace2911595b8e8cd885b8875bc636e1edbe282`  
		Last Modified: Mon, 11 Sep 2017 15:33:38 GMT  
		Size: 63.9 MB (63853304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1544028a2d2981107e51e563fda16856f49e6a710c5cbb3b3a8df11c92e2f66f`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 620.3 KB (620270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb06932161b5362a710b17bd4a796b650cc2baf613d5c4f214d987536e8778`  
		Last Modified: Mon, 11 Sep 2017 15:33:15 GMT  
		Size: 127.6 KB (127611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a3e16a4cfd89edc7d911a0f66729d5e7c74dccda86a522cbb837a112ba054`  
		Last Modified: Mon, 11 Sep 2017 15:33:14 GMT  
		Size: 2.4 MB (2365552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96324a68c371e0e3bca366ec98a9684164bfbe983ab3d29dac09d49679ba185`  
		Last Modified: Mon, 11 Sep 2017 15:33:47 GMT  
		Size: 53.0 MB (53010921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37040e30e3dfd0a12644c3a5a79ef12fbbfd004362727aa1c2c0557e970d6e42`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bf6161a2e4fdf4f4e9839901061b6526b5d1a635ff056cc5b01a7d37bfa7de`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3787b81901a8b573ad3d78032a95e01c2845c9f12df523d5e20fb58a0a8c177`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fc69b16eab0021f4a1a3c52134b26ee475d067ecc77510b0241dcefab8085b`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.18.0-onbuild`

```console
$ docker pull sentry@sha256:b9c4868969184e6585a036f41fafebe3a417d0232faab5cc1b06389817e94fca
```

-	Platforms:
	-	linux; amd64

### `sentry:8.18.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192794993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacb7256abbd353327696a3cc21f36a581e47c0b70ccf6e2fc438ce9c14d84dc`
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
# Fri, 08 Sep 2017 10:57:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 08 Sep 2017 10:58:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:58:14 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 08 Sep 2017 10:58:15 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 08 Sep 2017 10:58:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 10:58:36 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:58:36 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 08 Sep 2017 10:58:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:59:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 08 Sep 2017 10:59:22 GMT
ENV SENTRY_VERSION=8.18.0
# Fri, 08 Sep 2017 11:00:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 08 Sep 2017 11:00:58 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 08 Sep 2017 11:00:59 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 08 Sep 2017 11:00:59 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 08 Sep 2017 11:01:01 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:01:01 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 08 Sep 2017 11:01:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 11:01:01 GMT
CMD ["run" "web"]
# Fri, 08 Sep 2017 11:01:08 GMT
WORKDIR /usr/src/sentry
# Fri, 08 Sep 2017 11:01:08 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 08 Sep 2017 11:01:08 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 08 Sep 2017 11:01:09 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 08 Sep 2017 11:01:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 08 Sep 2017 11:01:09 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:7beb564d530d90234e9436f85edfd51c62ef948c11b8aa392e8dadaa1890ceae`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e083496818830fbfdeaa9a4ace2911595b8e8cd885b8875bc636e1edbe282`  
		Last Modified: Mon, 11 Sep 2017 15:33:38 GMT  
		Size: 63.9 MB (63853304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1544028a2d2981107e51e563fda16856f49e6a710c5cbb3b3a8df11c92e2f66f`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 620.3 KB (620270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb06932161b5362a710b17bd4a796b650cc2baf613d5c4f214d987536e8778`  
		Last Modified: Mon, 11 Sep 2017 15:33:15 GMT  
		Size: 127.6 KB (127611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a3e16a4cfd89edc7d911a0f66729d5e7c74dccda86a522cbb837a112ba054`  
		Last Modified: Mon, 11 Sep 2017 15:33:14 GMT  
		Size: 2.4 MB (2365552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96324a68c371e0e3bca366ec98a9684164bfbe983ab3d29dac09d49679ba185`  
		Last Modified: Mon, 11 Sep 2017 15:33:47 GMT  
		Size: 53.0 MB (53010921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37040e30e3dfd0a12644c3a5a79ef12fbbfd004362727aa1c2c0557e970d6e42`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bf6161a2e4fdf4f4e9839901061b6526b5d1a635ff056cc5b01a7d37bfa7de`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3787b81901a8b573ad3d78032a95e01c2845c9f12df523d5e20fb58a0a8c177`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fc69b16eab0021f4a1a3c52134b26ee475d067ecc77510b0241dcefab8085b`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccd9cb743b2fa4da06f1bd5db4a79f9d56f06e51a0993cc0812dabbdef7f710`  
		Last Modified: Mon, 11 Sep 2017 15:35:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.18-onbuild`

```console
$ docker pull sentry@sha256:b9c4868969184e6585a036f41fafebe3a417d0232faab5cc1b06389817e94fca
```

-	Platforms:
	-	linux; amd64

### `sentry:8.18-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192794993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacb7256abbd353327696a3cc21f36a581e47c0b70ccf6e2fc438ce9c14d84dc`
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
# Fri, 08 Sep 2017 10:57:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 08 Sep 2017 10:58:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:58:14 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 08 Sep 2017 10:58:15 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 08 Sep 2017 10:58:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 10:58:36 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:58:36 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 08 Sep 2017 10:58:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:59:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 08 Sep 2017 10:59:22 GMT
ENV SENTRY_VERSION=8.18.0
# Fri, 08 Sep 2017 11:00:58 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 08 Sep 2017 11:00:58 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 08 Sep 2017 11:00:59 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 08 Sep 2017 11:00:59 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 08 Sep 2017 11:01:00 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 08 Sep 2017 11:01:01 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:01:01 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 08 Sep 2017 11:01:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 11:01:01 GMT
CMD ["run" "web"]
# Fri, 08 Sep 2017 11:01:08 GMT
WORKDIR /usr/src/sentry
# Fri, 08 Sep 2017 11:01:08 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 08 Sep 2017 11:01:08 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 08 Sep 2017 11:01:09 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 08 Sep 2017 11:01:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 08 Sep 2017 11:01:09 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:7beb564d530d90234e9436f85edfd51c62ef948c11b8aa392e8dadaa1890ceae`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e083496818830fbfdeaa9a4ace2911595b8e8cd885b8875bc636e1edbe282`  
		Last Modified: Mon, 11 Sep 2017 15:33:38 GMT  
		Size: 63.9 MB (63853304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1544028a2d2981107e51e563fda16856f49e6a710c5cbb3b3a8df11c92e2f66f`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 620.3 KB (620270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb06932161b5362a710b17bd4a796b650cc2baf613d5c4f214d987536e8778`  
		Last Modified: Mon, 11 Sep 2017 15:33:15 GMT  
		Size: 127.6 KB (127611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a3e16a4cfd89edc7d911a0f66729d5e7c74dccda86a522cbb837a112ba054`  
		Last Modified: Mon, 11 Sep 2017 15:33:14 GMT  
		Size: 2.4 MB (2365552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b96324a68c371e0e3bca366ec98a9684164bfbe983ab3d29dac09d49679ba185`  
		Last Modified: Mon, 11 Sep 2017 15:33:47 GMT  
		Size: 53.0 MB (53010921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37040e30e3dfd0a12644c3a5a79ef12fbbfd004362727aa1c2c0557e970d6e42`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bf6161a2e4fdf4f4e9839901061b6526b5d1a635ff056cc5b01a7d37bfa7de`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3787b81901a8b573ad3d78032a95e01c2845c9f12df523d5e20fb58a0a8c177`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fc69b16eab0021f4a1a3c52134b26ee475d067ecc77510b0241dcefab8085b`  
		Last Modified: Mon, 11 Sep 2017 15:33:13 GMT  
		Size: 428.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccd9cb743b2fa4da06f1bd5db4a79f9d56f06e51a0993cc0812dabbdef7f710`  
		Last Modified: Mon, 11 Sep 2017 15:35:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19.0`

```console
$ docker pull sentry@sha256:8b612924b3f7458daade8dfe4bf47a4946cab4e2921693e6bedafd35a6c28b0e
```

-	Platforms:
	-	linux; amd64

### `sentry:8.19.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193407905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40ff08700cd0033e7631bca46996cecc240eee10c5e335bfad9b1575639ba6e`
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
# Fri, 08 Sep 2017 10:57:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 08 Sep 2017 10:58:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:58:14 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 08 Sep 2017 10:58:15 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 08 Sep 2017 10:58:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 10:58:36 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:58:36 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 08 Sep 2017 10:58:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:59:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 08 Sep 2017 11:01:15 GMT
ENV SENTRY_VERSION=8.19.0
# Fri, 08 Sep 2017 11:02:48 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 08 Sep 2017 11:02:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 08 Sep 2017 11:02:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 08 Sep 2017 11:02:51 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:02:51 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 08 Sep 2017 11:02:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 11:02:52 GMT
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
	-	`sha256:7beb564d530d90234e9436f85edfd51c62ef948c11b8aa392e8dadaa1890ceae`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e083496818830fbfdeaa9a4ace2911595b8e8cd885b8875bc636e1edbe282`  
		Last Modified: Mon, 11 Sep 2017 15:33:38 GMT  
		Size: 63.9 MB (63853304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1544028a2d2981107e51e563fda16856f49e6a710c5cbb3b3a8df11c92e2f66f`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 620.3 KB (620270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb06932161b5362a710b17bd4a796b650cc2baf613d5c4f214d987536e8778`  
		Last Modified: Mon, 11 Sep 2017 15:33:15 GMT  
		Size: 127.6 KB (127611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a3e16a4cfd89edc7d911a0f66729d5e7c74dccda86a522cbb837a112ba054`  
		Last Modified: Mon, 11 Sep 2017 15:33:14 GMT  
		Size: 2.4 MB (2365552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14ffd46b55ca95c8668ba961537b79d7d950ede8a0bd2c7279f2a7bb3179878`  
		Last Modified: Mon, 11 Sep 2017 15:36:26 GMT  
		Size: 53.6 MB (53623968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d2d8158904c7d9b6aef1408ff5d31a156386da51931b8fe627c66b6c4bf5f`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0392b48d3e9e3c9b8a5fd218f1dcd0ad044a7494abe115247c5dded7e5343652`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1179c9fdf863d08a2539f08622fa3b5d27c7b2e9d623b562538b7b326418ab9`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e5144476ec27b3a63e62f77e99d693b2a6f9acde65e5bfeef45a3290b75e3a`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19`

```console
$ docker pull sentry@sha256:8b612924b3f7458daade8dfe4bf47a4946cab4e2921693e6bedafd35a6c28b0e
```

-	Platforms:
	-	linux; amd64

### `sentry:8.19` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193407905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40ff08700cd0033e7631bca46996cecc240eee10c5e335bfad9b1575639ba6e`
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
# Fri, 08 Sep 2017 10:57:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 08 Sep 2017 10:58:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:58:14 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 08 Sep 2017 10:58:15 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 08 Sep 2017 10:58:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 10:58:36 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:58:36 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 08 Sep 2017 10:58:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:59:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 08 Sep 2017 11:01:15 GMT
ENV SENTRY_VERSION=8.19.0
# Fri, 08 Sep 2017 11:02:48 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 08 Sep 2017 11:02:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 08 Sep 2017 11:02:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 08 Sep 2017 11:02:51 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:02:51 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 08 Sep 2017 11:02:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 11:02:52 GMT
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
	-	`sha256:7beb564d530d90234e9436f85edfd51c62ef948c11b8aa392e8dadaa1890ceae`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e083496818830fbfdeaa9a4ace2911595b8e8cd885b8875bc636e1edbe282`  
		Last Modified: Mon, 11 Sep 2017 15:33:38 GMT  
		Size: 63.9 MB (63853304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1544028a2d2981107e51e563fda16856f49e6a710c5cbb3b3a8df11c92e2f66f`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 620.3 KB (620270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb06932161b5362a710b17bd4a796b650cc2baf613d5c4f214d987536e8778`  
		Last Modified: Mon, 11 Sep 2017 15:33:15 GMT  
		Size: 127.6 KB (127611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a3e16a4cfd89edc7d911a0f66729d5e7c74dccda86a522cbb837a112ba054`  
		Last Modified: Mon, 11 Sep 2017 15:33:14 GMT  
		Size: 2.4 MB (2365552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14ffd46b55ca95c8668ba961537b79d7d950ede8a0bd2c7279f2a7bb3179878`  
		Last Modified: Mon, 11 Sep 2017 15:36:26 GMT  
		Size: 53.6 MB (53623968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d2d8158904c7d9b6aef1408ff5d31a156386da51931b8fe627c66b6c4bf5f`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0392b48d3e9e3c9b8a5fd218f1dcd0ad044a7494abe115247c5dded7e5343652`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1179c9fdf863d08a2539f08622fa3b5d27c7b2e9d623b562538b7b326418ab9`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e5144476ec27b3a63e62f77e99d693b2a6f9acde65e5bfeef45a3290b75e3a`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:8b612924b3f7458daade8dfe4bf47a4946cab4e2921693e6bedafd35a6c28b0e
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193407905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40ff08700cd0033e7631bca46996cecc240eee10c5e335bfad9b1575639ba6e`
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
# Fri, 08 Sep 2017 10:57:44 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 08 Sep 2017 10:58:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 10:58:14 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 08 Sep 2017 10:58:15 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 08 Sep 2017 10:58:15 GMT
ENV GOSU_VERSION=1.10
# Fri, 08 Sep 2017 10:58:36 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:58:36 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 08 Sep 2017 10:58:55 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 08 Sep 2017 10:59:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 08 Sep 2017 11:01:15 GMT
ENV SENTRY_VERSION=8.19.0
# Fri, 08 Sep 2017 11:02:48 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 08 Sep 2017 11:02:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 08 Sep 2017 11:02:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 08 Sep 2017 11:02:50 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 08 Sep 2017 11:02:51 GMT
EXPOSE 9000/tcp
# Fri, 08 Sep 2017 11:02:51 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 08 Sep 2017 11:02:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Sep 2017 11:02:52 GMT
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
	-	`sha256:7beb564d530d90234e9436f85edfd51c62ef948c11b8aa392e8dadaa1890ceae`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101e083496818830fbfdeaa9a4ace2911595b8e8cd885b8875bc636e1edbe282`  
		Last Modified: Mon, 11 Sep 2017 15:33:38 GMT  
		Size: 63.9 MB (63853304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1544028a2d2981107e51e563fda16856f49e6a710c5cbb3b3a8df11c92e2f66f`  
		Last Modified: Mon, 11 Sep 2017 15:33:16 GMT  
		Size: 620.3 KB (620270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcb06932161b5362a710b17bd4a796b650cc2baf613d5c4f214d987536e8778`  
		Last Modified: Mon, 11 Sep 2017 15:33:15 GMT  
		Size: 127.6 KB (127611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01a3e16a4cfd89edc7d911a0f66729d5e7c74dccda86a522cbb837a112ba054`  
		Last Modified: Mon, 11 Sep 2017 15:33:14 GMT  
		Size: 2.4 MB (2365552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14ffd46b55ca95c8668ba961537b79d7d950ede8a0bd2c7279f2a7bb3179878`  
		Last Modified: Mon, 11 Sep 2017 15:36:26 GMT  
		Size: 53.6 MB (53623968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803d2d8158904c7d9b6aef1408ff5d31a156386da51931b8fe627c66b6c4bf5f`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0392b48d3e9e3c9b8a5fd218f1dcd0ad044a7494abe115247c5dded7e5343652`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1179c9fdf863d08a2539f08622fa3b5d27c7b2e9d623b562538b7b326418ab9`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e5144476ec27b3a63e62f77e99d693b2a6f9acde65e5bfeef45a3290b75e3a`  
		Last Modified: Mon, 11 Sep 2017 15:36:00 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:a0553fb8f4fd9267203888d0314f1ee5e21cb41486f8ed9ba00ea8ee53504888
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193395286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b172560ad4a66f7c56c14ad2e1c7292e9f5d2fa99cd00738f5260f66291f5d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:48:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:48:32 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 20:14:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 20:14:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 24 Jul 2017 20:14:43 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 24 Jul 2017 20:16:48 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 24 Jul 2017 20:16:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 24 Jul 2017 20:17:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 24 Jul 2017 20:17:12 GMT
CMD ["python2"]
# Wed, 26 Jul 2017 15:39:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Jul 2017 15:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Jul 2017 15:40:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 15:40:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:40:28 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Jul 2017 15:40:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:41:18 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Mon, 07 Aug 2017 17:15:09 GMT
ENV SENTRY_VERSION=8.19.0
# Mon, 07 Aug 2017 17:17:02 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Mon, 07 Aug 2017 17:19:19 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 07 Aug 2017 17:19:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Mon, 07 Aug 2017 17:19:21 GMT
EXPOSE 9000/tcp
# Mon, 07 Aug 2017 17:19:21 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 07 Aug 2017 17:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Aug 2017 17:19:22 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8812637047e3fa019ecd8fdda6a9bae9ee72e129d6e80d3fe67fe58cc409ac1e`  
		Last Modified: Mon, 24 Jul 2017 20:26:38 GMT  
		Size: 3.5 MB (3472800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be169522399fe24a7bf1d4fb2517290695918f3e556e20968c38430e2a950c87`  
		Last Modified: Mon, 24 Jul 2017 20:26:40 GMT  
		Size: 15.0 MB (15000657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286703095347c8158e9b7831155832e0345033fe95c4ccf133aae1b20bbeefa7`  
		Last Modified: Mon, 24 Jul 2017 20:26:37 GMT  
		Size: 1.7 MB (1737605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d68bbb81c6b4abda8a07d719ccf71f3c99ae7349fb5aee9489657ff814e351`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897ccdf87fae0ce78c60d038f76811e22c2187e1e88dce9a117e6e812006be8`  
		Last Modified: Wed, 26 Jul 2017 15:45:27 GMT  
		Size: 63.9 MB (63851395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fc90c465e886218eee7af75235be0f3f43eefafdc89ba493905ea0485e426a`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 620.3 KB (620261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189bcd4da8f7daedbf2ed20e63ed921d5efec48e4453425d0b3d4ffa4200c484`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 127.6 KB (127629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0ba27b91adc305859505c57c354c256c922b553713cd42cc65c44b81c5e0b7`  
		Last Modified: Wed, 26 Jul 2017 15:45:14 GMT  
		Size: 2.4 MB (2364552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3c5ecf86f22cb2da599f375056b9001d45182799e22f582e30289fc9391c1`  
		Last Modified: Mon, 07 Aug 2017 17:20:17 GMT  
		Size: 53.6 MB (53605320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b15d37e88604e95913eafeb85ccdef023ee0180723c9fbb76de6baee366169`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b815fa6c0180f0291706026c3e7dcbd490291adfc0fdabaea6da9216a5cd1ab`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38bb462ce6f368a43cf2d9532fcebb5ffbf08bbef5e7e8b6e2f265f394c9a4`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2f535b810f1780b254b563bff0b461b74f7866e10d21150077f02c332327e`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19.0-onbuild`

```console
$ docker pull sentry@sha256:b2ebac22ca127000f45582c96f3198186cca5b1c50adfa39579e646f82033813
```

-	Platforms:
	-	linux; amd64

### `sentry:8.19.0-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193395415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b9558c9b913b0cfd1165b741a28128fad3b26f45f3ad1037c07ae934af19cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:48:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:48:32 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 20:14:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 20:14:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 24 Jul 2017 20:14:43 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 24 Jul 2017 20:16:48 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 24 Jul 2017 20:16:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 24 Jul 2017 20:17:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 24 Jul 2017 20:17:12 GMT
CMD ["python2"]
# Wed, 26 Jul 2017 15:39:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Jul 2017 15:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Jul 2017 15:40:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 15:40:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:40:28 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Jul 2017 15:40:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:41:18 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Mon, 07 Aug 2017 17:15:09 GMT
ENV SENTRY_VERSION=8.19.0
# Mon, 07 Aug 2017 17:17:02 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Mon, 07 Aug 2017 17:19:19 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 07 Aug 2017 17:19:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Mon, 07 Aug 2017 17:19:21 GMT
EXPOSE 9000/tcp
# Mon, 07 Aug 2017 17:19:21 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 07 Aug 2017 17:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Aug 2017 17:19:22 GMT
CMD ["run" "web"]
# Mon, 07 Aug 2017 17:19:29 GMT
WORKDIR /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8812637047e3fa019ecd8fdda6a9bae9ee72e129d6e80d3fe67fe58cc409ac1e`  
		Last Modified: Mon, 24 Jul 2017 20:26:38 GMT  
		Size: 3.5 MB (3472800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be169522399fe24a7bf1d4fb2517290695918f3e556e20968c38430e2a950c87`  
		Last Modified: Mon, 24 Jul 2017 20:26:40 GMT  
		Size: 15.0 MB (15000657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286703095347c8158e9b7831155832e0345033fe95c4ccf133aae1b20bbeefa7`  
		Last Modified: Mon, 24 Jul 2017 20:26:37 GMT  
		Size: 1.7 MB (1737605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d68bbb81c6b4abda8a07d719ccf71f3c99ae7349fb5aee9489657ff814e351`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897ccdf87fae0ce78c60d038f76811e22c2187e1e88dce9a117e6e812006be8`  
		Last Modified: Wed, 26 Jul 2017 15:45:27 GMT  
		Size: 63.9 MB (63851395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fc90c465e886218eee7af75235be0f3f43eefafdc89ba493905ea0485e426a`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 620.3 KB (620261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189bcd4da8f7daedbf2ed20e63ed921d5efec48e4453425d0b3d4ffa4200c484`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 127.6 KB (127629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0ba27b91adc305859505c57c354c256c922b553713cd42cc65c44b81c5e0b7`  
		Last Modified: Wed, 26 Jul 2017 15:45:14 GMT  
		Size: 2.4 MB (2364552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3c5ecf86f22cb2da599f375056b9001d45182799e22f582e30289fc9391c1`  
		Last Modified: Mon, 07 Aug 2017 17:20:17 GMT  
		Size: 53.6 MB (53605320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b15d37e88604e95913eafeb85ccdef023ee0180723c9fbb76de6baee366169`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b815fa6c0180f0291706026c3e7dcbd490291adfc0fdabaea6da9216a5cd1ab`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38bb462ce6f368a43cf2d9532fcebb5ffbf08bbef5e7e8b6e2f265f394c9a4`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2f535b810f1780b254b563bff0b461b74f7866e10d21150077f02c332327e`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622befae4cff666ae9dca53c9340904da958c44cb8b4ecbcee590425fa40005d`  
		Last Modified: Mon, 07 Aug 2017 17:20:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19-onbuild`

```console
$ docker pull sentry@sha256:b2ebac22ca127000f45582c96f3198186cca5b1c50adfa39579e646f82033813
```

-	Platforms:
	-	linux; amd64

### `sentry:8.19-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193395415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b9558c9b913b0cfd1165b741a28128fad3b26f45f3ad1037c07ae934af19cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:48:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:48:32 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 20:14:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 20:14:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 24 Jul 2017 20:14:43 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 24 Jul 2017 20:16:48 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 24 Jul 2017 20:16:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 24 Jul 2017 20:17:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 24 Jul 2017 20:17:12 GMT
CMD ["python2"]
# Wed, 26 Jul 2017 15:39:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Jul 2017 15:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Jul 2017 15:40:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 15:40:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:40:28 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Jul 2017 15:40:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:41:18 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Mon, 07 Aug 2017 17:15:09 GMT
ENV SENTRY_VERSION=8.19.0
# Mon, 07 Aug 2017 17:17:02 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Mon, 07 Aug 2017 17:19:19 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 07 Aug 2017 17:19:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Mon, 07 Aug 2017 17:19:21 GMT
EXPOSE 9000/tcp
# Mon, 07 Aug 2017 17:19:21 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 07 Aug 2017 17:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Aug 2017 17:19:22 GMT
CMD ["run" "web"]
# Mon, 07 Aug 2017 17:19:29 GMT
WORKDIR /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8812637047e3fa019ecd8fdda6a9bae9ee72e129d6e80d3fe67fe58cc409ac1e`  
		Last Modified: Mon, 24 Jul 2017 20:26:38 GMT  
		Size: 3.5 MB (3472800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be169522399fe24a7bf1d4fb2517290695918f3e556e20968c38430e2a950c87`  
		Last Modified: Mon, 24 Jul 2017 20:26:40 GMT  
		Size: 15.0 MB (15000657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286703095347c8158e9b7831155832e0345033fe95c4ccf133aae1b20bbeefa7`  
		Last Modified: Mon, 24 Jul 2017 20:26:37 GMT  
		Size: 1.7 MB (1737605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d68bbb81c6b4abda8a07d719ccf71f3c99ae7349fb5aee9489657ff814e351`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897ccdf87fae0ce78c60d038f76811e22c2187e1e88dce9a117e6e812006be8`  
		Last Modified: Wed, 26 Jul 2017 15:45:27 GMT  
		Size: 63.9 MB (63851395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fc90c465e886218eee7af75235be0f3f43eefafdc89ba493905ea0485e426a`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 620.3 KB (620261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189bcd4da8f7daedbf2ed20e63ed921d5efec48e4453425d0b3d4ffa4200c484`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 127.6 KB (127629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0ba27b91adc305859505c57c354c256c922b553713cd42cc65c44b81c5e0b7`  
		Last Modified: Wed, 26 Jul 2017 15:45:14 GMT  
		Size: 2.4 MB (2364552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3c5ecf86f22cb2da599f375056b9001d45182799e22f582e30289fc9391c1`  
		Last Modified: Mon, 07 Aug 2017 17:20:17 GMT  
		Size: 53.6 MB (53605320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b15d37e88604e95913eafeb85ccdef023ee0180723c9fbb76de6baee366169`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b815fa6c0180f0291706026c3e7dcbd490291adfc0fdabaea6da9216a5cd1ab`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38bb462ce6f368a43cf2d9532fcebb5ffbf08bbef5e7e8b6e2f265f394c9a4`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2f535b810f1780b254b563bff0b461b74f7866e10d21150077f02c332327e`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622befae4cff666ae9dca53c9340904da958c44cb8b4ecbcee590425fa40005d`  
		Last Modified: Mon, 07 Aug 2017 17:20:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:b2ebac22ca127000f45582c96f3198186cca5b1c50adfa39579e646f82033813
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193395415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b9558c9b913b0cfd1165b741a28128fad3b26f45f3ad1037c07ae934af19cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:48:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:48:32 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 20:14:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 20:14:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 24 Jul 2017 20:14:43 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 24 Jul 2017 20:16:48 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 24 Jul 2017 20:16:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 24 Jul 2017 20:17:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 24 Jul 2017 20:17:12 GMT
CMD ["python2"]
# Wed, 26 Jul 2017 15:39:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Jul 2017 15:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Jul 2017 15:40:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 15:40:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:40:28 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Jul 2017 15:40:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:41:18 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Mon, 07 Aug 2017 17:15:09 GMT
ENV SENTRY_VERSION=8.19.0
# Mon, 07 Aug 2017 17:17:02 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Mon, 07 Aug 2017 17:19:19 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 07 Aug 2017 17:19:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Mon, 07 Aug 2017 17:19:21 GMT
EXPOSE 9000/tcp
# Mon, 07 Aug 2017 17:19:21 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 07 Aug 2017 17:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Aug 2017 17:19:22 GMT
CMD ["run" "web"]
# Mon, 07 Aug 2017 17:19:29 GMT
WORKDIR /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8812637047e3fa019ecd8fdda6a9bae9ee72e129d6e80d3fe67fe58cc409ac1e`  
		Last Modified: Mon, 24 Jul 2017 20:26:38 GMT  
		Size: 3.5 MB (3472800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be169522399fe24a7bf1d4fb2517290695918f3e556e20968c38430e2a950c87`  
		Last Modified: Mon, 24 Jul 2017 20:26:40 GMT  
		Size: 15.0 MB (15000657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286703095347c8158e9b7831155832e0345033fe95c4ccf133aae1b20bbeefa7`  
		Last Modified: Mon, 24 Jul 2017 20:26:37 GMT  
		Size: 1.7 MB (1737605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d68bbb81c6b4abda8a07d719ccf71f3c99ae7349fb5aee9489657ff814e351`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897ccdf87fae0ce78c60d038f76811e22c2187e1e88dce9a117e6e812006be8`  
		Last Modified: Wed, 26 Jul 2017 15:45:27 GMT  
		Size: 63.9 MB (63851395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fc90c465e886218eee7af75235be0f3f43eefafdc89ba493905ea0485e426a`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 620.3 KB (620261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189bcd4da8f7daedbf2ed20e63ed921d5efec48e4453425d0b3d4ffa4200c484`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 127.6 KB (127629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0ba27b91adc305859505c57c354c256c922b553713cd42cc65c44b81c5e0b7`  
		Last Modified: Wed, 26 Jul 2017 15:45:14 GMT  
		Size: 2.4 MB (2364552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3c5ecf86f22cb2da599f375056b9001d45182799e22f582e30289fc9391c1`  
		Last Modified: Mon, 07 Aug 2017 17:20:17 GMT  
		Size: 53.6 MB (53605320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b15d37e88604e95913eafeb85ccdef023ee0180723c9fbb76de6baee366169`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b815fa6c0180f0291706026c3e7dcbd490291adfc0fdabaea6da9216a5cd1ab`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38bb462ce6f368a43cf2d9532fcebb5ffbf08bbef5e7e8b6e2f265f394c9a4`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2f535b810f1780b254b563bff0b461b74f7866e10d21150077f02c332327e`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622befae4cff666ae9dca53c9340904da958c44cb8b4ecbcee590425fa40005d`  
		Last Modified: Mon, 07 Aug 2017 17:20:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:b2ebac22ca127000f45582c96f3198186cca5b1c50adfa39579e646f82033813
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193395415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b9558c9b913b0cfd1165b741a28128fad3b26f45f3ad1037c07ae934af19cf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 24 Jul 2017 16:51:25 GMT
ADD file:a023a99f7d01868b164d63bfaf8aabc7f271659c69939c3854f041f5a3217428 in / 
# Mon, 24 Jul 2017 16:51:25 GMT
CMD ["bash"]
# Mon, 24 Jul 2017 19:48:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Jul 2017 19:48:32 GMT
ENV LANG=C.UTF-8
# Mon, 24 Jul 2017 20:14:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Jul 2017 20:14:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 24 Jul 2017 20:14:43 GMT
ENV PYTHON_VERSION=2.7.13
# Mon, 24 Jul 2017 20:16:48 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 24 Jul 2017 20:16:48 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 24 Jul 2017 20:17:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 24 Jul 2017 20:17:12 GMT
CMD ["python2"]
# Wed, 26 Jul 2017 15:39:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Jul 2017 15:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Jul 2017 15:40:04 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Jul 2017 15:40:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Jul 2017 15:40:27 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:40:28 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Jul 2017 15:40:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Jul 2017 15:41:18 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Mon, 07 Aug 2017 17:15:09 GMT
ENV SENTRY_VERSION=8.19.0
# Mon, 07 Aug 2017 17:17:02 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Mon, 07 Aug 2017 17:19:19 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 07 Aug 2017 17:19:20 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:20 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Mon, 07 Aug 2017 17:19:21 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Mon, 07 Aug 2017 17:19:21 GMT
EXPOSE 9000/tcp
# Mon, 07 Aug 2017 17:19:21 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 07 Aug 2017 17:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 07 Aug 2017 17:19:22 GMT
CMD ["run" "web"]
# Mon, 07 Aug 2017 17:19:29 GMT
WORKDIR /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 07 Aug 2017 17:19:29 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 07 Aug 2017 17:19:30 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:ad74af05f5a24bcf9459ae1cf7718628c2aeb6b587eb51b6eeaf639aca3e566f`  
		Last Modified: Mon, 24 Jul 2017 16:55:21 GMT  
		Size: 52.6 MB (52605632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8812637047e3fa019ecd8fdda6a9bae9ee72e129d6e80d3fe67fe58cc409ac1e`  
		Last Modified: Mon, 24 Jul 2017 20:26:38 GMT  
		Size: 3.5 MB (3472800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be169522399fe24a7bf1d4fb2517290695918f3e556e20968c38430e2a950c87`  
		Last Modified: Mon, 24 Jul 2017 20:26:40 GMT  
		Size: 15.0 MB (15000657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286703095347c8158e9b7831155832e0345033fe95c4ccf133aae1b20bbeefa7`  
		Last Modified: Mon, 24 Jul 2017 20:26:37 GMT  
		Size: 1.7 MB (1737605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d68bbb81c6b4abda8a07d719ccf71f3c99ae7349fb5aee9489657ff814e351`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 4.4 KB (4374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897ccdf87fae0ce78c60d038f76811e22c2187e1e88dce9a117e6e812006be8`  
		Last Modified: Wed, 26 Jul 2017 15:45:27 GMT  
		Size: 63.9 MB (63851395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00fc90c465e886218eee7af75235be0f3f43eefafdc89ba493905ea0485e426a`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 620.3 KB (620261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189bcd4da8f7daedbf2ed20e63ed921d5efec48e4453425d0b3d4ffa4200c484`  
		Last Modified: Wed, 26 Jul 2017 15:45:16 GMT  
		Size: 127.6 KB (127629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0ba27b91adc305859505c57c354c256c922b553713cd42cc65c44b81c5e0b7`  
		Last Modified: Wed, 26 Jul 2017 15:45:14 GMT  
		Size: 2.4 MB (2364552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87a3c5ecf86f22cb2da599f375056b9001d45182799e22f582e30289fc9391c1`  
		Last Modified: Mon, 07 Aug 2017 17:20:17 GMT  
		Size: 53.6 MB (53605320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b15d37e88604e95913eafeb85ccdef023ee0180723c9fbb76de6baee366169`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b815fa6c0180f0291706026c3e7dcbd490291adfc0fdabaea6da9216a5cd1ab`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af38bb462ce6f368a43cf2d9532fcebb5ffbf08bbef5e7e8b6e2f265f394c9a4`  
		Last Modified: Mon, 07 Aug 2017 17:20:04 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2f535b810f1780b254b563bff0b461b74f7866e10d21150077f02c332327e`  
		Last Modified: Mon, 07 Aug 2017 17:20:05 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622befae4cff666ae9dca53c9340904da958c44cb8b4ecbcee590425fa40005d`  
		Last Modified: Mon, 07 Aug 2017 17:20:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
