## `sentry:onbuild`

```console
$ docker pull sentry@sha256:4809dedbf63057ec34eb151554bc07e869ea2a03cdfc930672a2fb49431462f6
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.7 MB (192669219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10403af0f45ad8a8f2ddc12c404a38c8d3375259de036cbe16ed4c8f7642c91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Wed, 21 Jun 2017 18:15:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Jun 2017 18:15:45 GMT
ENV LANG=C.UTF-8
# Wed, 21 Jun 2017 18:15:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 18:15:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 21 Jun 2017 18:15:57 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 18 Jul 2017 23:43:18 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 18 Jul 2017 23:43:18 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 18 Jul 2017 23:43:33 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 18 Jul 2017 23:43:34 GMT
CMD ["python2"]
# Wed, 19 Jul 2017 16:40:00 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 19 Jul 2017 16:40:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jul 2017 16:40:32 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 19 Jul 2017 16:40:33 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 19 Jul 2017 16:40:33 GMT
ENV GOSU_VERSION=1.10
# Wed, 19 Jul 2017 16:40:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 19 Jul 2017 16:40:47 GMT
ENV TINI_VERSION=v0.14.0
# Wed, 19 Jul 2017 16:40:59 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 19 Jul 2017 16:41:15 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 19 Jul 2017 16:43:02 GMT
ENV SENTRY_VERSION=8.18.0
# Wed, 19 Jul 2017 16:44:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget g++ && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget g++
# Wed, 19 Jul 2017 16:44:25 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 19 Jul 2017 16:44:26 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 19 Jul 2017 16:44:27 GMT
COPY file:6b5c0c264ecaf40e9fe1838ff0926e09a661f89950c3c2b6f1612e948324733d in /etc/sentry/ 
# Wed, 19 Jul 2017 16:44:27 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Wed, 19 Jul 2017 16:44:28 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 19 Jul 2017 16:44:29 GMT
EXPOSE 9000/tcp
# Wed, 19 Jul 2017 16:44:29 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 19 Jul 2017 16:44:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jul 2017 16:44:30 GMT
CMD ["run" "web"]
# Wed, 19 Jul 2017 16:44:39 GMT
WORKDIR /usr/src/sentry
# Wed, 19 Jul 2017 16:44:39 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 19 Jul 2017 16:44:40 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 19 Jul 2017 16:44:40 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 19 Jul 2017 16:44:41 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 19 Jul 2017 16:44:41 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba3c97cb9e152495a89a39958e5e64c5e88c60fc3015696d9c89794a90f4310`  
		Last Modified: Wed, 21 Jun 2017 18:57:48 GMT  
		Size: 3.5 MB (3474032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173183b8421d3bc0e267f2da2c1ea8da7323eed92c7860ed0abdd39b707313a8`  
		Last Modified: Wed, 19 Jul 2017 00:24:52 GMT  
		Size: 15.0 MB (15002279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8ea8822b4262d87ba84484a4f53d6cd139f93cda1a3db5999aeeece61eee15`  
		Last Modified: Wed, 19 Jul 2017 00:24:48 GMT  
		Size: 1.7 MB (1737351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b3f6ff96d3711f192f97d73558f8fb0bf5873c2d656868d2a178c781af9a5d`  
		Last Modified: Wed, 19 Jul 2017 16:44:58 GMT  
		Size: 4.4 KB (4379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba6607a95fd396300f06ba86331aff88cde85541a818a2141abfe6641a90d92`  
		Last Modified: Wed, 19 Jul 2017 16:45:08 GMT  
		Size: 63.9 MB (63850781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da40c21fa477e2bfb4db79972f194ab6b78ffb3f1dd1f83a6eff8578aa246a3a`  
		Last Modified: Wed, 19 Jul 2017 16:44:56 GMT  
		Size: 620.2 KB (620181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034255f9f56a314ec87c4b37958e0c280e456cc15d38ca09c1a24426c62a7637`  
		Last Modified: Wed, 19 Jul 2017 16:44:55 GMT  
		Size: 127.5 KB (127479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b755f5cf70f815fdda78f7db502bdf2ea360605a3fae9bcc4b127f8db21fb73`  
		Last Modified: Wed, 19 Jul 2017 16:44:54 GMT  
		Size: 2.4 MB (2364031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2149933e280c23d7130a6a9acb09e75d03cacbecf948c3660dcd8473f909e27`  
		Last Modified: Wed, 19 Jul 2017 16:46:11 GMT  
		Size: 52.9 MB (52868705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4a28b15bb54c3763b0057ee0637b79837e90673850c883be013789cd6d0842`  
		Last Modified: Wed, 19 Jul 2017 16:46:01 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82302865ebc6641e922327f97f9bdce0f75d269f9cca3b90a1dcc38b70d4c886`  
		Last Modified: Wed, 19 Jul 2017 16:46:02 GMT  
		Size: 3.4 KB (3404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdc14c69ab7253aa13725e308ad5168208db1439251ce7ab2d59e5b0a4098042`  
		Last Modified: Wed, 19 Jul 2017 16:46:01 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e996cb4f89e090a4e75208d8856e829f528b088e229c3bceba7cbe55f579f`  
		Last Modified: Wed, 19 Jul 2017 16:46:02 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7631b35313c25de16709220f55169812d3100e1a61303359afad5348dd8ad6`  
		Last Modified: Wed, 19 Jul 2017 16:46:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
