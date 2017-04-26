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
$ docker pull sentry@sha256:0d4ff9a5652093e65d491c1ff214b4ebc34fcc8cc2b942e3aa9087ad8730cb82
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187795801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5025bea7669c0e55b87d0049eec443509e8e0abc6f5c51006d4b1dc143b793ab`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:51:33 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 26 Apr 2017 22:53:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:53:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:53:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:53:46 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:47 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:49 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:53:49 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:53:50 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:53:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:53:51 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fdd268d60c72453a715bc496fb8d19ca3312371f5c9384b38349191020ac95`  
		Last Modified: Wed, 26 Apr 2017 22:59:13 GMT  
		Size: 48.1 MB (48140442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a99c084a2423f4de260daf1fae1d19fabc7dcb6a66106f61805078b9c801db`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2437e8b54dfa9a874a669354f87a68db64d7c16ff28436b3787f008f9188a8`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f7b381c003f93b053b4d8ed48a98bfa05d82603d2a60fc73a04e8374d2e58d`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9b84dcf870cec7837963f328f4b6d5962befab72d522044bad619ad8f01d59`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.14`

```console
$ docker pull sentry@sha256:0d4ff9a5652093e65d491c1ff214b4ebc34fcc8cc2b942e3aa9087ad8730cb82
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187795801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5025bea7669c0e55b87d0049eec443509e8e0abc6f5c51006d4b1dc143b793ab`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:51:33 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 26 Apr 2017 22:53:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:53:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:53:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:53:46 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:47 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:49 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:53:49 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:53:50 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:53:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:53:51 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fdd268d60c72453a715bc496fb8d19ca3312371f5c9384b38349191020ac95`  
		Last Modified: Wed, 26 Apr 2017 22:59:13 GMT  
		Size: 48.1 MB (48140442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a99c084a2423f4de260daf1fae1d19fabc7dcb6a66106f61805078b9c801db`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2437e8b54dfa9a874a669354f87a68db64d7c16ff28436b3787f008f9188a8`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f7b381c003f93b053b4d8ed48a98bfa05d82603d2a60fc73a04e8374d2e58d`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9b84dcf870cec7837963f328f4b6d5962befab72d522044bad619ad8f01d59`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.14.1-onbuild`

```console
$ docker pull sentry@sha256:c9581c5faab4f136f322e1d9b96da0f153048dfdc9534c62e03432c58c2f1ef4
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14.1-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187795931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bea200417b9a8eff70ffaf189f78e6fff5a561dfeb26dcd7e4ac7ad88424a45`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:51:33 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 26 Apr 2017 22:53:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:53:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:53:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:53:46 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:47 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:49 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:53:49 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:53:50 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:53:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:53:51 GMT
CMD ["run" "web"]
# Wed, 26 Apr 2017 22:54:11 GMT
WORKDIR /usr/src/sentry
# Wed, 26 Apr 2017 22:54:11 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 26 Apr 2017 22:54:12 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 26 Apr 2017 22:54:13 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 26 Apr 2017 22:54:14 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 26 Apr 2017 22:54:14 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fdd268d60c72453a715bc496fb8d19ca3312371f5c9384b38349191020ac95`  
		Last Modified: Wed, 26 Apr 2017 22:59:13 GMT  
		Size: 48.1 MB (48140442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a99c084a2423f4de260daf1fae1d19fabc7dcb6a66106f61805078b9c801db`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2437e8b54dfa9a874a669354f87a68db64d7c16ff28436b3787f008f9188a8`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f7b381c003f93b053b4d8ed48a98bfa05d82603d2a60fc73a04e8374d2e58d`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9b84dcf870cec7837963f328f4b6d5962befab72d522044bad619ad8f01d59`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d0a3ea3a0b5cba2d2daa8b8fdb0228494fd3c6c5a8aaa2cc6a1a09a749a5b`  
		Last Modified: Wed, 26 Apr 2017 23:00:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.14-onbuild`

```console
$ docker pull sentry@sha256:c9581c5faab4f136f322e1d9b96da0f153048dfdc9534c62e03432c58c2f1ef4
```

-	Platforms:
	-	linux; amd64

### `sentry:8.14-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187795931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bea200417b9a8eff70ffaf189f78e6fff5a561dfeb26dcd7e4ac7ad88424a45`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:51:33 GMT
ENV SENTRY_VERSION=8.14.1
# Wed, 26 Apr 2017 22:53:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:53:44 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:53:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:53:46 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:47 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:53:49 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:53:49 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:53:50 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:53:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:53:51 GMT
CMD ["run" "web"]
# Wed, 26 Apr 2017 22:54:11 GMT
WORKDIR /usr/src/sentry
# Wed, 26 Apr 2017 22:54:11 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 26 Apr 2017 22:54:12 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 26 Apr 2017 22:54:13 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 26 Apr 2017 22:54:14 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 26 Apr 2017 22:54:14 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86fdd268d60c72453a715bc496fb8d19ca3312371f5c9384b38349191020ac95`  
		Last Modified: Wed, 26 Apr 2017 22:59:13 GMT  
		Size: 48.1 MB (48140442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a99c084a2423f4de260daf1fae1d19fabc7dcb6a66106f61805078b9c801db`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2437e8b54dfa9a874a669354f87a68db64d7c16ff28436b3787f008f9188a8`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f7b381c003f93b053b4d8ed48a98bfa05d82603d2a60fc73a04e8374d2e58d`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9b84dcf870cec7837963f328f4b6d5962befab72d522044bad619ad8f01d59`  
		Last Modified: Wed, 26 Apr 2017 22:59:01 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d0a3ea3a0b5cba2d2daa8b8fdb0228494fd3c6c5a8aaa2cc6a1a09a749a5b`  
		Last Modified: Wed, 26 Apr 2017 23:00:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15.0`

```console
$ docker pull sentry@sha256:e2068eb7b89c2b364b5e32be1eb8bc125e4bf1bc92e9d4a70b245590a25a88bd
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45e282df34648296643a4d5489dc8dacc6803fc0a4cf8f99e73efae6f235bad`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15`

```console
$ docker pull sentry@sha256:e2068eb7b89c2b364b5e32be1eb8bc125e4bf1bc92e9d4a70b245590a25a88bd
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45e282df34648296643a4d5489dc8dacc6803fc0a4cf8f99e73efae6f235bad`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:e2068eb7b89c2b364b5e32be1eb8bc125e4bf1bc92e9d4a70b245590a25a88bd
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45e282df34648296643a4d5489dc8dacc6803fc0a4cf8f99e73efae6f235bad`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:e2068eb7b89c2b364b5e32be1eb8bc125e4bf1bc92e9d4a70b245590a25a88bd
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45e282df34648296643a4d5489dc8dacc6803fc0a4cf8f99e73efae6f235bad`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15.0-onbuild`

```console
$ docker pull sentry@sha256:bf0c8512392947b26b6aefe20d3903043a0f7ee028d16ef884c5145b6290cc2f
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15.0-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ad0e26f5dd64c5ff183be2c439741f4b3a47d7fa2d94ef604d6822cf58af4a`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
CMD ["run" "web"]
# Wed, 26 Apr 2017 22:58:20 GMT
WORKDIR /usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 26 Apr 2017 22:58:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 26 Apr 2017 22:58:39 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 26 Apr 2017 22:58:40 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6e5350363902fcb7aafcc3fff3e2f1af633d06a7c0d0ce70dfc0f75156f6b`  
		Last Modified: Wed, 26 Apr 2017 23:03:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.15-onbuild`

```console
$ docker pull sentry@sha256:bf0c8512392947b26b6aefe20d3903043a0f7ee028d16ef884c5145b6290cc2f
```

-	Platforms:
	-	linux; amd64

### `sentry:8.15-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ad0e26f5dd64c5ff183be2c439741f4b3a47d7fa2d94ef604d6822cf58af4a`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
CMD ["run" "web"]
# Wed, 26 Apr 2017 22:58:20 GMT
WORKDIR /usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 26 Apr 2017 22:58:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 26 Apr 2017 22:58:39 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 26 Apr 2017 22:58:40 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6e5350363902fcb7aafcc3fff3e2f1af633d06a7c0d0ce70dfc0f75156f6b`  
		Last Modified: Wed, 26 Apr 2017 23:03:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:bf0c8512392947b26b6aefe20d3903043a0f7ee028d16ef884c5145b6290cc2f
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ad0e26f5dd64c5ff183be2c439741f4b3a47d7fa2d94ef604d6822cf58af4a`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
CMD ["run" "web"]
# Wed, 26 Apr 2017 22:58:20 GMT
WORKDIR /usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 26 Apr 2017 22:58:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 26 Apr 2017 22:58:39 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 26 Apr 2017 22:58:40 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6e5350363902fcb7aafcc3fff3e2f1af633d06a7c0d0ce70dfc0f75156f6b`  
		Last Modified: Wed, 26 Apr 2017 23:03:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:bf0c8512392947b26b6aefe20d3903043a0f7ee028d16ef884c5145b6290cc2f
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188026542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ad0e26f5dd64c5ff183be2c439741f4b3a47d7fa2d94ef604d6822cf58af4a`
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
# Tue, 25 Apr 2017 04:22:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 26 Apr 2017 19:34:47 GMT
ENV PYTHON_SETUPTOOLS_VERSION=35.0.1
# Wed, 26 Apr 2017 19:34:48 GMT
ENV PYTHON_WHEEL_VERSION=0.29.0
# Wed, 26 Apr 2017 19:37:17 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 		"wheel==$PYTHON_WHEEL_VERSION" 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 26 Apr 2017 19:37:22 GMT
CMD ["python2"]
# Wed, 26 Apr 2017 22:50:02 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 26 Apr 2017 22:50:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 26 Apr 2017 22:50:30 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 26 Apr 2017 22:50:31 GMT
ENV GOSU_VERSION=1.10
# Wed, 26 Apr 2017 22:50:49 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:50:50 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 26 Apr 2017 22:51:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 26 Apr 2017 22:51:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 26 Apr 2017 22:54:49 GMT
ENV SENTRY_VERSION=8.15.0
# Wed, 26 Apr 2017 22:56:45 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 26 Apr 2017 22:56:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 26 Apr 2017 22:56:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 26 Apr 2017 22:57:07 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:08 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 26 Apr 2017 22:57:09 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 26 Apr 2017 22:57:26 GMT
EXPOSE 9000/tcp
# Wed, 26 Apr 2017 22:57:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 26 Apr 2017 22:57:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 26 Apr 2017 22:57:29 GMT
CMD ["run" "web"]
# Wed, 26 Apr 2017 22:58:20 GMT
WORKDIR /usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 26 Apr 2017 22:58:21 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 26 Apr 2017 22:58:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 26 Apr 2017 22:58:39 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 26 Apr 2017 22:58:40 GMT
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
	-	`sha256:d9acb0d1bdb2ee290093db1f0bec6517460134381f164184702ad664a6139bb9`  
		Last Modified: Wed, 26 Apr 2017 21:32:14 GMT  
		Size: 16.7 MB (16670630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb23df443fdb30b32cf23059374acf51113d76e157af1744dfcf5d9cbea567f0`  
		Last Modified: Wed, 26 Apr 2017 22:59:06 GMT  
		Size: 4.4 KB (4375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d5f4ff602a0fcc4c916d57c4642ac8eadafcb114ce1d20f36929dce19270bbf`  
		Last Modified: Wed, 26 Apr 2017 22:59:20 GMT  
		Size: 63.8 MB (63832411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3f3f4447bf9cf30a94cc5007915a85e82ecf81d3ad174c7b4d9bd389314b36`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 624.1 KB (624138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a51565b3d1cff3b6069854ba983c4dba29ed0971fa6d16b4274eaf15a8f885`  
		Last Modified: Wed, 26 Apr 2017 22:59:04 GMT  
		Size: 131.5 KB (131522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ca2fcf7e04465b1d833bf6a0ee6ddc22c73bc20a32514d43b00bf9926667de`  
		Last Modified: Wed, 26 Apr 2017 22:59:05 GMT  
		Size: 2.4 MB (2358955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06fa25a443d7ce467c2afa36177a5c7c68fb1d9ccb85e2e214b76887497733c`  
		Last Modified: Wed, 26 Apr 2017 23:01:48 GMT  
		Size: 48.4 MB (48371052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64c25e242ecc8632cc877614859f3b6df4cabe3fb7e220556da08fdaab1a8ee`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27277d407352c4bcff1f4f523bde3e9214491e1c6c01159f361cd7a21842726b`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 3.4 KB (3403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eb0055364664465ebe1b476f462d1ecafa2ff795af21196dab095b1ce33b5f`  
		Last Modified: Wed, 26 Apr 2017 23:01:37 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c94f4d5b836a4f124325bbe56c7b354193a578b2c50ad2c29c793687289e6d`  
		Last Modified: Wed, 26 Apr 2017 23:01:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6e5350363902fcb7aafcc3fff3e2f1af633d06a7c0d0ce70dfc0f75156f6b`  
		Last Modified: Wed, 26 Apr 2017 23:03:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
