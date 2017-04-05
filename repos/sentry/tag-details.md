<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8.14.1`](#sentry8141)
-	[`sentry:8.14`](#sentry814)
-	[`sentry:8.14.1-onbuild`](#sentry8141-onbuild)
-	[`sentry:8.14-onbuild`](#sentry814-onbuild)
-	[`sentry:8.15.0`](#sentry8150)
-	[`sentry:8.15`](#sentry815)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.15.0-onbuild`](#sentry8150-onbuild)
-	[`sentry:8.15-onbuild`](#sentry815-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

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

## `sentry:8.15.0`

```console
$ docker pull sentry@sha256:5cdaec3c0068a1cf3c15782f5693e60111c8ff9edc5007c6751edbb306f3d8d4
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15.0` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5952b63aa3d5aa584a60d12a5e7eed9c93ab369a646cfa357db3fbd979ca00`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15`

```console
$ docker pull sentry@sha256:5cdaec3c0068a1cf3c15782f5693e60111c8ff9edc5007c6751edbb306f3d8d4
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5952b63aa3d5aa584a60d12a5e7eed9c93ab369a646cfa357db3fbd979ca00`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:5cdaec3c0068a1cf3c15782f5693e60111c8ff9edc5007c6751edbb306f3d8d4
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5952b63aa3d5aa584a60d12a5e7eed9c93ab369a646cfa357db3fbd979ca00`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:5cdaec3c0068a1cf3c15782f5693e60111c8ff9edc5007c6751edbb306f3d8d4
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5952b63aa3d5aa584a60d12a5e7eed9c93ab369a646cfa357db3fbd979ca00`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15.0-onbuild`

```console
$ docker pull sentry@sha256:834252ebf977cbbcc6bcb9af4ee868eb3aee83c53c314fa344e9d03ce0894f23
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15.0-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d88d343a8c0774e4e6d73f7d0d9724ae3b112d75400fd3c0be211be8db8554`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
CMD ["run" "web"]
# Wed, 05 Apr 2017 21:53:29 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Apr 2017 21:53:30 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92845ff58dca0a7a0cbbb2832b1bc20b77be1981b775e9d1e39d9e76a0174e6f`  
		Last Modified: Wed, 05 Apr 2017 21:56:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15-onbuild`

```console
$ docker pull sentry@sha256:834252ebf977cbbcc6bcb9af4ee868eb3aee83c53c314fa344e9d03ce0894f23
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d88d343a8c0774e4e6d73f7d0d9724ae3b112d75400fd3c0be211be8db8554`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
CMD ["run" "web"]
# Wed, 05 Apr 2017 21:53:29 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Apr 2017 21:53:30 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92845ff58dca0a7a0cbbb2832b1bc20b77be1981b775e9d1e39d9e76a0174e6f`  
		Last Modified: Wed, 05 Apr 2017 21:56:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:834252ebf977cbbcc6bcb9af4ee868eb3aee83c53c314fa344e9d03ce0894f23
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d88d343a8c0774e4e6d73f7d0d9724ae3b112d75400fd3c0be211be8db8554`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
CMD ["run" "web"]
# Wed, 05 Apr 2017 21:53:29 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Apr 2017 21:53:30 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92845ff58dca0a7a0cbbb2832b1bc20b77be1981b775e9d1e39d9e76a0174e6f`  
		Last Modified: Wed, 05 Apr 2017 21:56:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:834252ebf977cbbcc6bcb9af4ee868eb3aee83c53c314fa344e9d03ce0894f23
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184977641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d88d343a8c0774e4e6d73f7d0d9724ae3b112d75400fd3c0be211be8db8554`
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
# Wed, 05 Apr 2017 21:51:40 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 05 Apr 2017 21:53:23 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 05 Apr 2017 21:53:24 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 05 Apr 2017 21:53:25 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 05 Apr 2017 21:53:25 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 05 Apr 2017 21:53:26 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 05 Apr 2017 21:53:27 GMT
EXPOSE 9000/tcp
# Wed, 05 Apr 2017 21:53:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 05 Apr 2017 21:53:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Apr 2017 21:53:28 GMT
CMD ["run" "web"]
# Wed, 05 Apr 2017 21:53:29 GMT
WORKDIR /usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 05 Apr 2017 21:53:29 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 05 Apr 2017 21:53:30 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 05 Apr 2017 21:53:30 GMT
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
	-	`sha256:be130870bc02ce7895df2c4c043557970c4ba62da0b8e2b9d01207922d320934`  
		Last Modified: Wed, 05 Apr 2017 21:55:31 GMT  
		Size: 47.9 MB (47921615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c1425cec28eb5ef1d616c00238d7a264428602be4223127e06f4363fe4c9a0`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661eedb513eb37b71fee22192c9a7b9a3ec9862245f75652786982c6c42773a8`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 3.4 KB (3396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbdbc817994f360045ff15324c27f4ee395f6115b5ed578377b7c5798f772392`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b526e0380de7cd0f0371daeb3e7e73e631e832f63b87e354ca25ddeacde9c8d`  
		Last Modified: Wed, 05 Apr 2017 21:55:16 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92845ff58dca0a7a0cbbb2832b1bc20b77be1981b775e9d1e39d9e76a0174e6f`  
		Last Modified: Wed, 05 Apr 2017 21:56:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
