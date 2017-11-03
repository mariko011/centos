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
$ docker pull sentry@sha256:b530fd319f80b4ad97902e830b8024887ed975a2fd20db952e86bead839b0504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

```console
$ docker pull sentry@sha256:4bd39602f61627c00fb8f886dbcf011f1a953a675bdc3df938332e81d391ddf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162987345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ccee3c01197fbefb52994079d45ac09ee5d0b2e93a9b6fda4c49d53968bd60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 01:12:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 01:12:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 01:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 01:13:07 GMT
CMD ["python2"]
# Fri, 03 Nov 2017 23:08:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:08:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:08:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:09:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:13 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:09:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:09:43 GMT
ENV SENTRY_VERSION=8.21.0
# Fri, 03 Nov 2017 23:11:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:11:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:11:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:11:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:11:14 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:11:14 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:11:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:11:15 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f37bf1143f7c3936864bf26ef8775fca10ef994e91c0182833bdf2bb9f31b`  
		Last Modified: Thu, 02 Nov 2017 01:28:06 GMT  
		Size: 14.9 MB (14933748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4145c3c6e7669711f7d83b0f84a34e98b41b509eb7a886c5b22cdb6cf1a47f24`  
		Last Modified: Thu, 02 Nov 2017 01:28:01 GMT  
		Size: 2.0 MB (1965122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805c7c8e92bd28e062ea4f3f73ebad8bd745b51e712e545124feda12f085afe2`  
		Last Modified: Fri, 03 Nov 2017 23:12:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a93c98ffaf9e64af66d512f838c0c94695c5d562c1726b27e5506aa938ebadc`  
		Last Modified: Fri, 03 Nov 2017 23:12:29 GMT  
		Size: 53.7 MB (53658468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a410c27d6248d0f16827925f5eb91ec73a0b22d8e48434e44a4fa26173b73c`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 844.8 KB (844820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbacf9006235a73e3877d6c7df424b2b7d4975c1684db440c00a2916748a328b`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 352.2 KB (352165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825001d5cb3651444bff75aa19a02a596527c321e539513401304d2dcd5229a`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 2.6 MB (2590880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0becc1f8ad0bc4892abe9b6d5936a99acd2db4e4c37e082ee14f658cf2e784`  
		Last Modified: Fri, 03 Nov 2017 23:12:27 GMT  
		Size: 55.8 MB (55808684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993198e77f9f275235d216b07c75ac763051ebbff24077f8ecae8123baf10f1`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4ab07d902971ee6f21e6795e2d49446226c40f2345034d3cd739440c361850`  
		Last Modified: Fri, 03 Nov 2017 23:12:20 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e1401a4d212dd3ebac8d071caf1784cae16b876fcb875fd0136233d796c7`  
		Last Modified: Fri, 03 Nov 2017 23:12:13 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db218154d30ddb3ec63bf3ce3226b126f9b833a381dfc3a433fa43abb1b7a5`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
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
$ docker pull sentry@sha256:b530fd319f80b4ad97902e830b8024887ed975a2fd20db952e86bead839b0504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21` - linux; amd64

```console
$ docker pull sentry@sha256:4bd39602f61627c00fb8f886dbcf011f1a953a675bdc3df938332e81d391ddf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162987345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ccee3c01197fbefb52994079d45ac09ee5d0b2e93a9b6fda4c49d53968bd60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 01:12:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 01:12:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 01:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 01:13:07 GMT
CMD ["python2"]
# Fri, 03 Nov 2017 23:08:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:08:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:08:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:09:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:13 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:09:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:09:43 GMT
ENV SENTRY_VERSION=8.21.0
# Fri, 03 Nov 2017 23:11:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:11:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:11:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:11:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:11:14 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:11:14 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:11:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:11:15 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f37bf1143f7c3936864bf26ef8775fca10ef994e91c0182833bdf2bb9f31b`  
		Last Modified: Thu, 02 Nov 2017 01:28:06 GMT  
		Size: 14.9 MB (14933748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4145c3c6e7669711f7d83b0f84a34e98b41b509eb7a886c5b22cdb6cf1a47f24`  
		Last Modified: Thu, 02 Nov 2017 01:28:01 GMT  
		Size: 2.0 MB (1965122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805c7c8e92bd28e062ea4f3f73ebad8bd745b51e712e545124feda12f085afe2`  
		Last Modified: Fri, 03 Nov 2017 23:12:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a93c98ffaf9e64af66d512f838c0c94695c5d562c1726b27e5506aa938ebadc`  
		Last Modified: Fri, 03 Nov 2017 23:12:29 GMT  
		Size: 53.7 MB (53658468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a410c27d6248d0f16827925f5eb91ec73a0b22d8e48434e44a4fa26173b73c`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 844.8 KB (844820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbacf9006235a73e3877d6c7df424b2b7d4975c1684db440c00a2916748a328b`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 352.2 KB (352165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825001d5cb3651444bff75aa19a02a596527c321e539513401304d2dcd5229a`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 2.6 MB (2590880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0becc1f8ad0bc4892abe9b6d5936a99acd2db4e4c37e082ee14f658cf2e784`  
		Last Modified: Fri, 03 Nov 2017 23:12:27 GMT  
		Size: 55.8 MB (55808684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993198e77f9f275235d216b07c75ac763051ebbff24077f8ecae8123baf10f1`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4ab07d902971ee6f21e6795e2d49446226c40f2345034d3cd739440c361850`  
		Last Modified: Fri, 03 Nov 2017 23:12:20 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e1401a4d212dd3ebac8d071caf1784cae16b876fcb875fd0136233d796c7`  
		Last Modified: Fri, 03 Nov 2017 23:12:13 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db218154d30ddb3ec63bf3ce3226b126f9b833a381dfc3a433fa43abb1b7a5`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21.0`

```console
$ docker pull sentry@sha256:b530fd319f80b4ad97902e830b8024887ed975a2fd20db952e86bead839b0504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21.0` - linux; amd64

```console
$ docker pull sentry@sha256:4bd39602f61627c00fb8f886dbcf011f1a953a675bdc3df938332e81d391ddf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162987345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ccee3c01197fbefb52994079d45ac09ee5d0b2e93a9b6fda4c49d53968bd60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 01:12:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 01:12:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 01:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 01:13:07 GMT
CMD ["python2"]
# Fri, 03 Nov 2017 23:08:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:08:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:08:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:09:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:13 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:09:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:09:43 GMT
ENV SENTRY_VERSION=8.21.0
# Fri, 03 Nov 2017 23:11:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:11:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:11:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:11:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:11:14 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:11:14 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:11:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:11:15 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f37bf1143f7c3936864bf26ef8775fca10ef994e91c0182833bdf2bb9f31b`  
		Last Modified: Thu, 02 Nov 2017 01:28:06 GMT  
		Size: 14.9 MB (14933748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4145c3c6e7669711f7d83b0f84a34e98b41b509eb7a886c5b22cdb6cf1a47f24`  
		Last Modified: Thu, 02 Nov 2017 01:28:01 GMT  
		Size: 2.0 MB (1965122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805c7c8e92bd28e062ea4f3f73ebad8bd745b51e712e545124feda12f085afe2`  
		Last Modified: Fri, 03 Nov 2017 23:12:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a93c98ffaf9e64af66d512f838c0c94695c5d562c1726b27e5506aa938ebadc`  
		Last Modified: Fri, 03 Nov 2017 23:12:29 GMT  
		Size: 53.7 MB (53658468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a410c27d6248d0f16827925f5eb91ec73a0b22d8e48434e44a4fa26173b73c`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 844.8 KB (844820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbacf9006235a73e3877d6c7df424b2b7d4975c1684db440c00a2916748a328b`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 352.2 KB (352165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825001d5cb3651444bff75aa19a02a596527c321e539513401304d2dcd5229a`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 2.6 MB (2590880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0becc1f8ad0bc4892abe9b6d5936a99acd2db4e4c37e082ee14f658cf2e784`  
		Last Modified: Fri, 03 Nov 2017 23:12:27 GMT  
		Size: 55.8 MB (55808684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993198e77f9f275235d216b07c75ac763051ebbff24077f8ecae8123baf10f1`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4ab07d902971ee6f21e6795e2d49446226c40f2345034d3cd739440c361850`  
		Last Modified: Fri, 03 Nov 2017 23:12:20 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e1401a4d212dd3ebac8d071caf1784cae16b876fcb875fd0136233d796c7`  
		Last Modified: Fri, 03 Nov 2017 23:12:13 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db218154d30ddb3ec63bf3ce3226b126f9b833a381dfc3a433fa43abb1b7a5`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21.0-onbuild`

```console
$ docker pull sentry@sha256:55de2a97d6ffe431649767a4aa46c66cb1f7e782863397b36a199bd2375c91f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21.0-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:a1a094f14952524021931dae07412972c39e2e871a85ac064998558a99ac706b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162987481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2717cada44ac7ea6c25e1c63677ae985d3ca9b8611613a1dd7a6959377606d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 01:12:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 01:12:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 01:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 01:13:07 GMT
CMD ["python2"]
# Fri, 03 Nov 2017 23:08:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:08:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:08:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:09:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:13 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:09:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:09:43 GMT
ENV SENTRY_VERSION=8.21.0
# Fri, 03 Nov 2017 23:11:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:11:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:11:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:11:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:11:14 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:11:14 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:11:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:11:15 GMT
CMD ["run" "web"]
# Fri, 03 Nov 2017 23:11:28 GMT
WORKDIR /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f37bf1143f7c3936864bf26ef8775fca10ef994e91c0182833bdf2bb9f31b`  
		Last Modified: Thu, 02 Nov 2017 01:28:06 GMT  
		Size: 14.9 MB (14933748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4145c3c6e7669711f7d83b0f84a34e98b41b509eb7a886c5b22cdb6cf1a47f24`  
		Last Modified: Thu, 02 Nov 2017 01:28:01 GMT  
		Size: 2.0 MB (1965122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805c7c8e92bd28e062ea4f3f73ebad8bd745b51e712e545124feda12f085afe2`  
		Last Modified: Fri, 03 Nov 2017 23:12:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a93c98ffaf9e64af66d512f838c0c94695c5d562c1726b27e5506aa938ebadc`  
		Last Modified: Fri, 03 Nov 2017 23:12:29 GMT  
		Size: 53.7 MB (53658468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a410c27d6248d0f16827925f5eb91ec73a0b22d8e48434e44a4fa26173b73c`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 844.8 KB (844820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbacf9006235a73e3877d6c7df424b2b7d4975c1684db440c00a2916748a328b`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 352.2 KB (352165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825001d5cb3651444bff75aa19a02a596527c321e539513401304d2dcd5229a`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 2.6 MB (2590880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0becc1f8ad0bc4892abe9b6d5936a99acd2db4e4c37e082ee14f658cf2e784`  
		Last Modified: Fri, 03 Nov 2017 23:12:27 GMT  
		Size: 55.8 MB (55808684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993198e77f9f275235d216b07c75ac763051ebbff24077f8ecae8123baf10f1`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4ab07d902971ee6f21e6795e2d49446226c40f2345034d3cd739440c361850`  
		Last Modified: Fri, 03 Nov 2017 23:12:20 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e1401a4d212dd3ebac8d071caf1784cae16b876fcb875fd0136233d796c7`  
		Last Modified: Fri, 03 Nov 2017 23:12:13 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db218154d30ddb3ec63bf3ce3226b126f9b833a381dfc3a433fa43abb1b7a5`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74ba7bf0f4e1d8e8f47e1ad9928e7bd889d47a793457c86006114c971e14fb`  
		Last Modified: Fri, 03 Nov 2017 23:12:44 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.21-onbuild`

```console
$ docker pull sentry@sha256:55de2a97d6ffe431649767a4aa46c66cb1f7e782863397b36a199bd2375c91f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8.21-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:a1a094f14952524021931dae07412972c39e2e871a85ac064998558a99ac706b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162987481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2717cada44ac7ea6c25e1c63677ae985d3ca9b8611613a1dd7a6959377606d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 01:12:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 01:12:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 01:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 01:13:07 GMT
CMD ["python2"]
# Fri, 03 Nov 2017 23:08:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:08:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:08:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:09:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:13 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:09:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:09:43 GMT
ENV SENTRY_VERSION=8.21.0
# Fri, 03 Nov 2017 23:11:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:11:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:11:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:11:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:11:14 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:11:14 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:11:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:11:15 GMT
CMD ["run" "web"]
# Fri, 03 Nov 2017 23:11:28 GMT
WORKDIR /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f37bf1143f7c3936864bf26ef8775fca10ef994e91c0182833bdf2bb9f31b`  
		Last Modified: Thu, 02 Nov 2017 01:28:06 GMT  
		Size: 14.9 MB (14933748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4145c3c6e7669711f7d83b0f84a34e98b41b509eb7a886c5b22cdb6cf1a47f24`  
		Last Modified: Thu, 02 Nov 2017 01:28:01 GMT  
		Size: 2.0 MB (1965122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805c7c8e92bd28e062ea4f3f73ebad8bd745b51e712e545124feda12f085afe2`  
		Last Modified: Fri, 03 Nov 2017 23:12:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a93c98ffaf9e64af66d512f838c0c94695c5d562c1726b27e5506aa938ebadc`  
		Last Modified: Fri, 03 Nov 2017 23:12:29 GMT  
		Size: 53.7 MB (53658468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a410c27d6248d0f16827925f5eb91ec73a0b22d8e48434e44a4fa26173b73c`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 844.8 KB (844820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbacf9006235a73e3877d6c7df424b2b7d4975c1684db440c00a2916748a328b`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 352.2 KB (352165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825001d5cb3651444bff75aa19a02a596527c321e539513401304d2dcd5229a`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 2.6 MB (2590880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0becc1f8ad0bc4892abe9b6d5936a99acd2db4e4c37e082ee14f658cf2e784`  
		Last Modified: Fri, 03 Nov 2017 23:12:27 GMT  
		Size: 55.8 MB (55808684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993198e77f9f275235d216b07c75ac763051ebbff24077f8ecae8123baf10f1`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4ab07d902971ee6f21e6795e2d49446226c40f2345034d3cd739440c361850`  
		Last Modified: Fri, 03 Nov 2017 23:12:20 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e1401a4d212dd3ebac8d071caf1784cae16b876fcb875fd0136233d796c7`  
		Last Modified: Fri, 03 Nov 2017 23:12:13 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db218154d30ddb3ec63bf3ce3226b126f9b833a381dfc3a433fa43abb1b7a5`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74ba7bf0f4e1d8e8f47e1ad9928e7bd889d47a793457c86006114c971e14fb`  
		Last Modified: Fri, 03 Nov 2017 23:12:44 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:55de2a97d6ffe431649767a4aa46c66cb1f7e782863397b36a199bd2375c91f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:a1a094f14952524021931dae07412972c39e2e871a85ac064998558a99ac706b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162987481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2717cada44ac7ea6c25e1c63677ae985d3ca9b8611613a1dd7a6959377606d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 01:12:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 01:12:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 01:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 01:13:07 GMT
CMD ["python2"]
# Fri, 03 Nov 2017 23:08:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:08:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:08:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:09:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:13 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:09:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:09:43 GMT
ENV SENTRY_VERSION=8.21.0
# Fri, 03 Nov 2017 23:11:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:11:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:11:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:11:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:11:14 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:11:14 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:11:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:11:15 GMT
CMD ["run" "web"]
# Fri, 03 Nov 2017 23:11:28 GMT
WORKDIR /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f37bf1143f7c3936864bf26ef8775fca10ef994e91c0182833bdf2bb9f31b`  
		Last Modified: Thu, 02 Nov 2017 01:28:06 GMT  
		Size: 14.9 MB (14933748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4145c3c6e7669711f7d83b0f84a34e98b41b509eb7a886c5b22cdb6cf1a47f24`  
		Last Modified: Thu, 02 Nov 2017 01:28:01 GMT  
		Size: 2.0 MB (1965122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805c7c8e92bd28e062ea4f3f73ebad8bd745b51e712e545124feda12f085afe2`  
		Last Modified: Fri, 03 Nov 2017 23:12:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a93c98ffaf9e64af66d512f838c0c94695c5d562c1726b27e5506aa938ebadc`  
		Last Modified: Fri, 03 Nov 2017 23:12:29 GMT  
		Size: 53.7 MB (53658468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a410c27d6248d0f16827925f5eb91ec73a0b22d8e48434e44a4fa26173b73c`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 844.8 KB (844820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbacf9006235a73e3877d6c7df424b2b7d4975c1684db440c00a2916748a328b`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 352.2 KB (352165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825001d5cb3651444bff75aa19a02a596527c321e539513401304d2dcd5229a`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 2.6 MB (2590880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0becc1f8ad0bc4892abe9b6d5936a99acd2db4e4c37e082ee14f658cf2e784`  
		Last Modified: Fri, 03 Nov 2017 23:12:27 GMT  
		Size: 55.8 MB (55808684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993198e77f9f275235d216b07c75ac763051ebbff24077f8ecae8123baf10f1`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4ab07d902971ee6f21e6795e2d49446226c40f2345034d3cd739440c361850`  
		Last Modified: Fri, 03 Nov 2017 23:12:20 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e1401a4d212dd3ebac8d071caf1784cae16b876fcb875fd0136233d796c7`  
		Last Modified: Fri, 03 Nov 2017 23:12:13 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db218154d30ddb3ec63bf3ce3226b126f9b833a381dfc3a433fa43abb1b7a5`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74ba7bf0f4e1d8e8f47e1ad9928e7bd889d47a793457c86006114c971e14fb`  
		Last Modified: Fri, 03 Nov 2017 23:12:44 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:8c986821f0c76cc7a6c9fa7a7b83ad57bd1fb1609ac5893532bc335ff132540a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

```console
$ docker pull sentry@sha256:a39645326199905cd98d22ce64091181b5e02fe337acd5ccb13ee236b78af9c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162955302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35adf955d1a205a566de66e72b713db10d0bf80742c000b9b2aae6a356ce80be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Mon, 23 Oct 2017 20:43:16 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 23 Oct 2017 20:43:16 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 23 Oct 2017 20:43:40 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 23 Oct 2017 20:43:41 GMT
CMD ["python2"]
# Mon, 23 Oct 2017 21:05:43 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 23 Oct 2017 21:06:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 21:06:22 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 23 Oct 2017 21:06:22 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 23 Oct 2017 21:06:23 GMT
ENV GOSU_VERSION=1.10
# Mon, 23 Oct 2017 21:06:44 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 23 Oct 2017 21:06:44 GMT
ENV TINI_VERSION=v0.14.0
# Mon, 23 Oct 2017 21:07:05 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 23 Oct 2017 21:07:28 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Mon, 23 Oct 2017 21:07:29 GMT
ENV SENTRY_VERSION=8.21.0
# Mon, 23 Oct 2017 21:08:57 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Mon, 23 Oct 2017 21:08:58 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 23 Oct 2017 21:08:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 23 Oct 2017 21:08:59 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Mon, 23 Oct 2017 21:08:59 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Mon, 23 Oct 2017 21:08:59 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Mon, 23 Oct 2017 21:09:00 GMT
EXPOSE 9000/tcp
# Mon, 23 Oct 2017 21:09:00 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 23 Oct 2017 21:09:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Oct 2017 21:09:00 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a68c2b3f2ddd25bfb2bd7eb9aed9f0a7fdfc912a8f06b23240fd1e4e42f7a5`  
		Last Modified: Mon, 23 Oct 2017 20:49:12 GMT  
		Size: 14.9 MB (14933594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a420196b3d30007fbba858e47f2a7d4c77ba4147f5d6f3b29bcc08a7c8d9d5d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.0 MB (1964997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86d77f99432dab9516a951c73beef4de6c3cb288d2f1b7f95e162d3aad15c4c`  
		Last Modified: Mon, 23 Oct 2017 21:09:29 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c50d13270ba153598c0ff837674b8152dcbf3e24059ae96924190c17ff4df5`  
		Last Modified: Mon, 23 Oct 2017 21:09:45 GMT  
		Size: 53.7 MB (53658427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b8093bf3b40d3e5367fa729ffa20d8099ecd6907e7ffe47ad786b44c18a4c3`  
		Last Modified: Mon, 23 Oct 2017 21:09:28 GMT  
		Size: 844.7 KB (844735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1277f713586a59e25fd085e6e79724b875394f936fcf0ed182e80564bb6488f9`  
		Last Modified: Mon, 23 Oct 2017 21:09:27 GMT  
		Size: 352.1 KB (352083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2a5ad742727d571b9e6e2954f0e30414b9f826b23f78b75d4804c62064a4e7`  
		Last Modified: Mon, 23 Oct 2017 21:09:27 GMT  
		Size: 2.6 MB (2590730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ae86ba9e8e634e9631e8b37fb5f66bfb1c4831e3c0b178665150470429ca89`  
		Last Modified: Mon, 23 Oct 2017 21:09:37 GMT  
		Size: 55.8 MB (55777278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e8e88aec186cc1e64c58c86a0d4b5577e66a462d426a796b380a6094da4883`  
		Last Modified: Mon, 23 Oct 2017 21:09:24 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa45123caaf8295f86f3e57d887c226106d7517cee5d9aa9b7af407a6525cba`  
		Last Modified: Mon, 23 Oct 2017 21:09:24 GMT  
		Size: 3.4 KB (3409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bb9af8b38b802b3b4cbbb4f76b8937321c366828ef5458045729b3c09d2c36`  
		Last Modified: Mon, 23 Oct 2017 21:09:24 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835012120996d4403dde737c37b72682a863de8b1db8ab7e0679b147d5656332`  
		Last Modified: Mon, 23 Oct 2017 21:09:24 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:55de2a97d6ffe431649767a4aa46c66cb1f7e782863397b36a199bd2375c91f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:a1a094f14952524021931dae07412972c39e2e871a85ac064998558a99ac706b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162987481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2717cada44ac7ea6c25e1c63677ae985d3ca9b8611613a1dd7a6959377606d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Mon, 09 Oct 2017 21:31:06 GMT
ADD file:187fe0df97a4c52984a518a454fb7ab3984ae7b541ede7ff84dd3c5da1ce1a59 in / 
# Mon, 09 Oct 2017 21:31:06 GMT
CMD ["bash"]
# Tue, 10 Oct 2017 02:02:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Oct 2017 02:02:31 GMT
ENV LANG=C.UTF-8
# Mon, 23 Oct 2017 20:40:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 23 Oct 2017 20:40:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 23 Oct 2017 20:40:56 GMT
ENV PYTHON_VERSION=2.7.14
# Thu, 02 Nov 2017 01:12:33 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg2 dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 02 Nov 2017 01:12:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 02 Nov 2017 01:13:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 02 Nov 2017 01:13:07 GMT
CMD ["python2"]
# Fri, 03 Nov 2017 23:08:37 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 03 Nov 2017 23:08:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 03 Nov 2017 23:08:58 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 03 Nov 2017 23:08:59 GMT
ENV GOSU_VERSION=1.10
# Fri, 03 Nov 2017 23:09:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:13 GMT
ENV TINI_VERSION=v0.14.0
# Fri, 03 Nov 2017 23:09:26 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 03 Nov 2017 23:09:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 03 Nov 2017 23:09:43 GMT
ENV SENTRY_VERSION=8.21.0
# Fri, 03 Nov 2017 23:11:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Fri, 03 Nov 2017 23:11:13 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 03 Nov 2017 23:11:13 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 03 Nov 2017 23:11:13 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 03 Nov 2017 23:11:14 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 03 Nov 2017 23:11:14 GMT
EXPOSE 9000/tcp
# Fri, 03 Nov 2017 23:11:14 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 03 Nov 2017 23:11:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Nov 2017 23:11:15 GMT
CMD ["run" "web"]
# Fri, 03 Nov 2017 23:11:28 GMT
WORKDIR /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 03 Nov 2017 23:11:28 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 03 Nov 2017 23:11:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:d13d02fa248db2b423d6dbc8ec435675d23122f3939b5278b2156b75258e2259`  
		Last Modified: Mon, 09 Oct 2017 21:37:31 GMT  
		Size: 30.1 MB (30113318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5875fae15e491884eaa1431690fccc40bbed9416721147c7d469a053730ac63d`  
		Last Modified: Mon, 23 Oct 2017 20:49:10 GMT  
		Size: 2.7 MB (2710652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f37bf1143f7c3936864bf26ef8775fca10ef994e91c0182833bdf2bb9f31b`  
		Last Modified: Thu, 02 Nov 2017 01:28:06 GMT  
		Size: 14.9 MB (14933748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4145c3c6e7669711f7d83b0f84a34e98b41b509eb7a886c5b22cdb6cf1a47f24`  
		Last Modified: Thu, 02 Nov 2017 01:28:01 GMT  
		Size: 2.0 MB (1965122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805c7c8e92bd28e062ea4f3f73ebad8bd745b51e712e545124feda12f085afe2`  
		Last Modified: Fri, 03 Nov 2017 23:12:18 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a93c98ffaf9e64af66d512f838c0c94695c5d562c1726b27e5506aa938ebadc`  
		Last Modified: Fri, 03 Nov 2017 23:12:29 GMT  
		Size: 53.7 MB (53658468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a410c27d6248d0f16827925f5eb91ec73a0b22d8e48434e44a4fa26173b73c`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 844.8 KB (844820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbacf9006235a73e3877d6c7df424b2b7d4975c1684db440c00a2916748a328b`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 352.2 KB (352165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c825001d5cb3651444bff75aa19a02a596527c321e539513401304d2dcd5229a`  
		Last Modified: Fri, 03 Nov 2017 23:12:16 GMT  
		Size: 2.6 MB (2590880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f0becc1f8ad0bc4892abe9b6d5936a99acd2db4e4c37e082ee14f658cf2e784`  
		Last Modified: Fri, 03 Nov 2017 23:12:27 GMT  
		Size: 55.8 MB (55808684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0993198e77f9f275235d216b07c75ac763051ebbff24077f8ecae8123baf10f1`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d4ab07d902971ee6f21e6795e2d49446226c40f2345034d3cd739440c361850`  
		Last Modified: Fri, 03 Nov 2017 23:12:20 GMT  
		Size: 3.4 KB (3401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1d4e1401a4d212dd3ebac8d071caf1784cae16b876fcb875fd0136233d796c7`  
		Last Modified: Fri, 03 Nov 2017 23:12:13 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26db218154d30ddb3ec63bf3ce3226b126f9b833a381dfc3a433fa43abb1b7a5`  
		Last Modified: Fri, 03 Nov 2017 23:12:14 GMT  
		Size: 426.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f74ba7bf0f4e1d8e8f47e1ad9928e7bd889d47a793457c86006114c971e14fb`  
		Last Modified: Fri, 03 Nov 2017 23:12:44 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
