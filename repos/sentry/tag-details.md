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
$ docker pull sentry@sha256:d655aca05989e924b8efaecf119f74c19d2dc1a39361ebe9a54197ca23f5bb24
```

-	Platforms:
	-	linux; amd64

### `sentry:8.10.0` - linux; amd64

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

## `sentry:8.10`

**does not exist** (yet?)

## `sentry:8`

```console
$ docker pull sentry@sha256:d655aca05989e924b8efaecf119f74c19d2dc1a39361ebe9a54197ca23f5bb24
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

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
$ docker pull sentry@sha256:1172d9ad4586ab653db5cd5bb4f91f484baf97a7de2b68cffd7e2afc628454df
```

-	Platforms:
	-	linux; amd64

### `sentry:8.10.0-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179510734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f071e25a180853f331a29c928031705ebc9c1f3cf9d178eb736c324b358d88`
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
# Wed, 02 Nov 2016 20:05:34 GMT
WORKDIR /usr/src/sentry
# Wed, 02 Nov 2016 20:05:35 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 02 Nov 2016 20:05:35 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 02 Nov 2016 20:05:36 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 02 Nov 2016 20:05:36 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 02 Nov 2016 20:05:36 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:211bdca637de39c1f352345ed00d12b51500d89ccca002cda897ca84765b32c8`  
		Last Modified: Wed, 02 Nov 2016 20:06:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.10-onbuild`

```console
$ docker pull sentry@sha256:1172d9ad4586ab653db5cd5bb4f91f484baf97a7de2b68cffd7e2afc628454df
```

-	Platforms:
	-	linux; amd64

### `sentry:8.10-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.5 MB (179510734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f071e25a180853f331a29c928031705ebc9c1f3cf9d178eb736c324b358d88`
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
# Wed, 02 Nov 2016 20:05:34 GMT
WORKDIR /usr/src/sentry
# Wed, 02 Nov 2016 20:05:35 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 02 Nov 2016 20:05:35 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 02 Nov 2016 20:05:36 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 02 Nov 2016 20:05:36 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 02 Nov 2016 20:05:36 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:211bdca637de39c1f352345ed00d12b51500d89ccca002cda897ca84765b32c8`  
		Last Modified: Wed, 02 Nov 2016 20:06:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:168403503d9a68e35d0dd5a1033a9e776ac5e0e8f07a80d58f459afc8cf53427
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390438839d88e337327d46b45bd1641f910c136cbdacb66e1043455e63fad491`
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
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 07:59:36 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 07:59:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32c0e7241f1c8e21878eef9d39b154b3c7d6982e48b2f4fc6bc5d167236b66`  
		Last Modified: Tue, 01 Nov 2016 07:59:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:168403503d9a68e35d0dd5a1033a9e776ac5e0e8f07a80d58f459afc8cf53427
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390438839d88e337327d46b45bd1641f910c136cbdacb66e1043455e63fad491`
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
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 07:59:36 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 07:59:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32c0e7241f1c8e21878eef9d39b154b3c7d6982e48b2f4fc6bc5d167236b66`  
		Last Modified: Tue, 01 Nov 2016 07:59:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9.0`

```console
$ docker pull sentry@sha256:7c6051cfa7858108dbcd080d2000bdae79085be66d6ee0d6cd64d5105adee483
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9.0` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebeda6520cda81bf8585d0280c3d8a962488ef054940b15a933ed98e84979d5`
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
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
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
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9`

```console
$ docker pull sentry@sha256:7c6051cfa7858108dbcd080d2000bdae79085be66d6ee0d6cd64d5105adee483
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebeda6520cda81bf8585d0280c3d8a962488ef054940b15a933ed98e84979d5`
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
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
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
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9.0-onbuild`

```console
$ docker pull sentry@sha256:168403503d9a68e35d0dd5a1033a9e776ac5e0e8f07a80d58f459afc8cf53427
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9.0-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390438839d88e337327d46b45bd1641f910c136cbdacb66e1043455e63fad491`
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
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 07:59:36 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 07:59:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32c0e7241f1c8e21878eef9d39b154b3c7d6982e48b2f4fc6bc5d167236b66`  
		Last Modified: Tue, 01 Nov 2016 07:59:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9-onbuild`

```console
$ docker pull sentry@sha256:168403503d9a68e35d0dd5a1033a9e776ac5e0e8f07a80d58f459afc8cf53427
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390438839d88e337327d46b45bd1641f910c136cbdacb66e1043455e63fad491`
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
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 07:59:36 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 07:59:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32c0e7241f1c8e21878eef9d39b154b3c7d6982e48b2f4fc6bc5d167236b66`  
		Last Modified: Tue, 01 Nov 2016 07:59:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
