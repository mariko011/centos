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
$ docker pull sentry@sha256:bfb83fb8d304e135402e0a3d377f441dbb2bd1c7c10940bfcde8fc80eb4f3a4b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168850588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069d1935f7da6f97e189e13263c13f0539ace3a67096c1e22db56024aff35153`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:05:22 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 19:07:54 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:07:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:07:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:07:58 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 19:07:59 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:07:59 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:07:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:08:00 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6eb0bb8c5339ed0ffd6e8012dfc1d264454366d755d4ae7c9b1c04d9dd0a1a76`  
		Last Modified: Mon, 08 Aug 2016 19:11:10 GMT  
		Size: 32.8 MB (32810801 bytes)
	-	`sha256:092769ab6db6ababffd773332ed48701417375503d6970607d00b6477f99cbf0`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 174.0 B
	-	`sha256:1878171654c8e6234a25272c369a2a188d4889c40efa808973422861fa97976c`  
		Last Modified: Mon, 08 Aug 2016 19:10:56 GMT  
		Size: 3.3 KB (3320 bytes)
	-	`sha256:3c0bd45253a36520e0efad14212c0ba67f6a18491b5caa8061c5d05169548029`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 919.0 B
	-	`sha256:e29777170c1256ea030a24692edcae6e9a62c44fdd60e6626835413725f518fa`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 422.0 B

## `sentry:8.6`

```console
$ docker pull sentry@sha256:bfb83fb8d304e135402e0a3d377f441dbb2bd1c7c10940bfcde8fc80eb4f3a4b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168850588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069d1935f7da6f97e189e13263c13f0539ace3a67096c1e22db56024aff35153`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:05:22 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 19:07:54 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:07:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:07:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:07:58 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 19:07:59 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:07:59 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:07:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:08:00 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6eb0bb8c5339ed0ffd6e8012dfc1d264454366d755d4ae7c9b1c04d9dd0a1a76`  
		Last Modified: Mon, 08 Aug 2016 19:11:10 GMT  
		Size: 32.8 MB (32810801 bytes)
	-	`sha256:092769ab6db6ababffd773332ed48701417375503d6970607d00b6477f99cbf0`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 174.0 B
	-	`sha256:1878171654c8e6234a25272c369a2a188d4889c40efa808973422861fa97976c`  
		Last Modified: Mon, 08 Aug 2016 19:10:56 GMT  
		Size: 3.3 KB (3320 bytes)
	-	`sha256:3c0bd45253a36520e0efad14212c0ba67f6a18491b5caa8061c5d05169548029`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 919.0 B
	-	`sha256:e29777170c1256ea030a24692edcae6e9a62c44fdd60e6626835413725f518fa`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 422.0 B

## `sentry:8.6.0-onbuild`

```console
$ docker pull sentry@sha256:39b01d65862db8bfc7a4aa089c1a21b32947df0833a4c568ba78fcec3daff256
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168850719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd8b0ae2c09e281ab8d1e7eb9d177381c1d91439a55e5c6f1b64849a2907808`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:05:22 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 19:07:54 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:07:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:07:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:07:58 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 19:07:59 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:07:59 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:07:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:08:00 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 19:08:01 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 19:08:01 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 19:08:01 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 19:08:02 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 19:08:02 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 19:08:03 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6eb0bb8c5339ed0ffd6e8012dfc1d264454366d755d4ae7c9b1c04d9dd0a1a76`  
		Last Modified: Mon, 08 Aug 2016 19:11:10 GMT  
		Size: 32.8 MB (32810801 bytes)
	-	`sha256:092769ab6db6ababffd773332ed48701417375503d6970607d00b6477f99cbf0`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 174.0 B
	-	`sha256:1878171654c8e6234a25272c369a2a188d4889c40efa808973422861fa97976c`  
		Last Modified: Mon, 08 Aug 2016 19:10:56 GMT  
		Size: 3.3 KB (3320 bytes)
	-	`sha256:3c0bd45253a36520e0efad14212c0ba67f6a18491b5caa8061c5d05169548029`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 919.0 B
	-	`sha256:e29777170c1256ea030a24692edcae6e9a62c44fdd60e6626835413725f518fa`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 422.0 B
	-	`sha256:d9e11248a73dd074092fa8fc80af0eb29d971fc002e8b6ec39ca173f5fea84e3`  
		Last Modified: Mon, 08 Aug 2016 19:11:45 GMT  
		Size: 131.0 B

