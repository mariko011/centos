<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `sentry`

-	[`sentry:8.6.0`](#sentry860)
-	[`sentry:8.6`](#sentry86)
-	[`sentry:8.6.0-onbuild`](#sentry860-onbuild)
-	[`sentry:8.6-onbuild`](#sentry86-onbuild)
-	[`sentry:8.7.0`](#sentry870)
-	[`sentry:8.7`](#sentry87)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.7.0-onbuild`](#sentry870-onbuild)
-	[`sentry:8.7-onbuild`](#sentry87-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8.6.0`

```console
$ docker pull sentry@sha256:0bb6447cc663d3e7d75a51c7517e314d7381e156ad32f5e0f51453a22a8b0800
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169135181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc207d5a1067e0b5d50084e91358d4dcc4bbfa28ba159050f45d2ae330e828f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:20:35 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 09 Aug 2016 23:20:36 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 09 Aug 2016 23:23:34 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 09 Aug 2016 23:23:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Aug 2016 23:23:37 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Aug 2016 23:23:38 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 09 Aug 2016 23:23:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 09 Aug 2016 23:23:41 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 09 Aug 2016 23:23:42 GMT
EXPOSE 9000/tcp
# Tue, 09 Aug 2016 23:23:42 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Aug 2016 23:23:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 09 Aug 2016 23:23:44 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:98e733cd28e4d1cc0800984cee3a17de12571b21ee9bfa1a23c3ffb6b630d609`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 1.9 MB (1899464 bytes)
	-	`sha256:b61cf9f68a1452d9ea8ba9ff5ff3234fdc62038bca77c0a32c0c1d313149eb04`  
		Last Modified: Tue, 09 Aug 2016 23:24:10 GMT  
		Size: 32.8 MB (32810340 bytes)
	-	`sha256:7d0f6baaa307d7ba6dd6e91264488dff85504e3f5ac260cbccae07e664806680`  
		Last Modified: Tue, 09 Aug 2016 23:23:55 GMT  
		Size: 175.0 B
	-	`sha256:1d286e5459840932bb5e46db558d98463813baf3821a75c9e5564f528907be1a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:8094454ce0233991b489a3e78959e8758bb08d4f91dd182b9b473aecc6dbd59a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 919.0 B
	-	`sha256:394cbd6385d6cd455b568c4ccd0db2c0184c139000fd3d739299a336fb02ff5a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 422.0 B

## `sentry:8.6`

```console
$ docker pull sentry@sha256:0bb6447cc663d3e7d75a51c7517e314d7381e156ad32f5e0f51453a22a8b0800
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169135181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc207d5a1067e0b5d50084e91358d4dcc4bbfa28ba159050f45d2ae330e828f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:20:35 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 09 Aug 2016 23:20:36 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 09 Aug 2016 23:23:34 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 09 Aug 2016 23:23:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Aug 2016 23:23:37 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Aug 2016 23:23:38 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 09 Aug 2016 23:23:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 09 Aug 2016 23:23:41 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 09 Aug 2016 23:23:42 GMT
EXPOSE 9000/tcp
# Tue, 09 Aug 2016 23:23:42 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Aug 2016 23:23:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 09 Aug 2016 23:23:44 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:98e733cd28e4d1cc0800984cee3a17de12571b21ee9bfa1a23c3ffb6b630d609`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 1.9 MB (1899464 bytes)
	-	`sha256:b61cf9f68a1452d9ea8ba9ff5ff3234fdc62038bca77c0a32c0c1d313149eb04`  
		Last Modified: Tue, 09 Aug 2016 23:24:10 GMT  
		Size: 32.8 MB (32810340 bytes)
	-	`sha256:7d0f6baaa307d7ba6dd6e91264488dff85504e3f5ac260cbccae07e664806680`  
		Last Modified: Tue, 09 Aug 2016 23:23:55 GMT  
		Size: 175.0 B
	-	`sha256:1d286e5459840932bb5e46db558d98463813baf3821a75c9e5564f528907be1a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:8094454ce0233991b489a3e78959e8758bb08d4f91dd182b9b473aecc6dbd59a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 919.0 B
	-	`sha256:394cbd6385d6cd455b568c4ccd0db2c0184c139000fd3d739299a336fb02ff5a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 422.0 B

## `sentry:8.6.0-onbuild`

```console
$ docker pull sentry@sha256:c20a313d5f27deac4b3f2eda6e2bc1513d738d0f79befba08a58b84f89369ca2
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169135313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbc9ecd1dce39a8d5caa1786e0ef4d311120bf5ab07615999a324b93776af11`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:20:35 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 09 Aug 2016 23:20:36 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 09 Aug 2016 23:23:34 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 09 Aug 2016 23:23:35 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Aug 2016 23:23:37 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Aug 2016 23:23:38 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 09 Aug 2016 23:23:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 09 Aug 2016 23:23:41 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 09 Aug 2016 23:23:42 GMT
EXPOSE 9000/tcp
# Tue, 09 Aug 2016 23:23:42 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Aug 2016 23:23:43 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 09 Aug 2016 23:23:44 GMT
CMD ["run" "web"]
# Tue, 09 Aug 2016 23:29:32 GMT
WORKDIR /usr/src/sentry
# Tue, 09 Aug 2016 23:29:32 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 09 Aug 2016 23:29:33 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 09 Aug 2016 23:29:34 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 09 Aug 2016 23:29:35 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 09 Aug 2016 23:29:36 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:98e733cd28e4d1cc0800984cee3a17de12571b21ee9bfa1a23c3ffb6b630d609`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 1.9 MB (1899464 bytes)
	-	`sha256:b61cf9f68a1452d9ea8ba9ff5ff3234fdc62038bca77c0a32c0c1d313149eb04`  
		Last Modified: Tue, 09 Aug 2016 23:24:10 GMT  
		Size: 32.8 MB (32810340 bytes)
	-	`sha256:7d0f6baaa307d7ba6dd6e91264488dff85504e3f5ac260cbccae07e664806680`  
		Last Modified: Tue, 09 Aug 2016 23:23:55 GMT  
		Size: 175.0 B
	-	`sha256:1d286e5459840932bb5e46db558d98463813baf3821a75c9e5564f528907be1a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:8094454ce0233991b489a3e78959e8758bb08d4f91dd182b9b473aecc6dbd59a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 919.0 B
	-	`sha256:394cbd6385d6cd455b568c4ccd0db2c0184c139000fd3d739299a336fb02ff5a`  
		Last Modified: Tue, 09 Aug 2016 23:23:54 GMT  
		Size: 422.0 B
	-	`sha256:1e217507bb03a230840affa70e3d788f476ecfa8319d7897a807f1a8f484b9f1`  
		Last Modified: Tue, 09 Aug 2016 23:29:46 GMT  
		Size: 132.0 B

## `sentry:8.6-onbuild`

```console
$ docker pull sentry@sha256:a38513306b51a9d7300251da7a402cc2bcaa915b46deff49c1228dba99732f3b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169507693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59182dfb98f75e8339484210d95a781789e12684c8a1f63cd02acbb9a34dbdef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 16 Aug 2016 16:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 16 Aug 2016 16:41:21 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 16 Aug 2016 16:44:03 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 16 Aug 2016 16:44:04 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 16 Aug 2016 16:44:06 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 16 Aug 2016 16:44:08 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 16 Aug 2016 16:44:09 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 16 Aug 2016 16:44:11 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 16 Aug 2016 16:44:12 GMT
EXPOSE 9000/tcp
# Tue, 16 Aug 2016 16:44:13 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 16 Aug 2016 16:44:13 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:44:14 GMT
CMD ["run" "web"]
# Tue, 16 Aug 2016 16:44:16 GMT
WORKDIR /usr/src/sentry
# Tue, 16 Aug 2016 16:44:17 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 16 Aug 2016 16:44:18 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 16 Aug 2016 16:44:19 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 16 Aug 2016 16:44:20 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 16 Aug 2016 16:44:21 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:452416534e2fd48c7290af2b621709aa5fd5760635c98d7448dcbdb60a039278`  
		Last Modified: Tue, 16 Aug 2016 16:48:34 GMT  
		Size: 2.3 MB (2294012 bytes)
	-	`sha256:391b99972e681b558d3bc5e79a686be1d2c63aab90d0c93a79ac7ed70c6a7347`  
		Last Modified: Tue, 16 Aug 2016 16:48:44 GMT  
		Size: 32.8 MB (32788173 bytes)
	-	`sha256:d89cfd873c6ace5dd04e2a7064862d4a0f195ee5e3c92de4d87ab6a735f753c5`  
		Last Modified: Tue, 16 Aug 2016 16:48:30 GMT  
		Size: 174.0 B
	-	`sha256:0dfab2750eb380303d710671bfef02bae1502648d87848341bd0c7749ea7bf30`  
		Last Modified: Tue, 16 Aug 2016 16:48:30 GMT  
		Size: 3.3 KB (3324 bytes)
	-	`sha256:73947ae155421c593f7e07aecad9a39becfd6239a536ab852cf6a4292665076a`  
		Last Modified: Tue, 16 Aug 2016 16:48:30 GMT  
		Size: 917.0 B
	-	`sha256:d45d1ba6769c92c039e9af6697fa0e94d736d042550306525513526e8d4bcc2f`  
		Last Modified: Tue, 16 Aug 2016 16:48:30 GMT  
		Size: 422.0 B
	-	`sha256:c01beda39078fa16e61043b89f017a4f4176d5bdcc60724e8fc506e431c1f151`  
		Last Modified: Tue, 16 Aug 2016 16:49:21 GMT  
		Size: 131.0 B

## `sentry:8.7.0`

```console
$ docker pull sentry@sha256:db7441887724cfe268e5deddaebcc6b2b6ca739d2401e6d282654e9ccdd7a263
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169941513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33172721938394b680b07ce8e04415615189f01e6b08db62550ec2bd45d25185`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 16 Aug 2016 16:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 16 Aug 2016 16:44:22 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 16 Aug 2016 16:47:35 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 16 Aug 2016 16:47:40 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 16 Aug 2016 16:47:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 16 Aug 2016 16:47:46 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 16 Aug 2016 16:47:56 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 16 Aug 2016 16:47:58 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 16 Aug 2016 16:47:59 GMT
EXPOSE 9000/tcp
# Tue, 16 Aug 2016 16:48:00 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 16 Aug 2016 16:48:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:48:02 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:452416534e2fd48c7290af2b621709aa5fd5760635c98d7448dcbdb60a039278`  
		Last Modified: Tue, 16 Aug 2016 16:48:34 GMT  
		Size: 2.3 MB (2294012 bytes)
	-	`sha256:43b9b03f7e0700884c5fc6c07cfdf0efd2f1fd942d3c6467b797a1e1bedc06fd`  
		Last Modified: Tue, 16 Aug 2016 16:50:09 GMT  
		Size: 33.2 MB (33222123 bytes)
	-	`sha256:0e704ebe25af64223bb16837a63afb51a3f47b5de9b67e9ad6c639ee09722a9a`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 175.0 B
	-	`sha256:96e9133dcee04390ea422155cd382959d7a144a771bd64c3e4aeffc22b369d50`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 3.3 KB (3318 bytes)
	-	`sha256:87a2d6333499ff62bdd6ea721682e4fb410f734f35d5c74c61a64a282aec280b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 920.0 B
	-	`sha256:74075181408d1b0536f738765ef635f7c31014869a81360894ea416ccebbbf7b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 425.0 B

## `sentry:8.7`

```console
$ docker pull sentry@sha256:db7441887724cfe268e5deddaebcc6b2b6ca739d2401e6d282654e9ccdd7a263
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169941513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33172721938394b680b07ce8e04415615189f01e6b08db62550ec2bd45d25185`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 16 Aug 2016 16:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 16 Aug 2016 16:44:22 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 16 Aug 2016 16:47:35 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 16 Aug 2016 16:47:40 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 16 Aug 2016 16:47:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 16 Aug 2016 16:47:46 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 16 Aug 2016 16:47:56 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 16 Aug 2016 16:47:58 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 16 Aug 2016 16:47:59 GMT
EXPOSE 9000/tcp
# Tue, 16 Aug 2016 16:48:00 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 16 Aug 2016 16:48:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:48:02 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:452416534e2fd48c7290af2b621709aa5fd5760635c98d7448dcbdb60a039278`  
		Last Modified: Tue, 16 Aug 2016 16:48:34 GMT  
		Size: 2.3 MB (2294012 bytes)
	-	`sha256:43b9b03f7e0700884c5fc6c07cfdf0efd2f1fd942d3c6467b797a1e1bedc06fd`  
		Last Modified: Tue, 16 Aug 2016 16:50:09 GMT  
		Size: 33.2 MB (33222123 bytes)
	-	`sha256:0e704ebe25af64223bb16837a63afb51a3f47b5de9b67e9ad6c639ee09722a9a`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 175.0 B
	-	`sha256:96e9133dcee04390ea422155cd382959d7a144a771bd64c3e4aeffc22b369d50`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 3.3 KB (3318 bytes)
	-	`sha256:87a2d6333499ff62bdd6ea721682e4fb410f734f35d5c74c61a64a282aec280b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 920.0 B
	-	`sha256:74075181408d1b0536f738765ef635f7c31014869a81360894ea416ccebbbf7b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 425.0 B

## `sentry:8`

```console
$ docker pull sentry@sha256:7410b3620b552a59a5f52a5c484ac77f87fdbd08d272d2b25dea30316b12341d
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169565435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90551bebecf2dfbc00c94bcaa747021d3729e6157ca65121914cc76bcd0b1709`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:20:35 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 09 Aug 2016 23:24:39 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 09 Aug 2016 23:27:18 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 09 Aug 2016 23:27:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Aug 2016 23:27:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Aug 2016 23:27:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 09 Aug 2016 23:27:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 09 Aug 2016 23:27:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 09 Aug 2016 23:27:26 GMT
EXPOSE 9000/tcp
# Tue, 09 Aug 2016 23:27:27 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Aug 2016 23:27:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 09 Aug 2016 23:27:29 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:98e733cd28e4d1cc0800984cee3a17de12571b21ee9bfa1a23c3ffb6b630d609`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 1.9 MB (1899464 bytes)
	-	`sha256:f5cbec3f6d7dbdc9a22924632903d00b8eb5d0ed231b2bac534432c258fea837`  
		Last Modified: Tue, 09 Aug 2016 23:27:52 GMT  
		Size: 33.2 MB (33240593 bytes)
	-	`sha256:569157c05a6eb31aecfb3ea9caa20e1fef12d63cee198e9f58ed2a633dd23a55`  
		Last Modified: Tue, 09 Aug 2016 23:27:40 GMT  
		Size: 174.0 B
	-	`sha256:babd0cc133db97a417360203e7f5806e53f46a9455e1f44b97ab32a1141a83ab`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:37c352de534aa7410737f5c11f811142811a8ea34baa653c190c5994ce15f45a`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 918.0 B
	-	`sha256:f807f46bf92fadd617e7a7466669259f61ca0015829f50d29f87e671f9322ec5`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 425.0 B

## `sentry:latest`

```console
$ docker pull sentry@sha256:7410b3620b552a59a5f52a5c484ac77f87fdbd08d272d2b25dea30316b12341d
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169565435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90551bebecf2dfbc00c94bcaa747021d3729e6157ca65121914cc76bcd0b1709`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:20:35 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 09 Aug 2016 23:24:39 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 09 Aug 2016 23:27:18 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 09 Aug 2016 23:27:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Aug 2016 23:27:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Aug 2016 23:27:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 09 Aug 2016 23:27:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 09 Aug 2016 23:27:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 09 Aug 2016 23:27:26 GMT
EXPOSE 9000/tcp
# Tue, 09 Aug 2016 23:27:27 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Aug 2016 23:27:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 09 Aug 2016 23:27:29 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:98e733cd28e4d1cc0800984cee3a17de12571b21ee9bfa1a23c3ffb6b630d609`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 1.9 MB (1899464 bytes)
	-	`sha256:f5cbec3f6d7dbdc9a22924632903d00b8eb5d0ed231b2bac534432c258fea837`  
		Last Modified: Tue, 09 Aug 2016 23:27:52 GMT  
		Size: 33.2 MB (33240593 bytes)
	-	`sha256:569157c05a6eb31aecfb3ea9caa20e1fef12d63cee198e9f58ed2a633dd23a55`  
		Last Modified: Tue, 09 Aug 2016 23:27:40 GMT  
		Size: 174.0 B
	-	`sha256:babd0cc133db97a417360203e7f5806e53f46a9455e1f44b97ab32a1141a83ab`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:37c352de534aa7410737f5c11f811142811a8ea34baa653c190c5994ce15f45a`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 918.0 B
	-	`sha256:f807f46bf92fadd617e7a7466669259f61ca0015829f50d29f87e671f9322ec5`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 425.0 B

## `sentry:8.7.0-onbuild`

```console
$ docker pull sentry@sha256:676c7b82cb8fea7a626a227e1ab72a9a0d4fdb3b33e15387d2829dadce67ea17
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169941645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e765ff40f8d58040cb0af47fef875f1e6c358b41e0212705675db1ac4beb58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 16 Aug 2016 16:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 16 Aug 2016 16:44:22 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 16 Aug 2016 16:47:35 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 16 Aug 2016 16:47:40 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 16 Aug 2016 16:47:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 16 Aug 2016 16:47:46 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 16 Aug 2016 16:47:56 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 16 Aug 2016 16:47:58 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 16 Aug 2016 16:47:59 GMT
EXPOSE 9000/tcp
# Tue, 16 Aug 2016 16:48:00 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 16 Aug 2016 16:48:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:48:02 GMT
CMD ["run" "web"]
# Tue, 16 Aug 2016 16:48:12 GMT
WORKDIR /usr/src/sentry
# Tue, 16 Aug 2016 16:48:13 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 16 Aug 2016 16:48:14 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 16 Aug 2016 16:48:15 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 16 Aug 2016 16:48:16 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 16 Aug 2016 16:48:18 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:452416534e2fd48c7290af2b621709aa5fd5760635c98d7448dcbdb60a039278`  
		Last Modified: Tue, 16 Aug 2016 16:48:34 GMT  
		Size: 2.3 MB (2294012 bytes)
	-	`sha256:43b9b03f7e0700884c5fc6c07cfdf0efd2f1fd942d3c6467b797a1e1bedc06fd`  
		Last Modified: Tue, 16 Aug 2016 16:50:09 GMT  
		Size: 33.2 MB (33222123 bytes)
	-	`sha256:0e704ebe25af64223bb16837a63afb51a3f47b5de9b67e9ad6c639ee09722a9a`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 175.0 B
	-	`sha256:96e9133dcee04390ea422155cd382959d7a144a771bd64c3e4aeffc22b369d50`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 3.3 KB (3318 bytes)
	-	`sha256:87a2d6333499ff62bdd6ea721682e4fb410f734f35d5c74c61a64a282aec280b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 920.0 B
	-	`sha256:74075181408d1b0536f738765ef635f7c31014869a81360894ea416ccebbbf7b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 425.0 B
	-	`sha256:b97baf2167f6cc41b4bd376c172715a119f218365c920a18fa44274e8a3bc02a`  
		Last Modified: Tue, 16 Aug 2016 16:51:36 GMT  
		Size: 132.0 B

## `sentry:8.7-onbuild`

```console
$ docker pull sentry@sha256:d0330aa5e1c5cac92c13c184b367318cb154433438a3711b1a3ae8163bd0b9f3
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169565565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fe161cd0f40382efaa471db39db36792ef66ddac2a3e5225348d0c33c715bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:20:35 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 09 Aug 2016 23:24:39 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 09 Aug 2016 23:27:18 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 09 Aug 2016 23:27:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Aug 2016 23:27:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Aug 2016 23:27:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 09 Aug 2016 23:27:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 09 Aug 2016 23:27:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 09 Aug 2016 23:27:26 GMT
EXPOSE 9000/tcp
# Tue, 09 Aug 2016 23:27:27 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Aug 2016 23:27:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 09 Aug 2016 23:27:29 GMT
CMD ["run" "web"]
# Tue, 09 Aug 2016 23:28:37 GMT
WORKDIR /usr/src/sentry
# Tue, 09 Aug 2016 23:28:38 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 09 Aug 2016 23:28:39 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 09 Aug 2016 23:28:40 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 09 Aug 2016 23:28:41 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 09 Aug 2016 23:28:41 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:98e733cd28e4d1cc0800984cee3a17de12571b21ee9bfa1a23c3ffb6b630d609`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 1.9 MB (1899464 bytes)
	-	`sha256:f5cbec3f6d7dbdc9a22924632903d00b8eb5d0ed231b2bac534432c258fea837`  
		Last Modified: Tue, 09 Aug 2016 23:27:52 GMT  
		Size: 33.2 MB (33240593 bytes)
	-	`sha256:569157c05a6eb31aecfb3ea9caa20e1fef12d63cee198e9f58ed2a633dd23a55`  
		Last Modified: Tue, 09 Aug 2016 23:27:40 GMT  
		Size: 174.0 B
	-	`sha256:babd0cc133db97a417360203e7f5806e53f46a9455e1f44b97ab32a1141a83ab`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:37c352de534aa7410737f5c11f811142811a8ea34baa653c190c5994ce15f45a`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 918.0 B
	-	`sha256:f807f46bf92fadd617e7a7466669259f61ca0015829f50d29f87e671f9322ec5`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 425.0 B
	-	`sha256:77d4aeef22be5762e39d7c3a22bcc1a0c4af7eb06b30addaa2fd08d3761efcb7`  
		Last Modified: Tue, 09 Aug 2016 23:28:52 GMT  
		Size: 130.0 B

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:676c7b82cb8fea7a626a227e1ab72a9a0d4fdb3b33e15387d2829dadce67ea17
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.9 MB (169941645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e765ff40f8d58040cb0af47fef875f1e6c358b41e0212705675db1ac4beb58`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 16 Aug 2016 16:41:13 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 16 Aug 2016 16:44:22 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 16 Aug 2016 16:47:35 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 16 Aug 2016 16:47:40 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 16 Aug 2016 16:47:45 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 16 Aug 2016 16:47:46 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 16 Aug 2016 16:47:56 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 16 Aug 2016 16:47:58 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 16 Aug 2016 16:47:59 GMT
EXPOSE 9000/tcp
# Tue, 16 Aug 2016 16:48:00 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 16 Aug 2016 16:48:01 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 16 Aug 2016 16:48:02 GMT
CMD ["run" "web"]
# Tue, 16 Aug 2016 16:48:12 GMT
WORKDIR /usr/src/sentry
# Tue, 16 Aug 2016 16:48:13 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 16 Aug 2016 16:48:14 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 16 Aug 2016 16:48:15 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 16 Aug 2016 16:48:16 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 16 Aug 2016 16:48:18 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:452416534e2fd48c7290af2b621709aa5fd5760635c98d7448dcbdb60a039278`  
		Last Modified: Tue, 16 Aug 2016 16:48:34 GMT  
		Size: 2.3 MB (2294012 bytes)
	-	`sha256:43b9b03f7e0700884c5fc6c07cfdf0efd2f1fd942d3c6467b797a1e1bedc06fd`  
		Last Modified: Tue, 16 Aug 2016 16:50:09 GMT  
		Size: 33.2 MB (33222123 bytes)
	-	`sha256:0e704ebe25af64223bb16837a63afb51a3f47b5de9b67e9ad6c639ee09722a9a`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 175.0 B
	-	`sha256:96e9133dcee04390ea422155cd382959d7a144a771bd64c3e4aeffc22b369d50`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 3.3 KB (3318 bytes)
	-	`sha256:87a2d6333499ff62bdd6ea721682e4fb410f734f35d5c74c61a64a282aec280b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 920.0 B
	-	`sha256:74075181408d1b0536f738765ef635f7c31014869a81360894ea416ccebbbf7b`  
		Last Modified: Tue, 16 Aug 2016 16:49:54 GMT  
		Size: 425.0 B
	-	`sha256:b97baf2167f6cc41b4bd376c172715a119f218365c920a18fa44274e8a3bc02a`  
		Last Modified: Tue, 16 Aug 2016 16:51:36 GMT  
		Size: 132.0 B

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:d0330aa5e1c5cac92c13c184b367318cb154433438a3711b1a3ae8163bd0b9f3
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.6 MB (169565565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77fe161cd0f40382efaa471db39db36792ef66ddac2a3e5225348d0c33c715bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 08 Aug 2016 19:41:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:41:08 GMT
ENV LANG=C.UTF-8
# Mon, 08 Aug 2016 19:42:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:42:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 08 Aug 2016 19:42:13 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 08 Aug 2016 19:42:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 09 Aug 2016 20:24:52 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:24:53 GMT
CMD ["python2"]
# Tue, 09 Aug 2016 23:16:24 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 09 Aug 2016 23:17:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 23:17:50 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 09 Aug 2016 23:17:51 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 09 Aug 2016 23:17:52 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Aug 2016 23:19:12 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:19:13 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 09 Aug 2016 23:20:31 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 09 Aug 2016 23:20:35 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 09 Aug 2016 23:24:39 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 09 Aug 2016 23:27:18 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 09 Aug 2016 23:27:20 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 09 Aug 2016 23:27:22 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 09 Aug 2016 23:27:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 09 Aug 2016 23:27:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 09 Aug 2016 23:27:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 09 Aug 2016 23:27:26 GMT
EXPOSE 9000/tcp
# Tue, 09 Aug 2016 23:27:27 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 09 Aug 2016 23:27:28 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 09 Aug 2016 23:27:29 GMT
CMD ["run" "web"]
# Tue, 09 Aug 2016 23:28:37 GMT
WORKDIR /usr/src/sentry
# Tue, 09 Aug 2016 23:28:38 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 09 Aug 2016 23:28:39 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 09 Aug 2016 23:28:40 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 09 Aug 2016 23:28:41 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 09 Aug 2016 23:28:41 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:167ec28ce96ddbe5d4cdb91b39a218ac30af8852bc9d437415543fdb27b12ec1`  
		Last Modified: Tue, 09 Aug 2016 21:17:21 GMT  
		Size: 16.3 MB (16278145 bytes)
	-	`sha256:4e20fc64b7296e582c9b856ec737e7e6b5e43436e03a30ccf1f1e53fa095c3a3`  
		Last Modified: Tue, 09 Aug 2016 23:24:01 GMT  
		Size: 4.3 KB (4344 bytes)
	-	`sha256:70daa56bc3540599bd6273fe9f8470c54e12c97a156aec625078405d139fe772`  
		Last Modified: Tue, 09 Aug 2016 23:24:20 GMT  
		Size: 62.6 MB (62637797 bytes)
	-	`sha256:dc949a801b55a26cea8b363c3696c35ec9391ac34d026da81e7d29ba26c6c858`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 698.9 KB (698868 bytes)
	-	`sha256:ea3d5c7c1440f0779b344a03d450fcfeb4a249c48c7fc2e05e3669910950a0d7`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 129.5 KB (129526 bytes)
	-	`sha256:98e733cd28e4d1cc0800984cee3a17de12571b21ee9bfa1a23c3ffb6b630d609`  
		Last Modified: Tue, 09 Aug 2016 23:23:58 GMT  
		Size: 1.9 MB (1899464 bytes)
	-	`sha256:f5cbec3f6d7dbdc9a22924632903d00b8eb5d0ed231b2bac534432c258fea837`  
		Last Modified: Tue, 09 Aug 2016 23:27:52 GMT  
		Size: 33.2 MB (33240593 bytes)
	-	`sha256:569157c05a6eb31aecfb3ea9caa20e1fef12d63cee198e9f58ed2a633dd23a55`  
		Last Modified: Tue, 09 Aug 2016 23:27:40 GMT  
		Size: 174.0 B
	-	`sha256:babd0cc133db97a417360203e7f5806e53f46a9455e1f44b97ab32a1141a83ab`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 3.3 KB (3321 bytes)
	-	`sha256:37c352de534aa7410737f5c11f811142811a8ea34baa653c190c5994ce15f45a`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 918.0 B
	-	`sha256:f807f46bf92fadd617e7a7466669259f61ca0015829f50d29f87e671f9322ec5`  
		Last Modified: Tue, 09 Aug 2016 23:27:39 GMT  
		Size: 425.0 B
	-	`sha256:77d4aeef22be5762e39d7c3a22bcc1a0c4af7eb06b30addaa2fd08d3761efcb7`  
		Last Modified: Tue, 09 Aug 2016 23:28:52 GMT  
		Size: 130.0 B
