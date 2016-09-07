<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `sentry`

-	[`sentry:8.7.0`](#sentry870)
-	[`sentry:8.7`](#sentry87)
-	[`sentry:8.7.0-onbuild`](#sentry870-onbuild)
-	[`sentry:8.7-onbuild`](#sentry87-onbuild)
-	[`sentry:8.8.0`](#sentry880)
-	[`sentry:8.8`](#sentry88)
-	[`sentry:8`](#sentry8)
-	[`sentry:latest`](#sentrylatest)
-	[`sentry:8.8.0-onbuild`](#sentry880-onbuild)
-	[`sentry:8.8-onbuild`](#sentry88-onbuild)
-	[`sentry:8-onbuild`](#sentry8-onbuild)
-	[`sentry:onbuild`](#sentryonbuild)

## `sentry:8.7.0`

```console
$ docker pull sentry@sha256:15e9199a97d00a564b4cfc81726410f3f92ea3e931d15ecd73d080b5938004c4
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171537822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97373e13668cfbacdc1a1aab2f40d0138b25ff9e6cc5ace58fe8fb13ec2a11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 31 Aug 2016 04:14:09 GMT
ENV SENTRY_VERSION=8.7.0
# Wed, 31 Aug 2016 04:16:07 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 31 Aug 2016 04:16:07 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 31 Aug 2016 04:16:09 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 31 Aug 2016 04:16:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 31 Aug 2016 04:16:26 GMT
EXPOSE 9000/tcp
# Wed, 31 Aug 2016 04:16:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 31 Aug 2016 04:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 04:16:27 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3d28920acad906ccfb1d31954aa2423b8d22c53fb8f412f4bef0f42fc83d8`  
		Last Modified: Wed, 07 Sep 2016 21:11:10 GMT  
		Size: 34.8 MB (34770929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2934e4ce04b4d9a59f32f820e09b0162bf57e54b4b6cd68be7a4d4889ee8e6`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa2afae718b8a1d57d2f75797eb5442f56446f67135986e03372e1f6e8387f5`  
		Last Modified: Wed, 07 Sep 2016 21:10:46 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264d18b554383736a2c3c6962040aac8a527af47179e69b9b3f8654f71e078f2`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950a0995407bfc91e631dcceb11e4531e82032c6de242c2453af0afd87e66299`  
		Last Modified: Wed, 07 Sep 2016 21:10:47 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7`

```console
$ docker pull sentry@sha256:15e9199a97d00a564b4cfc81726410f3f92ea3e931d15ecd73d080b5938004c4
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171537822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d97373e13668cfbacdc1a1aab2f40d0138b25ff9e6cc5ace58fe8fb13ec2a11f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 31 Aug 2016 04:14:09 GMT
ENV SENTRY_VERSION=8.7.0
# Wed, 31 Aug 2016 04:16:07 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 31 Aug 2016 04:16:07 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 31 Aug 2016 04:16:09 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 31 Aug 2016 04:16:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 31 Aug 2016 04:16:26 GMT
EXPOSE 9000/tcp
# Wed, 31 Aug 2016 04:16:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 31 Aug 2016 04:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 04:16:27 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3d28920acad906ccfb1d31954aa2423b8d22c53fb8f412f4bef0f42fc83d8`  
		Last Modified: Wed, 07 Sep 2016 21:11:10 GMT  
		Size: 34.8 MB (34770929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2934e4ce04b4d9a59f32f820e09b0162bf57e54b4b6cd68be7a4d4889ee8e6`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa2afae718b8a1d57d2f75797eb5442f56446f67135986e03372e1f6e8387f5`  
		Last Modified: Wed, 07 Sep 2016 21:10:46 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264d18b554383736a2c3c6962040aac8a527af47179e69b9b3f8654f71e078f2`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950a0995407bfc91e631dcceb11e4531e82032c6de242c2453af0afd87e66299`  
		Last Modified: Wed, 07 Sep 2016 21:10:47 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7.0-onbuild`

```console
$ docker pull sentry@sha256:2cc6afae96ccfe3df8624a2c4bfb2ff7f14412b57e6228e4916f3dd557e96ab1
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171537954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7bcd9be09605cb2bba91f46d943fa444834bf0e64a23ec3a59e5ad44809548`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 31 Aug 2016 04:14:09 GMT
ENV SENTRY_VERSION=8.7.0
# Wed, 31 Aug 2016 04:16:07 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 31 Aug 2016 04:16:07 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 31 Aug 2016 04:16:09 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 31 Aug 2016 04:16:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 31 Aug 2016 04:16:26 GMT
EXPOSE 9000/tcp
# Wed, 31 Aug 2016 04:16:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 31 Aug 2016 04:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 04:16:27 GMT
CMD ["run" "web"]
# Wed, 31 Aug 2016 04:16:28 GMT
WORKDIR /usr/src/sentry
# Wed, 31 Aug 2016 04:16:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 31 Aug 2016 04:16:28 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 31 Aug 2016 04:16:29 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 31 Aug 2016 04:16:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 31 Aug 2016 04:16:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3d28920acad906ccfb1d31954aa2423b8d22c53fb8f412f4bef0f42fc83d8`  
		Last Modified: Wed, 07 Sep 2016 21:11:10 GMT  
		Size: 34.8 MB (34770929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2934e4ce04b4d9a59f32f820e09b0162bf57e54b4b6cd68be7a4d4889ee8e6`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa2afae718b8a1d57d2f75797eb5442f56446f67135986e03372e1f6e8387f5`  
		Last Modified: Wed, 07 Sep 2016 21:10:46 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264d18b554383736a2c3c6962040aac8a527af47179e69b9b3f8654f71e078f2`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950a0995407bfc91e631dcceb11e4531e82032c6de242c2453af0afd87e66299`  
		Last Modified: Wed, 07 Sep 2016 21:10:47 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc8b5f4faf4d5cece4bb918335f990a797c53f8ee0f2d6b15800d5f7ab1332f`  
		Last Modified: Wed, 07 Sep 2016 21:11:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7-onbuild`

```console
$ docker pull sentry@sha256:2cc6afae96ccfe3df8624a2c4bfb2ff7f14412b57e6228e4916f3dd557e96ab1
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.5 MB (171537954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7bcd9be09605cb2bba91f46d943fa444834bf0e64a23ec3a59e5ad44809548`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 31 Aug 2016 04:14:09 GMT
ENV SENTRY_VERSION=8.7.0
# Wed, 31 Aug 2016 04:16:07 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 31 Aug 2016 04:16:07 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 31 Aug 2016 04:16:09 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 31 Aug 2016 04:16:23 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:24 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 31 Aug 2016 04:16:25 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 31 Aug 2016 04:16:26 GMT
EXPOSE 9000/tcp
# Wed, 31 Aug 2016 04:16:27 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 31 Aug 2016 04:16:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 31 Aug 2016 04:16:27 GMT
CMD ["run" "web"]
# Wed, 31 Aug 2016 04:16:28 GMT
WORKDIR /usr/src/sentry
# Wed, 31 Aug 2016 04:16:28 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 31 Aug 2016 04:16:28 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 31 Aug 2016 04:16:29 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 31 Aug 2016 04:16:29 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 31 Aug 2016 04:16:29 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a3d28920acad906ccfb1d31954aa2423b8d22c53fb8f412f4bef0f42fc83d8`  
		Last Modified: Wed, 07 Sep 2016 21:11:10 GMT  
		Size: 34.8 MB (34770929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec2934e4ce04b4d9a59f32f820e09b0162bf57e54b4b6cd68be7a4d4889ee8e6`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa2afae718b8a1d57d2f75797eb5442f56446f67135986e03372e1f6e8387f5`  
		Last Modified: Wed, 07 Sep 2016 21:10:46 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264d18b554383736a2c3c6962040aac8a527af47179e69b9b3f8654f71e078f2`  
		Last Modified: Wed, 07 Sep 2016 21:10:48 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950a0995407bfc91e631dcceb11e4531e82032c6de242c2453af0afd87e66299`  
		Last Modified: Wed, 07 Sep 2016 21:10:47 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc8b5f4faf4d5cece4bb918335f990a797c53f8ee0f2d6b15800d5f7ab1332f`  
		Last Modified: Wed, 07 Sep 2016 21:11:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8.0`

```console
$ docker pull sentry@sha256:70206751ec6c63b921df55af9188e48695c02a1f3dd3da495db1776a8af2e57f
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5089998e01b4b22f09c21c240d4c9ec25fd1d4b9b49202cc565ea3cccb7fd0a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 07 Sep 2016 21:09:12 GMT
ENV SENTRY_VERSION=8.8.0
# Wed, 07 Sep 2016 21:10:33 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 07 Sep 2016 21:10:34 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 07 Sep 2016 21:10:36 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:10:38 GMT
EXPOSE 9000/tcp
# Wed, 07 Sep 2016 21:10:38 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 07 Sep 2016 21:10:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:10:39 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44be4effc32337fe7f430811321b22a86d6fe81acf3b35dbd44cee82c07e752`  
		Last Modified: Wed, 07 Sep 2016 21:12:12 GMT  
		Size: 34.6 MB (34611581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fabfabf88b1b16729e947d8974461ca26a75dccb19d88accd5ce98e3c389a3`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ae39b59a9045a5400bcff6fad0b9720b90831168c54de1ec00fcab3403526`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad48ae142b4ebeb1ba3d89e53c1a6a937623a464c5336eadbe482d77c7755b`  
		Last Modified: Wed, 07 Sep 2016 21:12:04 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44afe31727fd1750dbdf5956e11115a01fad05a845a6ee60b1bfb534841dbb`  
		Last Modified: Wed, 07 Sep 2016 21:12:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8`

```console
$ docker pull sentry@sha256:70206751ec6c63b921df55af9188e48695c02a1f3dd3da495db1776a8af2e57f
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5089998e01b4b22f09c21c240d4c9ec25fd1d4b9b49202cc565ea3cccb7fd0a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 07 Sep 2016 21:09:12 GMT
ENV SENTRY_VERSION=8.8.0
# Wed, 07 Sep 2016 21:10:33 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 07 Sep 2016 21:10:34 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 07 Sep 2016 21:10:36 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:10:38 GMT
EXPOSE 9000/tcp
# Wed, 07 Sep 2016 21:10:38 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 07 Sep 2016 21:10:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:10:39 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44be4effc32337fe7f430811321b22a86d6fe81acf3b35dbd44cee82c07e752`  
		Last Modified: Wed, 07 Sep 2016 21:12:12 GMT  
		Size: 34.6 MB (34611581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fabfabf88b1b16729e947d8974461ca26a75dccb19d88accd5ce98e3c389a3`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ae39b59a9045a5400bcff6fad0b9720b90831168c54de1ec00fcab3403526`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad48ae142b4ebeb1ba3d89e53c1a6a937623a464c5336eadbe482d77c7755b`  
		Last Modified: Wed, 07 Sep 2016 21:12:04 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44afe31727fd1750dbdf5956e11115a01fad05a845a6ee60b1bfb534841dbb`  
		Last Modified: Wed, 07 Sep 2016 21:12:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:70206751ec6c63b921df55af9188e48695c02a1f3dd3da495db1776a8af2e57f
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5089998e01b4b22f09c21c240d4c9ec25fd1d4b9b49202cc565ea3cccb7fd0a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 07 Sep 2016 21:09:12 GMT
ENV SENTRY_VERSION=8.8.0
# Wed, 07 Sep 2016 21:10:33 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 07 Sep 2016 21:10:34 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 07 Sep 2016 21:10:36 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:10:38 GMT
EXPOSE 9000/tcp
# Wed, 07 Sep 2016 21:10:38 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 07 Sep 2016 21:10:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:10:39 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44be4effc32337fe7f430811321b22a86d6fe81acf3b35dbd44cee82c07e752`  
		Last Modified: Wed, 07 Sep 2016 21:12:12 GMT  
		Size: 34.6 MB (34611581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fabfabf88b1b16729e947d8974461ca26a75dccb19d88accd5ce98e3c389a3`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ae39b59a9045a5400bcff6fad0b9720b90831168c54de1ec00fcab3403526`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad48ae142b4ebeb1ba3d89e53c1a6a937623a464c5336eadbe482d77c7755b`  
		Last Modified: Wed, 07 Sep 2016 21:12:04 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44afe31727fd1750dbdf5956e11115a01fad05a845a6ee60b1bfb534841dbb`  
		Last Modified: Wed, 07 Sep 2016 21:12:03 GMT  
		Size: 423.0 B  
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

## `sentry:8.8.0-onbuild`

```console
$ docker pull sentry@sha256:4bafa2a11d48d469f03931ab8ea195ea287b7a1237ea76b75f216ecd8c4f86f1
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9ed72f094b6251843ef88fb5a1d0ed24c4d3b5c7a9223d2c7ec374a0bd70f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 07 Sep 2016 21:09:12 GMT
ENV SENTRY_VERSION=8.8.0
# Wed, 07 Sep 2016 21:10:33 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 07 Sep 2016 21:10:34 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 07 Sep 2016 21:10:36 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:10:38 GMT
EXPOSE 9000/tcp
# Wed, 07 Sep 2016 21:10:38 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 07 Sep 2016 21:10:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:10:39 GMT
CMD ["run" "web"]
# Wed, 07 Sep 2016 21:10:39 GMT
WORKDIR /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 07 Sep 2016 21:10:41 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44be4effc32337fe7f430811321b22a86d6fe81acf3b35dbd44cee82c07e752`  
		Last Modified: Wed, 07 Sep 2016 21:12:12 GMT  
		Size: 34.6 MB (34611581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fabfabf88b1b16729e947d8974461ca26a75dccb19d88accd5ce98e3c389a3`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ae39b59a9045a5400bcff6fad0b9720b90831168c54de1ec00fcab3403526`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad48ae142b4ebeb1ba3d89e53c1a6a937623a464c5336eadbe482d77c7755b`  
		Last Modified: Wed, 07 Sep 2016 21:12:04 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44afe31727fd1750dbdf5956e11115a01fad05a845a6ee60b1bfb534841dbb`  
		Last Modified: Wed, 07 Sep 2016 21:12:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c698934077580c84d0b0e305f69c1ffaa3ebf30811547e49c9cbdc6408d112d`  
		Last Modified: Wed, 07 Sep 2016 21:12:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8-onbuild`

```console
$ docker pull sentry@sha256:4bafa2a11d48d469f03931ab8ea195ea287b7a1237ea76b75f216ecd8c4f86f1
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9ed72f094b6251843ef88fb5a1d0ed24c4d3b5c7a9223d2c7ec374a0bd70f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 07 Sep 2016 21:09:12 GMT
ENV SENTRY_VERSION=8.8.0
# Wed, 07 Sep 2016 21:10:33 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 07 Sep 2016 21:10:34 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 07 Sep 2016 21:10:36 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:10:38 GMT
EXPOSE 9000/tcp
# Wed, 07 Sep 2016 21:10:38 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 07 Sep 2016 21:10:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:10:39 GMT
CMD ["run" "web"]
# Wed, 07 Sep 2016 21:10:39 GMT
WORKDIR /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 07 Sep 2016 21:10:41 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44be4effc32337fe7f430811321b22a86d6fe81acf3b35dbd44cee82c07e752`  
		Last Modified: Wed, 07 Sep 2016 21:12:12 GMT  
		Size: 34.6 MB (34611581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fabfabf88b1b16729e947d8974461ca26a75dccb19d88accd5ce98e3c389a3`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ae39b59a9045a5400bcff6fad0b9720b90831168c54de1ec00fcab3403526`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad48ae142b4ebeb1ba3d89e53c1a6a937623a464c5336eadbe482d77c7755b`  
		Last Modified: Wed, 07 Sep 2016 21:12:04 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44afe31727fd1750dbdf5956e11115a01fad05a845a6ee60b1bfb534841dbb`  
		Last Modified: Wed, 07 Sep 2016 21:12:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c698934077580c84d0b0e305f69c1ffaa3ebf30811547e49c9cbdc6408d112d`  
		Last Modified: Wed, 07 Sep 2016 21:12:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:4bafa2a11d48d469f03931ab8ea195ea287b7a1237ea76b75f216ecd8c4f86f1
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9ed72f094b6251843ef88fb5a1d0ed24c4d3b5c7a9223d2c7ec374a0bd70f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 07 Sep 2016 21:09:12 GMT
ENV SENTRY_VERSION=8.8.0
# Wed, 07 Sep 2016 21:10:33 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 07 Sep 2016 21:10:34 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 07 Sep 2016 21:10:36 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:10:38 GMT
EXPOSE 9000/tcp
# Wed, 07 Sep 2016 21:10:38 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 07 Sep 2016 21:10:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:10:39 GMT
CMD ["run" "web"]
# Wed, 07 Sep 2016 21:10:39 GMT
WORKDIR /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 07 Sep 2016 21:10:41 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44be4effc32337fe7f430811321b22a86d6fe81acf3b35dbd44cee82c07e752`  
		Last Modified: Wed, 07 Sep 2016 21:12:12 GMT  
		Size: 34.6 MB (34611581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fabfabf88b1b16729e947d8974461ca26a75dccb19d88accd5ce98e3c389a3`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ae39b59a9045a5400bcff6fad0b9720b90831168c54de1ec00fcab3403526`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad48ae142b4ebeb1ba3d89e53c1a6a937623a464c5336eadbe482d77c7755b`  
		Last Modified: Wed, 07 Sep 2016 21:12:04 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44afe31727fd1750dbdf5956e11115a01fad05a845a6ee60b1bfb534841dbb`  
		Last Modified: Wed, 07 Sep 2016 21:12:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c698934077580c84d0b0e305f69c1ffaa3ebf30811547e49c9cbdc6408d112d`  
		Last Modified: Wed, 07 Sep 2016 21:12:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:onbuild`

```console
$ docker pull sentry@sha256:4bafa2a11d48d469f03931ab8ea195ea287b7a1237ea76b75f216ecd8c4f86f1
```

-	Platforms:
	-	linux; amd64

### `sentry:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171378604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b9ed72f094b6251843ef88fb5a1d0ed24c4d3b5c7a9223d2c7ec374a0bd70f1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:39:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 31 Aug 2016 02:39:36 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 31 Aug 2016 02:39:37 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 02:41:38 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 02:41:39 GMT
CMD ["python2"]
# Wed, 31 Aug 2016 04:08:23 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Wed, 31 Aug 2016 04:12:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_NO_CACHE_DIR=off
# Wed, 31 Aug 2016 04:12:12 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Wed, 31 Aug 2016 04:12:12 GMT
ENV GOSU_VERSION=1.9
# Wed, 31 Aug 2016 04:12:25 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:25 GMT
ENV TINI_VERSION=v0.9.0
# Wed, 31 Aug 2016 04:12:35 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Wed, 31 Aug 2016 04:12:47 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Wed, 07 Sep 2016 21:09:12 GMT
ENV SENTRY_VERSION=8.8.0
# Wed, 07 Sep 2016 21:10:33 GMT
RUN pip install sentry==$SENTRY_VERSION
# Wed, 07 Sep 2016 21:10:34 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Wed, 07 Sep 2016 21:10:36 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Wed, 07 Sep 2016 21:10:37 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Wed, 07 Sep 2016 21:10:38 GMT
EXPOSE 9000/tcp
# Wed, 07 Sep 2016 21:10:38 GMT
VOLUME [/var/lib/sentry/files]
# Wed, 07 Sep 2016 21:10:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 07 Sep 2016 21:10:39 GMT
CMD ["run" "web"]
# Wed, 07 Sep 2016 21:10:39 GMT
WORKDIR /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ENV PYTHONPATH=/usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD COPY . /usr/src/sentry
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Wed, 07 Sep 2016 21:10:40 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Wed, 07 Sep 2016 21:10:41 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640accb371c36c87992dbeee4f4f575cd9e96ac888d0e67ec6445dfecfeda7ae`  
		Last Modified: Wed, 07 Sep 2016 18:04:34 GMT  
		Size: 16.3 MB (16299043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424714a1a5abe1d5374cf78f6ebc8e958e80da9dc2359dd8112b641b7a313a3`  
		Last Modified: Wed, 07 Sep 2016 21:10:54 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bffcc02e6673f7cc2e94beb17a4e2c7293296aa7990e352f881c0a7dd6e5f00`  
		Last Modified: Wed, 07 Sep 2016 21:11:16 GMT  
		Size: 62.6 MB (62638404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93fb3e84b11a093ff08429830953808adf0a119f3aced3e1c95f4431f1026bc`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 699.0 KB (699026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c907979573ae85ba4a423d78d444a0a05ed024fda4841edcb94cc382d61d3a5`  
		Last Modified: Wed, 07 Sep 2016 21:10:50 GMT  
		Size: 129.6 KB (129632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6cf1b809f4290c1de9e434245df9089ec57fd7915aff2f9317a308b9252dad`  
		Last Modified: Wed, 07 Sep 2016 21:10:51 GMT  
		Size: 2.3 MB (2317949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44be4effc32337fe7f430811321b22a86d6fe81acf3b35dbd44cee82c07e752`  
		Last Modified: Wed, 07 Sep 2016 21:12:12 GMT  
		Size: 34.6 MB (34611581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fabfabf88b1b16729e947d8974461ca26a75dccb19d88accd5ce98e3c389a3`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78ae39b59a9045a5400bcff6fad0b9720b90831168c54de1ec00fcab3403526`  
		Last Modified: Wed, 07 Sep 2016 21:12:02 GMT  
		Size: 3.3 KB (3323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02ad48ae142b4ebeb1ba3d89e53c1a6a937623a464c5336eadbe482d77c7755b`  
		Last Modified: Wed, 07 Sep 2016 21:12:04 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c44afe31727fd1750dbdf5956e11115a01fad05a845a6ee60b1bfb534841dbb`  
		Last Modified: Wed, 07 Sep 2016 21:12:03 GMT  
		Size: 423.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c698934077580c84d0b0e305f69c1ffaa3ebf30811547e49c9cbdc6408d112d`  
		Last Modified: Wed, 07 Sep 2016 21:12:51 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