## `sentry:8.6-onbuild`

```console
$ docker pull sentry@sha256:39b01d65862db8bfc7a4aa089c1a21b32947df0833a4c568ba78fcec3daff256
```

-	Platforms:
	-	linux; amd64

### `sentry:8.6-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168850719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abd8b0ae2c09e281ab8d1e7eb9d177381c1d91439a55e5c6f1b64849a2907808`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:05:22 GMT
ENV SENTRY_VERSION=8.6.0
# Mon, 08 Aug 2016 19:07:54 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:07:55 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:07:56 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:07:57 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:07:58 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Mon, 08 Aug 2016 19:07:59 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:07:59 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:07:59 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:08:00 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 19:08:01 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 19:08:01 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 19:08:01 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 19:08:02 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 19:08:02 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 19:08:03 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6eb0bb8c5339ed0ffd6e8012dfc1d264454366d755d4ae7c9b1c04d9dd0a1a76`  
		Last Modified: Mon, 08 Aug 2016 19:11:10 GMT  
		Size: 32.8 MB (32810801 bytes)
	-	`sha256:092769ab6db6ababffd773332ed48701417375503d6970607d00b6477f99cbf0`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 174.0 B
	-	`sha256:1878171654c8e6234a25272c369a2a188d4889c40efa808973422861fa97976c`  
		Last Modified: Mon, 08 Aug 2016 19:10:56 GMT  
		Size: 3.3 KB (3320 bytes)
	-	`sha256:3c0bd45253a36520e0efad14212c0ba67f6a18491b5caa8061c5d05169548029`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 919.0 B
	-	`sha256:e29777170c1256ea030a24692edcae6e9a62c44fdd60e6626835413725f518fa`  
		Last Modified: Mon, 08 Aug 2016 19:10:55 GMT  
		Size: 422.0 B
	-	`sha256:d9e11248a73dd074092fa8fc80af0eb29d971fc002e8b6ec39ca173f5fea84e3`  
		Last Modified: Mon, 08 Aug 2016 19:11:45 GMT  
		Size: 131.0 B

## `sentry:8.7.0`

```console
$ docker pull sentry@sha256:f004c4195c3f1ffe238aa246b4ebaf363af00d096b7e9a3f460bd4583ffd976b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1823e5aca34da7f3f0f2c0b166294453074ce934fca534b9f0a4748fe12fa8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:08:04 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 19:10:36 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:10:37 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:10:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:10:39 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 19:10:41 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:10:41 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:10:42 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:10:42 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6de1fae5c6f928fdf0ad9de7d4e2b6ecec9478f8a5100a62761efdb765a32e2a`  
		Last Modified: Mon, 08 Aug 2016 19:12:25 GMT  
		Size: 33.2 MB (33241746 bytes)
	-	`sha256:21ae34098fb596b0461ad0acc2d6eba1b8349652a201dcc94e1da3f710f78df8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 174.0 B
	-	`sha256:207002c9b98d2c4a0d047283b289216bb1a5152aea05c684a8ee97d50013c0d8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 3.3 KB (3322 bytes)
	-	`sha256:9af737489303e00f5c6df4e65d6f3eeb2dd269571bf728acbc280ec89e686c11`  
		Last Modified: Mon, 08 Aug 2016 19:12:12 GMT  
		Size: 919.0 B
	-	`sha256:8e77263f31f8110fb462e99f84c2801ee936c20e3446f8450384f51c6273c85e`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 424.0 B

## `sentry:8.7`

```console
$ docker pull sentry@sha256:f004c4195c3f1ffe238aa246b4ebaf363af00d096b7e9a3f460bd4583ffd976b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1823e5aca34da7f3f0f2c0b166294453074ce934fca534b9f0a4748fe12fa8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:08:04 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 19:10:36 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:10:37 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:10:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:10:39 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 19:10:41 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:10:41 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:10:42 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:10:42 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6de1fae5c6f928fdf0ad9de7d4e2b6ecec9478f8a5100a62761efdb765a32e2a`  
		Last Modified: Mon, 08 Aug 2016 19:12:25 GMT  
		Size: 33.2 MB (33241746 bytes)
	-	`sha256:21ae34098fb596b0461ad0acc2d6eba1b8349652a201dcc94e1da3f710f78df8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 174.0 B
	-	`sha256:207002c9b98d2c4a0d047283b289216bb1a5152aea05c684a8ee97d50013c0d8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 3.3 KB (3322 bytes)
	-	`sha256:9af737489303e00f5c6df4e65d6f3eeb2dd269571bf728acbc280ec89e686c11`  
		Last Modified: Mon, 08 Aug 2016 19:12:12 GMT  
		Size: 919.0 B
	-	`sha256:8e77263f31f8110fb462e99f84c2801ee936c20e3446f8450384f51c6273c85e`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 424.0 B

