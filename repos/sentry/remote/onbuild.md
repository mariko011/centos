## `sentry:onbuild`

```console
$ docker pull sentry@sha256:d29eb28e7ded90134b6937132400f9e0bbbb452dc12f4c8514d4218ceddb11c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

```console
$ docker pull sentry@sha256:f25921608407f8ec4b36ca312456707e8380d213ddce945acceb0e0584fcf679
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.0 MB (162984900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144ea4bf882582ccaee85300ee31881e4095a62533663fc1a9f9c0026f87bed5`
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
# Sat, 04 Nov 2017 14:24:38 GMT
WORKDIR /usr/src/sentry
# Sat, 04 Nov 2017 14:24:38 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 04 Nov 2017 14:24:38 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 04 Nov 2017 14:24:39 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 04 Nov 2017 14:24:39 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 04 Nov 2017 14:24:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
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
	-	`sha256:cf79f96ce6fff490e29abc79ee08879528cb771f294a9533c537185e0820bc07`  
		Last Modified: Sat, 04 Nov 2017 14:25:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
