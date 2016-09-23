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
$ docker pull sentry@sha256:af10f53ca69366ee3ee9a834807b285a819c003105b741060f466d56db42ec7b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171442180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf67b89fd5cf0ae577a0c91dca2af2dd8820a20930540aab587a28ade0d802c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:31:09 GMT
ENV SENTRY_VERSION=8.7.0
# Fri, 23 Sep 2016 23:32:26 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:32:27 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:32:28 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:32:28 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:32:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:32:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:32:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:32:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afab1c11ece864706d28ec4e11213a507cb0e32f2aaffcad538475b58efbf1b5`  
		Last Modified: Fri, 23 Sep 2016 23:32:55 GMT  
		Size: 34.7 MB (34719897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec13cf76b9aa5e8c4e267c67339773eab72e9767469c9386202c88741308a625`  
		Last Modified: Fri, 23 Sep 2016 23:32:39 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae72619824fe342b38327f5688f25ca78dfcee82836087abc8b2c940fe82588`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25abbf9f802865e6dea0fbcf2df2c00edbcd0a8ce57908bd1ad28ea73431a521`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f73d23d361d0da546c6932115a3490231057d8c62e0623b3def256e1a77a1c2`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7`

```console
$ docker pull sentry@sha256:af10f53ca69366ee3ee9a834807b285a819c003105b741060f466d56db42ec7b
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171442180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf67b89fd5cf0ae577a0c91dca2af2dd8820a20930540aab587a28ade0d802c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:31:09 GMT
ENV SENTRY_VERSION=8.7.0
# Fri, 23 Sep 2016 23:32:26 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:32:27 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:32:28 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:32:28 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:32:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:32:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:32:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:32:30 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afab1c11ece864706d28ec4e11213a507cb0e32f2aaffcad538475b58efbf1b5`  
		Last Modified: Fri, 23 Sep 2016 23:32:55 GMT  
		Size: 34.7 MB (34719897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec13cf76b9aa5e8c4e267c67339773eab72e9767469c9386202c88741308a625`  
		Last Modified: Fri, 23 Sep 2016 23:32:39 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae72619824fe342b38327f5688f25ca78dfcee82836087abc8b2c940fe82588`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25abbf9f802865e6dea0fbcf2df2c00edbcd0a8ce57908bd1ad28ea73431a521`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f73d23d361d0da546c6932115a3490231057d8c62e0623b3def256e1a77a1c2`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7.0-onbuild`

```console
$ docker pull sentry@sha256:b4e5ea074809a1cea1a73d4278dc34e4b297b2ff392e09d8d4ad7be937961397
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171442311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0753c5f522da1b489c8dd77e334f76d4c869fb41fda30833d50ceceed840ae3b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:31:09 GMT
ENV SENTRY_VERSION=8.7.0
# Fri, 23 Sep 2016 23:32:26 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:32:27 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:32:28 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:32:28 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:32:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:32:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:32:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:32:30 GMT
CMD ["run" "web"]
# Fri, 23 Sep 2016 23:33:14 GMT
WORKDIR /usr/src/sentry
# Fri, 23 Sep 2016 23:33:14 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afab1c11ece864706d28ec4e11213a507cb0e32f2aaffcad538475b58efbf1b5`  
		Last Modified: Fri, 23 Sep 2016 23:32:55 GMT  
		Size: 34.7 MB (34719897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec13cf76b9aa5e8c4e267c67339773eab72e9767469c9386202c88741308a625`  
		Last Modified: Fri, 23 Sep 2016 23:32:39 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae72619824fe342b38327f5688f25ca78dfcee82836087abc8b2c940fe82588`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25abbf9f802865e6dea0fbcf2df2c00edbcd0a8ce57908bd1ad28ea73431a521`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f73d23d361d0da546c6932115a3490231057d8c62e0623b3def256e1a77a1c2`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b1f6e1e92825e9cb90c046dbeb8284bb37b662fe334174731ab64740390ee4`  
		Last Modified: Fri, 23 Sep 2016 23:33:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.7-onbuild`

```console
$ docker pull sentry@sha256:b4e5ea074809a1cea1a73d4278dc34e4b297b2ff392e09d8d4ad7be937961397
```

-	Platforms:
	-	linux; amd64

### `sentry:8.7-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171442311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0753c5f522da1b489c8dd77e334f76d4c869fb41fda30833d50ceceed840ae3b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:31:09 GMT
ENV SENTRY_VERSION=8.7.0
# Fri, 23 Sep 2016 23:32:26 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:32:27 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:32:28 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:32:28 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:32:29 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:32:29 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:32:30 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:32:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:32:30 GMT
CMD ["run" "web"]
# Fri, 23 Sep 2016 23:33:14 GMT
WORKDIR /usr/src/sentry
# Fri, 23 Sep 2016 23:33:14 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 23 Sep 2016 23:33:15 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afab1c11ece864706d28ec4e11213a507cb0e32f2aaffcad538475b58efbf1b5`  
		Last Modified: Fri, 23 Sep 2016 23:32:55 GMT  
		Size: 34.7 MB (34719897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec13cf76b9aa5e8c4e267c67339773eab72e9767469c9386202c88741308a625`  
		Last Modified: Fri, 23 Sep 2016 23:32:39 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae72619824fe342b38327f5688f25ca78dfcee82836087abc8b2c940fe82588`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 3.3 KB (3321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25abbf9f802865e6dea0fbcf2df2c00edbcd0a8ce57908bd1ad28ea73431a521`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 920.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f73d23d361d0da546c6932115a3490231057d8c62e0623b3def256e1a77a1c2`  
		Last Modified: Fri, 23 Sep 2016 23:32:38 GMT  
		Size: 425.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b1f6e1e92825e9cb90c046dbeb8284bb37b662fe334174731ab64740390ee4`  
		Last Modified: Fri, 23 Sep 2016 23:33:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8.0`

```console
$ docker pull sentry@sha256:bcace065356324f4dea10c6df15dc73cb14dcc853e924ab8a5e6d0316e15baef
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171418238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2b4b9357c3034c5e30bc3f758741d7376585629c52abc71d90a8a273097afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:27:39 GMT
ENV SENTRY_VERSION=8.8.0
# Fri, 23 Sep 2016 23:28:56 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:28:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:29:02 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:03 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:29:03 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:29:04 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:29:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:29:04 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6232fb03d9b07bcd5c762b90c056dadcc56c27edda9e42e03407bfff465d2407`  
		Last Modified: Fri, 23 Sep 2016 23:29:24 GMT  
		Size: 34.7 MB (34695958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a3e56012d42ec8921dd97a9469b08d42eb44a28af95d9b237b491dd444390a`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3552f5846e9e7cf1744adade58f8e57fba7921ab493903d985aabb89ec0c2`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be89923110b963c387f819cc25c62f0ef0744419908e4d42362ba12ead7afe44`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53212ee09ba762194a00a89491210416f6534b0b7ecf64d7251d93cbdc70a6b`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8`

```console
$ docker pull sentry@sha256:bcace065356324f4dea10c6df15dc73cb14dcc853e924ab8a5e6d0316e15baef
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171418238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2b4b9357c3034c5e30bc3f758741d7376585629c52abc71d90a8a273097afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:27:39 GMT
ENV SENTRY_VERSION=8.8.0
# Fri, 23 Sep 2016 23:28:56 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:28:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:29:02 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:03 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:29:03 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:29:04 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:29:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:29:04 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6232fb03d9b07bcd5c762b90c056dadcc56c27edda9e42e03407bfff465d2407`  
		Last Modified: Fri, 23 Sep 2016 23:29:24 GMT  
		Size: 34.7 MB (34695958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a3e56012d42ec8921dd97a9469b08d42eb44a28af95d9b237b491dd444390a`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3552f5846e9e7cf1744adade58f8e57fba7921ab493903d985aabb89ec0c2`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be89923110b963c387f819cc25c62f0ef0744419908e4d42362ba12ead7afe44`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53212ee09ba762194a00a89491210416f6534b0b7ecf64d7251d93cbdc70a6b`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8`

```console
$ docker pull sentry@sha256:bcace065356324f4dea10c6df15dc73cb14dcc853e924ab8a5e6d0316e15baef
```

-	Platforms:
	-	linux; amd64

### `sentry:8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171418238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2b4b9357c3034c5e30bc3f758741d7376585629c52abc71d90a8a273097afb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:27:39 GMT
ENV SENTRY_VERSION=8.8.0
# Fri, 23 Sep 2016 23:28:56 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:28:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:29:02 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:03 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:29:03 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:29:04 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:29:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:29:04 GMT
CMD ["run" "web"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6232fb03d9b07bcd5c762b90c056dadcc56c27edda9e42e03407bfff465d2407`  
		Last Modified: Fri, 23 Sep 2016 23:29:24 GMT  
		Size: 34.7 MB (34695958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a3e56012d42ec8921dd97a9469b08d42eb44a28af95d9b237b491dd444390a`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3552f5846e9e7cf1744adade58f8e57fba7921ab493903d985aabb89ec0c2`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be89923110b963c387f819cc25c62f0ef0744419908e4d42362ba12ead7afe44`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53212ee09ba762194a00a89491210416f6534b0b7ecf64d7251d93cbdc70a6b`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:latest`

```console
$ docker pull sentry@sha256:70206751ec6c63b921df55af9188e48695c02a1f3dd3da495db1776a8af2e57f
```

-	Platforms:
	-	linux; amd64

### `sentry:latest` - linux; amd64

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

## `sentry:8.8.0-onbuild`

```console
$ docker pull sentry@sha256:9256df9874fe36761faba4c0f20addeb284807b6bcdc47d5e9312ce4a7d7e8e8
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8.0-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171418369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cafd5507bab4434241a89cd1e1674a573f7e873c1c256932e8cec8ad72bbc16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:27:39 GMT
ENV SENTRY_VERSION=8.8.0
# Fri, 23 Sep 2016 23:28:56 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:28:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:29:02 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:03 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:29:03 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:29:04 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:29:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:29:04 GMT
CMD ["run" "web"]
# Fri, 23 Sep 2016 23:30:21 GMT
WORKDIR /usr/src/sentry
# Fri, 23 Sep 2016 23:30:21 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 23 Sep 2016 23:30:22 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 23 Sep 2016 23:30:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 23 Sep 2016 23:30:23 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 23 Sep 2016 23:30:23 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6232fb03d9b07bcd5c762b90c056dadcc56c27edda9e42e03407bfff465d2407`  
		Last Modified: Fri, 23 Sep 2016 23:29:24 GMT  
		Size: 34.7 MB (34695958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a3e56012d42ec8921dd97a9469b08d42eb44a28af95d9b237b491dd444390a`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3552f5846e9e7cf1744adade58f8e57fba7921ab493903d985aabb89ec0c2`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be89923110b963c387f819cc25c62f0ef0744419908e4d42362ba12ead7afe44`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53212ee09ba762194a00a89491210416f6534b0b7ecf64d7251d93cbdc70a6b`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa84557a7af5c17616e7f8ebe4e42fda3d411e14b536ab27a2c3c1b4153086d`  
		Last Modified: Fri, 23 Sep 2016 23:30:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8.8-onbuild`

```console
$ docker pull sentry@sha256:9256df9874fe36761faba4c0f20addeb284807b6bcdc47d5e9312ce4a7d7e8e8
```

-	Platforms:
	-	linux; amd64

### `sentry:8.8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171418369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cafd5507bab4434241a89cd1e1674a573f7e873c1c256932e8cec8ad72bbc16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:27:39 GMT
ENV SENTRY_VERSION=8.8.0
# Fri, 23 Sep 2016 23:28:56 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:28:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:29:02 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:03 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:29:03 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:29:04 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:29:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:29:04 GMT
CMD ["run" "web"]
# Fri, 23 Sep 2016 23:30:21 GMT
WORKDIR /usr/src/sentry
# Fri, 23 Sep 2016 23:30:21 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 23 Sep 2016 23:30:22 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 23 Sep 2016 23:30:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 23 Sep 2016 23:30:23 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 23 Sep 2016 23:30:23 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6232fb03d9b07bcd5c762b90c056dadcc56c27edda9e42e03407bfff465d2407`  
		Last Modified: Fri, 23 Sep 2016 23:29:24 GMT  
		Size: 34.7 MB (34695958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a3e56012d42ec8921dd97a9469b08d42eb44a28af95d9b237b491dd444390a`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3552f5846e9e7cf1744adade58f8e57fba7921ab493903d985aabb89ec0c2`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be89923110b963c387f819cc25c62f0ef0744419908e4d42362ba12ead7afe44`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53212ee09ba762194a00a89491210416f6534b0b7ecf64d7251d93cbdc70a6b`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa84557a7af5c17616e7f8ebe4e42fda3d411e14b536ab27a2c3c1b4153086d`  
		Last Modified: Fri, 23 Sep 2016 23:30:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `sentry:8-onbuild`

```console
$ docker pull sentry@sha256:9256df9874fe36761faba4c0f20addeb284807b6bcdc47d5e9312ce4a7d7e8e8
```

-	Platforms:
	-	linux; amd64

### `sentry:8-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171418369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cafd5507bab4434241a89cd1e1674a573f7e873c1c256932e8cec8ad72bbc16`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["run","web"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 22:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Sep 2016 22:21:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 22:24:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 22:24:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_VERSION=2.7.12
# Fri, 23 Sep 2016 22:24:45 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:26:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:26:48 GMT
CMD ["python2"]
# Fri, 23 Sep 2016 23:26:36 GMT
RUN groupadd -r sentry && useradd -r -m -g sentry sentry
# Fri, 23 Sep 2016 23:27:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends         gcc         git         libffi-dev         libjpeg-dev         libpq-dev         libxml2-dev         libxslt-dev         libyaml-dev     && rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_NO_CACHE_DIR=off
# Fri, 23 Sep 2016 23:27:02 GMT
ENV PIP_DISABLE_PIP_VERSION_CHECK=on
# Fri, 23 Sep 2016 23:27:03 GMT
ENV GOSU_VERSION=1.9
# Fri, 23 Sep 2016 23:27:14 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:15 GMT
ENV TINI_VERSION=v0.9.0
# Fri, 23 Sep 2016 23:27:24 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends wget && rm -rf /var/lib/apt/lists/*     && wget -O /usr/local/bin/tini "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini"     && wget -O /usr/local/bin/tini.asc "https://github.com/krallin/tini/releases/download/$TINI_VERSION/tini.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 6380DC428747F6C393FEACA59A84159D7001A4E5     && gpg --batch --verify /usr/local/bin/tini.asc /usr/local/bin/tini     && rm -r "$GNUPGHOME" /usr/local/bin/tini.asc     && chmod +x /usr/local/bin/tini     && tini -h     && apt-get purge -y --auto-remove wget
# Fri, 23 Sep 2016 23:27:39 GMT
RUN set -x     && apt-get update && apt-get install -y --no-install-recommends make && rm -rf /var/lib/apt/lists/*     && pip install librabbitmq==1.6.1     && python -c 'import librabbitmq'     && apt-get purge -y --auto-remove make
# Fri, 23 Sep 2016 23:27:39 GMT
ENV SENTRY_VERSION=8.8.0
# Fri, 23 Sep 2016 23:28:56 GMT
RUN pip install sentry==$SENTRY_VERSION
# Fri, 23 Sep 2016 23:28:57 GMT
ENV SENTRY_CONF=/etc/sentry SENTRY_FILESTORE_DIR=/var/lib/sentry/files
# Fri, 23 Sep 2016 23:29:02 GMT
RUN mkdir -p $SENTRY_CONF && mkdir -p $SENTRY_FILESTORE_DIR
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:03ec0f4381aacbc2e6dbf7a56b44b3a3df51f8ec2d9f8cd6ad6fd766d8d378a3 in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:02 GMT
COPY file:b150b377c06cffe8ce303623b30e7daa5f4a33f8c6d06d9b1095da6f4587f69b in /etc/sentry/ 
# Fri, 23 Sep 2016 23:29:03 GMT
COPY file:f490e4be17b442272f00cb3dac92d70a1d0164325552588b163a33fad4701f18 in /entrypoint.sh 
# Fri, 23 Sep 2016 23:29:03 GMT
EXPOSE 9000/tcp
# Fri, 23 Sep 2016 23:29:04 GMT
VOLUME [/var/lib/sentry/files]
# Fri, 23 Sep 2016 23:29:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Sep 2016 23:29:04 GMT
CMD ["run" "web"]
# Fri, 23 Sep 2016 23:30:21 GMT
WORKDIR /usr/src/sentry
# Fri, 23 Sep 2016 23:30:21 GMT
ENV PYTHONPATH=/usr/src/sentry
# Fri, 23 Sep 2016 23:30:22 GMT
ONBUILD COPY . /usr/src/sentry
# Fri, 23 Sep 2016 23:30:22 GMT
ONBUILD RUN if [ -s requirements.txt ]; then pip install -r requirements.txt; fi
# Fri, 23 Sep 2016 23:30:23 GMT
ONBUILD RUN if [ -s setup.py ]; then pip install -e .; fi
# Fri, 23 Sep 2016 23:30:23 GMT
ONBUILD RUN if [ -s sentry.conf.py ]; then cp sentry.conf.py $SENTRY_CONF/; fi 	&& if [ -s config.yml ]; then cp config.yml $SENTRY_CONF/; fi
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a3878067c3ed1f21e0059beb69d1950f918b1e7bbe68c8f3ff486f7f88d04a`  
		Last Modified: Fri, 23 Sep 2016 22:26:57 GMT  
		Size: 3.3 MB (3306511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425925a2dc45b9289c5c619b19661e75269f49f794b3159dbb128d7488a1ce37`  
		Last Modified: Fri, 23 Sep 2016 22:27:03 GMT  
		Size: 16.3 MB (16301468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3e57501bd8bb1f9e73ba37b8b721b5225f819e0cd77ba6160a36f79ef66742`  
		Last Modified: Fri, 23 Sep 2016 23:29:18 GMT  
		Size: 4.3 KB (4346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08af036426a034ce8b1b045d12cec3c8380c0a7cf4a0005d1a707ff174a0890d`  
		Last Modified: Fri, 23 Sep 2016 23:29:36 GMT  
		Size: 62.6 MB (62641312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e1f5b516a934f41b0c603780cd02a77ad96c004befe5068d5f45ccee7a7075`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 698.5 KB (698488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dac41aba6a621fed024fbf85abe7304d9b02bb01af873c29db3b1dffd09edea`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 129.1 KB (129100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d56e3f2cf660729aed9498c01b40f85eb867de47fe9364fb51fdc1ac2a435a1`  
		Last Modified: Fri, 23 Sep 2016 23:29:16 GMT  
		Size: 2.3 MB (2281854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6232fb03d9b07bcd5c762b90c056dadcc56c27edda9e42e03407bfff465d2407`  
		Last Modified: Fri, 23 Sep 2016 23:29:24 GMT  
		Size: 34.7 MB (34695958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a3e56012d42ec8921dd97a9469b08d42eb44a28af95d9b237b491dd444390a`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa3552f5846e9e7cf1744adade58f8e57fba7921ab493903d985aabb89ec0c2`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 3.3 KB (3319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be89923110b963c387f819cc25c62f0ef0744419908e4d42362ba12ead7afe44`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53212ee09ba762194a00a89491210416f6534b0b7ecf64d7251d93cbdc70a6b`  
		Last Modified: Fri, 23 Sep 2016 23:29:12 GMT  
		Size: 424.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aa84557a7af5c17616e7f8ebe4e42fda3d411e14b536ab27a2c3c1b4153086d`  
		Last Modified: Fri, 23 Sep 2016 23:30:30 GMT  
		Size: 131.0 B  
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
