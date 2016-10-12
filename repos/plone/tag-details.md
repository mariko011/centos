<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:5.0.6`](#plone506)
-	[`plone:5.0`](#plone50)
-	[`plone:5`](#plone5)
-	[`plone:latest`](#plonelatest)
-	[`plone:5.0.5`](#plone505)
-	[`plone:5.0.4`](#plone504)
-	[`plone:5.0.3`](#plone503)
-	[`plone:5.0.2`](#plone502)
-	[`plone:4.3.11`](#plone4311)
-	[`plone:4.3`](#plone43)
-	[`plone:4`](#plone4)
-	[`plone:4.3.10`](#plone4310)
-	[`plone:4.3.9`](#plone439)
-	[`plone:4.3.8`](#plone438)
-	[`plone:4.3.7`](#plone437)

## `plone:5.0.6`

```console
$ docker pull plone@sha256:166a561cac5e41ac9ffbaff0983615e627870e3a316a512cbc688596ec919448
```

-	Platforms:
	-	linux; amd64

### `plone:5.0.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140007937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f368fbb000fd945ca374b4328431904431d3bc55e879fab4a17580539c185014`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_VERSION=5.0.6
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Wed, 12 Oct 2016 18:17:05 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:17:06 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:17:07 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:17:07 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:17:08 GMT
USER [plone]
# Wed, 12 Oct 2016 18:17:08 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:17:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:17:09 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c30eab11eb5a26a1c02c2a0d4d0025435d5fb323ad91f48db4860aa45fb264`  
		Last Modified: Wed, 12 Oct 2016 19:00:25 GMT  
		Size: 69.0 MB (69041422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b3a337484cb96e42c2bc624af52f2c32fb94ab6b5c10d9bde58d9365be1f46`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0`

```console
$ docker pull plone@sha256:166a561cac5e41ac9ffbaff0983615e627870e3a316a512cbc688596ec919448
```

-	Platforms:
	-	linux; amd64

### `plone:5.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140007937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f368fbb000fd945ca374b4328431904431d3bc55e879fab4a17580539c185014`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_VERSION=5.0.6
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Wed, 12 Oct 2016 18:17:05 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:17:06 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:17:07 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:17:07 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:17:08 GMT
USER [plone]
# Wed, 12 Oct 2016 18:17:08 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:17:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:17:09 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c30eab11eb5a26a1c02c2a0d4d0025435d5fb323ad91f48db4860aa45fb264`  
		Last Modified: Wed, 12 Oct 2016 19:00:25 GMT  
		Size: 69.0 MB (69041422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b3a337484cb96e42c2bc624af52f2c32fb94ab6b5c10d9bde58d9365be1f46`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:166a561cac5e41ac9ffbaff0983615e627870e3a316a512cbc688596ec919448
```

-	Platforms:
	-	linux; amd64

### `plone:5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140007937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f368fbb000fd945ca374b4328431904431d3bc55e879fab4a17580539c185014`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_VERSION=5.0.6
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Wed, 12 Oct 2016 18:17:05 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:17:06 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:17:07 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:17:07 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:17:08 GMT
USER [plone]
# Wed, 12 Oct 2016 18:17:08 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:17:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:17:09 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c30eab11eb5a26a1c02c2a0d4d0025435d5fb323ad91f48db4860aa45fb264`  
		Last Modified: Wed, 12 Oct 2016 19:00:25 GMT  
		Size: 69.0 MB (69041422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b3a337484cb96e42c2bc624af52f2c32fb94ab6b5c10d9bde58d9365be1f46`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:166a561cac5e41ac9ffbaff0983615e627870e3a316a512cbc688596ec919448
```

-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (140007937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f368fbb000fd945ca374b4328431904431d3bc55e879fab4a17580539c185014`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_VERSION=5.0.6
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Wed, 12 Oct 2016 18:17:05 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:17:06 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:17:07 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:17:07 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:17:08 GMT
USER [plone]
# Wed, 12 Oct 2016 18:17:08 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:17:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:17:09 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c30eab11eb5a26a1c02c2a0d4d0025435d5fb323ad91f48db4860aa45fb264`  
		Last Modified: Wed, 12 Oct 2016 19:00:25 GMT  
		Size: 69.0 MB (69041422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b3a337484cb96e42c2bc624af52f2c32fb94ab6b5c10d9bde58d9365be1f46`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0.5`

```console
$ docker pull plone@sha256:b66613835fe7c0bc8f41f967ad880391e1d9fc46f187c8be6a3d80ade8b47e80
```

-	Platforms:
	-	linux; amd64

### `plone:5.0.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139332791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdaf910243c826be09cea85a081bacfe87b65065192c6f8efd1a11fa1bd05b51`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:17:10 GMT
ENV PLONE_VERSION=5.0.5
# Wed, 12 Oct 2016 18:17:11 GMT
ENV PLONE_MD5=4072f0dda7ecd31d4d19827fd2f06d67
# Wed, 12 Oct 2016 18:21:51 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:21:52 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:21:53 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:21:53 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:21:53 GMT
USER [plone]
# Wed, 12 Oct 2016 18:21:54 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:21:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:21:56 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1adef68e6f6f81a124243b64406d5fe1226e934cddf8b7fa13d419abaef9ea9`  
		Last Modified: Wed, 12 Oct 2016 19:01:36 GMT  
		Size: 68.4 MB (68366271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9fe205a1120255a43e6ea852a47b6457f153cec8e0ed9b78bbe668ab05b7177`  
		Last Modified: Wed, 12 Oct 2016 19:01:13 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0.4`

```console
$ docker pull plone@sha256:0bb3cdf214418559d927c13c0e74a0d8d12096623338038b4cd106b48c7a2812
```

-	Platforms:
	-	linux; amd64

### `plone:5.0.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139212476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c5426efaa9cf7e18d3e5eae91858a43cb8f8e68d2ae6c76e99bebaba2a3666d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:21:56 GMT
ENV PLONE_VERSION=5.0.4
# Wed, 12 Oct 2016 18:21:56 GMT
ENV PLONE_MD5=4cbef57b520e83126c2b2c4b0e55db51
# Wed, 12 Oct 2016 18:26:51 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:26:52 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:26:53 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:26:53 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:26:54 GMT
USER [plone]
# Wed, 12 Oct 2016 18:26:54 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:26:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:26:55 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18b6ec4f52b74824d50e0b7be43734a165021fbe28fb11838cd15d4d0546f61`  
		Last Modified: Wed, 12 Oct 2016 19:02:14 GMT  
		Size: 68.2 MB (68245958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0355b57ae78c6081763db73c7d4456faabd06379148799bf8580cf15e3c52bb`  
		Last Modified: Wed, 12 Oct 2016 19:01:52 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0.3`

```console
$ docker pull plone@sha256:78554ef93d548e97f312237d4aa90868454d9d14a4ffee0720dffd9632a6cb72
```

-	Platforms:
	-	linux; amd64

### `plone:5.0.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139204173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e98b1884732f7a4e9f643ca2c434704a41aff08cc587664d2cdb9462bb97700`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:26:56 GMT
ENV PLONE_VERSION=5.0.3
# Wed, 12 Oct 2016 18:26:57 GMT
ENV PLONE_MD5=6c0f560c3c5f23d8838c2df9a3b380f9
# Wed, 12 Oct 2016 18:33:02 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:33:03 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:33:04 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:33:04 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:33:04 GMT
USER [plone]
# Wed, 12 Oct 2016 18:33:05 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:33:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:33:06 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f53b57bceae93925a30bc399b4a11f63b38378bbe09bf5fd471574ef1f7c922`  
		Last Modified: Wed, 12 Oct 2016 19:02:54 GMT  
		Size: 68.2 MB (68237658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67dffb5b944b704ed50b6103296bfcc6bb9fa0c1f0b8cc452c742833eb05ed8f`  
		Last Modified: Wed, 12 Oct 2016 19:02:32 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0.2`

```console
$ docker pull plone@sha256:2cf9293b54053af5b6136f6fa74600901a266a0a3951de263aa4919d97463e4c
```

-	Platforms:
	-	linux; amd64

### `plone:5.0.2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138127693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cebac89a8af935a64a804288ecbf79379d37ec9016b0d9f3981f1443fbd83763`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:10:18 GMT
ENV PLONE_MAJOR=5.0
# Wed, 12 Oct 2016 18:33:07 GMT
ENV PLONE_VERSION=5.0.2
# Wed, 12 Oct 2016 18:33:07 GMT
ENV PLONE_MD5=b141f65cef30e3e47456b7a6968616c5
# Wed, 12 Oct 2016 18:38:47 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:38:48 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:38:49 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:38:50 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:38:50 GMT
USER [plone]
# Wed, 12 Oct 2016 18:38:50 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:38:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:38:52 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d39b39a413f7b66a6dccc4fa98540e8d8a4d360f2cf56f8cfaa5b778621432`  
		Last Modified: Wed, 12 Oct 2016 19:03:36 GMT  
		Size: 67.2 MB (67161180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf49010e9b825633b08692728f9af57fcc4cea53e60f0c27fea6c939b81732f`  
		Last Modified: Wed, 12 Oct 2016 19:03:11 GMT  
		Size: 2.2 KB (2212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.11`

```console
$ docker pull plone@sha256:ff99735b37016b6131c9573062277918ce8443374c8710b71c0a767fbf93f941
```

-	Platforms:
	-	linux; amd64

### `plone:4.3.11` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115001603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf610c399f571214a96e3348f8a63216250556acac4de52b0aa617a840abd9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MAJOR=4.3
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_VERSION=4.3.11
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MD5=207cdf096869d11cee69339e95ace496
# Wed, 12 Oct 2016 18:42:54 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:42:55 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:42:56 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:42:56 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:42:56 GMT
USER [plone]
# Wed, 12 Oct 2016 18:42:57 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:42:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:42:58 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561bf72338773d64f0e305b9beae9da3c2f105508aebb08ee2f139b85a13e079`  
		Last Modified: Wed, 12 Oct 2016 19:04:11 GMT  
		Size: 44.0 MB (44035087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3871dbe069bd2eb3fe8e5912b77ab6d8b8f237d088517b1ae0959b1ca2cdc75`  
		Last Modified: Wed, 12 Oct 2016 19:03:54 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:ff99735b37016b6131c9573062277918ce8443374c8710b71c0a767fbf93f941
```

-	Platforms:
	-	linux; amd64

### `plone:4.3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115001603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf610c399f571214a96e3348f8a63216250556acac4de52b0aa617a840abd9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MAJOR=4.3
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_VERSION=4.3.11
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MD5=207cdf096869d11cee69339e95ace496
# Wed, 12 Oct 2016 18:42:54 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:42:55 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:42:56 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:42:56 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:42:56 GMT
USER [plone]
# Wed, 12 Oct 2016 18:42:57 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:42:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:42:58 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561bf72338773d64f0e305b9beae9da3c2f105508aebb08ee2f139b85a13e079`  
		Last Modified: Wed, 12 Oct 2016 19:04:11 GMT  
		Size: 44.0 MB (44035087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3871dbe069bd2eb3fe8e5912b77ab6d8b8f237d088517b1ae0959b1ca2cdc75`  
		Last Modified: Wed, 12 Oct 2016 19:03:54 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4`

```console
$ docker pull plone@sha256:ff99735b37016b6131c9573062277918ce8443374c8710b71c0a767fbf93f941
```

-	Platforms:
	-	linux; amd64

### `plone:4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115001603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf610c399f571214a96e3348f8a63216250556acac4de52b0aa617a840abd9e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MAJOR=4.3
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_VERSION=4.3.11
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MD5=207cdf096869d11cee69339e95ace496
# Wed, 12 Oct 2016 18:42:54 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:42:55 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:42:56 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:42:56 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:42:56 GMT
USER [plone]
# Wed, 12 Oct 2016 18:42:57 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:42:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:42:58 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561bf72338773d64f0e305b9beae9da3c2f105508aebb08ee2f139b85a13e079`  
		Last Modified: Wed, 12 Oct 2016 19:04:11 GMT  
		Size: 44.0 MB (44035087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3871dbe069bd2eb3fe8e5912b77ab6d8b8f237d088517b1ae0959b1ca2cdc75`  
		Last Modified: Wed, 12 Oct 2016 19:03:54 GMT  
		Size: 2.2 KB (2215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.10`

```console
$ docker pull plone@sha256:f84298666b328c88f938e9badc70b2ad03dca9e409469864a0dd4c14fb613756
```

-	Platforms:
	-	linux; amd64

### `plone:4.3.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114784295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bdb66b82fbf4b89063fa97b8c5132842b1b71956ed0e1011a7ac150e0e4a83`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MAJOR=4.3
# Wed, 12 Oct 2016 18:42:58 GMT
ENV PLONE_VERSION=4.3.10
# Wed, 12 Oct 2016 18:42:58 GMT
ENV PLONE_MD5=df5c3b1affe8547cc7668318e93f78e2
# Wed, 12 Oct 2016 18:47:14 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:47:14 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:47:15 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:47:16 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:47:16 GMT
USER [plone]
# Wed, 12 Oct 2016 18:47:16 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:47:17 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8cc8841f360402be69e11c2628a59c57c4f2dff75dad62655b012db050128d`  
		Last Modified: Wed, 12 Oct 2016 19:05:07 GMT  
		Size: 43.8 MB (43817780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f08eab96ea816b951896dd7742e6b36cb5b87c15b2fbc66fd6edbbda2841585`  
		Last Modified: Wed, 12 Oct 2016 19:04:50 GMT  
		Size: 2.2 KB (2214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.9`

```console
$ docker pull plone@sha256:4fae86d5b8faf8c1aaa84d49d80b622baad41fb65c565aeb16660991478663ba
```

-	Platforms:
	-	linux; amd64

### `plone:4.3.9` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114688526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af955b66da8cc94aea97fd95cafa743ef6415ed157333ed6b16467fd1e47040`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MAJOR=4.3
# Wed, 12 Oct 2016 18:47:18 GMT
ENV PLONE_VERSION=4.3.9
# Wed, 12 Oct 2016 18:47:18 GMT
ENV PLONE_MD5=fef5beaaf82692de601f558afa404d01
# Wed, 12 Oct 2016 18:51:36 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:51:36 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:51:37 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:51:38 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:51:38 GMT
USER [plone]
# Wed, 12 Oct 2016 18:51:38 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:51:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:51:39 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ddd690834fa010031da794d220fc83360e910cbc131313cafa5e19cc1177ac`  
		Last Modified: Wed, 12 Oct 2016 19:05:38 GMT  
		Size: 43.7 MB (43722008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43020d55f0bd59e7ddf140662b7a906ff5fe505097c439787648ae04ea9927f`  
		Last Modified: Wed, 12 Oct 2016 19:05:23 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.8`

```console
$ docker pull plone@sha256:261742c4f8ea3d89a1c6ce0634c6c95d65fbc273e2a78b6db4207eb4b59b81e5
```

-	Platforms:
	-	linux; amd64

### `plone:4.3.8` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.7 MB (114684053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0fd400727e8a51991a90de96affd0aa584a2c8a0532233b825a5993297a6e3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MAJOR=4.3
# Wed, 12 Oct 2016 18:51:39 GMT
ENV PLONE_VERSION=4.3.8
# Wed, 12 Oct 2016 18:51:40 GMT
ENV PLONE_MD5=c308e7a2b37ff35825225afd982228aa
# Wed, 12 Oct 2016 18:56:00 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:56:00 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:56:01 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:56:01 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:56:02 GMT
USER [plone]
# Wed, 12 Oct 2016 18:56:02 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:56:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:56:03 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838032b1536693b78f7a1c10b3d9cb131e06619b3840daeb8f6dfe72eb3da297`  
		Last Modified: Wed, 12 Oct 2016 19:06:10 GMT  
		Size: 43.7 MB (43717535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ad8600fef0302dae95000add5c9223c8cfa39150902b5eb9a70d65b848cbfe`  
		Last Modified: Wed, 12 Oct 2016 19:05:56 GMT  
		Size: 2.2 KB (2217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.7`

```console
$ docker pull plone@sha256:89d3bf0444daaf71d82eff2cee6e444cc7bd28c0f8de4773247daa16cf920de8
```

-	Platforms:
	-	linux; amd64

### `plone:4.3.7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111467045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188424a0b5abba49e105c038af682f9230a4b8f1c050ed5e04ecd2e674999948`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 12 Oct 2016 18:10:16 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 12 Oct 2016 18:10:18 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 12 Oct 2016 18:38:53 GMT
ENV PLONE_MAJOR=4.3
# Wed, 12 Oct 2016 18:56:04 GMT
ENV PLONE_VERSION=4.3.7
# Wed, 12 Oct 2016 18:56:04 GMT
ENV PLONE_MD5=b4ece39a6dda7a72c9084057d8faae4f
# Wed, 12 Oct 2016 18:59:35 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 12 Oct 2016 18:59:36 GMT
VOLUME [/data]
# Wed, 12 Oct 2016 18:59:37 GMT
COPY multi:b5b8bb7650e5725a58f163406cb8762def141ca5c8596ce4de8b8c40d1838faf in / 
# Wed, 12 Oct 2016 18:59:37 GMT
EXPOSE 8080/tcp
# Wed, 12 Oct 2016 18:59:38 GMT
USER [plone]
# Wed, 12 Oct 2016 18:59:38 GMT
WORKDIR /plone/instance
# Wed, 12 Oct 2016 18:59:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Oct 2016 18:59:39 GMT
CMD ["start"]
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
	-	`sha256:0df143be756335831407d1eeba48220dab11ae33125e958703b7fd8bca98c85f`  
		Last Modified: Wed, 12 Oct 2016 18:59:50 GMT  
		Size: 2.0 KB (1958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa7d11051ae7d1f8dc8fb1c397b87920ec1be144faae4170edb371c6d6b0cf4`  
		Last Modified: Wed, 12 Oct 2016 19:06:41 GMT  
		Size: 40.5 MB (40500531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae59eab2eafd5423f91d6c952da39f741df3cfc86e27d3aaa0bc7c04b3a8d83`  
		Last Modified: Wed, 12 Oct 2016 19:06:27 GMT  
		Size: 2.2 KB (2213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
