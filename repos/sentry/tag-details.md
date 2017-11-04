<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8`](#sentry8)
-	[`sentry:8.20`](#sentry820)
-	[`sentry:8.20.0`](#sentry8200)
-	[`sentry:8.20.0-onbuild`](#sentry8200-onbuild)
-	[`sentry:8.20-onbuild`](#sentry820-onbuild)
-	[`sentry:8.21`](#sentry821)
-	[`sentry:8.21.0`](#sentry8210)
-	[`sentry:8.21.0-onbuild`](#sentry8210-onbuild)
-	[`sentry:8.21-onbuild`](#sentry821-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8`

```console
$ docker pull sentry@sha256:c1edf4445684143e8906191ab195597e9e3cb722bc86555276d8996602b33584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

```console
$ docker pull sentry@sha256:34bd229b1bbef979b3a76e354a07347faf4d52f6c3c49b519a6656826817fe25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e136f44c0dda655bec68aa9863d7fa0705dfecfae501d00db903f03e7fb6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 14:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:52:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 14:52:11 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 14:54:34 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 14:54:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 14:54:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 14:54:52 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 22:13:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 22:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 22:14:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 22:14:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:14:40 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 22:14:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:15:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 22:15:22 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 22:16:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 22:16:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 22:16:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 22:16:59 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 22:16:59 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 22:17:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 22:17:00 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c103c31b601ab793ee50fe7b500cf153060996ef8cb07d46927990919eb371`  
		Last Modified: Sat, 04 Nov 2017 15:04:32 GMT  
		Size: 2.7 MB (2710531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bfff8f2f5ea357fca9a460acb6d6867d8db3e2a601d810470bc6a2534496e8`  
		Last Modified: Sat, 04 Nov 2017 15:04:36 GMT  
		Size: 14.9 MB (14933702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66f3cbc9f3afd7ed1266d653527b49adf2c18bb72fa4506959c826df96dccc`  
		Last Modified: Sat, 04 Nov 2017 15:04:33 GMT  
		Size: 2.0 MB (1965039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959be65ada49d1b4bbf640d32ef70f7b6600b6300432ab43e30fd2de3f0cecf1`  
		Last Modified: Sat, 04 Nov 2017 22:17:34 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f3ab8e7c5071327c4d287e9132f7e2488039ffe4d18606ed7f22a1bb7cf2f`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 53.7 MB (53658678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a680abe3bcd072581d318f1d59f352dd26e95e624754d3e2f5df84a93c05`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 844.8 KB (844810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5bbf570b9473a8c961c669aa35b62e61f6c5f280324f49a108d1b7d1adc94d`  
		Last Modified: Sat, 04 Nov 2017 22:17:32 GMT  
		Size: 352.1 KB (352113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82fb1e0f1a0a96319bc45f379a08cff4ae8a13659e12df072c1c9370d2dda30`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 2.6 MB (2591057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5af1cd88968141ea2def302ad80f1d3f58d984eab17bcf8c22232c8b779e74`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 55.8 MB (55806091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956f37adf70065fa4eb04f7856c434d6765a66cc5466a8969baf02805ef381ae`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a62ecf68ae0ebdf2e03bb82351545ac3aeaa64186ed14e975ce8796bcbebda`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7173abb51e92139764857c70ed8931e9f019e7bd87614c2c075e63576406fb06`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242098e7db1f4e311e95d29f3c2c04562da01d4b91fecc690c9045c5b88a9f80`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20`

```console
$ docker pull sentry@sha256:450954e44104010ef04db99a0a482a26c43fe435b7e8cd907e9f3bd3372c8f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20` - linux; amd64

```console
$ docker pull sentry@sha256:d504d344f839d89be4b30fdd13f703a0d98d4fff99b68ead4150e5d2f5d53078
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198447438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d728fb8c2e8785e982b62cacf807668a02e9ad34d2e6a8ca8340d2579cf3de8`
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
# Fri, 03 Nov 2017 23:05:27 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:06:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:06:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:06:05 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:06:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:06:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:19 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:06:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:06:47 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 03 Nov 2017 23:08:20 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:08:21 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:08:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:08:23 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:08:24 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:08:24 GMT
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
	-	`sha256:61c6c8843c26ac968e33622f14ee0d6f9b03f1d446222e553f47e692867fd22d`  
		Last Modified: Fri, 03 Nov 2017 23:11:39 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621734eb73c8af23ec5db1684ab56369ab3ce9cac3184c56ea33a96d3face274`  
		Last Modified: Fri, 03 Nov 2017 23:11:55 GMT  
		Size: 65.8 MB (65784681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658076cac7db2a416b19aeac4c12eb09a80188249691f7bc90c2d8fb266b779`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 847.5 KB (847480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127df68ac13f3361b047f441aff637a71cb5f1b977a4d5af212aae2092827828`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 354.7 KB (354664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d0e8e1392bcdad224195d0d759aa38d6586f6df06bb4d1e80ddcc74f8b575f`  
		Last Modified: Fri, 03 Nov 2017 23:11:38 GMT  
		Size: 2.6 MB (2591134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2269a3f7137f6b3c6a4a246262a95da4c0295f4a5c90d1e59de4d2195f5dd8a4`  
		Last Modified: Fri, 03 Nov 2017 23:11:48 GMT  
		Size: 55.8 MB (55824985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b221aa35eeb51bc417bcee8ad240f189c8e07fe604455aff3c2d01ce46aaff`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2834b1ac78ed17df23d44ba39f67afa982b0f98713e616a3d5abe52c5eb2455b`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd2427a8e62e1769052ec2b65dadf4a59da85e767a7ebf281e3d14783e42a0`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba49c1845222ced367b46925190f73e83b44b9a3128c81c56dbfffe863db9c56`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20.0`

```console
$ docker pull sentry@sha256:450954e44104010ef04db99a0a482a26c43fe435b7e8cd907e9f3bd3372c8f5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20.0` - linux; amd64

```console
$ docker pull sentry@sha256:d504d344f839d89be4b30fdd13f703a0d98d4fff99b68ead4150e5d2f5d53078
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198447438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d728fb8c2e8785e982b62cacf807668a02e9ad34d2e6a8ca8340d2579cf3de8`
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
# Fri, 03 Nov 2017 23:05:27 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:06:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:06:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:06:05 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:06:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:06:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:19 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:06:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:06:47 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 03 Nov 2017 23:08:20 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:08:21 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:08:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:08:23 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:08:24 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:08:24 GMT
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
	-	`sha256:61c6c8843c26ac968e33622f14ee0d6f9b03f1d446222e553f47e692867fd22d`  
		Last Modified: Fri, 03 Nov 2017 23:11:39 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621734eb73c8af23ec5db1684ab56369ab3ce9cac3184c56ea33a96d3face274`  
		Last Modified: Fri, 03 Nov 2017 23:11:55 GMT  
		Size: 65.8 MB (65784681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658076cac7db2a416b19aeac4c12eb09a80188249691f7bc90c2d8fb266b779`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 847.5 KB (847480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127df68ac13f3361b047f441aff637a71cb5f1b977a4d5af212aae2092827828`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 354.7 KB (354664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d0e8e1392bcdad224195d0d759aa38d6586f6df06bb4d1e80ddcc74f8b575f`  
		Last Modified: Fri, 03 Nov 2017 23:11:38 GMT  
		Size: 2.6 MB (2591134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2269a3f7137f6b3c6a4a246262a95da4c0295f4a5c90d1e59de4d2195f5dd8a4`  
		Last Modified: Fri, 03 Nov 2017 23:11:48 GMT  
		Size: 55.8 MB (55824985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b221aa35eeb51bc417bcee8ad240f189c8e07fe604455aff3c2d01ce46aaff`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2834b1ac78ed17df23d44ba39f67afa982b0f98713e616a3d5abe52c5eb2455b`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd2427a8e62e1769052ec2b65dadf4a59da85e767a7ebf281e3d14783e42a0`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba49c1845222ced367b46925190f73e83b44b9a3128c81c56dbfffe863db9c56`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20.0-onbuild`

```console
$ docker pull sentry@sha256:226a25bf4ea8448be1ba91ea3d7cb8e904b169b5d87ccbe705793d4f7053b1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:72b91cddb86891cc9c46123d6ab5f2e23d9cb935b9d0efcea2af1b63bd3eb145
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198447576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e42e303954c4d0292a6c8c4e7b67cf488a20f2a94808eaedd9af746e516b63`
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
# Fri, 03 Nov 2017 23:05:27 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:06:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:06:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:06:05 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:06:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:06:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:19 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:06:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:06:47 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 03 Nov 2017 23:08:20 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:08:21 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:08:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:08:23 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:08:24 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:08:24 GMT
CMD ["run" "web"]
# Fri, 03 Nov 2017 23:08:34 GMT
WORKDIR /usr/src/sentry
# Fri, 03 Nov 2017 23:08:34 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 03 Nov 2017 23:08:34 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 03 Nov 2017 23:08:34 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 03 Nov 2017 23:08:35 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 03 Nov 2017 23:08:35 GMT
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
	-	`sha256:61c6c8843c26ac968e33622f14ee0d6f9b03f1d446222e553f47e692867fd22d`  
		Last Modified: Fri, 03 Nov 2017 23:11:39 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621734eb73c8af23ec5db1684ab56369ab3ce9cac3184c56ea33a96d3face274`  
		Last Modified: Fri, 03 Nov 2017 23:11:55 GMT  
		Size: 65.8 MB (65784681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658076cac7db2a416b19aeac4c12eb09a80188249691f7bc90c2d8fb266b779`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 847.5 KB (847480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127df68ac13f3361b047f441aff637a71cb5f1b977a4d5af212aae2092827828`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 354.7 KB (354664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d0e8e1392bcdad224195d0d759aa38d6586f6df06bb4d1e80ddcc74f8b575f`  
		Last Modified: Fri, 03 Nov 2017 23:11:38 GMT  
		Size: 2.6 MB (2591134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2269a3f7137f6b3c6a4a246262a95da4c0295f4a5c90d1e59de4d2195f5dd8a4`  
		Last Modified: Fri, 03 Nov 2017 23:11:48 GMT  
		Size: 55.8 MB (55824985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b221aa35eeb51bc417bcee8ad240f189c8e07fe604455aff3c2d01ce46aaff`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2834b1ac78ed17df23d44ba39f67afa982b0f98713e616a3d5abe52c5eb2455b`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd2427a8e62e1769052ec2b65dadf4a59da85e767a7ebf281e3d14783e42a0`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba49c1845222ced367b46925190f73e83b44b9a3128c81c56dbfffe863db9c56`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65f7691b6ee31af15d29066f240c7cf1f831930e0a427ed9800fd30927c84e3`  
		Last Modified: Fri, 03 Nov 2017 23:12:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.20-onbuild`

```console
$ docker pull sentry@sha256:226a25bf4ea8448be1ba91ea3d7cb8e904b169b5d87ccbe705793d4f7053b1c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.20-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:72b91cddb86891cc9c46123d6ab5f2e23d9cb935b9d0efcea2af1b63bd3eb145
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198447576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e42e303954c4d0292a6c8c4e7b67cf488a20f2a94808eaedd9af746e516b63`
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
# Fri, 03 Nov 2017 23:05:27 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:06:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:06:04 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:06:05 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:06:05 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:06:19 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:19 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:06:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:06:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:06:47 GMT
ENV SENTRY_VERSION=8.20.0
# Fri, 03 Nov 2017 23:08:20 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:08:21 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:08:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:08:23 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:08:23 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:08:24 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:08:24 GMT
CMD ["run" "web"]
# Fri, 03 Nov 2017 23:08:34 GMT
WORKDIR /usr/src/sentry
# Fri, 03 Nov 2017 23:08:34 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 03 Nov 2017 23:08:34 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 03 Nov 2017 23:08:34 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 03 Nov 2017 23:08:35 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 03 Nov 2017 23:08:35 GMT
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
	-	`sha256:61c6c8843c26ac968e33622f14ee0d6f9b03f1d446222e553f47e692867fd22d`  
		Last Modified: Fri, 03 Nov 2017 23:11:39 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:621734eb73c8af23ec5db1684ab56369ab3ce9cac3184c56ea33a96d3face274`  
		Last Modified: Fri, 03 Nov 2017 23:11:55 GMT  
		Size: 65.8 MB (65784681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3658076cac7db2a416b19aeac4c12eb09a80188249691f7bc90c2d8fb266b779`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 847.5 KB (847480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127df68ac13f3361b047f441aff637a71cb5f1b977a4d5af212aae2092827828`  
		Last Modified: Fri, 03 Nov 2017 23:11:37 GMT  
		Size: 354.7 KB (354664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d0e8e1392bcdad224195d0d759aa38d6586f6df06bb4d1e80ddcc74f8b575f`  
		Last Modified: Fri, 03 Nov 2017 23:11:38 GMT  
		Size: 2.6 MB (2591134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2269a3f7137f6b3c6a4a246262a95da4c0295f4a5c90d1e59de4d2195f5dd8a4`  
		Last Modified: Fri, 03 Nov 2017 23:11:48 GMT  
		Size: 55.8 MB (55824985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b221aa35eeb51bc417bcee8ad240f189c8e07fe604455aff3c2d01ce46aaff`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2834b1ac78ed17df23d44ba39f67afa982b0f98713e616a3d5abe52c5eb2455b`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 3.4 KB (3406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fd2427a8e62e1769052ec2b65dadf4a59da85e767a7ebf281e3d14783e42a0`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba49c1845222ced367b46925190f73e83b44b9a3128c81c56dbfffe863db9c56`  
		Last Modified: Fri, 03 Nov 2017 23:11:35 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e65f7691b6ee31af15d29066f240c7cf1f831930e0a427ed9800fd30927c84e3`  
		Last Modified: Fri, 03 Nov 2017 23:12:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21`

```console
$ docker pull sentry@sha256:c1edf4445684143e8906191ab195597e9e3cb722bc86555276d8996602b33584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21` - linux; amd64

```console
$ docker pull sentry@sha256:34bd229b1bbef979b3a76e354a07347faf4d52f6c3c49b519a6656826817fe25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e136f44c0dda655bec68aa9863d7fa0705dfecfae501d00db903f03e7fb6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 14:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:52:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 14:52:11 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 14:54:34 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 14:54:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 14:54:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 14:54:52 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 22:13:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 22:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 22:14:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 22:14:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:14:40 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 22:14:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:15:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 22:15:22 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 22:16:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 22:16:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 22:16:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 22:16:59 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 22:16:59 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 22:17:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 22:17:00 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c103c31b601ab793ee50fe7b500cf153060996ef8cb07d46927990919eb371`  
		Last Modified: Sat, 04 Nov 2017 15:04:32 GMT  
		Size: 2.7 MB (2710531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bfff8f2f5ea357fca9a460acb6d6867d8db3e2a601d810470bc6a2534496e8`  
		Last Modified: Sat, 04 Nov 2017 15:04:36 GMT  
		Size: 14.9 MB (14933702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66f3cbc9f3afd7ed1266d653527b49adf2c18bb72fa4506959c826df96dccc`  
		Last Modified: Sat, 04 Nov 2017 15:04:33 GMT  
		Size: 2.0 MB (1965039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959be65ada49d1b4bbf640d32ef70f7b6600b6300432ab43e30fd2de3f0cecf1`  
		Last Modified: Sat, 04 Nov 2017 22:17:34 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f3ab8e7c5071327c4d287e9132f7e2488039ffe4d18606ed7f22a1bb7cf2f`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 53.7 MB (53658678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a680abe3bcd072581d318f1d59f352dd26e95e624754d3e2f5df84a93c05`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 844.8 KB (844810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5bbf570b9473a8c961c669aa35b62e61f6c5f280324f49a108d1b7d1adc94d`  
		Last Modified: Sat, 04 Nov 2017 22:17:32 GMT  
		Size: 352.1 KB (352113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82fb1e0f1a0a96319bc45f379a08cff4ae8a13659e12df072c1c9370d2dda30`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 2.6 MB (2591057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5af1cd88968141ea2def302ad80f1d3f58d984eab17bcf8c22232c8b779e74`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 55.8 MB (55806091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956f37adf70065fa4eb04f7856c434d6765a66cc5466a8969baf02805ef381ae`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a62ecf68ae0ebdf2e03bb82351545ac3aeaa64186ed14e975ce8796bcbebda`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7173abb51e92139764857c70ed8931e9f019e7bd87614c2c075e63576406fb06`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242098e7db1f4e311e95d29f3c2c04562da01d4b91fecc690c9045c5b88a9f80`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21.0`

```console
$ docker pull sentry@sha256:c1edf4445684143e8906191ab195597e9e3cb722bc86555276d8996602b33584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21.0` - linux; amd64

```console
$ docker pull sentry@sha256:34bd229b1bbef979b3a76e354a07347faf4d52f6c3c49b519a6656826817fe25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31e136f44c0dda655bec68aa9863d7fa0705dfecfae501d00db903f03e7fb6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 14:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:52:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 14:52:11 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 14:54:34 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 14:54:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 14:54:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 14:54:52 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 22:13:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 22:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 22:14:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 22:14:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:14:40 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 22:14:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:15:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 22:15:22 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 22:16:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 22:16:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 22:16:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 22:16:59 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 22:16:59 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 22:17:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 22:17:00 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c103c31b601ab793ee50fe7b500cf153060996ef8cb07d46927990919eb371`  
		Last Modified: Sat, 04 Nov 2017 15:04:32 GMT  
		Size: 2.7 MB (2710531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bfff8f2f5ea357fca9a460acb6d6867d8db3e2a601d810470bc6a2534496e8`  
		Last Modified: Sat, 04 Nov 2017 15:04:36 GMT  
		Size: 14.9 MB (14933702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66f3cbc9f3afd7ed1266d653527b49adf2c18bb72fa4506959c826df96dccc`  
		Last Modified: Sat, 04 Nov 2017 15:04:33 GMT  
		Size: 2.0 MB (1965039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959be65ada49d1b4bbf640d32ef70f7b6600b6300432ab43e30fd2de3f0cecf1`  
		Last Modified: Sat, 04 Nov 2017 22:17:34 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f3ab8e7c5071327c4d287e9132f7e2488039ffe4d18606ed7f22a1bb7cf2f`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 53.7 MB (53658678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a680abe3bcd072581d318f1d59f352dd26e95e624754d3e2f5df84a93c05`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 844.8 KB (844810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5bbf570b9473a8c961c669aa35b62e61f6c5f280324f49a108d1b7d1adc94d`  
		Last Modified: Sat, 04 Nov 2017 22:17:32 GMT  
		Size: 352.1 KB (352113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82fb1e0f1a0a96319bc45f379a08cff4ae8a13659e12df072c1c9370d2dda30`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 2.6 MB (2591057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5af1cd88968141ea2def302ad80f1d3f58d984eab17bcf8c22232c8b779e74`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 55.8 MB (55806091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956f37adf70065fa4eb04f7856c434d6765a66cc5466a8969baf02805ef381ae`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a62ecf68ae0ebdf2e03bb82351545ac3aeaa64186ed14e975ce8796bcbebda`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7173abb51e92139764857c70ed8931e9f019e7bd87614c2c075e63576406fb06`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242098e7db1f4e311e95d29f3c2c04562da01d4b91fecc690c9045c5b88a9f80`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21.0-onbuild`

```console
$ docker pull sentry@sha256:d990b38f11eeb6912d7b9031e417ecabc1db13b36b613ab4e690027314266b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:c51b2854deef05e7c0751b7206d351e87841493504862b3fe8df5bcc98b3cc31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa176906fcb1e9b7ecf4c89c91467c345de0df7225c0cea622613018f768446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 14:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:52:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 14:52:11 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 14:54:34 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 14:54:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 14:54:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 14:54:52 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 22:13:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 22:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 22:14:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 22:14:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:14:40 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 22:14:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:15:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 22:15:22 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 22:16:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 22:16:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 22:16:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 22:16:59 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 22:16:59 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 22:17:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 22:17:00 GMT
CMD ["run" "web"]
# Sat, 04 Nov 2017 22:17:16 GMT
WORKDIR /usr/src/sentry
# Sat, 04 Nov 2017 22:17:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c103c31b601ab793ee50fe7b500cf153060996ef8cb07d46927990919eb371`  
		Last Modified: Sat, 04 Nov 2017 15:04:32 GMT  
		Size: 2.7 MB (2710531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bfff8f2f5ea357fca9a460acb6d6867d8db3e2a601d810470bc6a2534496e8`  
		Last Modified: Sat, 04 Nov 2017 15:04:36 GMT  
		Size: 14.9 MB (14933702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66f3cbc9f3afd7ed1266d653527b49adf2c18bb72fa4506959c826df96dccc`  
		Last Modified: Sat, 04 Nov 2017 15:04:33 GMT  
		Size: 2.0 MB (1965039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959be65ada49d1b4bbf640d32ef70f7b6600b6300432ab43e30fd2de3f0cecf1`  
		Last Modified: Sat, 04 Nov 2017 22:17:34 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f3ab8e7c5071327c4d287e9132f7e2488039ffe4d18606ed7f22a1bb7cf2f`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 53.7 MB (53658678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a680abe3bcd072581d318f1d59f352dd26e95e624754d3e2f5df84a93c05`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 844.8 KB (844810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5bbf570b9473a8c961c669aa35b62e61f6c5f280324f49a108d1b7d1adc94d`  
		Last Modified: Sat, 04 Nov 2017 22:17:32 GMT  
		Size: 352.1 KB (352113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82fb1e0f1a0a96319bc45f379a08cff4ae8a13659e12df072c1c9370d2dda30`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 2.6 MB (2591057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5af1cd88968141ea2def302ad80f1d3f58d984eab17bcf8c22232c8b779e74`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 55.8 MB (55806091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956f37adf70065fa4eb04f7856c434d6765a66cc5466a8969baf02805ef381ae`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a62ecf68ae0ebdf2e03bb82351545ac3aeaa64186ed14e975ce8796bcbebda`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7173abb51e92139764857c70ed8931e9f019e7bd87614c2c075e63576406fb06`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242098e7db1f4e311e95d29f3c2c04562da01d4b91fecc690c9045c5b88a9f80`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39494c4d9c5c78d4253b42ea11940782c94599afffe88091feb5d8131aa3bb47`  
		Last Modified: Sat, 04 Nov 2017 22:18:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21-onbuild`

```console
$ docker pull sentry@sha256:d990b38f11eeb6912d7b9031e417ecabc1db13b36b613ab4e690027314266b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:c51b2854deef05e7c0751b7206d351e87841493504862b3fe8df5bcc98b3cc31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa176906fcb1e9b7ecf4c89c91467c345de0df7225c0cea622613018f768446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 14:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:52:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 14:52:11 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 14:54:34 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 14:54:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 14:54:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 14:54:52 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 22:13:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 22:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 22:14:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 22:14:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:14:40 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 22:14:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:15:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 22:15:22 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 22:16:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 22:16:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 22:16:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 22:16:59 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 22:16:59 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 22:17:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 22:17:00 GMT
CMD ["run" "web"]
# Sat, 04 Nov 2017 22:17:16 GMT
WORKDIR /usr/src/sentry
# Sat, 04 Nov 2017 22:17:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c103c31b601ab793ee50fe7b500cf153060996ef8cb07d46927990919eb371`  
		Last Modified: Sat, 04 Nov 2017 15:04:32 GMT  
		Size: 2.7 MB (2710531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bfff8f2f5ea357fca9a460acb6d6867d8db3e2a601d810470bc6a2534496e8`  
		Last Modified: Sat, 04 Nov 2017 15:04:36 GMT  
		Size: 14.9 MB (14933702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66f3cbc9f3afd7ed1266d653527b49adf2c18bb72fa4506959c826df96dccc`  
		Last Modified: Sat, 04 Nov 2017 15:04:33 GMT  
		Size: 2.0 MB (1965039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959be65ada49d1b4bbf640d32ef70f7b6600b6300432ab43e30fd2de3f0cecf1`  
		Last Modified: Sat, 04 Nov 2017 22:17:34 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f3ab8e7c5071327c4d287e9132f7e2488039ffe4d18606ed7f22a1bb7cf2f`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 53.7 MB (53658678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a680abe3bcd072581d318f1d59f352dd26e95e624754d3e2f5df84a93c05`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 844.8 KB (844810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5bbf570b9473a8c961c669aa35b62e61f6c5f280324f49a108d1b7d1adc94d`  
		Last Modified: Sat, 04 Nov 2017 22:17:32 GMT  
		Size: 352.1 KB (352113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82fb1e0f1a0a96319bc45f379a08cff4ae8a13659e12df072c1c9370d2dda30`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 2.6 MB (2591057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5af1cd88968141ea2def302ad80f1d3f58d984eab17bcf8c22232c8b779e74`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 55.8 MB (55806091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956f37adf70065fa4eb04f7856c434d6765a66cc5466a8969baf02805ef381ae`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a62ecf68ae0ebdf2e03bb82351545ac3aeaa64186ed14e975ce8796bcbebda`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7173abb51e92139764857c70ed8931e9f019e7bd87614c2c075e63576406fb06`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242098e7db1f4e311e95d29f3c2c04562da01d4b91fecc690c9045c5b88a9f80`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39494c4d9c5c78d4253b42ea11940782c94599afffe88091feb5d8131aa3bb47`  
		Last Modified: Sat, 04 Nov 2017 22:18:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:d990b38f11eeb6912d7b9031e417ecabc1db13b36b613ab4e690027314266b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:c51b2854deef05e7c0751b7206d351e87841493504862b3fe8df5bcc98b3cc31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa176906fcb1e9b7ecf4c89c91467c345de0df7225c0cea622613018f768446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 14:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:52:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 14:52:11 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 14:54:34 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 14:54:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 14:54:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 14:54:52 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 22:13:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 22:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 22:14:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 22:14:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:14:40 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 22:14:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:15:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 22:15:22 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 22:16:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 22:16:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 22:16:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 22:16:59 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 22:16:59 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 22:17:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 22:17:00 GMT
CMD ["run" "web"]
# Sat, 04 Nov 2017 22:17:16 GMT
WORKDIR /usr/src/sentry
# Sat, 04 Nov 2017 22:17:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c103c31b601ab793ee50fe7b500cf153060996ef8cb07d46927990919eb371`  
		Last Modified: Sat, 04 Nov 2017 15:04:32 GMT  
		Size: 2.7 MB (2710531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bfff8f2f5ea357fca9a460acb6d6867d8db3e2a601d810470bc6a2534496e8`  
		Last Modified: Sat, 04 Nov 2017 15:04:36 GMT  
		Size: 14.9 MB (14933702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66f3cbc9f3afd7ed1266d653527b49adf2c18bb72fa4506959c826df96dccc`  
		Last Modified: Sat, 04 Nov 2017 15:04:33 GMT  
		Size: 2.0 MB (1965039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959be65ada49d1b4bbf640d32ef70f7b6600b6300432ab43e30fd2de3f0cecf1`  
		Last Modified: Sat, 04 Nov 2017 22:17:34 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f3ab8e7c5071327c4d287e9132f7e2488039ffe4d18606ed7f22a1bb7cf2f`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 53.7 MB (53658678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a680abe3bcd072581d318f1d59f352dd26e95e624754d3e2f5df84a93c05`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 844.8 KB (844810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5bbf570b9473a8c961c669aa35b62e61f6c5f280324f49a108d1b7d1adc94d`  
		Last Modified: Sat, 04 Nov 2017 22:17:32 GMT  
		Size: 352.1 KB (352113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82fb1e0f1a0a96319bc45f379a08cff4ae8a13659e12df072c1c9370d2dda30`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 2.6 MB (2591057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5af1cd88968141ea2def302ad80f1d3f58d984eab17bcf8c22232c8b779e74`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 55.8 MB (55806091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956f37adf70065fa4eb04f7856c434d6765a66cc5466a8969baf02805ef381ae`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a62ecf68ae0ebdf2e03bb82351545ac3aeaa64186ed14e975ce8796bcbebda`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7173abb51e92139764857c70ed8931e9f019e7bd87614c2c075e63576406fb06`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242098e7db1f4e311e95d29f3c2c04562da01d4b91fecc690c9045c5b88a9f80`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39494c4d9c5c78d4253b42ea11940782c94599afffe88091feb5d8131aa3bb47`  
		Last Modified: Sat, 04 Nov 2017 22:18:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:ffc2beb1f959194d28e5eb937a37be3e718608bc6b0eb1bd707bb24fdd3bf425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:c32cbd0302c4268ac79f8a0eeee4e65b969983f52f769aacc7f70286aca9a87a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e7f46c58bff8cb59d31dad129041d250817b21ff28be1218c256156c02e2b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Fri, 03 Nov 2017 23:34:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 03 Nov 2017 23:34:38 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 00:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:04:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 00:04:57 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 00:07:15 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 00:07:16 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 00:07:31 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 00:07:31 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 14:20:58 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 14:21:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:21:32 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 14:21:32 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 14:21:32 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 14:21:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 14:21:47 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 14:22:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 14:22:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 14:22:40 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 14:24:18 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 14:24:18 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 14:24:19 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 14:24:19 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 14:24:20 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 14:24:20 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 14:24:21 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 14:24:21 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 14:24:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 14:24:22 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84e1d862e032c23eb0cc9b3b5618d5e51b7c7a391ed329e2e55ba714b1edde5`  
		Last Modified: Sat, 04 Nov 2017 00:23:37 GMT  
		Size: 2.7 MB (2710555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e43112ed79bf37575f185aa2ad7aaeb888c9d17c3533542b27d863e1f96d8fa`  
		Last Modified: Sat, 04 Nov 2017 00:23:40 GMT  
		Size: 14.9 MB (14933551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b773e21a5a119421bb500405737b5182df4ee1a6de0bebbb6203704981878190`  
		Last Modified: Sat, 04 Nov 2017 00:23:37 GMT  
		Size: 2.0 MB (1964927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a5daa9bf9b515ba93966c4226a37dea11405f041c7ed42c910dd62b39e70d5`  
		Last Modified: Sat, 04 Nov 2017 14:24:56 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04761c43e97df36365be4deeca1eac0f4712b7cadcab43a4147670b2014232d0`  
		Last Modified: Sat, 04 Nov 2017 14:25:15 GMT  
		Size: 53.7 MB (53658647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe139034ab269113151c190f4c8c47098dd0a4669b981f48e2d651b929e1595`  
		Last Modified: Sat, 04 Nov 2017 14:24:54 GMT  
		Size: 844.7 KB (844720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383f7f2d798763de1af61e812d36c29a5cdf50b6353f8463224e9e41a8c9d35c`  
		Last Modified: Sat, 04 Nov 2017 14:24:54 GMT  
		Size: 352.0 KB (352046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ee238813acee1fc78025429cc842abec5c6ccd9ac59d58ddf6aa41180d852b`  
		Last Modified: Sat, 04 Nov 2017 14:24:55 GMT  
		Size: 2.6 MB (2590930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb17d5baf757c98d1d077332f0ae4261931c37a00c41d6439227d370c919161c`  
		Last Modified: Sat, 04 Nov 2017 14:25:15 GMT  
		Size: 55.8 MB (55806576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67825f889f59147f04f8840d3607b61548a5ffb7c7cd762f41bde6c44059230b`  
		Last Modified: Sat, 04 Nov 2017 14:24:51 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f559431eebbf4fd0e598d8d50face4f65c35b8d5dba0bcacb18e696c772ac93c`  
		Last Modified: Sat, 04 Nov 2017 14:24:51 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497bdf9c86dd9d97db02531e6ff12573062e078c32aeb3e4baece457e158849e`  
		Last Modified: Sat, 04 Nov 2017 14:24:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb182fa8f470e7bca9ae6b4a250482b9cf623acefe13996d9f0d188481f12bd4`  
		Last Modified: Sat, 04 Nov 2017 14:24:51 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:d990b38f11eeb6912d7b9031e417ecabc1db13b36b613ab4e690027314266b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:c51b2854deef05e7c0751b7206d351e87841493504862b3fe8df5bcc98b3cc31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa176906fcb1e9b7ecf4c89c91467c345de0df7225c0cea622613018f768446`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Sat, 04 Nov 2017 05:22:35 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Sat, 04 Nov 2017 05:22:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 10:37:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:37:13 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 14:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libreadline6 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 14:52:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 04 Nov 2017 14:52:11 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 04 Nov 2017 14:54:34 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 04 Nov 2017 14:54:34 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 04 Nov 2017 14:54:52 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 04 Nov 2017 14:54:52 GMT
CMD ["python2"]
# Sat, 04 Nov 2017 22:13:51 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 04 Nov 2017 22:14:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 04 Nov 2017 22:14:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 04 Nov 2017 22:14:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 04 Nov 2017 22:14:40 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:14:40 GMT
ENV TINI_VERSION=v0.14.0
# Sat, 04 Nov 2017 22:14:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 04 Nov 2017 22:15:22 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 04 Nov 2017 22:15:22 GMT
ENV SENTRY_VERSION=8.21.0
# Sat, 04 Nov 2017 22:16:56 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Sat, 04 Nov 2017 22:16:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 04 Nov 2017 22:16:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:58 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Sat, 04 Nov 2017 22:16:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 04 Nov 2017 22:16:59 GMT
EXPOSE 9000/tcp
# Sat, 04 Nov 2017 22:16:59 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 04 Nov 2017 22:17:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 04 Nov 2017 22:17:00 GMT
CMD ["run" "web"]
# Sat, 04 Nov 2017 22:17:16 GMT
WORKDIR /usr/src/sentry
# Sat, 04 Nov 2017 22:17:16 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 04 Nov 2017 22:17:17 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c103c31b601ab793ee50fe7b500cf153060996ef8cb07d46927990919eb371`  
		Last Modified: Sat, 04 Nov 2017 15:04:32 GMT  
		Size: 2.7 MB (2710531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33bfff8f2f5ea357fca9a460acb6d6867d8db3e2a601d810470bc6a2534496e8`  
		Last Modified: Sat, 04 Nov 2017 15:04:36 GMT  
		Size: 14.9 MB (14933702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66f3cbc9f3afd7ed1266d653527b49adf2c18bb72fa4506959c826df96dccc`  
		Last Modified: Sat, 04 Nov 2017 15:04:33 GMT  
		Size: 2.0 MB (1965039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959be65ada49d1b4bbf640d32ef70f7b6600b6300432ab43e30fd2de3f0cecf1`  
		Last Modified: Sat, 04 Nov 2017 22:17:34 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f3ab8e7c5071327c4d287e9132f7e2488039ffe4d18606ed7f22a1bb7cf2f`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 53.7 MB (53658678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1497a680abe3bcd072581d318f1d59f352dd26e95e624754d3e2f5df84a93c05`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 844.8 KB (844810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5bbf570b9473a8c961c669aa35b62e61f6c5f280324f49a108d1b7d1adc94d`  
		Last Modified: Sat, 04 Nov 2017 22:17:32 GMT  
		Size: 352.1 KB (352113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82fb1e0f1a0a96319bc45f379a08cff4ae8a13659e12df072c1c9370d2dda30`  
		Last Modified: Sat, 04 Nov 2017 22:17:33 GMT  
		Size: 2.6 MB (2591057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5af1cd88968141ea2def302ad80f1d3f58d984eab17bcf8c22232c8b779e74`  
		Last Modified: Sat, 04 Nov 2017 22:17:44 GMT  
		Size: 55.8 MB (55806091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956f37adf70065fa4eb04f7856c434d6765a66cc5466a8969baf02805ef381ae`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a62ecf68ae0ebdf2e03bb82351545ac3aeaa64186ed14e975ce8796bcbebda`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 3.4 KB (3405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7173abb51e92139764857c70ed8931e9f019e7bd87614c2c075e63576406fb06`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 1.1 KB (1061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242098e7db1f4e311e95d29f3c2c04562da01d4b91fecc690c9045c5b88a9f80`  
		Last Modified: Sat, 04 Nov 2017 22:17:30 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39494c4d9c5c78d4253b42ea11940782c94599afffe88091feb5d8131aa3bb47`  
		Last Modified: Sat, 04 Nov 2017 22:18:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
