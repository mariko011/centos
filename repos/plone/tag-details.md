<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:5.0.6`](#plone506)
-	[`plone:5.0`](#plone50)
-	[`plone:5`](#plone5)
-	[`plone:latest`](#plonelatest)
-	[`plone:4.3.11`](#plone4311)
-	[`plone:4.3`](#plone43)
-	[`plone:4`](#plone4)

## `plone:5.0.6`

```console
$ docker pull plone@sha256:d2376c9a4858dc9485ed4de22f0d5daeff1b3fe8fcb1d0d325865cec673d5ec8
```

-	Platforms:
	-	linux; amd64

### `plone:5.0.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141358873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:748d6e45c0f900569c483979b14955b29c96124525211b3ff783a821719bbb16`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Thu, 10 Nov 2016 08:02:18 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Thu, 10 Nov 2016 08:02:19 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Thu, 10 Nov 2016 08:07:55 GMT
ENV PLONE_MAJOR=5.0
# Thu, 10 Nov 2016 08:07:56 GMT
ENV PLONE_VERSION=5.0.6
# Thu, 10 Nov 2016 08:07:56 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Thu, 10 Nov 2016 08:12:08 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 10 Nov 2016 08:12:09 GMT
VOLUME [/data]
# Thu, 10 Nov 2016 08:12:10 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 10 Nov 2016 08:12:11 GMT
EXPOSE 8080/tcp
# Thu, 10 Nov 2016 08:12:11 GMT
USER [plone]
# Thu, 10 Nov 2016 08:12:12 GMT
WORKDIR /plone/instance
# Thu, 10 Nov 2016 08:12:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 Nov 2016 08:12:13 GMT
CMD ["start"]
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
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe26bfc1f5363dff2e803fe981eb2186bfeda803b224d57583eb66823df197`  
		Last Modified: Thu, 10 Nov 2016 08:06:53 GMT  
		Size: 2.0 KB (1961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2e3528df18ecf571e3598d213591c57cb8395136e54f9aacc8d114e9dfae05`  
		Last Modified: Thu, 10 Nov 2016 08:12:46 GMT  
		Size: 70.4 MB (70351578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72ba382d928be5054da9ffe932120fd2ea3c4356558d93b53b96709d26d541a`  
		Last Modified: Thu, 10 Nov 2016 08:12:25 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0`

```console
$ docker pull plone@sha256:887052481217395efe4866555768b55fd0168e03456bbd3848a2402c8182135f
```

-	Platforms:
	-	linux; amd64

### `plone:5.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141411961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a852ead6d33f511f2c03fb583cf4a7ae17867b3bb603a4a9110e43d2cd5c31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Fri, 18 Nov 2016 01:59:58 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Fri, 18 Nov 2016 01:59:59 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_MAJOR=5.0
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_VERSION=5.0.6
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Fri, 18 Nov 2016 02:11:12 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Fri, 18 Nov 2016 02:11:13 GMT
VOLUME [/data]
# Fri, 18 Nov 2016 02:11:14 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Fri, 18 Nov 2016 02:11:15 GMT
EXPOSE 8080/tcp
# Fri, 18 Nov 2016 02:11:15 GMT
USER [plone]
# Fri, 18 Nov 2016 02:11:15 GMT
WORKDIR /plone/instance
# Fri, 18 Nov 2016 02:11:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:11:17 GMT
CMD ["start"]
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
	-	`sha256:6fc7a3e91fa7f6d8b5da95ddbedd1ad956e7dcf8739f6ab7db26a2731ddd387a`  
		Last Modified: Fri, 18 Nov 2016 02:11:30 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fda0d7f6ce4c16e1dae31d27a8673b95010d9aa36c39e180093e29e093f40`  
		Last Modified: Fri, 18 Nov 2016 02:12:56 GMT  
		Size: 70.4 MB (70352010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b57b8886c592b66518f9c2697e1a55e52a367a22d5c2bfd1b41c4e6a9fcb30`  
		Last Modified: Fri, 18 Nov 2016 02:12:35 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:887052481217395efe4866555768b55fd0168e03456bbd3848a2402c8182135f
```

-	Platforms:
	-	linux; amd64

### `plone:5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141411961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a852ead6d33f511f2c03fb583cf4a7ae17867b3bb603a4a9110e43d2cd5c31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Fri, 18 Nov 2016 01:59:58 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Fri, 18 Nov 2016 01:59:59 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_MAJOR=5.0
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_VERSION=5.0.6
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Fri, 18 Nov 2016 02:11:12 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Fri, 18 Nov 2016 02:11:13 GMT
VOLUME [/data]
# Fri, 18 Nov 2016 02:11:14 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Fri, 18 Nov 2016 02:11:15 GMT
EXPOSE 8080/tcp
# Fri, 18 Nov 2016 02:11:15 GMT
USER [plone]
# Fri, 18 Nov 2016 02:11:15 GMT
WORKDIR /plone/instance
# Fri, 18 Nov 2016 02:11:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:11:17 GMT
CMD ["start"]
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
	-	`sha256:6fc7a3e91fa7f6d8b5da95ddbedd1ad956e7dcf8739f6ab7db26a2731ddd387a`  
		Last Modified: Fri, 18 Nov 2016 02:11:30 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fda0d7f6ce4c16e1dae31d27a8673b95010d9aa36c39e180093e29e093f40`  
		Last Modified: Fri, 18 Nov 2016 02:12:56 GMT  
		Size: 70.4 MB (70352010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b57b8886c592b66518f9c2697e1a55e52a367a22d5c2bfd1b41c4e6a9fcb30`  
		Last Modified: Fri, 18 Nov 2016 02:12:35 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:887052481217395efe4866555768b55fd0168e03456bbd3848a2402c8182135f
```

-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141411961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a852ead6d33f511f2c03fb583cf4a7ae17867b3bb603a4a9110e43d2cd5c31`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Fri, 18 Nov 2016 01:59:58 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Fri, 18 Nov 2016 01:59:59 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_MAJOR=5.0
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_VERSION=5.0.6
# Fri, 18 Nov 2016 02:03:56 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Fri, 18 Nov 2016 02:11:12 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Fri, 18 Nov 2016 02:11:13 GMT
VOLUME [/data]
# Fri, 18 Nov 2016 02:11:14 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Fri, 18 Nov 2016 02:11:15 GMT
EXPOSE 8080/tcp
# Fri, 18 Nov 2016 02:11:15 GMT
USER [plone]
# Fri, 18 Nov 2016 02:11:15 GMT
WORKDIR /plone/instance
# Fri, 18 Nov 2016 02:11:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:11:17 GMT
CMD ["start"]
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
	-	`sha256:6fc7a3e91fa7f6d8b5da95ddbedd1ad956e7dcf8739f6ab7db26a2731ddd387a`  
		Last Modified: Fri, 18 Nov 2016 02:11:30 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9fda0d7f6ce4c16e1dae31d27a8673b95010d9aa36c39e180093e29e093f40`  
		Last Modified: Fri, 18 Nov 2016 02:12:56 GMT  
		Size: 70.4 MB (70352010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b57b8886c592b66518f9c2697e1a55e52a367a22d5c2bfd1b41c4e6a9fcb30`  
		Last Modified: Fri, 18 Nov 2016 02:12:35 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.11`

```console
$ docker pull plone@sha256:1981586daeb5bac690b6a35906b7eaa8b430b7b645937d34c52413afe7e59f71
```

-	Platforms:
	-	linux; amd64

### `plone:4.3.11` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116389555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c74a96857c13295790b170814e49049a2cdbe6a01ae143571fb65a950af358`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Fri, 18 Nov 2016 01:59:58 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Fri, 18 Nov 2016 01:59:59 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Fri, 18 Nov 2016 02:00:00 GMT
ENV PLONE_MAJOR=4.3
# Fri, 18 Nov 2016 02:00:00 GMT
ENV PLONE_VERSION=4.3.11
# Fri, 18 Nov 2016 02:00:00 GMT
ENV PLONE_MD5=207cdf096869d11cee69339e95ace496
# Fri, 18 Nov 2016 02:03:49 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Fri, 18 Nov 2016 02:03:50 GMT
VOLUME [/data]
# Fri, 18 Nov 2016 02:03:51 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Fri, 18 Nov 2016 02:03:52 GMT
EXPOSE 8080/tcp
# Fri, 18 Nov 2016 02:03:53 GMT
USER [plone]
# Fri, 18 Nov 2016 02:03:54 GMT
WORKDIR /plone/instance
# Fri, 18 Nov 2016 02:03:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:03:55 GMT
CMD ["start"]
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
	-	`sha256:6fc7a3e91fa7f6d8b5da95ddbedd1ad956e7dcf8739f6ab7db26a2731ddd387a`  
		Last Modified: Fri, 18 Nov 2016 02:11:30 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58461e246b02b3fb2c70fc14575683129d629499ebbaded3c93ba6e8aaab0d86`  
		Last Modified: Fri, 18 Nov 2016 02:11:47 GMT  
		Size: 45.3 MB (45329603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703080e475de4ffed47db8b8cd992a15a7665c8527509345e0a5238fd336fda2`  
		Last Modified: Fri, 18 Nov 2016 02:11:31 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:34cadb943af7562169bfe54ee231ac3d1f2dc16747e884a094b20dc1bf1954ce
```

-	Platforms:
	-	linux; amd64

### `plone:4.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116335498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5540f810f90ad0db72f4f36d3b5b9c169e1c72267dce07ef23d5fc72e4d6ef86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 09 Nov 2016 00:28:16 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:30:23 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:30:24 GMT
CMD ["python2"]
# Thu, 10 Nov 2016 08:02:18 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Thu, 10 Nov 2016 08:02:19 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Thu, 10 Nov 2016 08:02:20 GMT
ENV PLONE_MAJOR=4.3
# Thu, 10 Nov 2016 08:02:20 GMT
ENV PLONE_VERSION=4.3.11
# Thu, 10 Nov 2016 08:02:21 GMT
ENV PLONE_MD5=207cdf096869d11cee69339e95ace496
# Thu, 10 Nov 2016 08:06:34 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 10 Nov 2016 08:06:35 GMT
VOLUME [/data]
# Thu, 10 Nov 2016 08:06:36 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 10 Nov 2016 08:06:37 GMT
EXPOSE 8080/tcp
# Thu, 10 Nov 2016 08:06:37 GMT
USER [plone]
# Thu, 10 Nov 2016 08:06:38 GMT
WORKDIR /plone/instance
# Thu, 10 Nov 2016 08:06:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 10 Nov 2016 08:06:40 GMT
CMD ["start"]
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
	-	`sha256:5ef684eeebe561aaccea1392198c2e5c15798187d8e5e907ed29ec69509b62f4`  
		Last Modified: Wed, 09 Nov 2016 00:30:41 GMT  
		Size: 16.3 MB (16307510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe26bfc1f5363dff2e803fe981eb2186bfeda803b224d57583eb66823df197`  
		Last Modified: Thu, 10 Nov 2016 08:06:53 GMT  
		Size: 2.0 KB (1961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c5c56a175f55a7bf148f48a154d5c7b6dd82ece9fb6e32c2c5c9d19c61f971`  
		Last Modified: Thu, 10 Nov 2016 08:07:21 GMT  
		Size: 45.3 MB (45328204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd40cc82639882af3f34b6d575f417f51363a6ce19c7de19bac896e209b2300d`  
		Last Modified: Thu, 10 Nov 2016 08:06:53 GMT  
		Size: 2.2 KB (2218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4`

```console
$ docker pull plone@sha256:1981586daeb5bac690b6a35906b7eaa8b430b7b645937d34c52413afe7e59f71
```

-	Platforms:
	-	linux; amd64

### `plone:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.4 MB (116389555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c74a96857c13295790b170814e49049a2cdbe6a01ae143571fb65a950af358`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Fri, 18 Nov 2016 01:59:58 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Fri, 18 Nov 2016 01:59:59 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Fri, 18 Nov 2016 02:00:00 GMT
ENV PLONE_MAJOR=4.3
# Fri, 18 Nov 2016 02:00:00 GMT
ENV PLONE_VERSION=4.3.11
# Fri, 18 Nov 2016 02:00:00 GMT
ENV PLONE_MD5=207cdf096869d11cee69339e95ace496
# Fri, 18 Nov 2016 02:03:49 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Fri, 18 Nov 2016 02:03:50 GMT
VOLUME [/data]
# Fri, 18 Nov 2016 02:03:51 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Fri, 18 Nov 2016 02:03:52 GMT
EXPOSE 8080/tcp
# Fri, 18 Nov 2016 02:03:53 GMT
USER [plone]
# Fri, 18 Nov 2016 02:03:54 GMT
WORKDIR /plone/instance
# Fri, 18 Nov 2016 02:03:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 18 Nov 2016 02:03:55 GMT
CMD ["start"]
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
	-	`sha256:6fc7a3e91fa7f6d8b5da95ddbedd1ad956e7dcf8739f6ab7db26a2731ddd387a`  
		Last Modified: Fri, 18 Nov 2016 02:11:30 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58461e246b02b3fb2c70fc14575683129d629499ebbaded3c93ba6e8aaab0d86`  
		Last Modified: Fri, 18 Nov 2016 02:11:47 GMT  
		Size: 45.3 MB (45329603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703080e475de4ffed47db8b8cd992a15a7665c8527509345e0a5238fd336fda2`  
		Last Modified: Fri, 18 Nov 2016 02:11:31 GMT  
		Size: 2.2 KB (2220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
