<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `hylang`

-	[`hylang:0.11.1`](#hylang0111)
-	[`hylang:0.11`](#hylang011)
-	[`hylang:0`](#hylang0)
-	[`hylang:latest`](#hylanglatest)

## `hylang:0.11.1`

```console
$ docker pull hylang@sha256:79d7c89568352441ee685ba7545015481e9655f662e8b63e719220ac5b8a429a
```

-	Platforms:
	-	linux; amd64

### `hylang:0.11.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268064106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef09afca5064d532d2ea4bba2a07e6ee23550e21ff4dd173441f7920e0f568a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:37:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:37:30 GMT
ENV LANG=C.UTF-8
# Tue, 09 Aug 2016 20:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 20:42:54 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_VERSION=3.5.2
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:59:51 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:59:53 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:59:53 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:15:14 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Tue, 09 Aug 2016 23:15:16 GMT
ADD dir:866a4ac77e162758d5a87e8e6eeada7a7cc3a0f86d1565f43e2fab5ad260d7f7 in /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:22 GMT
RUN pip3 install -e /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:4211bb5376972ebb740e54525e95b9ea6ef08c85e7519f795170501632942fbb`  
		Last Modified: Tue, 09 Aug 2016 21:16:33 GMT  
		Size: 2.9 MB (2888355 bytes)
	-	`sha256:71f9074c0739f6f33f70b6ca64130de5b7eb1a3ff30595cd957daf91b2934f33`  
		Last Modified: Tue, 09 Aug 2016 21:25:22 GMT  
		Size: 20.4 MB (20414884 bytes)
	-	`sha256:3e5349707036c4732625ead0ca6ade6dc6d42c7ef9d0fdedca79b5dccadd072b`  
		Last Modified: Tue, 09 Aug 2016 21:25:15 GMT  
		Size: 265.0 B
	-	`sha256:95db25b414e2c2c0fa01d4ab78c6cf65d3c61a679dfdda818cac0256455a38e1`  
		Last Modified: Tue, 09 Aug 2016 23:15:33 GMT  
		Size: 358.4 KB (358375 bytes)
	-	`sha256:db3fd51f31b1ec7b638f6c1b868798a952eaf877a1140e67554b544de8d48629`  
		Last Modified: Tue, 09 Aug 2016 23:15:34 GMT  
		Size: 2.3 MB (2321721 bytes)

## `hylang:0.11`

```console
$ docker pull hylang@sha256:79d7c89568352441ee685ba7545015481e9655f662e8b63e719220ac5b8a429a
```

-	Platforms:
	-	linux; amd64

### `hylang:0.11` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268064106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef09afca5064d532d2ea4bba2a07e6ee23550e21ff4dd173441f7920e0f568a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:37:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:37:30 GMT
ENV LANG=C.UTF-8
# Tue, 09 Aug 2016 20:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 20:42:54 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_VERSION=3.5.2
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:59:51 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:59:53 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:59:53 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:15:14 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Tue, 09 Aug 2016 23:15:16 GMT
ADD dir:866a4ac77e162758d5a87e8e6eeada7a7cc3a0f86d1565f43e2fab5ad260d7f7 in /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:22 GMT
RUN pip3 install -e /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:4211bb5376972ebb740e54525e95b9ea6ef08c85e7519f795170501632942fbb`  
		Last Modified: Tue, 09 Aug 2016 21:16:33 GMT  
		Size: 2.9 MB (2888355 bytes)
	-	`sha256:71f9074c0739f6f33f70b6ca64130de5b7eb1a3ff30595cd957daf91b2934f33`  
		Last Modified: Tue, 09 Aug 2016 21:25:22 GMT  
		Size: 20.4 MB (20414884 bytes)
	-	`sha256:3e5349707036c4732625ead0ca6ade6dc6d42c7ef9d0fdedca79b5dccadd072b`  
		Last Modified: Tue, 09 Aug 2016 21:25:15 GMT  
		Size: 265.0 B
	-	`sha256:95db25b414e2c2c0fa01d4ab78c6cf65d3c61a679dfdda818cac0256455a38e1`  
		Last Modified: Tue, 09 Aug 2016 23:15:33 GMT  
		Size: 358.4 KB (358375 bytes)
	-	`sha256:db3fd51f31b1ec7b638f6c1b868798a952eaf877a1140e67554b544de8d48629`  
		Last Modified: Tue, 09 Aug 2016 23:15:34 GMT  
		Size: 2.3 MB (2321721 bytes)

## `hylang:0`

```console
$ docker pull hylang@sha256:79d7c89568352441ee685ba7545015481e9655f662e8b63e719220ac5b8a429a
```

-	Platforms:
	-	linux; amd64

### `hylang:0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268064106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef09afca5064d532d2ea4bba2a07e6ee23550e21ff4dd173441f7920e0f568a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:37:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:37:30 GMT
ENV LANG=C.UTF-8
# Tue, 09 Aug 2016 20:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 20:42:54 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_VERSION=3.5.2
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:59:51 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:59:53 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:59:53 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:15:14 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Tue, 09 Aug 2016 23:15:16 GMT
ADD dir:866a4ac77e162758d5a87e8e6eeada7a7cc3a0f86d1565f43e2fab5ad260d7f7 in /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:22 GMT
RUN pip3 install -e /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:4211bb5376972ebb740e54525e95b9ea6ef08c85e7519f795170501632942fbb`  
		Last Modified: Tue, 09 Aug 2016 21:16:33 GMT  
		Size: 2.9 MB (2888355 bytes)
	-	`sha256:71f9074c0739f6f33f70b6ca64130de5b7eb1a3ff30595cd957daf91b2934f33`  
		Last Modified: Tue, 09 Aug 2016 21:25:22 GMT  
		Size: 20.4 MB (20414884 bytes)
	-	`sha256:3e5349707036c4732625ead0ca6ade6dc6d42c7ef9d0fdedca79b5dccadd072b`  
		Last Modified: Tue, 09 Aug 2016 21:25:15 GMT  
		Size: 265.0 B
	-	`sha256:95db25b414e2c2c0fa01d4ab78c6cf65d3c61a679dfdda818cac0256455a38e1`  
		Last Modified: Tue, 09 Aug 2016 23:15:33 GMT  
		Size: 358.4 KB (358375 bytes)
	-	`sha256:db3fd51f31b1ec7b638f6c1b868798a952eaf877a1140e67554b544de8d48629`  
		Last Modified: Tue, 09 Aug 2016 23:15:34 GMT  
		Size: 2.3 MB (2321721 bytes)

## `hylang:latest`

```console
$ docker pull hylang@sha256:79d7c89568352441ee685ba7545015481e9655f662e8b63e719220ac5b8a429a
```

-	Platforms:
	-	linux; amd64

### `hylang:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268064106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cef09afca5064d532d2ea4bba2a07e6ee23550e21ff4dd173441f7920e0f568a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:37:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:37:30 GMT
ENV LANG=C.UTF-8
# Tue, 09 Aug 2016 20:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 20:42:54 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_VERSION=3.5.2
# Tue, 09 Aug 2016 20:56:29 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:59:51 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:59:53 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:59:53 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:15:14 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Tue, 09 Aug 2016 23:15:16 GMT
ADD dir:866a4ac77e162758d5a87e8e6eeada7a7cc3a0f86d1565f43e2fab5ad260d7f7 in /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:22 GMT
RUN pip3 install -e /opt/hylang/hy
# Tue, 09 Aug 2016 23:15:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:4211bb5376972ebb740e54525e95b9ea6ef08c85e7519f795170501632942fbb`  
		Last Modified: Tue, 09 Aug 2016 21:16:33 GMT  
		Size: 2.9 MB (2888355 bytes)
	-	`sha256:71f9074c0739f6f33f70b6ca64130de5b7eb1a3ff30595cd957daf91b2934f33`  
		Last Modified: Tue, 09 Aug 2016 21:25:22 GMT  
		Size: 20.4 MB (20414884 bytes)
	-	`sha256:3e5349707036c4732625ead0ca6ade6dc6d42c7ef9d0fdedca79b5dccadd072b`  
		Last Modified: Tue, 09 Aug 2016 21:25:15 GMT  
		Size: 265.0 B
	-	`sha256:95db25b414e2c2c0fa01d4ab78c6cf65d3c61a679dfdda818cac0256455a38e1`  
		Last Modified: Tue, 09 Aug 2016 23:15:33 GMT  
		Size: 358.4 KB (358375 bytes)
	-	`sha256:db3fd51f31b1ec7b638f6c1b868798a952eaf877a1140e67554b544de8d48629`  
		Last Modified: Tue, 09 Aug 2016 23:15:34 GMT  
		Size: 2.3 MB (2321721 bytes)
