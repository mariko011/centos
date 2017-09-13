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
$ docker pull sentry@sha256:9092deb241450f6faff45ed269080b9836a020a00ce62a7e29745e72fcd00c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

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

## `sentry:8.19`

```console
$ docker pull sentry@sha256:bcc3bf16e623bd6211c9c3b739d8274b6bd3697253c66dbfef29bdcf21352216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19` - linux; amd64

```console
$ docker pull sentry@sha256:373eb226bb3948a1ecec6b154268c38b932d34c3645d0a77c20a38345c0270d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194579029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ef742b0fc0f87e9e2a48b18fc63c01bcdb2021e0d94ff33379bc7805f6d5ea`
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
# Wed, 13 Sep 2017 16:22:03 GMT
ENV SENTRY_VERSION=8.19.0
# Wed, 13 Sep 2017 16:23:37 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 13 Sep 2017 16:23:38 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 13 Sep 2017 16:23:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 13 Sep 2017 16:23:39 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 16:23:39 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 13 Sep 2017 16:23:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 16:23:40 GMT
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
	-	`sha256:9200e6f9654eabc25148efa57e254db48d088032d05aa867cc3d46e717a47c4a`  
		Last Modified: Wed, 13 Sep 2017 16:25:36 GMT  
		Size: 53.9 MB (53887848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec346a7281ad4b47337ad349f3414d4b368f3b18ec0324fb6586b41a4d4e0b5`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9876c215217128a1dae778d7ea1e6d54daa1e3949d5a0a4bcafb980aa74085`  
		Last Modified: Wed, 13 Sep 2017 16:25:25 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1ae0559c18c89cecdb6e5ab6fd6f80bae5ee65001592e79bf29f4093dc727e`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c3d56cbf94247e0e3c368bb985751c1241110c59531d41fcf1436105a8a82`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19.0`

```console
$ docker pull sentry@sha256:bcc3bf16e623bd6211c9c3b739d8274b6bd3697253c66dbfef29bdcf21352216
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19.0` - linux; amd64

```console
$ docker pull sentry@sha256:373eb226bb3948a1ecec6b154268c38b932d34c3645d0a77c20a38345c0270d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194579029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ef742b0fc0f87e9e2a48b18fc63c01bcdb2021e0d94ff33379bc7805f6d5ea`
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
# Wed, 13 Sep 2017 16:22:03 GMT
ENV SENTRY_VERSION=8.19.0
# Wed, 13 Sep 2017 16:23:37 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 13 Sep 2017 16:23:38 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 13 Sep 2017 16:23:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 13 Sep 2017 16:23:39 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 16:23:39 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 13 Sep 2017 16:23:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 16:23:40 GMT
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
	-	`sha256:9200e6f9654eabc25148efa57e254db48d088032d05aa867cc3d46e717a47c4a`  
		Last Modified: Wed, 13 Sep 2017 16:25:36 GMT  
		Size: 53.9 MB (53887848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec346a7281ad4b47337ad349f3414d4b368f3b18ec0324fb6586b41a4d4e0b5`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9876c215217128a1dae778d7ea1e6d54daa1e3949d5a0a4bcafb980aa74085`  
		Last Modified: Wed, 13 Sep 2017 16:25:25 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1ae0559c18c89cecdb6e5ab6fd6f80bae5ee65001592e79bf29f4093dc727e`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c3d56cbf94247e0e3c368bb985751c1241110c59531d41fcf1436105a8a82`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19.0-onbuild`

```console
$ docker pull sentry@sha256:fd473d6f45c82aacd58723d1e9b0fe9f15fc476278c02aefe96f79d168e61db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:7ddd73d96d8ab18c0941cc46a0cd493c8604018bc54cc72651070add06b68686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194579166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de966482edb1136896f19301b6f771050082095da3332c1a3ef608565486f787`
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
# Wed, 13 Sep 2017 16:22:03 GMT
ENV SENTRY_VERSION=8.19.0
# Wed, 13 Sep 2017 16:23:37 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 13 Sep 2017 16:23:38 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 13 Sep 2017 16:23:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 13 Sep 2017 16:23:39 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 16:23:39 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 13 Sep 2017 16:23:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 16:23:40 GMT
CMD ["run" "web"]
# Wed, 13 Sep 2017 16:23:41 GMT
WORKDIR /usr/src/sentry
# Wed, 13 Sep 2017 16:23:41 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 13 Sep 2017 16:23:41 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 13 Sep 2017 16:23:42 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 13 Sep 2017 16:23:42 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 13 Sep 2017 16:23:42 GMT
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
	-	`sha256:9200e6f9654eabc25148efa57e254db48d088032d05aa867cc3d46e717a47c4a`  
		Last Modified: Wed, 13 Sep 2017 16:25:36 GMT  
		Size: 53.9 MB (53887848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec346a7281ad4b47337ad349f3414d4b368f3b18ec0324fb6586b41a4d4e0b5`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9876c215217128a1dae778d7ea1e6d54daa1e3949d5a0a4bcafb980aa74085`  
		Last Modified: Wed, 13 Sep 2017 16:25:25 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1ae0559c18c89cecdb6e5ab6fd6f80bae5ee65001592e79bf29f4093dc727e`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c3d56cbf94247e0e3c368bb985751c1241110c59531d41fcf1436105a8a82`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026d5077cdd3889cdb52b5879b708c11d18e7b33fe9efa145cb7bfecc785990e`  
		Last Modified: Wed, 13 Sep 2017 16:25:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.19-onbuild`

```console
$ docker pull sentry@sha256:fd473d6f45c82aacd58723d1e9b0fe9f15fc476278c02aefe96f79d168e61db8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.19-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:7ddd73d96d8ab18c0941cc46a0cd493c8604018bc54cc72651070add06b68686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194579166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de966482edb1136896f19301b6f771050082095da3332c1a3ef608565486f787`
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
# Wed, 13 Sep 2017 16:22:03 GMT
ENV SENTRY_VERSION=8.19.0
# Wed, 13 Sep 2017 16:23:37 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 13 Sep 2017 16:23:38 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 13 Sep 2017 16:23:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 13 Sep 2017 16:23:39 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 13 Sep 2017 16:23:39 GMT
EXPOSE 9000/tcp
# Wed, 13 Sep 2017 16:23:39 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 13 Sep 2017 16:23:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 13 Sep 2017 16:23:40 GMT
CMD ["run" "web"]
# Wed, 13 Sep 2017 16:23:41 GMT
WORKDIR /usr/src/sentry
# Wed, 13 Sep 2017 16:23:41 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 13 Sep 2017 16:23:41 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 13 Sep 2017 16:23:42 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 13 Sep 2017 16:23:42 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 13 Sep 2017 16:23:42 GMT
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
	-	`sha256:9200e6f9654eabc25148efa57e254db48d088032d05aa867cc3d46e717a47c4a`  
		Last Modified: Wed, 13 Sep 2017 16:25:36 GMT  
		Size: 53.9 MB (53887848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec346a7281ad4b47337ad349f3414d4b368f3b18ec0324fb6586b41a4d4e0b5`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9876c215217128a1dae778d7ea1e6d54daa1e3949d5a0a4bcafb980aa74085`  
		Last Modified: Wed, 13 Sep 2017 16:25:25 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1ae0559c18c89cecdb6e5ab6fd6f80bae5ee65001592e79bf29f4093dc727e`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095c3d56cbf94247e0e3c368bb985751c1241110c59531d41fcf1436105a8a82`  
		Last Modified: Wed, 13 Sep 2017 16:25:24 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026d5077cdd3889cdb52b5879b708c11d18e7b33fe9efa145cb7bfecc785990e`  
		Last Modified: Wed, 13 Sep 2017 16:25:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20`

```console
$ docker pull sentry@sha256:9092deb241450f6faff45ed269080b9836a020a00ce62a7e29745e72fcd00c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20` - linux; amd64

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

## `sentry:8.20.0`

```console
$ docker pull sentry@sha256:9092deb241450f6faff45ed269080b9836a020a00ce62a7e29745e72fcd00c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20.0` - linux; amd64

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

## `sentry:8.20.0-onbuild`

```console
$ docker pull sentry@sha256:fb0bdbec4a08c02abf64b4174f569b587ae4efac5d5205c13192950220702391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:35681028e006697897591902f19c6cd3375fb91dc4c104a4cd3d9279d32b3855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197721459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30194d1f5eef1eb4928962fcb436cf8af3b504b6853438d69ac049ca0d783b1c`
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
# Wed, 13 Sep 2017 16:25:15 GMT
WORKDIR /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 13 Sep 2017 16:25:16 GMT
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
	-	`sha256:92c7de5ecccd7a761aa382b89a7d69886af9650cf6c0616bab77ae1b2ee00156`  
		Last Modified: Wed, 13 Sep 2017 16:26:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20-onbuild`

```console
$ docker pull sentry@sha256:fb0bdbec4a08c02abf64b4174f569b587ae4efac5d5205c13192950220702391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:35681028e006697897591902f19c6cd3375fb91dc4c104a4cd3d9279d32b3855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197721459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30194d1f5eef1eb4928962fcb436cf8af3b504b6853438d69ac049ca0d783b1c`
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
# Wed, 13 Sep 2017 16:25:15 GMT
WORKDIR /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 13 Sep 2017 16:25:16 GMT
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
	-	`sha256:92c7de5ecccd7a761aa382b89a7d69886af9650cf6c0616bab77ae1b2ee00156`  
		Last Modified: Wed, 13 Sep 2017 16:26:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:fb0bdbec4a08c02abf64b4174f569b587ae4efac5d5205c13192950220702391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:35681028e006697897591902f19c6cd3375fb91dc4c104a4cd3d9279d32b3855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197721459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30194d1f5eef1eb4928962fcb436cf8af3b504b6853438d69ac049ca0d783b1c`
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
# Wed, 13 Sep 2017 16:25:15 GMT
WORKDIR /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 13 Sep 2017 16:25:16 GMT
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
	-	`sha256:92c7de5ecccd7a761aa382b89a7d69886af9650cf6c0616bab77ae1b2ee00156`  
		Last Modified: Wed, 13 Sep 2017 16:26:36 GMT  
		Size: 136.0 B  
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
$ docker pull sentry@sha256:fb0bdbec4a08c02abf64b4174f569b587ae4efac5d5205c13192950220702391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:35681028e006697897591902f19c6cd3375fb91dc4c104a4cd3d9279d32b3855
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.7 MB (197721459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30194d1f5eef1eb4928962fcb436cf8af3b504b6853438d69ac049ca0d783b1c`
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
# Wed, 13 Sep 2017 16:25:15 GMT
WORKDIR /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 13 Sep 2017 16:25:16 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 13 Sep 2017 16:25:16 GMT
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
	-	`sha256:92c7de5ecccd7a761aa382b89a7d69886af9650cf6c0616bab77ae1b2ee00156`  
		Last Modified: Wed, 13 Sep 2017 16:26:36 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
