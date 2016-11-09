<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8.10.0`](#sentry8100)
-	[`sentry:8.10`](#sentry810)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.10.0-onbuild`](#sentry8100-onbuild)
-	[`sentry:8.10-onbuild`](#sentry810-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)
-	[`sentry:8.9.0`](#sentry890)
-	[`sentry:8.9`](#sentry89)
-	[`sentry:8.9.0-onbuild`](#sentry890-onbuild)
-	[`sentry:8.9-onbuild`](#sentry89-onbuild)

## `sentry:8.10.0`

```console
$ docker pull sentry@sha256:4ac6111723f07b6fa21dcf0284a31d4a37f1a7a69bcbad332226212ec9c29039
```

-	Platforms:
	-	linux; amd64

### `sentry:8.10.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179515781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ff5b75274cb7becdbb73b13b011c8373a1e99551ead40b6104c514b2607ba5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:26:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Nov 2016 01:26:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:26:53 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 09 Nov 2016 01:27:06 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:27:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:27:19 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 09 Nov 2016 01:28:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:28:53 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:28:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:28:55 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:28:57 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:28:57 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:28:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:28:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc3a62e70f8850c0b99dd13328fe88255aeb755ce45cbeb93b7ac5f94a6266`  
		Last Modified: Wed, 09 Nov 2016 01:29:14 GMT  
		Size: 613.2 KB (613157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cea567aa99a052890e74d1c59e0e0ec95415a666ea6a09058537ee254857cf`  
		Last Modified: Wed, 09 Nov 2016 01:29:13 GMT  
		Size: 130.2 KB (130237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2ad4676c73d1545aecce2a5591447a591a6291c2d6a78f53b8ed61f4f470c`  
		Last Modified: Wed, 09 Nov 2016 01:29:15 GMT  
		Size: 2.3 MB (2290959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b6194b5f2dfe92d20eee08f162be440a109775990cadc0b3477cf56fdbd42c`  
		Last Modified: Wed, 09 Nov 2016 01:29:26 GMT  
		Size: 42.9 MB (42859829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75410058666c1319f3497c7e76d9070672bf4d5fe412b09b0887445398362c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eedadbff4742827602fe470fde3029c5a5ea7a9ede377ecc8cf03bc1efdf88c`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 3.4 KB (3429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134271cca0d12a021e279be83fc20148ae558549db063bff697942f942face51`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b96d9fe5eedf368b33591d5fd517df3f2d8ae5bdb776bb86f13309db3694558`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.10`

```console
$ docker pull sentry@sha256:4ac6111723f07b6fa21dcf0284a31d4a37f1a7a69bcbad332226212ec9c29039
```

-	Platforms:
	-	linux; amd64

### `sentry:8.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179515781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ff5b75274cb7becdbb73b13b011c8373a1e99551ead40b6104c514b2607ba5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:26:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Nov 2016 01:26:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:26:53 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 09 Nov 2016 01:27:06 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:27:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:27:19 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 09 Nov 2016 01:28:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:28:53 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:28:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:28:55 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:28:57 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:28:57 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:28:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:28:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc3a62e70f8850c0b99dd13328fe88255aeb755ce45cbeb93b7ac5f94a6266`  
		Last Modified: Wed, 09 Nov 2016 01:29:14 GMT  
		Size: 613.2 KB (613157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cea567aa99a052890e74d1c59e0e0ec95415a666ea6a09058537ee254857cf`  
		Last Modified: Wed, 09 Nov 2016 01:29:13 GMT  
		Size: 130.2 KB (130237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2ad4676c73d1545aecce2a5591447a591a6291c2d6a78f53b8ed61f4f470c`  
		Last Modified: Wed, 09 Nov 2016 01:29:15 GMT  
		Size: 2.3 MB (2290959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b6194b5f2dfe92d20eee08f162be440a109775990cadc0b3477cf56fdbd42c`  
		Last Modified: Wed, 09 Nov 2016 01:29:26 GMT  
		Size: 42.9 MB (42859829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75410058666c1319f3497c7e76d9070672bf4d5fe412b09b0887445398362c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eedadbff4742827602fe470fde3029c5a5ea7a9ede377ecc8cf03bc1efdf88c`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 3.4 KB (3429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134271cca0d12a021e279be83fc20148ae558549db063bff697942f942face51`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b96d9fe5eedf368b33591d5fd517df3f2d8ae5bdb776bb86f13309db3694558`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:4ac6111723f07b6fa21dcf0284a31d4a37f1a7a69bcbad332226212ec9c29039
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179515781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ff5b75274cb7becdbb73b13b011c8373a1e99551ead40b6104c514b2607ba5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:26:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Nov 2016 01:26:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:26:53 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 09 Nov 2016 01:27:06 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:27:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:27:19 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 09 Nov 2016 01:28:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:28:53 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:28:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:28:55 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:28:57 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:28:57 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:28:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:28:58 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc3a62e70f8850c0b99dd13328fe88255aeb755ce45cbeb93b7ac5f94a6266`  
		Last Modified: Wed, 09 Nov 2016 01:29:14 GMT  
		Size: 613.2 KB (613157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cea567aa99a052890e74d1c59e0e0ec95415a666ea6a09058537ee254857cf`  
		Last Modified: Wed, 09 Nov 2016 01:29:13 GMT  
		Size: 130.2 KB (130237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2ad4676c73d1545aecce2a5591447a591a6291c2d6a78f53b8ed61f4f470c`  
		Last Modified: Wed, 09 Nov 2016 01:29:15 GMT  
		Size: 2.3 MB (2290959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b6194b5f2dfe92d20eee08f162be440a109775990cadc0b3477cf56fdbd42c`  
		Last Modified: Wed, 09 Nov 2016 01:29:26 GMT  
		Size: 42.9 MB (42859829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75410058666c1319f3497c7e76d9070672bf4d5fe412b09b0887445398362c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eedadbff4742827602fe470fde3029c5a5ea7a9ede377ecc8cf03bc1efdf88c`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 3.4 KB (3429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134271cca0d12a021e279be83fc20148ae558549db063bff697942f942face51`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b96d9fe5eedf368b33591d5fd517df3f2d8ae5bdb776bb86f13309db3694558`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:d655aca05989e924b8efaecf119f74c19d2dc1a39361ebe9a54197ca23f5bb24
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179510603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9648360203190973a472d5e96693cfbf9b27f40e92f75aecd086836dbf7b67b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:49:09 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 31 Oct 2016 23:51:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 31 Oct 2016 23:51:24 GMT
CMD ["python2"]
# Tue, 01 Nov 2016 07:55:46 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 01 Nov 2016 07:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:56:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 01 Nov 2016 07:56:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 02 Nov 2016 20:03:09 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 Nov 2016 20:03:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 02 Nov 2016 20:03:28 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 02 Nov 2016 20:03:38 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 02 Nov 2016 20:03:54 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 02 Nov 2016 20:03:55 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 02 Nov 2016 20:05:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 02 Nov 2016 20:05:29 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 02 Nov 2016 20:05:30 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 02 Nov 2016 20:05:31 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 02 Nov 2016 20:05:32 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 02 Nov 2016 20:05:32 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 02 Nov 2016 20:05:32 GMT
EXPOSE 9000/tcp
# Wed, 02 Nov 2016 20:05:33 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 02 Nov 2016 20:05:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 02 Nov 2016 20:05:34 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2afa7f3c046730e8044953131c3f0e0c8ee060297441b4514a7f2cc9e8402d`  
		Last Modified: Tue, 01 Nov 2016 00:22:36 GMT  
		Size: 3.3 MB (3338730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab6b45be7f4c3618bf8959e91655deae435e65dc290f77f47503cac704fb2d`  
		Last Modified: Tue, 01 Nov 2016 00:22:40 GMT  
		Size: 16.3 MB (16307251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac18faadee34c02f964ab31bcbdcfdc4a2f953306a111d8ad53d0b59f130e5`  
		Last Modified: Tue, 01 Nov 2016 07:58:36 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09b1eb2271be8941b027a54284b55ff6e705bb94052b9c130ec6ba8d5d7977`  
		Last Modified: Tue, 01 Nov 2016 07:58:52 GMT  
		Size: 62.6 MB (62608871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4576074651606f4a5f0b720ca1351f53ce7fe4b9da0b13a7de639df7c9f79c7`  
		Last Modified: Wed, 02 Nov 2016 20:05:52 GMT  
		Size: 612.9 KB (612946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc0d9896a94cea79b6915586a63d3ad59a282068357769b9f7a96a863488d1b3`  
		Last Modified: Wed, 02 Nov 2016 20:05:51 GMT  
		Size: 130.0 KB (129984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c72b406724b9fb19eee3a94c43ab897eda51604680fdda02fd4fccb6152bb464`  
		Last Modified: Wed, 02 Nov 2016 20:05:54 GMT  
		Size: 2.3 MB (2290211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6d727fa442a94856ed785de5e4f0923eda605150851ec8fe2d20ca7fd92392`  
		Last Modified: Wed, 02 Nov 2016 20:06:02 GMT  
		Size: 42.9 MB (42860048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef71ba41b76e295a79b70d3aa9f9d43621d81a5c3e57dd4756e0454f5439672c`  
		Last Modified: Wed, 02 Nov 2016 20:05:48 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390d09b7321d54e56bcf61a0c76c595adb0fea2f4e6120de7295c0fcf0daad46`  
		Last Modified: Wed, 02 Nov 2016 20:05:48 GMT  
		Size: 3.4 KB (3433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ba57dfd03d662de0777b319336d53b968eb47ed8624e29a5caa1297813372`  
		Last Modified: Wed, 02 Nov 2016 20:05:48 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d9d20af4022a164c372ef8bdbf38a40489eb650a7408ade3de1ff11e58c189`  
		Last Modified: Wed, 02 Nov 2016 20:05:48 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.10.0-onbuild`

```console
$ docker pull sentry@sha256:8eacddba78cf0d7a942ed14822327044c85f7a11e932ce0d604427ab176a4bae
```

-	Platforms:
	-	linux; amd64

### `sentry:8.10.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179515911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36019e7a0a27b978e19c21c2e9b34ab1d2dcc52443fd8a24de998b55ddeb1e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:26:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Nov 2016 01:26:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:26:53 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 09 Nov 2016 01:27:06 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:27:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:27:19 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 09 Nov 2016 01:28:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:28:53 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:28:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:28:55 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:28:57 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:28:57 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:28:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:28:58 GMT
CMD ["run" "web"]
# Wed, 09 Nov 2016 01:30:22 GMT
WORKDIR /usr/src/sentry
# Wed, 09 Nov 2016 01:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 09 Nov 2016 01:30:24 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc3a62e70f8850c0b99dd13328fe88255aeb755ce45cbeb93b7ac5f94a6266`  
		Last Modified: Wed, 09 Nov 2016 01:29:14 GMT  
		Size: 613.2 KB (613157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cea567aa99a052890e74d1c59e0e0ec95415a666ea6a09058537ee254857cf`  
		Last Modified: Wed, 09 Nov 2016 01:29:13 GMT  
		Size: 130.2 KB (130237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2ad4676c73d1545aecce2a5591447a591a6291c2d6a78f53b8ed61f4f470c`  
		Last Modified: Wed, 09 Nov 2016 01:29:15 GMT  
		Size: 2.3 MB (2290959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b6194b5f2dfe92d20eee08f162be440a109775990cadc0b3477cf56fdbd42c`  
		Last Modified: Wed, 09 Nov 2016 01:29:26 GMT  
		Size: 42.9 MB (42859829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75410058666c1319f3497c7e76d9070672bf4d5fe412b09b0887445398362c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eedadbff4742827602fe470fde3029c5a5ea7a9ede377ecc8cf03bc1efdf88c`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 3.4 KB (3429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134271cca0d12a021e279be83fc20148ae558549db063bff697942f942face51`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b96d9fe5eedf368b33591d5fd517df3f2d8ae5bdb776bb86f13309db3694558`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f3cbe3fcc8e1b150dcf024dc534d2d17ab43ac613a618ce897ef358163dc6e`  
		Last Modified: Wed, 09 Nov 2016 01:30:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.10-onbuild`

```console
$ docker pull sentry@sha256:8eacddba78cf0d7a942ed14822327044c85f7a11e932ce0d604427ab176a4bae
```

-	Platforms:
	-	linux; amd64

### `sentry:8.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179515911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36019e7a0a27b978e19c21c2e9b34ab1d2dcc52443fd8a24de998b55ddeb1e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:26:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Nov 2016 01:26:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:26:53 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 09 Nov 2016 01:27:06 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:27:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:27:19 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 09 Nov 2016 01:28:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:28:53 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:28:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:28:55 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:28:57 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:28:57 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:28:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:28:58 GMT
CMD ["run" "web"]
# Wed, 09 Nov 2016 01:30:22 GMT
WORKDIR /usr/src/sentry
# Wed, 09 Nov 2016 01:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 09 Nov 2016 01:30:24 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc3a62e70f8850c0b99dd13328fe88255aeb755ce45cbeb93b7ac5f94a6266`  
		Last Modified: Wed, 09 Nov 2016 01:29:14 GMT  
		Size: 613.2 KB (613157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cea567aa99a052890e74d1c59e0e0ec95415a666ea6a09058537ee254857cf`  
		Last Modified: Wed, 09 Nov 2016 01:29:13 GMT  
		Size: 130.2 KB (130237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2ad4676c73d1545aecce2a5591447a591a6291c2d6a78f53b8ed61f4f470c`  
		Last Modified: Wed, 09 Nov 2016 01:29:15 GMT  
		Size: 2.3 MB (2290959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b6194b5f2dfe92d20eee08f162be440a109775990cadc0b3477cf56fdbd42c`  
		Last Modified: Wed, 09 Nov 2016 01:29:26 GMT  
		Size: 42.9 MB (42859829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75410058666c1319f3497c7e76d9070672bf4d5fe412b09b0887445398362c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eedadbff4742827602fe470fde3029c5a5ea7a9ede377ecc8cf03bc1efdf88c`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 3.4 KB (3429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134271cca0d12a021e279be83fc20148ae558549db063bff697942f942face51`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b96d9fe5eedf368b33591d5fd517df3f2d8ae5bdb776bb86f13309db3694558`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f3cbe3fcc8e1b150dcf024dc534d2d17ab43ac613a618ce897ef358163dc6e`  
		Last Modified: Wed, 09 Nov 2016 01:30:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:8eacddba78cf0d7a942ed14822327044c85f7a11e932ce0d604427ab176a4bae
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179515911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36019e7a0a27b978e19c21c2e9b34ab1d2dcc52443fd8a24de998b55ddeb1e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:26:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Nov 2016 01:26:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:26:53 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 09 Nov 2016 01:27:06 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:27:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:27:19 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 09 Nov 2016 01:28:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:28:53 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:28:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:28:55 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:28:57 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:28:57 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:28:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:28:58 GMT
CMD ["run" "web"]
# Wed, 09 Nov 2016 01:30:22 GMT
WORKDIR /usr/src/sentry
# Wed, 09 Nov 2016 01:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 09 Nov 2016 01:30:24 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc3a62e70f8850c0b99dd13328fe88255aeb755ce45cbeb93b7ac5f94a6266`  
		Last Modified: Wed, 09 Nov 2016 01:29:14 GMT  
		Size: 613.2 KB (613157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cea567aa99a052890e74d1c59e0e0ec95415a666ea6a09058537ee254857cf`  
		Last Modified: Wed, 09 Nov 2016 01:29:13 GMT  
		Size: 130.2 KB (130237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2ad4676c73d1545aecce2a5591447a591a6291c2d6a78f53b8ed61f4f470c`  
		Last Modified: Wed, 09 Nov 2016 01:29:15 GMT  
		Size: 2.3 MB (2290959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b6194b5f2dfe92d20eee08f162be440a109775990cadc0b3477cf56fdbd42c`  
		Last Modified: Wed, 09 Nov 2016 01:29:26 GMT  
		Size: 42.9 MB (42859829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75410058666c1319f3497c7e76d9070672bf4d5fe412b09b0887445398362c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eedadbff4742827602fe470fde3029c5a5ea7a9ede377ecc8cf03bc1efdf88c`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 3.4 KB (3429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134271cca0d12a021e279be83fc20148ae558549db063bff697942f942face51`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b96d9fe5eedf368b33591d5fd517df3f2d8ae5bdb776bb86f13309db3694558`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f3cbe3fcc8e1b150dcf024dc534d2d17ab43ac613a618ce897ef358163dc6e`  
		Last Modified: Wed, 09 Nov 2016 01:30:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:8eacddba78cf0d7a942ed14822327044c85f7a11e932ce0d604427ab176a4bae
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179515911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36019e7a0a27b978e19c21c2e9b34ab1d2dcc52443fd8a24de998b55ddeb1e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:26:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 09 Nov 2016 01:26:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:26:53 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 09 Nov 2016 01:27:06 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:27:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:27:19 GMT
ENV SENTRY_VERSION=8.10.0
# Wed, 09 Nov 2016 01:28:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:28:53 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:28:55 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:28:55 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:28:56 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:28:57 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:28:57 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:28:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:28:58 GMT
CMD ["run" "web"]
# Wed, 09 Nov 2016 01:30:22 GMT
WORKDIR /usr/src/sentry
# Wed, 09 Nov 2016 01:30:22 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 09 Nov 2016 01:30:23 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 09 Nov 2016 01:30:24 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc3a62e70f8850c0b99dd13328fe88255aeb755ce45cbeb93b7ac5f94a6266`  
		Last Modified: Wed, 09 Nov 2016 01:29:14 GMT  
		Size: 613.2 KB (613157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74cea567aa99a052890e74d1c59e0e0ec95415a666ea6a09058537ee254857cf`  
		Last Modified: Wed, 09 Nov 2016 01:29:13 GMT  
		Size: 130.2 KB (130237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f2ad4676c73d1545aecce2a5591447a591a6291c2d6a78f53b8ed61f4f470c`  
		Last Modified: Wed, 09 Nov 2016 01:29:15 GMT  
		Size: 2.3 MB (2290959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87b6194b5f2dfe92d20eee08f162be440a109775990cadc0b3477cf56fdbd42c`  
		Last Modified: Wed, 09 Nov 2016 01:29:26 GMT  
		Size: 42.9 MB (42859829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75410058666c1319f3497c7e76d9070672bf4d5fe412b09b0887445398362c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:11 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eedadbff4742827602fe470fde3029c5a5ea7a9ede377ecc8cf03bc1efdf88c`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 3.4 KB (3429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134271cca0d12a021e279be83fc20148ae558549db063bff697942f942face51`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b96d9fe5eedf368b33591d5fd517df3f2d8ae5bdb776bb86f13309db3694558`  
		Last Modified: Wed, 09 Nov 2016 01:29:10 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f3cbe3fcc8e1b150dcf024dc534d2d17ab43ac613a618ce897ef358163dc6e`  
		Last Modified: Wed, 09 Nov 2016 01:30:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9.0`

```console
$ docker pull sentry@sha256:f0e80056fe9f9574612758c8243ad085142aa22a92fb591f404751ca8faa0df8
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173902158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e48860bd7e33d350a4e8b1b6bda878649ed8b82ce1b4ba245dfd91e31c4e09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:31:24 GMT
ENV GOSU_VERSION=1.9
# Wed, 09 Nov 2016 01:31:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:35 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 09 Nov 2016 01:31:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:31:59 GMT
ENV SENTRY_VERSION=8.9.0
# Wed, 09 Nov 2016 01:33:14 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 09 Nov 2016 01:33:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:33:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:33:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:33:18 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:33:18 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:33:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:33:19 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5c49a31aa90d5dbb970ff7c2c1c4e0b0bf20ac62e4d8985e49a80232e4181e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 698.8 KB (698787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d845246a165d647692f56767c994340f9b658d9ea0c972ba74b48ba120b2e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 129.4 KB (129419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03e711aabcc4046bb05279754d085a3de31917f49d7f669c70d1dbe87f1361a`  
		Last Modified: Wed, 09 Nov 2016 01:33:36 GMT  
		Size: 2.3 MB (2291055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebda0a55349f19bf6fb1201bfad981ad1e3b85162578fb56acd1bd01ddcf8227`  
		Last Modified: Wed, 09 Nov 2016 01:33:44 GMT  
		Size: 37.2 MB (37161547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4643487c7a1e790970e2a328387b75c6bc6cce4efa978aac55bc7404e523eb`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2709a4d532159a10c8a1fcc8a2d19b9c4b64c05221c3d4cdcc3e2aee525ea2`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54139153ce9e30451e69e211136e7620ca6c0ea83842ef5e20a0a3b47b90b53`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a5f50924639804e6eb1dfc5546ef3949b5336bf17d5774bc9795a8e8346c4`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9`

```console
$ docker pull sentry@sha256:f0e80056fe9f9574612758c8243ad085142aa22a92fb591f404751ca8faa0df8
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173902158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e48860bd7e33d350a4e8b1b6bda878649ed8b82ce1b4ba245dfd91e31c4e09`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:31:24 GMT
ENV GOSU_VERSION=1.9
# Wed, 09 Nov 2016 01:31:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:35 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 09 Nov 2016 01:31:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:31:59 GMT
ENV SENTRY_VERSION=8.9.0
# Wed, 09 Nov 2016 01:33:14 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 09 Nov 2016 01:33:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:33:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:33:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:33:18 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:33:18 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:33:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:33:19 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5c49a31aa90d5dbb970ff7c2c1c4e0b0bf20ac62e4d8985e49a80232e4181e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 698.8 KB (698787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d845246a165d647692f56767c994340f9b658d9ea0c972ba74b48ba120b2e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 129.4 KB (129419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03e711aabcc4046bb05279754d085a3de31917f49d7f669c70d1dbe87f1361a`  
		Last Modified: Wed, 09 Nov 2016 01:33:36 GMT  
		Size: 2.3 MB (2291055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebda0a55349f19bf6fb1201bfad981ad1e3b85162578fb56acd1bd01ddcf8227`  
		Last Modified: Wed, 09 Nov 2016 01:33:44 GMT  
		Size: 37.2 MB (37161547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4643487c7a1e790970e2a328387b75c6bc6cce4efa978aac55bc7404e523eb`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2709a4d532159a10c8a1fcc8a2d19b9c4b64c05221c3d4cdcc3e2aee525ea2`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54139153ce9e30451e69e211136e7620ca6c0ea83842ef5e20a0a3b47b90b53`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a5f50924639804e6eb1dfc5546ef3949b5336bf17d5774bc9795a8e8346c4`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9.0-onbuild`

```console
$ docker pull sentry@sha256:d8550982bdff5c5385fa12b7b178d22e2d807390419f073da7fe09191fd13c9c
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173902289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6751d83ff07a02eb1fc07b22bd12d7cbd7f22920ba213a0e3d0d53e896120e76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:31:24 GMT
ENV GOSU_VERSION=1.9
# Wed, 09 Nov 2016 01:31:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:35 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 09 Nov 2016 01:31:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:31:59 GMT
ENV SENTRY_VERSION=8.9.0
# Wed, 09 Nov 2016 01:33:14 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 09 Nov 2016 01:33:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:33:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:33:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:33:18 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:33:18 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:33:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:33:19 GMT
CMD ["run" "web"]
# Wed, 09 Nov 2016 01:34:08 GMT
WORKDIR /usr/src/sentry
# Wed, 09 Nov 2016 01:34:08 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 09 Nov 2016 01:34:09 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 09 Nov 2016 01:34:09 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 09 Nov 2016 01:34:10 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 09 Nov 2016 01:34:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5c49a31aa90d5dbb970ff7c2c1c4e0b0bf20ac62e4d8985e49a80232e4181e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 698.8 KB (698787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d845246a165d647692f56767c994340f9b658d9ea0c972ba74b48ba120b2e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 129.4 KB (129419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03e711aabcc4046bb05279754d085a3de31917f49d7f669c70d1dbe87f1361a`  
		Last Modified: Wed, 09 Nov 2016 01:33:36 GMT  
		Size: 2.3 MB (2291055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebda0a55349f19bf6fb1201bfad981ad1e3b85162578fb56acd1bd01ddcf8227`  
		Last Modified: Wed, 09 Nov 2016 01:33:44 GMT  
		Size: 37.2 MB (37161547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4643487c7a1e790970e2a328387b75c6bc6cce4efa978aac55bc7404e523eb`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2709a4d532159a10c8a1fcc8a2d19b9c4b64c05221c3d4cdcc3e2aee525ea2`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54139153ce9e30451e69e211136e7620ca6c0ea83842ef5e20a0a3b47b90b53`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a5f50924639804e6eb1dfc5546ef3949b5336bf17d5774bc9795a8e8346c4`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acebfb61b9d27de524e9f61ac1907d7f54c52ce0c2fc95acc0538749d3979fc`  
		Last Modified: Wed, 09 Nov 2016 01:34:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9-onbuild`

```console
$ docker pull sentry@sha256:d8550982bdff5c5385fa12b7b178d22e2d807390419f073da7fe09191fd13c9c
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173902289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6751d83ff07a02eb1fc07b22bd12d7cbd7f22920ba213a0e3d0d53e896120e76`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Tue, 08 Nov 2016 19:46:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:46:27 GMT
ENV LANG=C.UTF-8
# Wed, 09 Nov 2016 00:28:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 00:28:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Wed, 09 Nov 2016 01:26:12 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 09 Nov 2016 01:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 09 Nov 2016 01:26:40 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 09 Nov 2016 01:26:41 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 09 Nov 2016 01:31:24 GMT
ENV GOSU_VERSION=1.9
# Wed, 09 Nov 2016 01:31:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:35 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 09 Nov 2016 01:31:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 09 Nov 2016 01:31:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 09 Nov 2016 01:31:59 GMT
ENV SENTRY_VERSION=8.9.0
# Wed, 09 Nov 2016 01:33:14 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 09 Nov 2016 01:33:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 09 Nov 2016 01:33:16 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 09 Nov 2016 01:33:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 09 Nov 2016 01:33:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 09 Nov 2016 01:33:18 GMT
EXPOSE 9000/tcp
# Wed, 09 Nov 2016 01:33:18 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 09 Nov 2016 01:33:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Nov 2016 01:33:19 GMT
CMD ["run" "web"]
# Wed, 09 Nov 2016 01:34:08 GMT
WORKDIR /usr/src/sentry
# Wed, 09 Nov 2016 01:34:08 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 09 Nov 2016 01:34:09 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 09 Nov 2016 01:34:09 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 09 Nov 2016 01:34:10 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 09 Nov 2016 01:34:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c22cbebbb466f0a496a221e20d2c0306f27249762789b6284da3e476222a87`  
		Last Modified: Wed, 09 Nov 2016 00:30:36 GMT  
		Size: 3.3 MB (3338616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4a5ed45ebc1b396dfbca8208a5c35626a5e9f7995e99b165ad0b1f2016977c`  
		Last Modified: Wed, 09 Nov 2016 01:29:18 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc682949f065da481fd7706334e4b583bcc0dd926cdb0a9d96d706ab9e991c1`  
		Last Modified: Wed, 09 Nov 2016 01:29:33 GMT  
		Size: 62.6 MB (62609051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5c49a31aa90d5dbb970ff7c2c1c4e0b0bf20ac62e4d8985e49a80232e4181e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 698.8 KB (698787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12d845246a165d647692f56767c994340f9b658d9ea0c972ba74b48ba120b2e`  
		Last Modified: Wed, 09 Nov 2016 01:33:34 GMT  
		Size: 129.4 KB (129419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03e711aabcc4046bb05279754d085a3de31917f49d7f669c70d1dbe87f1361a`  
		Last Modified: Wed, 09 Nov 2016 01:33:36 GMT  
		Size: 2.3 MB (2291055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebda0a55349f19bf6fb1201bfad981ad1e3b85162578fb56acd1bd01ddcf8227`  
		Last Modified: Wed, 09 Nov 2016 01:33:44 GMT  
		Size: 37.2 MB (37161547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4643487c7a1e790970e2a328387b75c6bc6cce4efa978aac55bc7404e523eb`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2709a4d532159a10c8a1fcc8a2d19b9c4b64c05221c3d4cdcc3e2aee525ea2`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54139153ce9e30451e69e211136e7620ca6c0ea83842ef5e20a0a3b47b90b53`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a5f50924639804e6eb1dfc5546ef3949b5336bf17d5774bc9795a8e8346c4`  
		Last Modified: Wed, 09 Nov 2016 01:33:31 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acebfb61b9d27de524e9f61ac1907d7f54c52ce0c2fc95acc0538749d3979fc`  
		Last Modified: Wed, 09 Nov 2016 01:34:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
