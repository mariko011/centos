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
