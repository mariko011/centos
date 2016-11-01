<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8.8.0`](#sentry880)
-	[`sentry:8.8`](#sentry88)
-	[`sentry:8.8.0-onbuild`](#sentry880-onbuild)
-	[`sentry:8.8-onbuild`](#sentry88-onbuild)
-	[`sentry:8.9.0`](#sentry890)
-	[`sentry:8.9`](#sentry89)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.9.0-onbuild`](#sentry890-onbuild)
-	[`sentry:8.9-onbuild`](#sentry89-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8.8.0`

```console
$ docker pull sentry@sha256:eb9286887cac1e29297c831292fb5bf9fe86003d0c351a03720b2bb6f6e6dd7d
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171417297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb570ccb93fff90eeb10c9b24977caa19e99066d91fcb7b272e27d8c6d4b09c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:31:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 22 Oct 2016 00:31:51 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 22 Oct 2016 00:31:52 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:34:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:34:09 GMT
CMD ["python2"]
# Sat, 22 Oct 2016 01:25:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 22 Oct 2016 01:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 22 Oct 2016 01:25:56 GMT
ENV GOSU_VERSION=1.9
# Sat, 22 Oct 2016 01:26:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:07 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 22 Oct 2016 01:26:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 22 Oct 2016 01:30:01 GMT
ENV SENTRY_VERSION=8.8.0
# Sat, 22 Oct 2016 01:31:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Sat, 22 Oct 2016 01:31:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 22 Oct 2016 01:31:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 22 Oct 2016 01:31:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Sat, 22 Oct 2016 01:31:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Sat, 22 Oct 2016 01:31:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 22 Oct 2016 01:31:17 GMT
EXPOSE 9000/tcp
# Sat, 22 Oct 2016 01:31:17 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 22 Oct 2016 01:31:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 01:31:18 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa362e6fe0832fd5898aed7db148ab39dc1485f9a62744d66b48d3d08f646ae8`  
		Last Modified: Sat, 22 Oct 2016 00:34:24 GMT  
		Size: 16.3 MB (16305370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d05f63c775c812bfed102918c2bc09c1be0b6c22d52f7abb49c0617dd91f35`  
		Last Modified: Sat, 22 Oct 2016 01:28:05 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffb82016deb6502913d0d01168ccc3fb3fedd8e03a05e4071df60aed6c9d3b`  
		Last Modified: Sat, 22 Oct 2016 01:28:28 GMT  
		Size: 62.6 MB (62641883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a04e0ddf3b927b1ac5be8001e19c2b827dc35f563ee55adacc5313a24a2ef`  
		Last Modified: Sat, 22 Oct 2016 01:28:02 GMT  
		Size: 698.5 KB (698507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3676c59d01c0d91aa3f16992404c77f86f4b6a16592040871d8c9807b21a10f`  
		Last Modified: Sat, 22 Oct 2016 01:28:04 GMT  
		Size: 129.1 KB (129137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef1e498a625bfb9e89403729a113356086b7c249536d08cd7eddb586e3d28d0`  
		Last Modified: Sat, 22 Oct 2016 01:28:03 GMT  
		Size: 2.3 MB (2289695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483dcff7c5df0792df7c226c99d960bde93aa6f4d73caaac92a77869f392d10`  
		Last Modified: Sat, 22 Oct 2016 01:31:40 GMT  
		Size: 34.7 MB (34683828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb3546fb3d0012e4591b7062cfb901f79b07a705d6aeed4323b6c5d67ade09a`  
		Last Modified: Sat, 22 Oct 2016 01:31:29 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f75fc55e5fb0bb4cb504612a7d2af5987ebca38a6852be15b7190eeaab3db67`  
		Last Modified: Sat, 22 Oct 2016 01:31:28 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e083c17a96118bde97548db020e989e9fa34beb61114a0f5c3d9290a966e7aa`  
		Last Modified: Sat, 22 Oct 2016 01:31:27 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59541484e345a4393bbe5674f0001124131c4a8366ba6a80c156bc3ddad18a96`  
		Last Modified: Sat, 22 Oct 2016 01:31:29 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8`

```console
$ docker pull sentry@sha256:eb9286887cac1e29297c831292fb5bf9fe86003d0c351a03720b2bb6f6e6dd7d
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171417297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb570ccb93fff90eeb10c9b24977caa19e99066d91fcb7b272e27d8c6d4b09c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:31:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 22 Oct 2016 00:31:51 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 22 Oct 2016 00:31:52 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:34:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:34:09 GMT
CMD ["python2"]
# Sat, 22 Oct 2016 01:25:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 22 Oct 2016 01:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 22 Oct 2016 01:25:56 GMT
ENV GOSU_VERSION=1.9
# Sat, 22 Oct 2016 01:26:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:07 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 22 Oct 2016 01:26:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 22 Oct 2016 01:30:01 GMT
ENV SENTRY_VERSION=8.8.0
# Sat, 22 Oct 2016 01:31:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Sat, 22 Oct 2016 01:31:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 22 Oct 2016 01:31:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 22 Oct 2016 01:31:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Sat, 22 Oct 2016 01:31:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Sat, 22 Oct 2016 01:31:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 22 Oct 2016 01:31:17 GMT
EXPOSE 9000/tcp
# Sat, 22 Oct 2016 01:31:17 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 22 Oct 2016 01:31:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 01:31:18 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa362e6fe0832fd5898aed7db148ab39dc1485f9a62744d66b48d3d08f646ae8`  
		Last Modified: Sat, 22 Oct 2016 00:34:24 GMT  
		Size: 16.3 MB (16305370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d05f63c775c812bfed102918c2bc09c1be0b6c22d52f7abb49c0617dd91f35`  
		Last Modified: Sat, 22 Oct 2016 01:28:05 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffb82016deb6502913d0d01168ccc3fb3fedd8e03a05e4071df60aed6c9d3b`  
		Last Modified: Sat, 22 Oct 2016 01:28:28 GMT  
		Size: 62.6 MB (62641883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a04e0ddf3b927b1ac5be8001e19c2b827dc35f563ee55adacc5313a24a2ef`  
		Last Modified: Sat, 22 Oct 2016 01:28:02 GMT  
		Size: 698.5 KB (698507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3676c59d01c0d91aa3f16992404c77f86f4b6a16592040871d8c9807b21a10f`  
		Last Modified: Sat, 22 Oct 2016 01:28:04 GMT  
		Size: 129.1 KB (129137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef1e498a625bfb9e89403729a113356086b7c249536d08cd7eddb586e3d28d0`  
		Last Modified: Sat, 22 Oct 2016 01:28:03 GMT  
		Size: 2.3 MB (2289695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483dcff7c5df0792df7c226c99d960bde93aa6f4d73caaac92a77869f392d10`  
		Last Modified: Sat, 22 Oct 2016 01:31:40 GMT  
		Size: 34.7 MB (34683828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb3546fb3d0012e4591b7062cfb901f79b07a705d6aeed4323b6c5d67ade09a`  
		Last Modified: Sat, 22 Oct 2016 01:31:29 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f75fc55e5fb0bb4cb504612a7d2af5987ebca38a6852be15b7190eeaab3db67`  
		Last Modified: Sat, 22 Oct 2016 01:31:28 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e083c17a96118bde97548db020e989e9fa34beb61114a0f5c3d9290a966e7aa`  
		Last Modified: Sat, 22 Oct 2016 01:31:27 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59541484e345a4393bbe5674f0001124131c4a8366ba6a80c156bc3ddad18a96`  
		Last Modified: Sat, 22 Oct 2016 01:31:29 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8.0-onbuild`

```console
$ docker pull sentry@sha256:2598efb6a00f895899c6171b56f56d855d3ea5371d92fd5ac13be4b74798d06e
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171419359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1980f2ee6d6324204b3a68f7a9f4c4241e9a9b22a5fc789066651b24e9fcca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:49:09 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 31 Oct 2016 23:51:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 31 Oct 2016 23:51:24 GMT
CMD ["python2"]
# Tue, 01 Nov 2016 07:55:46 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 01 Nov 2016 07:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:56:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 01 Nov 2016 07:56:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 08:00:32 GMT
ENV SENTRY_VERSION=8.8.0
# Tue, 01 Nov 2016 08:01:45 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 08:01:45 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 08:01:46 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 08:01:47 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 08:01:48 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 08:01:48 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 08:01:49 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 08:01:49 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 08:01:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 08:01:50 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 08:02:41 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 08:02:42 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 08:02:43 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 08:02:43 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 08:02:44 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 08:02:44 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2afa7f3c046730e8044953131c3f0e0c8ee060297441b4514a7f2cc9e8402d`  
		Last Modified: Tue, 01 Nov 2016 00:22:36 GMT  
		Size: 3.3 MB (3338730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab6b45be7f4c3618bf8959e91655deae435e65dc290f77f47503cac704fb2d`  
		Last Modified: Tue, 01 Nov 2016 00:22:40 GMT  
		Size: 16.3 MB (16307251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac18faadee34c02f964ab31bcbdcfdc4a2f953306a111d8ad53d0b59f130e5`  
		Last Modified: Tue, 01 Nov 2016 07:58:36 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09b1eb2271be8941b027a54284b55ff6e705bb94052b9c130ec6ba8d5d7977`  
		Last Modified: Tue, 01 Nov 2016 07:58:52 GMT  
		Size: 62.6 MB (62608871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0b6ce6218a9e59b647e3017ebf3fd57804c6cee53f67c8ce9eb8766f149da5`  
		Last Modified: Tue, 01 Nov 2016 08:02:11 GMT  
		Size: 34.7 MB (34684117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19062a3efb0dc7f8808577d87d15a45d1f5ef4dc7c8e4ed6ac8ca8478987f2a`  
		Last Modified: Tue, 01 Nov 2016 08:02:00 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7da30df28f756db9faebbe21d7930ef4aad0a742fe268a7d1cb430860b25db`  
		Last Modified: Tue, 01 Nov 2016 08:02:00 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad10935013c0fa3a47b10d75795286a79dabd089a6ee3ee2af47cbcf8849d781`  
		Last Modified: Tue, 01 Nov 2016 08:02:01 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5975dc088190a681d8a0018fddac554dd5d7393e3d37293edc244811ed3866cb`  
		Last Modified: Tue, 01 Nov 2016 08:02:00 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0475f8d08aea0413d71d9b6b3b95deecd5a178726b830f68ef820f95d209a02`  
		Last Modified: Tue, 01 Nov 2016 08:02:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8-onbuild`

```console
$ docker pull sentry@sha256:60b8c1eeb35510e546f1b9c2d1111f266056c4ff8004cb45b10338af8a97560b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171417429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ef75df1c02ed1012b786f77ff0935ec035d5ed0842905c73b5c2d98c38aaa6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:31:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 22 Oct 2016 00:31:51 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 22 Oct 2016 00:31:52 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:34:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:34:09 GMT
CMD ["python2"]
# Sat, 22 Oct 2016 01:25:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 22 Oct 2016 01:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 22 Oct 2016 01:25:56 GMT
ENV GOSU_VERSION=1.9
# Sat, 22 Oct 2016 01:26:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:07 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 22 Oct 2016 01:26:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 22 Oct 2016 01:30:01 GMT
ENV SENTRY_VERSION=8.8.0
# Sat, 22 Oct 2016 01:31:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Sat, 22 Oct 2016 01:31:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 22 Oct 2016 01:31:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 22 Oct 2016 01:31:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Sat, 22 Oct 2016 01:31:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Sat, 22 Oct 2016 01:31:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 22 Oct 2016 01:31:17 GMT
EXPOSE 9000/tcp
# Sat, 22 Oct 2016 01:31:17 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 22 Oct 2016 01:31:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 01:31:18 GMT
CMD ["run" "web"]
# Sat, 22 Oct 2016 01:31:59 GMT
WORKDIR /usr/src/sentry
# Sat, 22 Oct 2016 01:32:00 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 22 Oct 2016 01:32:00 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 22 Oct 2016 01:32:01 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 22 Oct 2016 01:32:01 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 22 Oct 2016 01:32:01 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa362e6fe0832fd5898aed7db148ab39dc1485f9a62744d66b48d3d08f646ae8`  
		Last Modified: Sat, 22 Oct 2016 00:34:24 GMT  
		Size: 16.3 MB (16305370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d05f63c775c812bfed102918c2bc09c1be0b6c22d52f7abb49c0617dd91f35`  
		Last Modified: Sat, 22 Oct 2016 01:28:05 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffb82016deb6502913d0d01168ccc3fb3fedd8e03a05e4071df60aed6c9d3b`  
		Last Modified: Sat, 22 Oct 2016 01:28:28 GMT  
		Size: 62.6 MB (62641883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a04e0ddf3b927b1ac5be8001e19c2b827dc35f563ee55adacc5313a24a2ef`  
		Last Modified: Sat, 22 Oct 2016 01:28:02 GMT  
		Size: 698.5 KB (698507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3676c59d01c0d91aa3f16992404c77f86f4b6a16592040871d8c9807b21a10f`  
		Last Modified: Sat, 22 Oct 2016 01:28:04 GMT  
		Size: 129.1 KB (129137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef1e498a625bfb9e89403729a113356086b7c249536d08cd7eddb586e3d28d0`  
		Last Modified: Sat, 22 Oct 2016 01:28:03 GMT  
		Size: 2.3 MB (2289695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7483dcff7c5df0792df7c226c99d960bde93aa6f4d73caaac92a77869f392d10`  
		Last Modified: Sat, 22 Oct 2016 01:31:40 GMT  
		Size: 34.7 MB (34683828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb3546fb3d0012e4591b7062cfb901f79b07a705d6aeed4323b6c5d67ade09a`  
		Last Modified: Sat, 22 Oct 2016 01:31:29 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f75fc55e5fb0bb4cb504612a7d2af5987ebca38a6852be15b7190eeaab3db67`  
		Last Modified: Sat, 22 Oct 2016 01:31:28 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e083c17a96118bde97548db020e989e9fa34beb61114a0f5c3d9290a966e7aa`  
		Last Modified: Sat, 22 Oct 2016 01:31:27 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59541484e345a4393bbe5674f0001124131c4a8366ba6a80c156bc3ddad18a96`  
		Last Modified: Sat, 22 Oct 2016 01:31:29 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85061dcf6ab40b8153d0c4885d3ac6c88cc11cfd03456041b17f0e5b4a73503e`  
		Last Modified: Sat, 22 Oct 2016 01:32:11 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9.0`

```console
$ docker pull sentry@sha256:1e6bb30e8f16f14e13e24fe60b8ef586abe0f9a70e54f59d9a7813eda76c12b0
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173892748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d2f94e0e966dcb2045c4652e90070900de254d1df03721c9edaf648b0517a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:31:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 22 Oct 2016 00:31:51 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 22 Oct 2016 00:31:52 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:34:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:34:09 GMT
CMD ["python2"]
# Sat, 22 Oct 2016 01:25:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 22 Oct 2016 01:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 22 Oct 2016 01:25:56 GMT
ENV GOSU_VERSION=1.9
# Sat, 22 Oct 2016 01:26:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:07 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 22 Oct 2016 01:26:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 22 Oct 2016 01:26:29 GMT
ENV SENTRY_VERSION=8.9.0
# Sat, 22 Oct 2016 01:27:44 GMT
RUN pip install sentry==$SENTRY_VERSION
# Sat, 22 Oct 2016 01:27:45 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 22 Oct 2016 01:27:46 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:48 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 22 Oct 2016 01:27:48 GMT
EXPOSE 9000/tcp
# Sat, 22 Oct 2016 01:27:49 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 22 Oct 2016 01:27:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 01:27:49 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa362e6fe0832fd5898aed7db148ab39dc1485f9a62744d66b48d3d08f646ae8`  
		Last Modified: Sat, 22 Oct 2016 00:34:24 GMT  
		Size: 16.3 MB (16305370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d05f63c775c812bfed102918c2bc09c1be0b6c22d52f7abb49c0617dd91f35`  
		Last Modified: Sat, 22 Oct 2016 01:28:05 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffb82016deb6502913d0d01168ccc3fb3fedd8e03a05e4071df60aed6c9d3b`  
		Last Modified: Sat, 22 Oct 2016 01:28:28 GMT  
		Size: 62.6 MB (62641883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a04e0ddf3b927b1ac5be8001e19c2b827dc35f563ee55adacc5313a24a2ef`  
		Last Modified: Sat, 22 Oct 2016 01:28:02 GMT  
		Size: 698.5 KB (698507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3676c59d01c0d91aa3f16992404c77f86f4b6a16592040871d8c9807b21a10f`  
		Last Modified: Sat, 22 Oct 2016 01:28:04 GMT  
		Size: 129.1 KB (129137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef1e498a625bfb9e89403729a113356086b7c249536d08cd7eddb586e3d28d0`  
		Last Modified: Sat, 22 Oct 2016 01:28:03 GMT  
		Size: 2.3 MB (2289695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78140f82be0b1ced6d94d4e6a36151f1855ac767c7f215e0eea77e0aecbf43f3`  
		Last Modified: Sat, 22 Oct 2016 01:28:13 GMT  
		Size: 37.2 MB (37159280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fa76dc1418263e10ed6feeb2c0570580dbfc7aec45d5792128994ba2422bcc`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904167407414abbe7dbf00663200abaa63bfd167046443fe2ef5b6e1772df00c`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7f379b6d27d2ba1baa809a95792db03c0dd9c510fd8234d79991d45c97ee3b`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f63f6fa7cd2558a1251090d1ec329ec547e49c1f390f6a41e643bf448baf578`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9`

```console
$ docker pull sentry@sha256:1e6bb30e8f16f14e13e24fe60b8ef586abe0f9a70e54f59d9a7813eda76c12b0
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173892748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d2f94e0e966dcb2045c4652e90070900de254d1df03721c9edaf648b0517a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:31:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 22 Oct 2016 00:31:51 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 22 Oct 2016 00:31:52 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:34:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:34:09 GMT
CMD ["python2"]
# Sat, 22 Oct 2016 01:25:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 22 Oct 2016 01:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 22 Oct 2016 01:25:56 GMT
ENV GOSU_VERSION=1.9
# Sat, 22 Oct 2016 01:26:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:07 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 22 Oct 2016 01:26:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 22 Oct 2016 01:26:29 GMT
ENV SENTRY_VERSION=8.9.0
# Sat, 22 Oct 2016 01:27:44 GMT
RUN pip install sentry==$SENTRY_VERSION
# Sat, 22 Oct 2016 01:27:45 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 22 Oct 2016 01:27:46 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:48 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 22 Oct 2016 01:27:48 GMT
EXPOSE 9000/tcp
# Sat, 22 Oct 2016 01:27:49 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 22 Oct 2016 01:27:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 01:27:49 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa362e6fe0832fd5898aed7db148ab39dc1485f9a62744d66b48d3d08f646ae8`  
		Last Modified: Sat, 22 Oct 2016 00:34:24 GMT  
		Size: 16.3 MB (16305370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d05f63c775c812bfed102918c2bc09c1be0b6c22d52f7abb49c0617dd91f35`  
		Last Modified: Sat, 22 Oct 2016 01:28:05 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffb82016deb6502913d0d01168ccc3fb3fedd8e03a05e4071df60aed6c9d3b`  
		Last Modified: Sat, 22 Oct 2016 01:28:28 GMT  
		Size: 62.6 MB (62641883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a04e0ddf3b927b1ac5be8001e19c2b827dc35f563ee55adacc5313a24a2ef`  
		Last Modified: Sat, 22 Oct 2016 01:28:02 GMT  
		Size: 698.5 KB (698507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3676c59d01c0d91aa3f16992404c77f86f4b6a16592040871d8c9807b21a10f`  
		Last Modified: Sat, 22 Oct 2016 01:28:04 GMT  
		Size: 129.1 KB (129137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef1e498a625bfb9e89403729a113356086b7c249536d08cd7eddb586e3d28d0`  
		Last Modified: Sat, 22 Oct 2016 01:28:03 GMT  
		Size: 2.3 MB (2289695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78140f82be0b1ced6d94d4e6a36151f1855ac767c7f215e0eea77e0aecbf43f3`  
		Last Modified: Sat, 22 Oct 2016 01:28:13 GMT  
		Size: 37.2 MB (37159280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fa76dc1418263e10ed6feeb2c0570580dbfc7aec45d5792128994ba2422bcc`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904167407414abbe7dbf00663200abaa63bfd167046443fe2ef5b6e1772df00c`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7f379b6d27d2ba1baa809a95792db03c0dd9c510fd8234d79991d45c97ee3b`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f63f6fa7cd2558a1251090d1ec329ec547e49c1f390f6a41e643bf448baf578`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:7c6051cfa7858108dbcd080d2000bdae79085be66d6ee0d6cd64d5105adee483
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebeda6520cda81bf8585d0280c3d8a962488ef054940b15a933ed98e84979d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:49:09 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 31 Oct 2016 23:51:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 31 Oct 2016 23:51:24 GMT
CMD ["python2"]
# Tue, 01 Nov 2016 07:55:46 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 01 Nov 2016 07:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:56:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 01 Nov 2016 07:56:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2afa7f3c046730e8044953131c3f0e0c8ee060297441b4514a7f2cc9e8402d`  
		Last Modified: Tue, 01 Nov 2016 00:22:36 GMT  
		Size: 3.3 MB (3338730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab6b45be7f4c3618bf8959e91655deae435e65dc290f77f47503cac704fb2d`  
		Last Modified: Tue, 01 Nov 2016 00:22:40 GMT  
		Size: 16.3 MB (16307251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac18faadee34c02f964ab31bcbdcfdc4a2f953306a111d8ad53d0b59f130e5`  
		Last Modified: Tue, 01 Nov 2016 07:58:36 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09b1eb2271be8941b027a54284b55ff6e705bb94052b9c130ec6ba8d5d7977`  
		Last Modified: Tue, 01 Nov 2016 07:58:52 GMT  
		Size: 62.6 MB (62608871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:1e6bb30e8f16f14e13e24fe60b8ef586abe0f9a70e54f59d9a7813eda76c12b0
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173892748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d2f94e0e966dcb2045c4652e90070900de254d1df03721c9edaf648b0517a7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:31:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 22 Oct 2016 00:31:51 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 22 Oct 2016 00:31:52 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:34:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:34:09 GMT
CMD ["python2"]
# Sat, 22 Oct 2016 01:25:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 22 Oct 2016 01:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 22 Oct 2016 01:25:56 GMT
ENV GOSU_VERSION=1.9
# Sat, 22 Oct 2016 01:26:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:07 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 22 Oct 2016 01:26:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 22 Oct 2016 01:26:29 GMT
ENV SENTRY_VERSION=8.9.0
# Sat, 22 Oct 2016 01:27:44 GMT
RUN pip install sentry==$SENTRY_VERSION
# Sat, 22 Oct 2016 01:27:45 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 22 Oct 2016 01:27:46 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:48 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 22 Oct 2016 01:27:48 GMT
EXPOSE 9000/tcp
# Sat, 22 Oct 2016 01:27:49 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 22 Oct 2016 01:27:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 01:27:49 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa362e6fe0832fd5898aed7db148ab39dc1485f9a62744d66b48d3d08f646ae8`  
		Last Modified: Sat, 22 Oct 2016 00:34:24 GMT  
		Size: 16.3 MB (16305370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d05f63c775c812bfed102918c2bc09c1be0b6c22d52f7abb49c0617dd91f35`  
		Last Modified: Sat, 22 Oct 2016 01:28:05 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffb82016deb6502913d0d01168ccc3fb3fedd8e03a05e4071df60aed6c9d3b`  
		Last Modified: Sat, 22 Oct 2016 01:28:28 GMT  
		Size: 62.6 MB (62641883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a04e0ddf3b927b1ac5be8001e19c2b827dc35f563ee55adacc5313a24a2ef`  
		Last Modified: Sat, 22 Oct 2016 01:28:02 GMT  
		Size: 698.5 KB (698507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3676c59d01c0d91aa3f16992404c77f86f4b6a16592040871d8c9807b21a10f`  
		Last Modified: Sat, 22 Oct 2016 01:28:04 GMT  
		Size: 129.1 KB (129137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef1e498a625bfb9e89403729a113356086b7c249536d08cd7eddb586e3d28d0`  
		Last Modified: Sat, 22 Oct 2016 01:28:03 GMT  
		Size: 2.3 MB (2289695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78140f82be0b1ced6d94d4e6a36151f1855ac767c7f215e0eea77e0aecbf43f3`  
		Last Modified: Sat, 22 Oct 2016 01:28:13 GMT  
		Size: 37.2 MB (37159280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fa76dc1418263e10ed6feeb2c0570580dbfc7aec45d5792128994ba2422bcc`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904167407414abbe7dbf00663200abaa63bfd167046443fe2ef5b6e1772df00c`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7f379b6d27d2ba1baa809a95792db03c0dd9c510fd8234d79991d45c97ee3b`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f63f6fa7cd2558a1251090d1ec329ec547e49c1f390f6a41e643bf448baf578`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9.0-onbuild`

```console
$ docker pull sentry@sha256:168403503d9a68e35d0dd5a1033a9e776ac5e0e8f07a80d58f459afc8cf53427
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9.0-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390438839d88e337327d46b45bd1641f910c136cbdacb66e1043455e63fad491`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:49:09 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 31 Oct 2016 23:51:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 31 Oct 2016 23:51:24 GMT
CMD ["python2"]
# Tue, 01 Nov 2016 07:55:46 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 01 Nov 2016 07:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:56:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 01 Nov 2016 07:56:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 07:59:36 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 07:59:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2afa7f3c046730e8044953131c3f0e0c8ee060297441b4514a7f2cc9e8402d`  
		Last Modified: Tue, 01 Nov 2016 00:22:36 GMT  
		Size: 3.3 MB (3338730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab6b45be7f4c3618bf8959e91655deae435e65dc290f77f47503cac704fb2d`  
		Last Modified: Tue, 01 Nov 2016 00:22:40 GMT  
		Size: 16.3 MB (16307251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac18faadee34c02f964ab31bcbdcfdc4a2f953306a111d8ad53d0b59f130e5`  
		Last Modified: Tue, 01 Nov 2016 07:58:36 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09b1eb2271be8941b027a54284b55ff6e705bb94052b9c130ec6ba8d5d7977`  
		Last Modified: Tue, 01 Nov 2016 07:58:52 GMT  
		Size: 62.6 MB (62608871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32c0e7241f1c8e21878eef9d39b154b3c7d6982e48b2f4fc6bc5d167236b66`  
		Last Modified: Tue, 01 Nov 2016 07:59:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.9-onbuild`

```console
$ docker pull sentry@sha256:1711573c5f4d786512860a74ba9ad82d4f2516d432a8c8e76856b3213af7d956
```

-	Platforms:
	-	linux; amd64

### `sentry:8.9-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173892880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bf822805f7218c6a3763081c2034fd67f90c90959dbb1fa221885dd17841d0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:31:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 22 Oct 2016 00:31:51 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 22 Oct 2016 00:31:52 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:34:08 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:34:09 GMT
CMD ["python2"]
# Sat, 22 Oct 2016 01:25:31 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Sat, 22 Oct 2016 01:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_NO_CACHE_DIR=off
# Sat, 22 Oct 2016 01:25:55 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Sat, 22 Oct 2016 01:25:56 GMT
ENV GOSU_VERSION=1.9
# Sat, 22 Oct 2016 01:26:07 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:07 GMT
ENV TINI_VERSION=v0.9.0
# Sat, 22 Oct 2016 01:26:16 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Sat, 22 Oct 2016 01:26:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Sat, 22 Oct 2016 01:26:29 GMT
ENV SENTRY_VERSION=8.9.0
# Sat, 22 Oct 2016 01:27:44 GMT
RUN pip install sentry==$SENTRY_VERSION
# Sat, 22 Oct 2016 01:27:45 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Sat, 22 Oct 2016 01:27:46 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:47 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Sat, 22 Oct 2016 01:27:48 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Sat, 22 Oct 2016 01:27:48 GMT
EXPOSE 9000/tcp
# Sat, 22 Oct 2016 01:27:49 GMT
VOLUME [/var/lib/sentry/files]
# Sat, 22 Oct 2016 01:27:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 22 Oct 2016 01:27:49 GMT
CMD ["run" "web"]
# Sat, 22 Oct 2016 01:29:08 GMT
WORKDIR /usr/src/sentry
# Sat, 22 Oct 2016 01:29:09 GMT
ENV PYTHONPATH=/usr/src/sentry
# Sat, 22 Oct 2016 01:29:09 GMT
ONBUILD COPY . /usr/src/sentry
# Sat, 22 Oct 2016 01:29:09 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Sat, 22 Oct 2016 01:29:10 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Sat, 22 Oct 2016 01:29:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa362e6fe0832fd5898aed7db148ab39dc1485f9a62744d66b48d3d08f646ae8`  
		Last Modified: Sat, 22 Oct 2016 00:34:24 GMT  
		Size: 16.3 MB (16305370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d05f63c775c812bfed102918c2bc09c1be0b6c22d52f7abb49c0617dd91f35`  
		Last Modified: Sat, 22 Oct 2016 01:28:05 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ffb82016deb6502913d0d01168ccc3fb3fedd8e03a05e4071df60aed6c9d3b`  
		Last Modified: Sat, 22 Oct 2016 01:28:28 GMT  
		Size: 62.6 MB (62641883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161a04e0ddf3b927b1ac5be8001e19c2b827dc35f563ee55adacc5313a24a2ef`  
		Last Modified: Sat, 22 Oct 2016 01:28:02 GMT  
		Size: 698.5 KB (698507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3676c59d01c0d91aa3f16992404c77f86f4b6a16592040871d8c9807b21a10f`  
		Last Modified: Sat, 22 Oct 2016 01:28:04 GMT  
		Size: 129.1 KB (129137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ef1e498a625bfb9e89403729a113356086b7c249536d08cd7eddb586e3d28d0`  
		Last Modified: Sat, 22 Oct 2016 01:28:03 GMT  
		Size: 2.3 MB (2289695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78140f82be0b1ced6d94d4e6a36151f1855ac767c7f215e0eea77e0aecbf43f3`  
		Last Modified: Sat, 22 Oct 2016 01:28:13 GMT  
		Size: 37.2 MB (37159280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fa76dc1418263e10ed6feeb2c0570580dbfc7aec45d5792128994ba2422bcc`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904167407414abbe7dbf00663200abaa63bfd167046443fe2ef5b6e1772df00c`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 3.3 KB (3320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7f379b6d27d2ba1baa809a95792db03c0dd9c510fd8234d79991d45c97ee3b`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 918.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f63f6fa7cd2558a1251090d1ec329ec547e49c1f390f6a41e643bf448baf578`  
		Last Modified: Sat, 22 Oct 2016 01:27:59 GMT  
		Size: 421.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8b88442520bfc97291ea752596c96f2ccfa987db1d2a3e41835b92976dd13a2`  
		Last Modified: Sat, 22 Oct 2016 01:29:19 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:168403503d9a68e35d0dd5a1033a9e776ac5e0e8f07a80d58f459afc8cf53427
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390438839d88e337327d46b45bd1641f910c136cbdacb66e1043455e63fad491`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:49:09 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 31 Oct 2016 23:51:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 31 Oct 2016 23:51:24 GMT
CMD ["python2"]
# Tue, 01 Nov 2016 07:55:46 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 01 Nov 2016 07:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:56:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 01 Nov 2016 07:56:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 07:59:36 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 07:59:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2afa7f3c046730e8044953131c3f0e0c8ee060297441b4514a7f2cc9e8402d`  
		Last Modified: Tue, 01 Nov 2016 00:22:36 GMT  
		Size: 3.3 MB (3338730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab6b45be7f4c3618bf8959e91655deae435e65dc290f77f47503cac704fb2d`  
		Last Modified: Tue, 01 Nov 2016 00:22:40 GMT  
		Size: 16.3 MB (16307251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac18faadee34c02f964ab31bcbdcfdc4a2f953306a111d8ad53d0b59f130e5`  
		Last Modified: Tue, 01 Nov 2016 07:58:36 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09b1eb2271be8941b027a54284b55ff6e705bb94052b9c130ec6ba8d5d7977`  
		Last Modified: Tue, 01 Nov 2016 07:58:52 GMT  
		Size: 62.6 MB (62608871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32c0e7241f1c8e21878eef9d39b154b3c7d6982e48b2f4fc6bc5d167236b66`  
		Last Modified: Tue, 01 Nov 2016 07:59:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:168403503d9a68e35d0dd5a1033a9e776ac5e0e8f07a80d58f459afc8cf53427
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.9 MB (173896740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390438839d88e337327d46b45bd1641f910c136cbdacb66e1043455e63fad491`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:49:09 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 31 Oct 2016 23:49:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 31 Oct 2016 23:51:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 31 Oct 2016 23:51:24 GMT
CMD ["python2"]
# Tue, 01 Nov 2016 07:55:46 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 01 Nov 2016 07:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 07:56:16 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 01 Nov 2016 07:56:17 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 01 Nov 2016 07:56:17 GMT
ENV GOSU_VERSION=1.9
# Tue, 01 Nov 2016 07:56:29 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:29 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 01 Nov 2016 07:56:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 01 Nov 2016 07:56:53 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 01 Nov 2016 07:56:54 GMT
ENV SENTRY_VERSION=8.9.0
# Tue, 01 Nov 2016 07:58:13 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 01 Nov 2016 07:58:14 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 01 Nov 2016 07:58:15 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:16 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Tue, 01 Nov 2016 07:58:17 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Tue, 01 Nov 2016 07:58:17 GMT
EXPOSE 9000/tcp
# Tue, 01 Nov 2016 07:58:18 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 01 Nov 2016 07:58:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 Nov 2016 07:58:19 GMT
CMD ["run" "web"]
# Tue, 01 Nov 2016 07:59:36 GMT
WORKDIR /usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 01 Nov 2016 07:59:37 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 01 Nov 2016 07:59:38 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 01 Nov 2016 07:59:39 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2afa7f3c046730e8044953131c3f0e0c8ee060297441b4514a7f2cc9e8402d`  
		Last Modified: Tue, 01 Nov 2016 00:22:36 GMT  
		Size: 3.3 MB (3338730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab6b45be7f4c3618bf8959e91655deae435e65dc290f77f47503cac704fb2d`  
		Last Modified: Tue, 01 Nov 2016 00:22:40 GMT  
		Size: 16.3 MB (16307251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5ac18faadee34c02f964ab31bcbdcfdc4a2f953306a111d8ad53d0b59f130e5`  
		Last Modified: Tue, 01 Nov 2016 07:58:36 GMT  
		Size: 4.3 KB (4348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f09b1eb2271be8941b027a54284b55ff6e705bb94052b9c130ec6ba8d5d7977`  
		Last Modified: Tue, 01 Nov 2016 07:58:52 GMT  
		Size: 62.6 MB (62608871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3901ce4d2e5548cad4980877f61cdba3354f3d4755d3812c5e2d4de1df98a0d`  
		Last Modified: Tue, 01 Nov 2016 07:58:34 GMT  
		Size: 698.5 KB (698503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af88ecd2d52c70634ca311fc080357b266c469e120684e0df094a173b5b5f599`  
		Last Modified: Tue, 01 Nov 2016 07:58:33 GMT  
		Size: 129.1 KB (129146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780d9dfc4ebfb92a23911920b802a73413e79e6b1996c6fb97a28980aa24a84f`  
		Last Modified: Tue, 01 Nov 2016 07:58:35 GMT  
		Size: 2.3 MB (2290297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f40e7a88a91bcabbebb76b004891105e73614794ab28255d799670b6fe7975`  
		Last Modified: Tue, 01 Nov 2016 07:58:43 GMT  
		Size: 37.2 MB (37161503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518d5bed96bdba6579086e9a50cdac1b07f45b564d093b7dc3698625f3cc41a2`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7690858c93d4684f063e9fd482fa1f8c1831ac1486491444e8d1d1d7e5b6ce72`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e1750abc43a02380541c04f28c2adc22c43cd369d205cca5682d435c11c497`  
		Last Modified: Tue, 01 Nov 2016 07:58:31 GMT  
		Size: 917.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a089efcb5db0bad56705268ae390a505f703779e3129b82ab092dcf4898201d9`  
		Last Modified: Tue, 01 Nov 2016 07:58:30 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32c0e7241f1c8e21878eef9d39b154b3c7d6982e48b2f4fc6bc5d167236b66`  
		Last Modified: Tue, 01 Nov 2016 07:59:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