## `sentry:8`

```console
$ docker pull sentry@sha256:f004c4195c3f1ffe238aa246b4ebaf363af00d096b7e9a3f460bd4583ffd976b
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1823e5aca34da7f3f0f2c0b166294453074ce934fca534b9f0a4748fe12fa8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:08:04 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 19:10:36 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:10:37 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:10:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:10:39 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 19:10:41 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:10:41 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:10:42 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:10:42 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6de1fae5c6f928fdf0ad9de7d4e2b6ecec9478f8a5100a62761efdb765a32e2a`  
		Last Modified: Mon, 08 Aug 2016 19:12:25 GMT  
		Size: 33.2 MB (33241746 bytes)
	-	`sha256:21ae34098fb596b0461ad0acc2d6eba1b8349652a201dcc94e1da3f710f78df8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 174.0 B
	-	`sha256:207002c9b98d2c4a0d047283b289216bb1a5152aea05c684a8ee97d50013c0d8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 3.3 KB (3322 bytes)
	-	`sha256:9af737489303e00f5c6df4e65d6f3eeb2dd269571bf728acbc280ec89e686c11`  
		Last Modified: Mon, 08 Aug 2016 19:12:12 GMT  
		Size: 919.0 B
	-	`sha256:8e77263f31f8110fb462e99f84c2801ee936c20e3446f8450384f51c6273c85e`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 424.0 B

## `sentry:latest`

```console
$ docker pull sentry@sha256:f004c4195c3f1ffe238aa246b4ebaf363af00d096b7e9a3f460bd4583ffd976b
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1823e5aca34da7f3f0f2c0b166294453074ce934fca534b9f0a4748fe12fa8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:08:04 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 19:10:36 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:10:37 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:10:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:10:39 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 19:10:41 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:10:41 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:10:42 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:10:42 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6de1fae5c6f928fdf0ad9de7d4e2b6ecec9478f8a5100a62761efdb765a32e2a`  
		Last Modified: Mon, 08 Aug 2016 19:12:25 GMT  
		Size: 33.2 MB (33241746 bytes)
	-	`sha256:21ae34098fb596b0461ad0acc2d6eba1b8349652a201dcc94e1da3f710f78df8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 174.0 B
	-	`sha256:207002c9b98d2c4a0d047283b289216bb1a5152aea05c684a8ee97d50013c0d8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 3.3 KB (3322 bytes)
	-	`sha256:9af737489303e00f5c6df4e65d6f3eeb2dd269571bf728acbc280ec89e686c11`  
		Last Modified: Mon, 08 Aug 2016 19:12:12 GMT  
		Size: 919.0 B
	-	`sha256:8e77263f31f8110fb462e99f84c2801ee936c20e3446f8450384f51c6273c85e`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 424.0 B

## `sentry:8.7.0-onbuild`

```console
$ docker pull sentry@sha256:a26f392264cdfd7ff437f995000c1f2d2656dd447bc20cba8985d2d02d07dd0a
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038615c1a11d2823cc52d9a994aa749fe2ffe59bd5017b4551e6e36b6903aad1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:08:04 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 19:10:36 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:10:37 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:10:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:10:39 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 19:10:41 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:10:41 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:10:42 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:10:42 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 19:10:43 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 19:10:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 19:10:44 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 19:10:44 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 19:10:45 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 19:10:45 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6de1fae5c6f928fdf0ad9de7d4e2b6ecec9478f8a5100a62761efdb765a32e2a`  
		Last Modified: Mon, 08 Aug 2016 19:12:25 GMT  
		Size: 33.2 MB (33241746 bytes)
	-	`sha256:21ae34098fb596b0461ad0acc2d6eba1b8349652a201dcc94e1da3f710f78df8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 174.0 B
	-	`sha256:207002c9b98d2c4a0d047283b289216bb1a5152aea05c684a8ee97d50013c0d8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 3.3 KB (3322 bytes)
	-	`sha256:9af737489303e00f5c6df4e65d6f3eeb2dd269571bf728acbc280ec89e686c11`  
		Last Modified: Mon, 08 Aug 2016 19:12:12 GMT  
		Size: 919.0 B
	-	`sha256:8e77263f31f8110fb462e99f84c2801ee936c20e3446f8450384f51c6273c85e`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 424.0 B
	-	`sha256:0d0b52330cdcd6c0d868ba3b9085964c2cef5219dd322712a81ac80bf2017a8a`  
		Last Modified: Mon, 08 Aug 2016 19:13:13 GMT  
		Size: 132.0 B

