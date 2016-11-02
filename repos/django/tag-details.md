<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `django`

-	[`django:1.10.3-python3`](#django1103-python3)
-	[`django:1.10-python3`](#django110-python3)
-	[`django:1-python3`](#django1-python3)
-	[`django:python3`](#djangopython3)
-	[`django:1.10.3`](#django1103)
-	[`django:1.10`](#django110)
-	[`django:1`](#django1)
-	[`django:latest`](#djangolatest)
-	[`django:python3-onbuild`](#djangopython3-onbuild)
-	[`django:onbuild`](#djangoonbuild)
-	[`django:1.10.3-python2`](#django1103-python2)
-	[`django:1.10-python2`](#django110-python2)
-	[`django:1-python2`](#django1-python2)
-	[`django:python2`](#djangopython2)
-	[`django:python2-onbuild`](#djangopython2-onbuild)

## `django:1.10.3-python3`

```console
$ docker pull django@sha256:46b7f2ef31131c07fde62405b6a2157bb504030a6856840656492dc6aa82052c
```

-	Platforms:
	-	linux; amd64

### `django:1.10.3-python3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157934907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea3a5940491d8741d6cf29dd87bca0ed95e38a97a7f5a78d352cc4a127469e6`
-	Default Command: `["python3"]`

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
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 23:23:35 GMT
ENV DJANGO_VERSION=1.10.3
# Tue, 01 Nov 2016 23:24:00 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e6bb67cb2ca3b61b898f320398919fe341053e31746818c5b1388b9baf5378`  
		Last Modified: Tue, 01 Nov 2016 23:24:36 GMT  
		Size: 15.4 MB (15380572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10-python3`

```console
$ docker pull django@sha256:a605f025fec7eff832060ccdfbed3c1f7bd86b4f8fa10f480bed2efceafb9031
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157929492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1a20c299e5b941bf59fa2834c816973ec357186828fdedd5e43fcc4b85c76`
-	Default Command: `["python3"]`

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
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:32:06 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:32:26 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc10d0d12c4fcee20354a7553936c054d25367fd3eee7ba95bd6588b635922b7`  
		Last Modified: Tue, 01 Nov 2016 01:32:42 GMT  
		Size: 15.4 MB (15375157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python3`

```console
$ docker pull django@sha256:a605f025fec7eff832060ccdfbed3c1f7bd86b4f8fa10f480bed2efceafb9031
```

-	Platforms:
	-	linux; amd64

### `django:1-python3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157929492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1a20c299e5b941bf59fa2834c816973ec357186828fdedd5e43fcc4b85c76`
-	Default Command: `["python3"]`

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
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:32:06 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:32:26 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc10d0d12c4fcee20354a7553936c054d25367fd3eee7ba95bd6588b635922b7`  
		Last Modified: Tue, 01 Nov 2016 01:32:42 GMT  
		Size: 15.4 MB (15375157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3`

```console
$ docker pull django@sha256:a605f025fec7eff832060ccdfbed3c1f7bd86b4f8fa10f480bed2efceafb9031
```

-	Platforms:
	-	linux; amd64

### `django:python3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157929492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1a20c299e5b941bf59fa2834c816973ec357186828fdedd5e43fcc4b85c76`
-	Default Command: `["python3"]`

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
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:32:06 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:32:26 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc10d0d12c4fcee20354a7553936c054d25367fd3eee7ba95bd6588b635922b7`  
		Last Modified: Tue, 01 Nov 2016 01:32:42 GMT  
		Size: 15.4 MB (15375157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10.3`

**does not exist** (yet?)

## `django:1.10`

```console
$ docker pull django@sha256:46b7f2ef31131c07fde62405b6a2157bb504030a6856840656492dc6aa82052c
```

-	Platforms:
	-	linux; amd64

### `django:1.10` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157934907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea3a5940491d8741d6cf29dd87bca0ed95e38a97a7f5a78d352cc4a127469e6`
-	Default Command: `["python3"]`

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
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 23:23:35 GMT
ENV DJANGO_VERSION=1.10.3
# Tue, 01 Nov 2016 23:24:00 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e6bb67cb2ca3b61b898f320398919fe341053e31746818c5b1388b9baf5378`  
		Last Modified: Tue, 01 Nov 2016 23:24:36 GMT  
		Size: 15.4 MB (15380572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1`

```console
$ docker pull django@sha256:a605f025fec7eff832060ccdfbed3c1f7bd86b4f8fa10f480bed2efceafb9031
```

-	Platforms:
	-	linux; amd64

### `django:1` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157929492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1a20c299e5b941bf59fa2834c816973ec357186828fdedd5e43fcc4b85c76`
-	Default Command: `["python3"]`

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
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:32:06 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:32:26 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc10d0d12c4fcee20354a7553936c054d25367fd3eee7ba95bd6588b635922b7`  
		Last Modified: Tue, 01 Nov 2016 01:32:42 GMT  
		Size: 15.4 MB (15375157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:latest`

```console
$ docker pull django@sha256:a605f025fec7eff832060ccdfbed3c1f7bd86b4f8fa10f480bed2efceafb9031
```

-	Platforms:
	-	linux; amd64

### `django:latest` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157929492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1a20c299e5b941bf59fa2834c816973ec357186828fdedd5e43fcc4b85c76`
-	Default Command: `["python3"]`

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
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:32:06 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:32:26 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc10d0d12c4fcee20354a7553936c054d25367fd3eee7ba95bd6588b635922b7`  
		Last Modified: Tue, 01 Nov 2016 01:32:42 GMT  
		Size: 15.4 MB (15375157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3-onbuild`

```console
$ docker pull django@sha256:996493ed3d4f429eb1ba41cf0ec3b068555d9b0756cda2484f2b341ea0580ca8
```

-	Platforms:
	-	linux; amd64

### `django:python3-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280617210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1674c2b3758040e13b8029b96ddc0e1999f80912513dd632407c864fb0479347`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:46:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:46:58 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:01:09 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:01:09 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:01:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:03:01 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:03:02 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:03:03 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 00:09:13 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 00:09:13 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 00:09:14 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 01 Nov 2016 00:09:14 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Tue, 01 Nov 2016 00:09:14 GMT
ONBUILD COPY . /usr/src/app
# Tue, 01 Nov 2016 01:36:33 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:36:33 GMT
EXPOSE 8000/tcp
# Tue, 01 Nov 2016 01:36:34 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd9291f3483a3992c1acaff27e767677b57bd191c8863a8e18368a0fbfbc593`  
		Last Modified: Tue, 01 Nov 2016 00:21:50 GMT  
		Size: 2.9 MB (2888973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c22c3c2c407d766297ef8c0160bf3a424c39ce0581ea068e7faeaf93cfea778`  
		Last Modified: Tue, 01 Nov 2016 00:29:03 GMT  
		Size: 19.1 MB (19146341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ffa58ff52eea08302d4059078111a106846ad3bf36990ce87cc4640f3b965a`  
		Last Modified: Tue, 01 Nov 2016 00:28:56 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5ae9fda03129944bf95bb4eae61f0f8bee5c75d323a08092ca8cf33c855134`  
		Last Modified: Tue, 01 Nov 2016 00:31:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a72d5a7523eebc2a4167b55108a14537819829461b568a2334a8fda9c329f5`  
		Last Modified: Tue, 01 Nov 2016 01:39:33 GMT  
		Size: 16.4 MB (16379816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:onbuild`

```console
$ docker pull django@sha256:996493ed3d4f429eb1ba41cf0ec3b068555d9b0756cda2484f2b341ea0580ca8
```

-	Platforms:
	-	linux; amd64

### `django:onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.6 MB (280617210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1674c2b3758040e13b8029b96ddc0e1999f80912513dd632407c864fb0479347`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:46:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:46:58 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:01:09 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:01:09 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:01:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:03:01 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:03:02 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:03:03 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 00:09:13 GMT
RUN mkdir -p /usr/src/app
# Tue, 01 Nov 2016 00:09:13 GMT
WORKDIR /usr/src/app
# Tue, 01 Nov 2016 00:09:14 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 01 Nov 2016 00:09:14 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Tue, 01 Nov 2016 00:09:14 GMT
ONBUILD COPY . /usr/src/app
# Tue, 01 Nov 2016 01:36:33 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:36:33 GMT
EXPOSE 8000/tcp
# Tue, 01 Nov 2016 01:36:34 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd9291f3483a3992c1acaff27e767677b57bd191c8863a8e18368a0fbfbc593`  
		Last Modified: Tue, 01 Nov 2016 00:21:50 GMT  
		Size: 2.9 MB (2888973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c22c3c2c407d766297ef8c0160bf3a424c39ce0581ea068e7faeaf93cfea778`  
		Last Modified: Tue, 01 Nov 2016 00:29:03 GMT  
		Size: 19.1 MB (19146341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ffa58ff52eea08302d4059078111a106846ad3bf36990ce87cc4640f3b965a`  
		Last Modified: Tue, 01 Nov 2016 00:28:56 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5ae9fda03129944bf95bb4eae61f0f8bee5c75d323a08092ca8cf33c855134`  
		Last Modified: Tue, 01 Nov 2016 00:31:27 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a72d5a7523eebc2a4167b55108a14537819829461b568a2334a8fda9c329f5`  
		Last Modified: Tue, 01 Nov 2016 01:39:33 GMT  
		Size: 16.4 MB (16379816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10.3-python2`

**does not exist** (yet?)

## `django:1.10-python2`

```console
$ docker pull django@sha256:5ae6d5b6ea9bc9561dab975a699ad304f300448086663b034d8fbf48adb89cb8
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154693168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faaaa53700266abcd3f7453c95b92637a9f8f70efd340252cb2081496cd974a`
-	Default Command: `["python2"]`

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
# Tue, 01 Nov 2016 01:34:55 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:34:55 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:35:09 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:1958424e21a7efceab0892016aeca367db58e00d8d72874df96c938e65c89f07`  
		Last Modified: Tue, 01 Nov 2016 01:35:39 GMT  
		Size: 68.3 MB (68293699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86cc014f0bddbe6c763d30d039e0b12083a67b847dac8d00cde6227e73e2cadc`  
		Last Modified: Tue, 01 Nov 2016 01:35:24 GMT  
		Size: 15.4 MB (15400363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python2`

```console
$ docker pull django@sha256:5ae6d5b6ea9bc9561dab975a699ad304f300448086663b034d8fbf48adb89cb8
```

-	Platforms:
	-	linux; amd64

### `django:1-python2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154693168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faaaa53700266abcd3f7453c95b92637a9f8f70efd340252cb2081496cd974a`
-	Default Command: `["python2"]`

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
# Tue, 01 Nov 2016 01:34:55 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:34:55 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:35:09 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:1958424e21a7efceab0892016aeca367db58e00d8d72874df96c938e65c89f07`  
		Last Modified: Tue, 01 Nov 2016 01:35:39 GMT  
		Size: 68.3 MB (68293699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86cc014f0bddbe6c763d30d039e0b12083a67b847dac8d00cde6227e73e2cadc`  
		Last Modified: Tue, 01 Nov 2016 01:35:24 GMT  
		Size: 15.4 MB (15400363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2`

```console
$ docker pull django@sha256:1d5e0cb0d31fb15f72038e9cefed73a166db43be9ec5e93887f5281f8e35bddd
```

-	Platforms:
	-	linux; amd64

### `django:python2` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.7 MB (154695849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb6998135b1812faadd8d7d1990cf06a383534e13c896b8054406a3cc81e03d0`
-	Default Command: `["python2"]`

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
# Tue, 01 Nov 2016 01:34:55 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 23:24:02 GMT
ENV DJANGO_VERSION=1.10.3
# Tue, 01 Nov 2016 23:24:21 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:1958424e21a7efceab0892016aeca367db58e00d8d72874df96c938e65c89f07`  
		Last Modified: Tue, 01 Nov 2016 01:35:39 GMT  
		Size: 68.3 MB (68293699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d00a40cab13bd46d027d103b9d19dd243997629b5a7e06f2da3a89048895631`  
		Last Modified: Tue, 01 Nov 2016 23:26:49 GMT  
		Size: 15.4 MB (15403044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2-onbuild`

```console
$ docker pull django@sha256:0ceeec06338e9aac797ae6805a3ee8420e926aa0345d08c38cf30d8d1bfdb5c8
```

-	Platforms:
	-	linux; amd64

### `django:python2-onbuild` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.3 MB (282295851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f94ac341b1ce403ecf85adcf13ddd47703668daf5c16d6cde34d8b29045e802`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Oct 2016 16:36:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 21 Oct 2016 16:37:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 21:26:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:46:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Oct 2016 23:46:58 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Mon, 31 Oct 2016 23:47:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 31 Oct 2016 23:47:12 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 31 Oct 2016 23:47:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 31 Oct 2016 23:48:57 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 31 Oct 2016 23:48:59 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 31 Oct 2016 23:49:00 GMT
CMD ["python2"]
# Mon, 31 Oct 2016 23:53:24 GMT
RUN mkdir -p /usr/src/app
# Mon, 31 Oct 2016 23:53:25 GMT
WORKDIR /usr/src/app
# Mon, 31 Oct 2016 23:53:25 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 31 Oct 2016 23:53:25 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 31 Oct 2016 23:53:26 GMT
ONBUILD COPY . /usr/src/app
# Tue, 01 Nov 2016 01:40:03 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:40:03 GMT
EXPOSE 8000/tcp
# Tue, 01 Nov 2016 01:40:04 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af36d2c7a1481ae5554241fcb6bc20472bf7a6b7b2be24465c76e168c278a03f`  
		Last Modified: Fri, 21 Oct 2016 16:36:48 GMT  
		Size: 18.5 MB (18528131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e9d501644c63b3e69d854e8b4c238797cdf3fc87fd79a686c1262fe61e9b5`  
		Last Modified: Fri, 21 Oct 2016 16:37:53 GMT  
		Size: 42.5 MB (42500812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df720fc8e4f160444441c03d14894b21f295241ab4ff4d9f6e625f203c1fb944`  
		Last Modified: Mon, 31 Oct 2016 21:38:14 GMT  
		Size: 129.8 MB (129819618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bd9291f3483a3992c1acaff27e767677b57bd191c8863a8e18368a0fbfbc593`  
		Last Modified: Tue, 01 Nov 2016 00:21:50 GMT  
		Size: 2.9 MB (2888973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7624ed3d15513636d3e06e934aa698cd410741cdecbe8cb93242f712f1a64639`  
		Last Modified: Tue, 01 Nov 2016 00:21:54 GMT  
		Size: 15.9 MB (15884855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec129071b20882d964073a4c16839d6f3cc803ea114f78ded9c9e18282d6c6c`  
		Last Modified: Tue, 01 Nov 2016 00:21:48 GMT  
		Size: 4.9 MB (4940591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09127a2cfe188c4d29267201b754e5ad476b1e336514b6ae24498367f00f0c10`  
		Last Modified: Tue, 01 Nov 2016 00:24:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce5d96a576e76b88e34e58e5725641ec02685b747dbc2cc9ddb3430fdce1d2`  
		Last Modified: Tue, 01 Nov 2016 01:40:21 GMT  
		Size: 16.4 MB (16379620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
