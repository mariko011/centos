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
