## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:c190184dcd39e51db8e72d1774aa58bd57593fa08904685e2fbe5f19af551300
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.5 MB (180484607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f34969a57ff50200e5e334792d2f1ae2031bb87b7ebb839e83019bce27e1b9`
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
# Thu, 17 Nov 2016 22:19:20 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:21:24 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:21:24 GMT
CMD ["python2"]
# Fri, 18 Nov 2016 02:31:14 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 18 Nov 2016 02:31:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 02:31:38 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 18 Nov 2016 02:31:38 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 18 Nov 2016 02:31:39 GMT
ENV GOSU_VERSION=1.10
# Fri, 18 Nov 2016 02:31:50 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 18 Nov 2016 02:31:51 GMT
ENV TINI_VERSION=v0.10.0
# Fri, 18 Nov 2016 02:32:01 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 18 Nov 2016 02:32:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 02 Dec 2016 18:47:00 GMT
ENV SENTRY_VERSION=8.11.0
# Fri, 02 Dec 2016 18:48:43 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && mkdir -p /usr/src/sentry     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl"     && wget -O /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl"     && wget -O /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc "https://github.com/getsentry/sentry/releases/download/${SENTRY_VERSION}/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys D8749766A66DD714236A932C3B2D400CE5BBCA60     && gpg --batch --verify /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl.asc /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl     && gpg --batch --verify /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl.asc /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && pip install         /usr/src/sentry/sentry-${SENTRY_VERSION}-py27-none-any.whl         /usr/src/sentry/sentry_plugins-${SENTRY_VERSION}-py2.py3-none-any.whl     && sentry --help     && sentry plugins list     && rm -r "$GNUPGHOME" /usr/src/sentry     && apt-get purge -y --auto-remove wget
# Fri, 02 Dec 2016 18:48:43 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 02 Dec 2016 18:48:44 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 02 Dec 2016 18:48:45 GMT
COPY file:09e9264bc4ca6e4235a3d5b5a6110204a9296fb8e0b60a84393c3f044de3863f in /etc/sentry/ 
# Fri, 02 Dec 2016 18:48:45 GMT
COPY file:d1a7cd4cbf7c842d84a135ed530ecf78f6858eaffe7f2d78824cc2906088bdd1 in /etc/sentry/ 
# Fri, 02 Dec 2016 18:48:46 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 02 Dec 2016 18:48:46 GMT
EXPOSE 9000/tcp
# Fri, 02 Dec 2016 18:48:46 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 02 Dec 2016 18:48:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Dec 2016 18:48:47 GMT
CMD ["run" "web"]
# Fri, 02 Dec 2016 18:48:48 GMT
WORKDIR /usr/src/sentry
# Fri, 02 Dec 2016 18:48:48 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 02 Dec 2016 18:48:48 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 02 Dec 2016 18:48:49 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 02 Dec 2016 18:48:49 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 02 Dec 2016 18:48:49 GMT
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
	-	`sha256:98511db138dbd5838a250efe9958e2afebe81840aa68350fe6f796aad8988da5`  
		Last Modified: Thu, 17 Nov 2016 22:54:25 GMT  
		Size: 16.4 MB (16360162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6acd31e065c66f738ce9da0914bcf1b9b048a900f6cf10345bbb59c88f7649b5`  
		Last Modified: Fri, 18 Nov 2016 02:37:22 GMT  
		Size: 4.3 KB (4350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba3766c4b4ac485ae567625f028ee4f80bdf71749a3ff6abc0fc749995c24ab`  
		Last Modified: Fri, 18 Nov 2016 02:37:39 GMT  
		Size: 62.6 MB (62609163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5c0779bdd62e5bbb0aededb2063082c41ede8ba8805a7353ab8e3ef5cd3776`  
		Last Modified: Fri, 18 Nov 2016 02:37:20 GMT  
		Size: 613.2 KB (613164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcff7a8de947537be98fa213bf3fbb27d0f7c99361d1f50c5505c2a5969a97ce`  
		Last Modified: Fri, 18 Nov 2016 02:37:19 GMT  
		Size: 130.3 KB (130269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfb5d0ae64bde67da20d31b0793ea363011eab1e6d464d2f77a932eb9987bcd`  
		Last Modified: Fri, 18 Nov 2016 02:37:19 GMT  
		Size: 2.3 MB (2345625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3abf31e9f8b476179b8bb7939f74521bbfb2432266fba74f9d903a4a6510d29`  
		Last Modified: Fri, 02 Dec 2016 18:50:19 GMT  
		Size: 43.7 MB (43721051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30230a23ee821ba81818feaccb4392af60e0441d6874efd224223e82a209274`  
		Last Modified: Fri, 02 Dec 2016 18:50:05 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69295e7541a3b8d38387ac5992d63b9839f1dbe8a17aeac9f31dbdf8d4dc54f9`  
		Last Modified: Fri, 02 Dec 2016 18:50:05 GMT  
		Size: 3.4 KB (3430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:123b67cf9adc4974987f33614a02ccbad8418f97778ede94230eab8117a01ec1`  
		Last Modified: Fri, 02 Dec 2016 18:50:05 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f7500160f50779600ae1a4ef5cfeed54493e85dd51e81b9665606f1b2da791`  
		Last Modified: Fri, 02 Dec 2016 18:50:05 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15e7b5a27c18b2df21f58bd852aaa714c1a938fcf0ce408fda4bde53fd227ff`  
		Last Modified: Fri, 02 Dec 2016 18:51:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
