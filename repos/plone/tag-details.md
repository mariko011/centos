<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `plone`

-	[`plone:5.0.7`](#plone507)
-	[`plone:5.0`](#plone50)
-	[`plone:5`](#plone5)
-	[`plone:latest`](#plonelatest)
-	[`plone:4.3.14`](#plone4314)
-	[`plone:4.3`](#plone43)
-	[`plone:4`](#plone4)

## `plone:5.0.7`

```console
$ docker pull plone@sha256:d7d36c24d969776e5762e2b2453d8c62ad47b5db52b287af5871a4e354b7c857
```

-	Platforms:
	-	linux; amd64

### `plone:5.0.7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141447346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0ac1ce5363b01c8831fcee9f42f4ab6b168cb0708ff1118f0f69a170a80ea7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 08 Jun 2017 22:31:29 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Thu, 08 Jun 2017 22:31:31 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_MAJOR=5.0
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_VERSION=5.0.7
# Thu, 08 Jun 2017 22:31:54 GMT
ENV PLONE_MD5=347e787d10a6a02d8156ed8c05effcdb
# Thu, 08 Jun 2017 22:31:55 GMT
LABEL plone.version=5.0.7
# Thu, 08 Jun 2017 22:31:56 GMT
LABEL os=debian os.version=8
# Thu, 08 Jun 2017 22:36:46 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 08 Jun 2017 22:36:52 GMT
VOLUME [/data]
# Thu, 08 Jun 2017 22:36:54 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 08 Jun 2017 22:37:16 GMT
EXPOSE 8080/tcp
# Thu, 08 Jun 2017 22:37:17 GMT
USER [plone]
# Thu, 08 Jun 2017 22:37:18 GMT
WORKDIR /plone/instance
# Thu, 08 Jun 2017 22:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:37:20 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f48823a3b9e2a7ab42d8dcb0a5fdeec7b90e429ee57c4d7bc2785aaef6511`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666c848ed9b0f449871207b9d70abc9f158ad109d473555df8b4d2a1132b16d`  
		Last Modified: Thu, 08 Jun 2017 22:44:35 GMT  
		Size: 68.7 MB (68665023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af57b2714be1dedc5680101e619ab7c5bd7a40458cc5c4751a1e99417fb04fb`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5.0`

```console
$ docker pull plone@sha256:d7d36c24d969776e5762e2b2453d8c62ad47b5db52b287af5871a4e354b7c857
```

-	Platforms:
	-	linux; amd64

### `plone:5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141447346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0ac1ce5363b01c8831fcee9f42f4ab6b168cb0708ff1118f0f69a170a80ea7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 08 Jun 2017 22:31:29 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Thu, 08 Jun 2017 22:31:31 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_MAJOR=5.0
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_VERSION=5.0.7
# Thu, 08 Jun 2017 22:31:54 GMT
ENV PLONE_MD5=347e787d10a6a02d8156ed8c05effcdb
# Thu, 08 Jun 2017 22:31:55 GMT
LABEL plone.version=5.0.7
# Thu, 08 Jun 2017 22:31:56 GMT
LABEL os=debian os.version=8
# Thu, 08 Jun 2017 22:36:46 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 08 Jun 2017 22:36:52 GMT
VOLUME [/data]
# Thu, 08 Jun 2017 22:36:54 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 08 Jun 2017 22:37:16 GMT
EXPOSE 8080/tcp
# Thu, 08 Jun 2017 22:37:17 GMT
USER [plone]
# Thu, 08 Jun 2017 22:37:18 GMT
WORKDIR /plone/instance
# Thu, 08 Jun 2017 22:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:37:20 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f48823a3b9e2a7ab42d8dcb0a5fdeec7b90e429ee57c4d7bc2785aaef6511`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666c848ed9b0f449871207b9d70abc9f158ad109d473555df8b4d2a1132b16d`  
		Last Modified: Thu, 08 Jun 2017 22:44:35 GMT  
		Size: 68.7 MB (68665023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af57b2714be1dedc5680101e619ab7c5bd7a40458cc5c4751a1e99417fb04fb`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:5`

```console
$ docker pull plone@sha256:d7d36c24d969776e5762e2b2453d8c62ad47b5db52b287af5871a4e354b7c857
```

-	Platforms:
	-	linux; amd64

### `plone:5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141447346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0ac1ce5363b01c8831fcee9f42f4ab6b168cb0708ff1118f0f69a170a80ea7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 08 Jun 2017 22:31:29 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Thu, 08 Jun 2017 22:31:31 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_MAJOR=5.0
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_VERSION=5.0.7
# Thu, 08 Jun 2017 22:31:54 GMT
ENV PLONE_MD5=347e787d10a6a02d8156ed8c05effcdb
# Thu, 08 Jun 2017 22:31:55 GMT
LABEL plone.version=5.0.7
# Thu, 08 Jun 2017 22:31:56 GMT
LABEL os=debian os.version=8
# Thu, 08 Jun 2017 22:36:46 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 08 Jun 2017 22:36:52 GMT
VOLUME [/data]
# Thu, 08 Jun 2017 22:36:54 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 08 Jun 2017 22:37:16 GMT
EXPOSE 8080/tcp
# Thu, 08 Jun 2017 22:37:17 GMT
USER [plone]
# Thu, 08 Jun 2017 22:37:18 GMT
WORKDIR /plone/instance
# Thu, 08 Jun 2017 22:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:37:20 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f48823a3b9e2a7ab42d8dcb0a5fdeec7b90e429ee57c4d7bc2785aaef6511`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666c848ed9b0f449871207b9d70abc9f158ad109d473555df8b4d2a1132b16d`  
		Last Modified: Thu, 08 Jun 2017 22:44:35 GMT  
		Size: 68.7 MB (68665023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af57b2714be1dedc5680101e619ab7c5bd7a40458cc5c4751a1e99417fb04fb`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:latest`

```console
$ docker pull plone@sha256:d7d36c24d969776e5762e2b2453d8c62ad47b5db52b287af5871a4e354b7c857
```

-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141447346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0ac1ce5363b01c8831fcee9f42f4ab6b168cb0708ff1118f0f69a170a80ea7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 08 Jun 2017 22:31:29 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Thu, 08 Jun 2017 22:31:31 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_MAJOR=5.0
# Thu, 08 Jun 2017 22:31:53 GMT
ENV PLONE_VERSION=5.0.7
# Thu, 08 Jun 2017 22:31:54 GMT
ENV PLONE_MD5=347e787d10a6a02d8156ed8c05effcdb
# Thu, 08 Jun 2017 22:31:55 GMT
LABEL plone.version=5.0.7
# Thu, 08 Jun 2017 22:31:56 GMT
LABEL os=debian os.version=8
# Thu, 08 Jun 2017 22:36:46 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 08 Jun 2017 22:36:52 GMT
VOLUME [/data]
# Thu, 08 Jun 2017 22:36:54 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 08 Jun 2017 22:37:16 GMT
EXPOSE 8080/tcp
# Thu, 08 Jun 2017 22:37:17 GMT
USER [plone]
# Thu, 08 Jun 2017 22:37:18 GMT
WORKDIR /plone/instance
# Thu, 08 Jun 2017 22:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:37:20 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f48823a3b9e2a7ab42d8dcb0a5fdeec7b90e429ee57c4d7bc2785aaef6511`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.0 KB (1980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f666c848ed9b0f449871207b9d70abc9f158ad109d473555df8b4d2a1132b16d`  
		Last Modified: Thu, 08 Jun 2017 22:44:35 GMT  
		Size: 68.7 MB (68665023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af57b2714be1dedc5680101e619ab7c5bd7a40458cc5c4751a1e99417fb04fb`  
		Last Modified: Thu, 08 Jun 2017 22:44:04 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3.14`

```console
$ docker pull plone@sha256:779caa1f9323f1def515f656cfaf30614ffe7d8c5604c28577c61a98ce735073
```

-	Platforms:
	-	linux; amd64

### `plone:4.3.14` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245606813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8240ae5d4cb20e1d6a6141961eed86ddb7a75f362ccda660cb2777a6038bf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 08 Jun 2017 22:38:05 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.14 PLONE_MD5=e10c55a870735b90e7a82c2f2a39d123
# Thu, 08 Jun 2017 22:38:06 GMT
LABEL plone=4.3.14 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 08 Jun 2017 22:42:03 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 08 Jun 2017 22:42:20 GMT
VOLUME [/data]
# Thu, 08 Jun 2017 22:43:05 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 08 Jun 2017 22:43:30 GMT
EXPOSE 8080/tcp
# Thu, 08 Jun 2017 22:43:32 GMT
USER [plone]
# Thu, 08 Jun 2017 22:43:33 GMT
WORKDIR /plone/instance
# Thu, 08 Jun 2017 22:43:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:43:36 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898cc13fe6e6f9535902593424af4a3d4262aaca6a2a194d4132988353784c35`  
		Last Modified: Thu, 08 Jun 2017 22:49:16 GMT  
		Size: 172.8 MB (172826470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9669e40a425d1df778b846c025100147a3b81a4b4f366ed1a29c57f15fa38`  
		Last Modified: Thu, 08 Jun 2017 22:48:17 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4.3`

```console
$ docker pull plone@sha256:779caa1f9323f1def515f656cfaf30614ffe7d8c5604c28577c61a98ce735073
```

-	Platforms:
	-	linux; amd64

### `plone:4.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245606813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8240ae5d4cb20e1d6a6141961eed86ddb7a75f362ccda660cb2777a6038bf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 08 Jun 2017 22:38:05 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.14 PLONE_MD5=e10c55a870735b90e7a82c2f2a39d123
# Thu, 08 Jun 2017 22:38:06 GMT
LABEL plone=4.3.14 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 08 Jun 2017 22:42:03 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 08 Jun 2017 22:42:20 GMT
VOLUME [/data]
# Thu, 08 Jun 2017 22:43:05 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 08 Jun 2017 22:43:30 GMT
EXPOSE 8080/tcp
# Thu, 08 Jun 2017 22:43:32 GMT
USER [plone]
# Thu, 08 Jun 2017 22:43:33 GMT
WORKDIR /plone/instance
# Thu, 08 Jun 2017 22:43:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:43:36 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898cc13fe6e6f9535902593424af4a3d4262aaca6a2a194d4132988353784c35`  
		Last Modified: Thu, 08 Jun 2017 22:49:16 GMT  
		Size: 172.8 MB (172826470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9669e40a425d1df778b846c025100147a3b81a4b4f366ed1a29c57f15fa38`  
		Last Modified: Thu, 08 Jun 2017 22:48:17 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `plone:4`

```console
$ docker pull plone@sha256:779caa1f9323f1def515f656cfaf30614ffe7d8c5604c28577c61a98ce735073
```

-	Platforms:
	-	linux; amd64

### `plone:4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245606813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8240ae5d4cb20e1d6a6141961eed86ddb7a75f362ccda660cb2777a6038bf6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 08 Jun 2017 22:38:05 GMT
ENV PLONE_MAJOR=4.3 PLONE_VERSION=4.3.14 PLONE_MD5=e10c55a870735b90e7a82c2f2a39d123
# Thu, 08 Jun 2017 22:38:06 GMT
LABEL plone=4.3.14 os=debian os.version=8 name=Plone 4 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 08 Jun 2017 22:42:03 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data  && buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 08 Jun 2017 22:42:20 GMT
VOLUME [/data]
# Thu, 08 Jun 2017 22:43:05 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 08 Jun 2017 22:43:30 GMT
EXPOSE 8080/tcp
# Thu, 08 Jun 2017 22:43:32 GMT
USER [plone]
# Thu, 08 Jun 2017 22:43:33 GMT
WORKDIR /plone/instance
# Thu, 08 Jun 2017 22:43:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 08 Jun 2017 22:43:36 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898cc13fe6e6f9535902593424af4a3d4262aaca6a2a194d4132988353784c35`  
		Last Modified: Thu, 08 Jun 2017 22:49:16 GMT  
		Size: 172.8 MB (172826470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81a9669e40a425d1df778b846c025100147a3b81a4b4f366ed1a29c57f15fa38`  
		Last Modified: Thu, 08 Jun 2017 22:48:17 GMT  
		Size: 2.2 KB (2230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
