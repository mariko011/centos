<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

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
$ docker pull sentry@sha256:0ddf8446462ffb28a859a45e46a329532219e6d61396069fba25379c86d1c523
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171073001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b94f6ea67986e1b276da6a099baa1bf814fc566a69e9e87b8db626a5031932`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:36:11 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 23 Aug 2016 19:37:55 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:37:56 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:37:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:38:00 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:38:01 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:38:02 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 23 Aug 2016 19:38:03 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:38:04 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:38:05 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:38:06 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a734ec1c6759a20b64b9d343e677a01649706eb395699311379caab935dfd0`  
		Last Modified: Tue, 23 Aug 2016 19:38:31 GMT  
		Size: 34.3 MB (34317675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e7397ea9361e684ad7a4e57bc742dc43691f3e98e1ab4b401004226973dd7f`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6b561dc15758b38bc242023184d5edae8c209db116263a3f6583e7a94e79b9`  
		Last Modified: Tue, 23 Aug 2016 19:38:18 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad5977447492df294a09c4431b7459b8d8b31b8d193792a80c479e2ca72ad29`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf91ec10aa02c520d85ebded36622fc4f09e2b0d5eafca6cccebfb9ef214aff`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.6`

```console
$ docker pull sentry@sha256:0ddf8446462ffb28a859a45e46a329532219e6d61396069fba25379c86d1c523
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171073001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b94f6ea67986e1b276da6a099baa1bf814fc566a69e9e87b8db626a5031932`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:36:11 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 23 Aug 2016 19:37:55 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:37:56 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:37:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:38:00 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:38:01 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:38:02 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 23 Aug 2016 19:38:03 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:38:04 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:38:05 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:38:06 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a734ec1c6759a20b64b9d343e677a01649706eb395699311379caab935dfd0`  
		Last Modified: Tue, 23 Aug 2016 19:38:31 GMT  
		Size: 34.3 MB (34317675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e7397ea9361e684ad7a4e57bc742dc43691f3e98e1ab4b401004226973dd7f`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6b561dc15758b38bc242023184d5edae8c209db116263a3f6583e7a94e79b9`  
		Last Modified: Tue, 23 Aug 2016 19:38:18 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad5977447492df294a09c4431b7459b8d8b31b8d193792a80c479e2ca72ad29`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf91ec10aa02c520d85ebded36622fc4f09e2b0d5eafca6cccebfb9ef214aff`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.6.0-onbuild`

```console
$ docker pull sentry@sha256:c1ffb955722e5c12fa72d8c772d1e31802b28c0e0bbbe30ea04f99811a06d90e
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171073132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097560bfc28b6a0147291352e5d75cda5897aa00d5363a846048747c61cb93c4`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:36:11 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 23 Aug 2016 19:37:55 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:37:56 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:37:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:38:00 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:38:01 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:38:02 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 23 Aug 2016 19:38:03 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:38:04 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:38:05 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:38:06 GMT
CMD ["run" "web"]
# Tue, 23 Aug 2016 19:43:05 GMT
WORKDIR /usr/src/sentry
# Tue, 23 Aug 2016 19:43:06 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 23 Aug 2016 19:43:07 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 23 Aug 2016 19:43:08 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 23 Aug 2016 19:43:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 23 Aug 2016 19:43:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a734ec1c6759a20b64b9d343e677a01649706eb395699311379caab935dfd0`  
		Last Modified: Tue, 23 Aug 2016 19:38:31 GMT  
		Size: 34.3 MB (34317675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e7397ea9361e684ad7a4e57bc742dc43691f3e98e1ab4b401004226973dd7f`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6b561dc15758b38bc242023184d5edae8c209db116263a3f6583e7a94e79b9`  
		Last Modified: Tue, 23 Aug 2016 19:38:18 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad5977447492df294a09c4431b7459b8d8b31b8d193792a80c479e2ca72ad29`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf91ec10aa02c520d85ebded36622fc4f09e2b0d5eafca6cccebfb9ef214aff`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e41bbab7105c7f1f7b660053e06decb6ba38e27935191155fc5cbc9abba91ba`  
		Last Modified: Tue, 23 Aug 2016 19:43:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.6-onbuild`

```console
$ docker pull sentry@sha256:c1ffb955722e5c12fa72d8c772d1e31802b28c0e0bbbe30ea04f99811a06d90e
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171073132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:097560bfc28b6a0147291352e5d75cda5897aa00d5363a846048747c61cb93c4`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:36:11 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 23 Aug 2016 19:37:55 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:37:56 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:37:58 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:38:00 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:38:01 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:38:02 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 23 Aug 2016 19:38:03 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:38:04 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:38:05 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:38:06 GMT
CMD ["run" "web"]
# Tue, 23 Aug 2016 19:43:05 GMT
WORKDIR /usr/src/sentry
# Tue, 23 Aug 2016 19:43:06 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 23 Aug 2016 19:43:07 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 23 Aug 2016 19:43:08 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 23 Aug 2016 19:43:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 23 Aug 2016 19:43:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a734ec1c6759a20b64b9d343e677a01649706eb395699311379caab935dfd0`  
		Last Modified: Tue, 23 Aug 2016 19:38:31 GMT  
		Size: 34.3 MB (34317675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04e7397ea9361e684ad7a4e57bc742dc43691f3e98e1ab4b401004226973dd7f`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6b561dc15758b38bc242023184d5edae8c209db116263a3f6583e7a94e79b9`  
		Last Modified: Tue, 23 Aug 2016 19:38:18 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad5977447492df294a09c4431b7459b8d8b31b8d193792a80c479e2ca72ad29`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf91ec10aa02c520d85ebded36622fc4f09e2b0d5eafca6cccebfb9ef214aff`  
		Last Modified: Tue, 23 Aug 2016 19:38:17 GMT  
		Size: 422.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e41bbab7105c7f1f7b660053e06decb6ba38e27935191155fc5cbc9abba91ba`  
		Last Modified: Tue, 23 Aug 2016 19:43:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7.0`

```console
$ docker pull sentry@sha256:a08ebaae201f8df746327459d539f26f058378fe63c981e43220acbff28f6397
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a002e6b917f0babbcd2d4423a62b162b225909677d49687310483b9abea7c3`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7`

```console
$ docker pull sentry@sha256:a08ebaae201f8df746327459d539f26f058378fe63c981e43220acbff28f6397
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a002e6b917f0babbcd2d4423a62b162b225909677d49687310483b9abea7c3`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:a08ebaae201f8df746327459d539f26f058378fe63c981e43220acbff28f6397
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a002e6b917f0babbcd2d4423a62b162b225909677d49687310483b9abea7c3`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:a08ebaae201f8df746327459d539f26f058378fe63c981e43220acbff28f6397
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a002e6b917f0babbcd2d4423a62b162b225909677d49687310483b9abea7c3`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7.0-onbuild`

```console
$ docker pull sentry@sha256:bbaf824229caac35451050c95a0b01219f06445e60514d63e320e8920b0a49a3
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cff28341fec5cc64d3e9f7a807f296705c3d70fdd01ae404ad1a3395d275b9d`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
# Tue, 23 Aug 2016 19:42:05 GMT
WORKDIR /usr/src/sentry
# Tue, 23 Aug 2016 19:42:06 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 23 Aug 2016 19:42:07 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 23 Aug 2016 19:42:08 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 23 Aug 2016 19:42:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 23 Aug 2016 19:42:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e461ea6ac8839afaae29cb6cf5990d57e6583c5ccb3a1ac748bf4ecf49fcee`  
		Last Modified: Tue, 23 Aug 2016 19:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7-onbuild`

```console
$ docker pull sentry@sha256:bbaf824229caac35451050c95a0b01219f06445e60514d63e320e8920b0a49a3
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cff28341fec5cc64d3e9f7a807f296705c3d70fdd01ae404ad1a3395d275b9d`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
# Tue, 23 Aug 2016 19:42:05 GMT
WORKDIR /usr/src/sentry
# Tue, 23 Aug 2016 19:42:06 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 23 Aug 2016 19:42:07 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 23 Aug 2016 19:42:08 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 23 Aug 2016 19:42:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 23 Aug 2016 19:42:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e461ea6ac8839afaae29cb6cf5990d57e6583c5ccb3a1ac748bf4ecf49fcee`  
		Last Modified: Tue, 23 Aug 2016 19:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:bbaf824229caac35451050c95a0b01219f06445e60514d63e320e8920b0a49a3
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cff28341fec5cc64d3e9f7a807f296705c3d70fdd01ae404ad1a3395d275b9d`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
# Tue, 23 Aug 2016 19:42:05 GMT
WORKDIR /usr/src/sentry
# Tue, 23 Aug 2016 19:42:06 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 23 Aug 2016 19:42:07 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 23 Aug 2016 19:42:08 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 23 Aug 2016 19:42:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 23 Aug 2016 19:42:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e461ea6ac8839afaae29cb6cf5990d57e6583c5ccb3a1ac748bf4ecf49fcee`  
		Last Modified: Tue, 23 Aug 2016 19:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:bbaf824229caac35451050c95a0b01219f06445e60514d63e320e8920b0a49a3
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171505450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cff28341fec5cc64d3e9f7a807f296705c3d70fdd01ae404ad1a3395d275b9d`
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
# Mon, 22 Aug 2016 20:30:47 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:30:48 GMT
CMD ["python2"]
# Tue, 23 Aug 2016 19:30:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 23 Aug 2016 19:32:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 19:32:19 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 23 Aug 2016 19:32:20 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 23 Aug 2016 19:32:21 GMT
ENV GOSU_VERSION=1.9
# Tue, 23 Aug 2016 19:33:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:33:36 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 23 Aug 2016 19:34:52 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 23 Aug 2016 19:36:10 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Tue, 23 Aug 2016 19:39:02 GMT
ENV SENTRY_VERSION=8.7.0
# Tue, 23 Aug 2016 19:40:46 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 23 Aug 2016 19:40:47 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 23 Aug 2016 19:40:49 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 23 Aug 2016 19:40:51 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 23 Aug 2016 19:40:52 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 23 Aug 2016 19:40:53 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Tue, 23 Aug 2016 19:40:54 GMT
EXPOSE 9000/tcp
# Tue, 23 Aug 2016 19:40:55 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 23 Aug 2016 19:40:56 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 23 Aug 2016 19:40:57 GMT
CMD ["run" "web"]
# Tue, 23 Aug 2016 19:42:05 GMT
WORKDIR /usr/src/sentry
# Tue, 23 Aug 2016 19:42:06 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 23 Aug 2016 19:42:07 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 23 Aug 2016 19:42:08 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 23 Aug 2016 19:42:09 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 23 Aug 2016 19:42:10 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f99a9e5890bb7250e259ca57606be5939ac58138308e4fda731b8fe1882454`  
		Last Modified: Mon, 22 Aug 2016 21:23:10 GMT  
		Size: 16.3 MB (16294734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f901ecbb95a209ad6eea24cc4834165d386934249f12ca024e78c55a55ef0a6c`  
		Last Modified: Tue, 23 Aug 2016 19:38:25 GMT  
		Size: 4.3 KB (4349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98286162f0b09b67d735d54447551cdaec3e648712d1ff751a461ae2c4a5570`  
		Last Modified: Tue, 23 Aug 2016 19:38:40 GMT  
		Size: 62.6 MB (62638114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb486ed1c6fa792a0a113b72ea036e574fefb54dd494858564fe4868b2241780`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 698.9 KB (698912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64493dbde4867b32949b2664b1d129bb731aa4bc4d5b9dcda0296bb216515499`  
		Last Modified: Tue, 23 Aug 2016 19:38:20 GMT  
		Size: 129.6 KB (129563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435e4c50fff23f6410a68e9b48649130ebfdb453fd6c025cffa26d8133448cfa`  
		Last Modified: Tue, 23 Aug 2016 19:38:21 GMT  
		Size: 2.3 MB (2312956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233ba561316d85be4190ae0c6e909501fd4c1990bacaa178fd5bfd232da6ec1f`  
		Last Modified: Tue, 23 Aug 2016 19:41:20 GMT  
		Size: 34.7 MB (34749991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55c05b0325a6ba9714eb6ef860f6cabe1a7c235c575f8dcbd7689bf5679fe15`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6b49c6b6ecd0552bbbecac7328dfd93265250a1ed3f0b2b1b1ca68c83004b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 3.3 KB (3322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6895186f546b134bac3ad78b9af9d194409c46423e8ca7b1f581b4eadc17272b`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b302e8e66b9be1b96f180a68478ff5031c9c919b35eeccdd6bcaa4f38d6ff38e`  
		Last Modified: Tue, 23 Aug 2016 19:41:09 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e461ea6ac8839afaae29cb6cf5990d57e6583c5ccb3a1ac748bf4ecf49fcee`  
		Last Modified: Tue, 23 Aug 2016 19:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
