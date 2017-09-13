<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:5.0.8`](#plone508)
-	[`plone:5.0`](#plone50)
-	[`plone:5`](#plone5)
-	[`plone:latest`](#plonelatest)
-	[`plone:4.3.15`](#plone4315)
-	[`plone:4.3`](#plone43)
-	[`plone:4`](#plone4)

## `plone:5.0.8`

```console
$ docker pull plone@sha256:46b2bdb35f285f8acf830df4c745dc9e14495f67832dbf5f989158a8909767c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.0.8` - linux; amd64

```console
$ docker pull plone@sha256:f80cddafe9121df45da0206386ff23b37888145147822a1277ba112c67f11db0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269109953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8bf8dc9a87c02ad8eca779fe9c89b9eb97b38b51479303b05918b7a5812727`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Wed, 13 Sep 2017 07:31:18 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_MAJOR=5.0
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_VERSION=5.0.8
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Wed, 13 Sep 2017 07:31:19 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 13 Sep 2017 07:35:59 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 13 Sep 2017 07:36:00 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 07:36:00 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Wed, 13 Sep 2017 07:36:01 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 07:36:01 GMT
USER [plone]
# Wed, 13 Sep 2017 07:36:01 GMT
WORKDIR /plone/instance
# Wed, 13 Sep 2017 07:36:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 07:36:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7a7b70fcb3352cd7d0533a059fd80520101885006f0f9c32b2541bc125e1bf`  
		Last Modified: Wed, 13 Sep 2017 07:39:52 GMT  
		Size: 4.2 KB (4200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dbeefbefabc3ee20e937b06ad237088b82fdcab1b4c49368daee912b77d00f`  
		Last Modified: Wed, 13 Sep 2017 07:40:56 GMT  
		Size: 196.3 MB (196295761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8073f4bb60c4181f538b1e34b1b3d34f0979c32884db4fffb69d8338fabbd481`  
		Last Modified: Wed, 13 Sep 2017 07:39:51 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0`

```console
$ docker pull plone@sha256:46b2bdb35f285f8acf830df4c745dc9e14495f67832dbf5f989158a8909767c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5.0` - linux; amd64

```console
$ docker pull plone@sha256:f80cddafe9121df45da0206386ff23b37888145147822a1277ba112c67f11db0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269109953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8bf8dc9a87c02ad8eca779fe9c89b9eb97b38b51479303b05918b7a5812727`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Wed, 13 Sep 2017 07:31:18 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_MAJOR=5.0
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_VERSION=5.0.8
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Wed, 13 Sep 2017 07:31:19 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 13 Sep 2017 07:35:59 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 13 Sep 2017 07:36:00 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 07:36:00 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Wed, 13 Sep 2017 07:36:01 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 07:36:01 GMT
USER [plone]
# Wed, 13 Sep 2017 07:36:01 GMT
WORKDIR /plone/instance
# Wed, 13 Sep 2017 07:36:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 07:36:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7a7b70fcb3352cd7d0533a059fd80520101885006f0f9c32b2541bc125e1bf`  
		Last Modified: Wed, 13 Sep 2017 07:39:52 GMT  
		Size: 4.2 KB (4200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dbeefbefabc3ee20e937b06ad237088b82fdcab1b4c49368daee912b77d00f`  
		Last Modified: Wed, 13 Sep 2017 07:40:56 GMT  
		Size: 196.3 MB (196295761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8073f4bb60c4181f538b1e34b1b3d34f0979c32884db4fffb69d8338fabbd481`  
		Last Modified: Wed, 13 Sep 2017 07:39:51 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:46b2bdb35f285f8acf830df4c745dc9e14495f67832dbf5f989158a8909767c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:5` - linux; amd64

```console
$ docker pull plone@sha256:f80cddafe9121df45da0206386ff23b37888145147822a1277ba112c67f11db0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269109953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8bf8dc9a87c02ad8eca779fe9c89b9eb97b38b51479303b05918b7a5812727`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Wed, 13 Sep 2017 07:31:18 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_MAJOR=5.0
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_VERSION=5.0.8
# Wed, 13 Sep 2017 07:31:19 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Wed, 13 Sep 2017 07:31:19 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 13 Sep 2017 07:35:59 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 13 Sep 2017 07:36:00 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 07:36:00 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Wed, 13 Sep 2017 07:36:01 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 07:36:01 GMT
USER [plone]
# Wed, 13 Sep 2017 07:36:01 GMT
WORKDIR /plone/instance
# Wed, 13 Sep 2017 07:36:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 07:36:01 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b7a7b70fcb3352cd7d0533a059fd80520101885006f0f9c32b2541bc125e1bf`  
		Last Modified: Wed, 13 Sep 2017 07:39:52 GMT  
		Size: 4.2 KB (4200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dbeefbefabc3ee20e937b06ad237088b82fdcab1b4c49368daee912b77d00f`  
		Last Modified: Wed, 13 Sep 2017 07:40:56 GMT  
		Size: 196.3 MB (196295761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8073f4bb60c4181f538b1e34b1b3d34f0979c32884db4fffb69d8338fabbd481`  
		Last Modified: Wed, 13 Sep 2017 07:39:51 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:0838166634abd3e4318f070df1ef6d7310ce33c29cc44450e88a9557e4d6b5bf
```

-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268716407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe90d8414e976728bffbb9bbef891cd9902059e4ac9e82443a26003afe49866b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Fri, 08 Sep 2017 09:16:47 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Fri, 08 Sep 2017 09:16:47 GMT
ENV PLONE_MAJOR=5.0
# Fri, 08 Sep 2017 09:16:48 GMT
ENV PLONE_VERSION=5.0.8
# Fri, 08 Sep 2017 09:16:48 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Fri, 08 Sep 2017 09:16:48 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Fri, 08 Sep 2017 09:21:08 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Fri, 08 Sep 2017 09:21:09 GMT
VOLUME [/data]
# Fri, 08 Sep 2017 09:21:10 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Fri, 08 Sep 2017 09:21:10 GMT
EXPOSE 8080/tcp
# Fri, 08 Sep 2017 09:21:11 GMT
USER [plone]
# Fri, 08 Sep 2017 09:21:11 GMT
WORKDIR /plone/instance
# Fri, 08 Sep 2017 09:21:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Sep 2017 09:21:12 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ed79d7150029954e8af4dc92fb69b550ba0e87584185ea52d2213a8a365118`  
		Last Modified: Sat, 09 Sep 2017 01:14:57 GMT  
		Size: 4.2 KB (4166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e8cfa70d781214ed20c0a04bcec843f01ef8f09155678c120d66869f99653a`  
		Last Modified: Sat, 09 Sep 2017 01:15:54 GMT  
		Size: 195.9 MB (195902248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f971201ee16fb8cd98192bbe742eb9afa8a5ce613e296edfb3d1e02a00e67a1`  
		Last Modified: Sat, 09 Sep 2017 01:14:57 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.15`

```console
$ docker pull plone@sha256:6d82fed637bc2ea9b5132a3deeeab16eddc605e78a9c1f2c81dc73baa41b75c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3.15` - linux; amd64

```console
$ docker pull plone@sha256:454cc2c672d40c17bab153c7e647fa981a05029176c5c4e2772d0d36819d9018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245980896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35abac574d6164b4f15a428d490a049ca51ac83fba5b0e3e3c20eecab089165`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Wed, 13 Sep 2017 07:36:02 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.15 PLONE_MD5=c3ce5488684d4204d64668de7977a1e2
# Wed, 13 Sep 2017 07:36:03 GMT
LABEL plone=4.3.15 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 13 Sep 2017 07:39:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 13 Sep 2017 07:39:31 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 07:39:31 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Wed, 13 Sep 2017 07:39:32 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 07:39:32 GMT
USER [plone]
# Wed, 13 Sep 2017 07:39:32 GMT
WORKDIR /plone/instance
# Wed, 13 Sep 2017 07:39:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 07:39:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c296c51c027df3ded632d681bd1971f9c7a6756b17b54683a34302f8109decc`  
		Last Modified: Wed, 13 Sep 2017 07:41:38 GMT  
		Size: 173.2 MB (173170903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6351f30a03aad3e0691e0474ed941c082fbcbe837e359058581ebcf7c5adebc4`  
		Last Modified: Wed, 13 Sep 2017 07:41:13 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:6d82fed637bc2ea9b5132a3deeeab16eddc605e78a9c1f2c81dc73baa41b75c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4.3` - linux; amd64

```console
$ docker pull plone@sha256:454cc2c672d40c17bab153c7e647fa981a05029176c5c4e2772d0d36819d9018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245980896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35abac574d6164b4f15a428d490a049ca51ac83fba5b0e3e3c20eecab089165`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Wed, 13 Sep 2017 07:36:02 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.15 PLONE_MD5=c3ce5488684d4204d64668de7977a1e2
# Wed, 13 Sep 2017 07:36:03 GMT
LABEL plone=4.3.15 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 13 Sep 2017 07:39:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 13 Sep 2017 07:39:31 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 07:39:31 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Wed, 13 Sep 2017 07:39:32 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 07:39:32 GMT
USER [plone]
# Wed, 13 Sep 2017 07:39:32 GMT
WORKDIR /plone/instance
# Wed, 13 Sep 2017 07:39:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 07:39:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c296c51c027df3ded632d681bd1971f9c7a6756b17b54683a34302f8109decc`  
		Last Modified: Wed, 13 Sep 2017 07:41:38 GMT  
		Size: 173.2 MB (173170903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6351f30a03aad3e0691e0474ed941c082fbcbe837e359058581ebcf7c5adebc4`  
		Last Modified: Wed, 13 Sep 2017 07:41:13 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4`

```console
$ docker pull plone@sha256:6d82fed637bc2ea9b5132a3deeeab16eddc605e78a9c1f2c81dc73baa41b75c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `plone:4` - linux; amd64

```console
$ docker pull plone@sha256:454cc2c672d40c17bab153c7e647fa981a05029176c5c4e2772d0d36819d9018
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245980896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e35abac574d6164b4f15a428d490a049ca51ac83fba5b0e3e3c20eecab089165`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Thu, 07 Sep 2017 23:04:40 GMT
ADD file:d7333b3e0bc6479d2faed32e06d85f1975e5b23e13e75555aeed0f639770413b in / 
# Thu, 07 Sep 2017 23:04:41 GMT
CMD ["bash"]
# Fri, 08 Sep 2017 06:17:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Sep 2017 06:17:00 GMT
ENV LANG=C.UTF-8
# Fri, 08 Sep 2017 07:17:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 08 Sep 2017 07:17:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Sep 2017 07:17:51 GMT
ENV PYTHON_VERSION=2.7.13
# Fri, 08 Sep 2017 07:20:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 08 Sep 2017 07:20:35 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 08 Sep 2017 07:20:59 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 08 Sep 2017 07:20:59 GMT
CMD ["python2"]
# Wed, 13 Sep 2017 07:36:02 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.15 PLONE_MD5=c3ce5488684d4204d64668de7977a1e2
# Wed, 13 Sep 2017 07:36:03 GMT
LABEL plone=4.3.15 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Wed, 13 Sep 2017 07:39:30 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 13 Sep 2017 07:39:31 GMT
VOLUME [/data]
# Wed, 13 Sep 2017 07:39:31 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Wed, 13 Sep 2017 07:39:32 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 07:39:32 GMT
USER [plone]
# Wed, 13 Sep 2017 07:39:32 GMT
WORKDIR /plone/instance
# Wed, 13 Sep 2017 07:39:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 13 Sep 2017 07:39:33 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:aa18ad1a0d334d80981104c599fa8cef9264552a265b1197af11274beba767cf`  
		Last Modified: Thu, 07 Sep 2017 23:11:06 GMT  
		Size: 52.6 MB (52595547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d41097fd299b1b0be51a290ec7959f8e2d3e318057f2a572d44c6fde35b1f`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 3.5 MB (3472941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4c9a08866e171fef10a7186b54cf97d6a80e6484db271a7bfa6c7f376db811`  
		Last Modified: Fri, 08 Sep 2017 07:36:18 GMT  
		Size: 15.0 MB (15000825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a45081af06179a363252593e789261bb862466b2fd6f267002788b2a5456bf`  
		Last Modified: Fri, 08 Sep 2017 07:36:14 GMT  
		Size: 1.7 MB (1738449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c296c51c027df3ded632d681bd1971f9c7a6756b17b54683a34302f8109decc`  
		Last Modified: Wed, 13 Sep 2017 07:41:38 GMT  
		Size: 173.2 MB (173170903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6351f30a03aad3e0691e0474ed941c082fbcbe837e359058581ebcf7c5adebc4`  
		Last Modified: Wed, 13 Sep 2017 07:41:13 GMT  
		Size: 2.2 KB (2231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