## `sentry:8.7-onbuild`

```console
$ docker pull sentry@sha256:a26f392264cdfd7ff437f995000c1f2d2656dd447bc20cba8985d2d02d07dd0a
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169281669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038615c1a11d2823cc52d9a994aa749fe2ffe59bd5017b4551e6e36b6903aad1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Mon, 01 Aug 2016 23:32:19 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:33:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Mon, 01 Aug 2016 23:33:29 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:33:30 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:37:57 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:37:58 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 19:01:28 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Mon, 08 Aug 2016 19:02:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:02:47 GMT
ENV PIP_NO_CACHE_DIR=off
# Mon, 08 Aug 2016 19:02:48 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Mon, 08 Aug 2016 19:02:48 GMT
ENV GOSU_VERSION=1.9
# Mon, 08 Aug 2016 19:04:03 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:04:03 GMT
ENV TINI_VERSION=v0.9.0
# Mon, 08 Aug 2016 19:05:17 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Mon, 08 Aug 2016 19:05:21 GMT
RUN pip install librabbitmq==1.6.1
# Mon, 08 Aug 2016 19:08:04 GMT
ENV SENTRY_VERSION=8.7.0
# Mon, 08 Aug 2016 19:10:36 GMT
RUN pip install sentry==$SENTRY_VERSION
# Mon, 08 Aug 2016 19:10:37 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Mon, 08 Aug 2016 19:10:38 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Mon, 08 Aug 2016 19:10:39 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Mon, 08 Aug 2016 19:10:40 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh
# Mon, 08 Aug 2016 19:10:41 GMT
EXPOSE 9000/tcp
# Mon, 08 Aug 2016 19:10:41 GMT
VOLUME [/var/lib/sentry/files]
# Mon, 08 Aug 2016 19:10:42 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Mon, 08 Aug 2016 19:10:42 GMT
CMD ["run" "web"]
# Mon, 08 Aug 2016 19:10:43 GMT
WORKDIR /usr/src/sentry
# Mon, 08 Aug 2016 19:10:43 GMT
ENV PYTHONPATH=/usr/src/sentry
# Mon, 08 Aug 2016 19:10:44 GMT
ONBUILD COPY . /usr/src/sentry
# Mon, 08 Aug 2016 19:10:44 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Mon, 08 Aug 2016 19:10:45 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Mon, 08 Aug 2016 19:10:45 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:dc50b4916ada4a6c686b62ab359c5d316d5172ebc36bcf195a48503aa13c8e95`  
		Last Modified: Tue, 02 Aug 2016 00:34:03 GMT  
		Size: 3.3 MB (3306295 bytes)
	-	`sha256:ea2cd35721483fa0ccb7f1d8ca34e5f128c48944c3d3ab8c372972ce3028a666`  
		Last Modified: Tue, 02 Aug 2016 00:34:08 GMT  
		Size: 18.1 MB (18082408 bytes)
	-	`sha256:15b308c4d780684fe22cb9c2620cbc947d5c9d4b6ce213a217f267410e5d08b4`  
		Last Modified: Mon, 08 Aug 2016 19:11:02 GMT  
		Size: 4.3 KB (4345 bytes)
	-	`sha256:42e11e8b46f08d149507e3f5d794582f4e825b651c5b29f2a4cc94380e34e57c`  
		Last Modified: Mon, 08 Aug 2016 19:11:17 GMT  
		Size: 60.5 MB (60548860 bytes)
	-	`sha256:5a6e48330ba71ea0c294104dfe402aba8ebe9f8dbe1d1a4e1f5ed783bd2edc63`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 698.7 KB (698656 bytes)
	-	`sha256:4099880e5ae53d51504c787a909bf0d43c8e7c60d6e710920eb296b0cdc67eb5`  
		Last Modified: Mon, 08 Aug 2016 19:10:58 GMT  
		Size: 129.3 KB (129306 bytes)
	-	`sha256:53aa3d15d1894d6f2d7df05c739d1bf144f41599f65d4415c518b4990f78c2e1`  
		Last Modified: Mon, 08 Aug 2016 19:10:59 GMT  
		Size: 1.9 MB (1899471 bytes)
	-	`sha256:6de1fae5c6f928fdf0ad9de7d4e2b6ecec9478f8a5100a62761efdb765a32e2a`  
		Last Modified: Mon, 08 Aug 2016 19:12:25 GMT  
		Size: 33.2 MB (33241746 bytes)
	-	`sha256:21ae34098fb596b0461ad0acc2d6eba1b8349652a201dcc94e1da3f710f78df8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 174.0 B
	-	`sha256:207002c9b98d2c4a0d047283b289216bb1a5152aea05c684a8ee97d50013c0d8`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 3.3 KB (3322 bytes)
	-	`sha256:9af737489303e00f5c6df4e65d6f3eeb2dd269571bf728acbc280ec89e686c11`  
		Last Modified: Mon, 08 Aug 2016 19:12:12 GMT  
		Size: 919.0 B
	-	`sha256:8e77263f31f8110fb462e99f84c2801ee936c20e3446f8450384f51c6273c85e`  
		Last Modified: Mon, 08 Aug 2016 19:12:13 GMT  
		Size: 424.0 B
	-	`sha256:0d0b52330cdcd6c0d868ba3b9085964c2cef5219dd322712a81ac80bf2017a8a`  
		Last Modified: Mon, 08 Aug 2016 19:13:13 GMT  
		Size: 132.0 B

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:371f22d0011522ad032f74048000ab40f8e3769f19befae4807988c2238c2b4d
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168964734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8469b86afba2b01e8f0f24920ba4f8ac4506d4f82c4ae574bf932627c2585a84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 20:30:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Jun 2016 20:30:15 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 28 Jun 2016 23:01:59 GMT
ENV PYTHON_VERSION=2.7.12
# Tue, 28 Jun 2016 23:01:59 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 19 Jul 2016 20:11:23 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 19 Jul 2016 20:11:24 GMT
CMD ["python2"]
# Tue, 19 Jul 2016 23:18:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 19 Jul 2016 23:20:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Jul 2016 23:20:37 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 19 Jul 2016 23:20:38 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 19 Jul 2016 23:20:39 GMT
ENV GOSU_VERSION=1.9
# Tue, 19 Jul 2016 23:22:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 19 Jul 2016 23:22:15 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 19 Jul 2016 23:23:48 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 19 Jul 2016 23:23:54 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 19 Jul 2016 23:23:55 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 19 Jul 2016 23:28:47 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 19 Jul 2016 23:28:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 19 Jul 2016 23:28:50 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 19 Jul 2016 23:28:50 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 19 Jul 2016 23:28:51 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 19 Jul 2016 23:28:52 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 19 Jul 2016 23:28:53 GMT
EXPOSE 9000/tcp
# Tue, 19 Jul 2016 23:28:53 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 19 Jul 2016 23:28:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 19 Jul 2016 23:28:55 GMT
CMD ["run" "web"]
# Tue, 19 Jul 2016 23:30:24 GMT
WORKDIR /usr/src/sentry
# Tue, 19 Jul 2016 23:30:25 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 19 Jul 2016 23:30:26 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 19 Jul 2016 23:30:27 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 19 Jul 2016 23:30:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 19 Jul 2016 23:30:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:2ab25b944ecb380e724354cdbaa45cd1de6405ad91c89dd6b3de2a5021edd42f`  
		Last Modified: Tue, 28 Jun 2016 23:30:34 GMT  
		Size: 3.3 MB (3336139 bytes)
	-	`sha256:d59b56cfc4bf0112cc2b5e7572bc74226e60628de2553ddf7727ccde6aab4dcf`  
		Last Modified: Tue, 19 Jul 2016 21:37:44 GMT  
		Size: 18.1 MB (18112485 bytes)
	-	`sha256:82e9c9a9a218431e3a13f370dcfba91e1409dadebe9831df6dc53e1637aa71ed`  
		Last Modified: Tue, 19 Jul 2016 23:29:13 GMT  
		Size: 4.3 KB (4346 bytes)
	-	`sha256:2cd5b29222c0256f5f721c41ef4b0be004050eb1f040632272060946bfd01396`  
		Last Modified: Tue, 19 Jul 2016 23:29:38 GMT  
		Size: 60.6 MB (60580408 bytes)
	-	`sha256:1c19abdee2c1c681bbbb96d59499a096ce18f498b8d0452801eaf4e9f50807ec`  
		Last Modified: Tue, 19 Jul 2016 23:29:10 GMT  
		Size: 719.6 KB (719587 bytes)
	-	`sha256:fbe1e51583c7d001c860c0bde15324036795118b2fb9ae4076b4920e9902b6c7`  
		Last Modified: Tue, 19 Jul 2016 23:29:10 GMT  
		Size: 150.3 KB (150270 bytes)
	-	`sha256:d7b73a0930f3c7e92115ed6307ded6dcc817ea1ed01e4610170cd5171c4bb62d`  
		Last Modified: Tue, 19 Jul 2016 23:29:10 GMT  
		Size: 1.9 MB (1898136 bytes)
	-	`sha256:f1fbe68096e686fe6ca05765b21e25965ee175205cd6c0a9a8c2ff9f84525013`  
		Last Modified: Tue, 19 Jul 2016 23:29:25 GMT  
		Size: 32.8 MB (32805856 bytes)
	-	`sha256:24b3ebc7c13b529b7ca59d77896fabddc72d0d553bc190d5e6c3684c37b091c7`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 174.0 B
	-	`sha256:9b46d354fea3040be2c518ad9b53392be25b3482680c603225429e9eead43588`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 3.3 KB (3324 bytes)
	-	`sha256:f73b4d4847f0c9362962cd88998951fa90d0c7c240f03a5402d76defb14e83b6`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 920.0 B
	-	`sha256:8957109a390e3c0f0a4012496a70d786cc1509c810c1369291ef0ba371454e6d`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 423.0 B
	-	`sha256:5161294b2dbd99292c34688586aaa6166fbf5ba9fca415ac1404cb48963e1177`  
		Last Modified: Tue, 19 Jul 2016 23:30:41 GMT  
		Size: 131.0 B

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:371f22d0011522ad032f74048000ab40f8e3769f19befae4807988c2238c2b4d
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.0 MB (168964734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8469b86afba2b01e8f0f24920ba4f8ac4506d4f82c4ae574bf932627c2585a84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Thu, 09 Jun 2016 21:28:42 GMT
ADD file:76679eeb94129df23c99013487d6b6bd779d2107bf07d194a524fdbb6a961530 in /
# Thu, 09 Jun 2016 21:28:43 GMT
CMD ["/bin/bash"]
# Fri, 10 Jun 2016 18:44:45 GMT
RUN apt-get purge -y python.*
# Fri, 10 Jun 2016 18:44:45 GMT
ENV LANG=C.UTF-8
# Fri, 10 Jun 2016 20:30:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 10 Jun 2016 20:30:15 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 28 Jun 2016 23:01:59 GMT
ENV PYTHON_VERSION=2.7.12
# Tue, 28 Jun 2016 23:01:59 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 19 Jul 2016 20:11:23 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 19 Jul 2016 20:11:24 GMT
CMD ["python2"]
# Tue, 19 Jul 2016 23:18:52 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Tue, 19 Jul 2016 23:20:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Jul 2016 23:20:37 GMT
ENV PIP_NO_CACHE_DIR=off
# Tue, 19 Jul 2016 23:20:38 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Tue, 19 Jul 2016 23:20:39 GMT
ENV GOSU_VERSION=1.9
# Tue, 19 Jul 2016 23:22:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Tue, 19 Jul 2016 23:22:15 GMT
ENV TINI_VERSION=v0.9.0
# Tue, 19 Jul 2016 23:23:48 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Tue, 19 Jul 2016 23:23:54 GMT
RUN pip install librabbitmq==1.6.1
# Tue, 19 Jul 2016 23:23:55 GMT
ENV SENTRY_VERSION=8.6.0
# Tue, 19 Jul 2016 23:28:47 GMT
RUN pip install sentry==$SENTRY_VERSION
# Tue, 19 Jul 2016 23:28:48 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Tue, 19 Jul 2016 23:28:50 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Tue, 19 Jul 2016 23:28:50 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/
# Tue, 19 Jul 2016 23:28:51 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/
# Tue, 19 Jul 2016 23:28:52 GMT
COPY file:6379abc04b16bb119a88119da542d2faa8de7e700b3e5eea5c972b6b510e10f2 in /entrypoint.sh
# Tue, 19 Jul 2016 23:28:53 GMT
EXPOSE 9000/tcp
# Tue, 19 Jul 2016 23:28:53 GMT
VOLUME [/var/lib/sentry/files]
# Tue, 19 Jul 2016 23:28:54 GMT
ENTRYPOINT &{["/entrypoint.sh"]}
# Tue, 19 Jul 2016 23:28:55 GMT
CMD ["run" "web"]
# Tue, 19 Jul 2016 23:30:24 GMT
WORKDIR /usr/src/sentry
# Tue, 19 Jul 2016 23:30:25 GMT
ENV PYTHONPATH=/usr/src/sentry
# Tue, 19 Jul 2016 23:30:26 GMT
ONBUILD COPY . /usr/src/sentry
# Tue, 19 Jul 2016 23:30:27 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Tue, 19 Jul 2016 23:30:28 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Tue, 19 Jul 2016 23:30:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:5c90d4a2d1a8dfffd05ff2dd659923f0ca2d843b5e45d030e17abbcd06a11b5b`  
		Last Modified: Thu, 09 Jun 2016 21:30:47 GMT  
		Size: 51.4 MB (51352535 bytes)
	-	`sha256:2ab25b944ecb380e724354cdbaa45cd1de6405ad91c89dd6b3de2a5021edd42f`  
		Last Modified: Tue, 28 Jun 2016 23:30:34 GMT  
		Size: 3.3 MB (3336139 bytes)
	-	`sha256:d59b56cfc4bf0112cc2b5e7572bc74226e60628de2553ddf7727ccde6aab4dcf`  
		Last Modified: Tue, 19 Jul 2016 21:37:44 GMT  
		Size: 18.1 MB (18112485 bytes)
	-	`sha256:82e9c9a9a218431e3a13f370dcfba91e1409dadebe9831df6dc53e1637aa71ed`  
		Last Modified: Tue, 19 Jul 2016 23:29:13 GMT  
		Size: 4.3 KB (4346 bytes)
	-	`sha256:2cd5b29222c0256f5f721c41ef4b0be004050eb1f040632272060946bfd01396`  
		Last Modified: Tue, 19 Jul 2016 23:29:38 GMT  
		Size: 60.6 MB (60580408 bytes)
	-	`sha256:1c19abdee2c1c681bbbb96d59499a096ce18f498b8d0452801eaf4e9f50807ec`  
		Last Modified: Tue, 19 Jul 2016 23:29:10 GMT  
		Size: 719.6 KB (719587 bytes)
	-	`sha256:fbe1e51583c7d001c860c0bde15324036795118b2fb9ae4076b4920e9902b6c7`  
		Last Modified: Tue, 19 Jul 2016 23:29:10 GMT  
		Size: 150.3 KB (150270 bytes)
	-	`sha256:d7b73a0930f3c7e92115ed6307ded6dcc817ea1ed01e4610170cd5171c4bb62d`  
		Last Modified: Tue, 19 Jul 2016 23:29:10 GMT  
		Size: 1.9 MB (1898136 bytes)
	-	`sha256:f1fbe68096e686fe6ca05765b21e25965ee175205cd6c0a9a8c2ff9f84525013`  
		Last Modified: Tue, 19 Jul 2016 23:29:25 GMT  
		Size: 32.8 MB (32805856 bytes)
	-	`sha256:24b3ebc7c13b529b7ca59d77896fabddc72d0d553bc190d5e6c3684c37b091c7`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 174.0 B
	-	`sha256:9b46d354fea3040be2c518ad9b53392be25b3482680c603225429e9eead43588`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 3.3 KB (3324 bytes)
	-	`sha256:f73b4d4847f0c9362962cd88998951fa90d0c7c240f03a5402d76defb14e83b6`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 920.0 B
	-	`sha256:8957109a390e3c0f0a4012496a70d786cc1509c810c1369291ef0ba371454e6d`  
		Last Modified: Tue, 19 Jul 2016 23:29:06 GMT  
		Size: 423.0 B
	-	`sha256:5161294b2dbd99292c34688586aaa6166fbf5ba9fca415ac1404cb48963e1177`  
		Last Modified: Tue, 19 Jul 2016 23:30:41 GMT  
		Size: 131.0 B
