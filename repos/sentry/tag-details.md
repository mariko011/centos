<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8.13.0`](#sentry8130)
-	[`sentry:8.13`](#sentry813)
-	[`sentry:8.13.0-onbuild`](#sentry8130-onbuild)
-	[`sentry:8.13-onbuild`](#sentry813-onbuild)
-	[`sentry:8.14.1`](#sentry8141)
-	[`sentry:8.14`](#sentry814)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.14.1-onbuild`](#sentry8141-onbuild)
-	[`sentry:8.14-onbuild`](#sentry814-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8.13.0`

```console
$ docker pull sentry@sha256:832cb2530279c94427c844281ee87b5b173abbd64d79d7478b7864c4ce59ac2d
```

-	Platforms:
	-	linux; amd64

### `sentry:8.13.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183784005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64bd1201547892c313c11de4d7cbffd55556e1a3c7a147b885853d8dd0b230a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:38:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:47:35 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:47:37 GMT
CMD ["python2"]
# Wed, 14 Dec 2016 19:40:39 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 14 Dec 2016 19:41:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 14 Dec 2016 19:41:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Dec 2016 19:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 19:41:14 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 14 Dec 2016 21:52:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 21:53:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 01 Feb 2017 23:57:41 GMT
ENV SENTRY_VERSION=8.13.0
# Wed, 01 Feb 2017 23:59:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 01 Feb 2017 23:59:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 01 Feb 2017 23:59:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 01 Feb 2017 23:59:25 GMT
EXPOSE 9000/tcp
# Wed, 01 Feb 2017 23:59:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 01 Feb 2017 23:59:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 23:59:26 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a044686e6e0af7e1186aff3111899868a0e203d76bfde7b2e41c4c57c9d5595c`  
		Last Modified: Mon, 19 Dec 2016 18:28:51 GMT  
		Size: 16.4 MB (16364587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac23840f8b44de4114f1914c2c8f2a30f4782ec0afc3c362e708df4e3047a20`  
		Last Modified: Wed, 21 Dec 2016 20:10:42 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefe0b6c43af45024ee147b72bd5bd04c5433db94fd372652f470d0ec472e28c`  
		Last Modified: Wed, 21 Dec 2016 20:11:04 GMT  
		Size: 62.6 MB (62609336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf3a0f5af58c264b5c0dddde7f67824e2232751a2117ba090332aea984cb63`  
		Last Modified: Wed, 21 Dec 2016 20:10:38 GMT  
		Size: 613.3 KB (613280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb9ce5250ca7215bd4b4865e1bb82faef11bad7c38dae7ff8b50dc68d95eaeb`  
		Last Modified: Wed, 21 Dec 2016 20:10:39 GMT  
		Size: 130.3 KB (130333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202daee25bc50a395705ba378c430517e359eb85539e74062b6135a11af4c155`  
		Last Modified: Wed, 21 Dec 2016 20:10:41 GMT  
		Size: 2.4 MB (2352903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b808d369ebf235587a12b9ce635ba74b9a160283df8e74bfa4dc5ff843c498bd`  
		Last Modified: Thu, 02 Feb 2017 00:01:03 GMT  
		Size: 47.0 MB (47001781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd94ac1498f0ebf912cff27dc3c3e89586d502ccbd169b3c9185e3343fbff4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8002b9f3e5d213df0ef2883033db72a953c0fca5b3aa4f382bbe6208591be6e`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27163c8222c16cc804a8f4a4d8910b1ce5ccf16542aebcbb0cf726be379b2e4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dd5fbdbbe71c108ba4eeac8aac23ef83062ed533d849ba1741ab79da512e2`  
		Last Modified: Thu, 02 Feb 2017 00:00:48 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.13`

```console
$ docker pull sentry@sha256:832cb2530279c94427c844281ee87b5b173abbd64d79d7478b7864c4ce59ac2d
```

-	Platforms:
	-	linux; amd64

### `sentry:8.13` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183784005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64bd1201547892c313c11de4d7cbffd55556e1a3c7a147b885853d8dd0b230a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:38:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:47:35 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:47:37 GMT
CMD ["python2"]
# Wed, 14 Dec 2016 19:40:39 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 14 Dec 2016 19:41:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 14 Dec 2016 19:41:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Dec 2016 19:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 19:41:14 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 14 Dec 2016 21:52:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 21:53:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 01 Feb 2017 23:57:41 GMT
ENV SENTRY_VERSION=8.13.0
# Wed, 01 Feb 2017 23:59:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 01 Feb 2017 23:59:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 01 Feb 2017 23:59:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 01 Feb 2017 23:59:25 GMT
EXPOSE 9000/tcp
# Wed, 01 Feb 2017 23:59:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 01 Feb 2017 23:59:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 23:59:26 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a044686e6e0af7e1186aff3111899868a0e203d76bfde7b2e41c4c57c9d5595c`  
		Last Modified: Mon, 19 Dec 2016 18:28:51 GMT  
		Size: 16.4 MB (16364587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac23840f8b44de4114f1914c2c8f2a30f4782ec0afc3c362e708df4e3047a20`  
		Last Modified: Wed, 21 Dec 2016 20:10:42 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefe0b6c43af45024ee147b72bd5bd04c5433db94fd372652f470d0ec472e28c`  
		Last Modified: Wed, 21 Dec 2016 20:11:04 GMT  
		Size: 62.6 MB (62609336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf3a0f5af58c264b5c0dddde7f67824e2232751a2117ba090332aea984cb63`  
		Last Modified: Wed, 21 Dec 2016 20:10:38 GMT  
		Size: 613.3 KB (613280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb9ce5250ca7215bd4b4865e1bb82faef11bad7c38dae7ff8b50dc68d95eaeb`  
		Last Modified: Wed, 21 Dec 2016 20:10:39 GMT  
		Size: 130.3 KB (130333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202daee25bc50a395705ba378c430517e359eb85539e74062b6135a11af4c155`  
		Last Modified: Wed, 21 Dec 2016 20:10:41 GMT  
		Size: 2.4 MB (2352903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b808d369ebf235587a12b9ce635ba74b9a160283df8e74bfa4dc5ff843c498bd`  
		Last Modified: Thu, 02 Feb 2017 00:01:03 GMT  
		Size: 47.0 MB (47001781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd94ac1498f0ebf912cff27dc3c3e89586d502ccbd169b3c9185e3343fbff4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8002b9f3e5d213df0ef2883033db72a953c0fca5b3aa4f382bbe6208591be6e`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27163c8222c16cc804a8f4a4d8910b1ce5ccf16542aebcbb0cf726be379b2e4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dd5fbdbbe71c108ba4eeac8aac23ef83062ed533d849ba1741ab79da512e2`  
		Last Modified: Thu, 02 Feb 2017 00:00:48 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.13.0-onbuild`

```console
$ docker pull sentry@sha256:a28238e5a80e00b5cf93321b86be036bf8df39a52c4c8eccb8901ef13666a194
```

-	Platforms:
	-	linux; amd64

### `sentry:8.13.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183784137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2632a2b00712fcd12e4a468adbf2425509f29915f106eab3e38469ff332ce108`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:38:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:47:35 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:47:37 GMT
CMD ["python2"]
# Wed, 14 Dec 2016 19:40:39 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 14 Dec 2016 19:41:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 14 Dec 2016 19:41:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Dec 2016 19:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 19:41:14 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 14 Dec 2016 21:52:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 21:53:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 01 Feb 2017 23:57:41 GMT
ENV SENTRY_VERSION=8.13.0
# Wed, 01 Feb 2017 23:59:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 01 Feb 2017 23:59:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 01 Feb 2017 23:59:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 01 Feb 2017 23:59:25 GMT
EXPOSE 9000/tcp
# Wed, 01 Feb 2017 23:59:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 01 Feb 2017 23:59:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 23:59:26 GMT
CMD ["run" "web"]
# Wed, 01 Feb 2017 23:59:26 GMT
WORKDIR /usr/src/sentry
# Wed, 01 Feb 2017 23:59:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 01 Feb 2017 23:59:27 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 01 Feb 2017 23:59:27 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 01 Feb 2017 23:59:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 01 Feb 2017 23:59:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a044686e6e0af7e1186aff3111899868a0e203d76bfde7b2e41c4c57c9d5595c`  
		Last Modified: Mon, 19 Dec 2016 18:28:51 GMT  
		Size: 16.4 MB (16364587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac23840f8b44de4114f1914c2c8f2a30f4782ec0afc3c362e708df4e3047a20`  
		Last Modified: Wed, 21 Dec 2016 20:10:42 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefe0b6c43af45024ee147b72bd5bd04c5433db94fd372652f470d0ec472e28c`  
		Last Modified: Wed, 21 Dec 2016 20:11:04 GMT  
		Size: 62.6 MB (62609336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf3a0f5af58c264b5c0dddde7f67824e2232751a2117ba090332aea984cb63`  
		Last Modified: Wed, 21 Dec 2016 20:10:38 GMT  
		Size: 613.3 KB (613280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb9ce5250ca7215bd4b4865e1bb82faef11bad7c38dae7ff8b50dc68d95eaeb`  
		Last Modified: Wed, 21 Dec 2016 20:10:39 GMT  
		Size: 130.3 KB (130333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202daee25bc50a395705ba378c430517e359eb85539e74062b6135a11af4c155`  
		Last Modified: Wed, 21 Dec 2016 20:10:41 GMT  
		Size: 2.4 MB (2352903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b808d369ebf235587a12b9ce635ba74b9a160283df8e74bfa4dc5ff843c498bd`  
		Last Modified: Thu, 02 Feb 2017 00:01:03 GMT  
		Size: 47.0 MB (47001781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd94ac1498f0ebf912cff27dc3c3e89586d502ccbd169b3c9185e3343fbff4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8002b9f3e5d213df0ef2883033db72a953c0fca5b3aa4f382bbe6208591be6e`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27163c8222c16cc804a8f4a4d8910b1ce5ccf16542aebcbb0cf726be379b2e4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dd5fbdbbe71c108ba4eeac8aac23ef83062ed533d849ba1741ab79da512e2`  
		Last Modified: Thu, 02 Feb 2017 00:00:48 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a24224556806ac0e086054b46d3c84d1a42839cafff83ab0f7219f04a2d0445`  
		Last Modified: Thu, 02 Feb 2017 00:02:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.13-onbuild`

```console
$ docker pull sentry@sha256:a28238e5a80e00b5cf93321b86be036bf8df39a52c4c8eccb8901ef13666a194
```

-	Platforms:
	-	linux; amd64

### `sentry:8.13-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183784137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2632a2b00712fcd12e4a468adbf2425509f29915f106eab3e38469ff332ce108`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 17:38:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:47:35 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:47:37 GMT
CMD ["python2"]
# Wed, 14 Dec 2016 19:40:39 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 14 Dec 2016 19:41:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 14 Dec 2016 19:41:01 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 14 Dec 2016 19:41:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Dec 2016 19:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 19:41:14 GMT
ENV TINI_VERSION=v0.10.0
# Wed, 14 Dec 2016 21:52:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 14 Dec 2016 21:53:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 01 Feb 2017 23:57:41 GMT
ENV SENTRY_VERSION=8.13.0
# Wed, 01 Feb 2017 23:59:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Wed, 01 Feb 2017 23:59:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 01 Feb 2017 23:59:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 01 Feb 2017 23:59:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 01 Feb 2017 23:59:25 GMT
EXPOSE 9000/tcp
# Wed, 01 Feb 2017 23:59:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 01 Feb 2017 23:59:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Feb 2017 23:59:26 GMT
CMD ["run" "web"]
# Wed, 01 Feb 2017 23:59:26 GMT
WORKDIR /usr/src/sentry
# Wed, 01 Feb 2017 23:59:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 01 Feb 2017 23:59:27 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 01 Feb 2017 23:59:27 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 01 Feb 2017 23:59:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 01 Feb 2017 23:59:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a044686e6e0af7e1186aff3111899868a0e203d76bfde7b2e41c4c57c9d5595c`  
		Last Modified: Mon, 19 Dec 2016 18:28:51 GMT  
		Size: 16.4 MB (16364587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac23840f8b44de4114f1914c2c8f2a30f4782ec0afc3c362e708df4e3047a20`  
		Last Modified: Wed, 21 Dec 2016 20:10:42 GMT  
		Size: 4.3 KB (4344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eefe0b6c43af45024ee147b72bd5bd04c5433db94fd372652f470d0ec472e28c`  
		Last Modified: Wed, 21 Dec 2016 20:11:04 GMT  
		Size: 62.6 MB (62609336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acf3a0f5af58c264b5c0dddde7f67824e2232751a2117ba090332aea984cb63`  
		Last Modified: Wed, 21 Dec 2016 20:10:38 GMT  
		Size: 613.3 KB (613280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb9ce5250ca7215bd4b4865e1bb82faef11bad7c38dae7ff8b50dc68d95eaeb`  
		Last Modified: Wed, 21 Dec 2016 20:10:39 GMT  
		Size: 130.3 KB (130333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202daee25bc50a395705ba378c430517e359eb85539e74062b6135a11af4c155`  
		Last Modified: Wed, 21 Dec 2016 20:10:41 GMT  
		Size: 2.4 MB (2352903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b808d369ebf235587a12b9ce635ba74b9a160283df8e74bfa4dc5ff843c498bd`  
		Last Modified: Thu, 02 Feb 2017 00:01:03 GMT  
		Size: 47.0 MB (47001781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8bd94ac1498f0ebf912cff27dc3c3e89586d502ccbd169b3c9185e3343fbff4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8002b9f3e5d213df0ef2883033db72a953c0fca5b3aa4f382bbe6208591be6e`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27163c8222c16cc804a8f4a4d8910b1ce5ccf16542aebcbb0cf726be379b2e4`  
		Last Modified: Thu, 02 Feb 2017 00:00:47 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c4dd5fbdbbe71c108ba4eeac8aac23ef83062ed533d849ba1741ab79da512e2`  
		Last Modified: Thu, 02 Feb 2017 00:00:48 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a24224556806ac0e086054b46d3c84d1a42839cafff83ab0f7219f04a2d0445`  
		Last Modified: Thu, 02 Feb 2017 00:02:20 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.14.1`

```console
$ docker pull sentry@sha256:8e4c0933c950d5d27245b7fba9cbe3c37ed3f05ad64523ec19c28be395961f7a
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531fef249ad65d8ac6964f7e146d8847858de35893616cec86a3e26365cb1df2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.14`

```console
$ docker pull sentry@sha256:8e4c0933c950d5d27245b7fba9cbe3c37ed3f05ad64523ec19c28be395961f7a
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531fef249ad65d8ac6964f7e146d8847858de35893616cec86a3e26365cb1df2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:8e4c0933c950d5d27245b7fba9cbe3c37ed3f05ad64523ec19c28be395961f7a
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531fef249ad65d8ac6964f7e146d8847858de35893616cec86a3e26365cb1df2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:8e4c0933c950d5d27245b7fba9cbe3c37ed3f05ad64523ec19c28be395961f7a
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:531fef249ad65d8ac6964f7e146d8847858de35893616cec86a3e26365cb1df2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.14.1-onbuild`

```console
$ docker pull sentry@sha256:ad2de6b0b9fd9d8260a08fe2ac60182eabb5197807b3fc6fbd350a83ad8a36fb
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14.1-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c597b44e80e0f8e14cf9196a67d250ca52f918d159e7fd6215931e96a5f7c6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
# Wed, 22 Mar 2017 17:07:26 GMT
WORKDIR /usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2766057a485bffbd841394fac241bca96b43f49e615a94bf69e87123fa46d7`  
		Last Modified: Thu, 23 Mar 2017 17:50:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.14-onbuild`

```console
$ docker pull sentry@sha256:ad2de6b0b9fd9d8260a08fe2ac60182eabb5197807b3fc6fbd350a83ad8a36fb
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c597b44e80e0f8e14cf9196a67d250ca52f918d159e7fd6215931e96a5f7c6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
# Wed, 22 Mar 2017 17:07:26 GMT
WORKDIR /usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2766057a485bffbd841394fac241bca96b43f49e615a94bf69e87123fa46d7`  
		Last Modified: Thu, 23 Mar 2017 17:50:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:ad2de6b0b9fd9d8260a08fe2ac60182eabb5197807b3fc6fbd350a83ad8a36fb
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c597b44e80e0f8e14cf9196a67d250ca52f918d159e7fd6215931e96a5f7c6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
# Wed, 22 Mar 2017 17:07:26 GMT
WORKDIR /usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2766057a485bffbd841394fac241bca96b43f49e615a94bf69e87123fa46d7`  
		Last Modified: Thu, 23 Mar 2017 17:50:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:ad2de6b0b9fd9d8260a08fe2ac60182eabb5197807b3fc6fbd350a83ad8a36fb
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.7 MB (184695273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c597b44e80e0f8e14cf9196a67d250ca52f918d159e7fd6215931e96a5f7c6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 18:33:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Mar 2017 18:33:40 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 23:42:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 23:42:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 21 Mar 2017 23:42:40 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 21 Mar 2017 23:42:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 21 Mar 2017 23:44:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 21 Mar 2017 23:44:39 GMT
CMD ["python2"]
# Wed, 22 Mar 2017 17:04:42 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 22 Mar 2017 17:05:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 22 Mar 2017 17:05:11 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 22 Mar 2017 17:05:11 GMT
ENV GOSU_VERSION=1.10
# Wed, 22 Mar 2017 17:05:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:21 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 22 Mar 2017 17:05:30 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 22 Mar 2017 17:05:46 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 22 Mar 2017 17:05:46 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 22 Mar 2017 17:07:21 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 22 Mar 2017 17:07:22 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 22 Mar 2017 17:07:23 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 22 Mar 2017 17:07:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 22 Mar 2017 17:07:24 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 22 Mar 2017 17:07:24 GMT
EXPOSE 9000/tcp
# Wed, 22 Mar 2017 17:07:25 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 22 Mar 2017 17:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 22 Mar 2017 17:07:26 GMT
CMD ["run" "web"]
# Wed, 22 Mar 2017 17:07:26 GMT
WORKDIR /usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 22 Mar 2017 17:07:27 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 22 Mar 2017 17:07:28 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede2632a1ec5c592db4aa7bc3ccd6de4faea0f7792e686792e4acd54b8486f60`  
		Last Modified: Thu, 23 Mar 2017 17:02:36 GMT  
		Size: 3.4 MB (3415620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e707e000d50cb9ff7196cba36993274734b64a712732e5737df9d6e71f43d8`  
		Last Modified: Thu, 23 Mar 2017 17:02:42 GMT  
		Size: 16.5 MB (16471980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16afcc06df9ba722a96a90b213226b626c77a44b6f060487875c69ffbf3e82f5`  
		Last Modified: Thu, 23 Mar 2017 17:48:11 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6a9745ebbc1606208897ffec1ce772572f2c8b2632619c1ec31e19aaf5d0fe`  
		Last Modified: Thu, 23 Mar 2017 17:48:38 GMT  
		Size: 62.6 MB (62625126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cff6444e2c6a3ca248aad3786d6a6f09306bc8d413ad5126301f79eb20c32d`  
		Last Modified: Thu, 23 Mar 2017 17:48:09 GMT  
		Size: 613.3 KB (613297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20727d007c84d95221cf4278348e69cf8fa5df7c40d90bd4529336483253c755`  
		Last Modified: Thu, 23 Mar 2017 17:48:08 GMT  
		Size: 130.6 KB (130649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df57a474ca0f49b662ad0b550b3c350d531038d8944966e9630bc43703c1631`  
		Last Modified: Thu, 23 Mar 2017 17:48:10 GMT  
		Size: 2.4 MB (2351345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3810b33339664fc1a9f22c9ce558012137b5e8f5cba20f748079008585e3df`  
		Last Modified: Thu, 23 Mar 2017 17:48:41 GMT  
		Size: 47.6 MB (47639243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0618ff03234b774735f74fc88aa0e1bc4d7fb30c7134cfec33703ca8f4afc90a`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1daeaa67026a054d5f80cccd5a8da66a76bda946d1e017c863f94e8a5de0f187`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420a14d8ef4b944ade6fa56a2d97a4346a97c22e1d3beb3c1e17abb1b0fabb1`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78bc3ac20ac3e9228d6c982970cbc6881e0f707eb9d6eba54003d748ee9c4b54`  
		Last Modified: Thu, 23 Mar 2017 17:48:06 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e2766057a485bffbd841394fac241bca96b43f49e615a94bf69e87123fa46d7`  
		Last Modified: Thu, 23 Mar 2017 17:50:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
