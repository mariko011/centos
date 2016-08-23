<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `django`

-	[`django:1.10-python3`](#django110-python3)
-	[`django:1-python3`](#django1-python3)
-	[`django:python3`](#djangopython3)
-	[`django:1.10`](#django110)
-	[`django:1`](#django1)
-	[`django:latest`](#djangolatest)
-	[`django:python3-onbuild`](#djangopython3-onbuild)
-	[`django:onbuild`](#djangoonbuild)
-	[`django:1.10-python2`](#django110-python2)
-	[`django:1-python2`](#django1-python2)
-	[`django:python2`](#djangopython2)
-	[`django:python2-onbuild`](#djangopython2-onbuild)

## `django:1.10-python3`

```console
$ docker pull django@sha256:ba3452f7453506a5b453654decdac69d8c29be6547c7e982dba09ce5b8b588f6
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157800972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d802ec2b6c5df5c1e44d200041da69e3fd09f5e4cbee5c862c9946c5299a0b`
-	Default Command: `["python3"]`

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
# Mon, 08 Aug 2016 20:08:04 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:35:27 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:35:28 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:35:56 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:92f3786ec97a54ef9e3eb18657f74bac7a0cc1841887e0704c524e244b8505d9`  
		Last Modified: Mon, 22 Aug 2016 21:29:36 GMT  
		Size: 19.5 MB (19528772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d08e53590560c1967d55c71c32cd9dc3072e500addc395aa7be6601d7d41aa`  
		Last Modified: Mon, 22 Aug 2016 21:29:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ac6a9b044ac14415474eec679b88aa61b708825e1428317782f29bbc2f2ce`  
		Last Modified: Tue, 23 Aug 2016 18:36:30 GMT  
		Size: 68.3 MB (68308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2258851e6c76f6c47acf58ca1786833306d0e0a5bdac701594e7d5a918edfce`  
		Last Modified: Tue, 23 Aug 2016 18:36:14 GMT  
		Size: 15.3 MB (15291767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python3`

```console
$ docker pull django@sha256:ba3452f7453506a5b453654decdac69d8c29be6547c7e982dba09ce5b8b588f6
```

-	Platforms:
	-	linux; amd64

### `django:1-python3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157800972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d802ec2b6c5df5c1e44d200041da69e3fd09f5e4cbee5c862c9946c5299a0b`
-	Default Command: `["python3"]`

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
# Mon, 08 Aug 2016 20:08:04 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:35:27 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:35:28 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:35:56 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:92f3786ec97a54ef9e3eb18657f74bac7a0cc1841887e0704c524e244b8505d9`  
		Last Modified: Mon, 22 Aug 2016 21:29:36 GMT  
		Size: 19.5 MB (19528772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d08e53590560c1967d55c71c32cd9dc3072e500addc395aa7be6601d7d41aa`  
		Last Modified: Mon, 22 Aug 2016 21:29:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ac6a9b044ac14415474eec679b88aa61b708825e1428317782f29bbc2f2ce`  
		Last Modified: Tue, 23 Aug 2016 18:36:30 GMT  
		Size: 68.3 MB (68308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2258851e6c76f6c47acf58ca1786833306d0e0a5bdac701594e7d5a918edfce`  
		Last Modified: Tue, 23 Aug 2016 18:36:14 GMT  
		Size: 15.3 MB (15291767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3`

```console
$ docker pull django@sha256:ba3452f7453506a5b453654decdac69d8c29be6547c7e982dba09ce5b8b588f6
```

-	Platforms:
	-	linux; amd64

### `django:python3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157800972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d802ec2b6c5df5c1e44d200041da69e3fd09f5e4cbee5c862c9946c5299a0b`
-	Default Command: `["python3"]`

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
# Mon, 08 Aug 2016 20:08:04 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:35:27 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:35:28 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:35:56 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:92f3786ec97a54ef9e3eb18657f74bac7a0cc1841887e0704c524e244b8505d9`  
		Last Modified: Mon, 22 Aug 2016 21:29:36 GMT  
		Size: 19.5 MB (19528772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d08e53590560c1967d55c71c32cd9dc3072e500addc395aa7be6601d7d41aa`  
		Last Modified: Mon, 22 Aug 2016 21:29:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ac6a9b044ac14415474eec679b88aa61b708825e1428317782f29bbc2f2ce`  
		Last Modified: Tue, 23 Aug 2016 18:36:30 GMT  
		Size: 68.3 MB (68308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2258851e6c76f6c47acf58ca1786833306d0e0a5bdac701594e7d5a918edfce`  
		Last Modified: Tue, 23 Aug 2016 18:36:14 GMT  
		Size: 15.3 MB (15291767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10`

```console
$ docker pull django@sha256:ba3452f7453506a5b453654decdac69d8c29be6547c7e982dba09ce5b8b588f6
```

-	Platforms:
	-	linux; amd64

### `django:1.10` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157800972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d802ec2b6c5df5c1e44d200041da69e3fd09f5e4cbee5c862c9946c5299a0b`
-	Default Command: `["python3"]`

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
# Mon, 08 Aug 2016 20:08:04 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:35:27 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:35:28 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:35:56 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:92f3786ec97a54ef9e3eb18657f74bac7a0cc1841887e0704c524e244b8505d9`  
		Last Modified: Mon, 22 Aug 2016 21:29:36 GMT  
		Size: 19.5 MB (19528772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d08e53590560c1967d55c71c32cd9dc3072e500addc395aa7be6601d7d41aa`  
		Last Modified: Mon, 22 Aug 2016 21:29:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ac6a9b044ac14415474eec679b88aa61b708825e1428317782f29bbc2f2ce`  
		Last Modified: Tue, 23 Aug 2016 18:36:30 GMT  
		Size: 68.3 MB (68308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2258851e6c76f6c47acf58ca1786833306d0e0a5bdac701594e7d5a918edfce`  
		Last Modified: Tue, 23 Aug 2016 18:36:14 GMT  
		Size: 15.3 MB (15291767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1`

```console
$ docker pull django@sha256:ba3452f7453506a5b453654decdac69d8c29be6547c7e982dba09ce5b8b588f6
```

-	Platforms:
	-	linux; amd64

### `django:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157800972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d802ec2b6c5df5c1e44d200041da69e3fd09f5e4cbee5c862c9946c5299a0b`
-	Default Command: `["python3"]`

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
# Mon, 08 Aug 2016 20:08:04 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:35:27 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:35:28 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:35:56 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:92f3786ec97a54ef9e3eb18657f74bac7a0cc1841887e0704c524e244b8505d9`  
		Last Modified: Mon, 22 Aug 2016 21:29:36 GMT  
		Size: 19.5 MB (19528772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d08e53590560c1967d55c71c32cd9dc3072e500addc395aa7be6601d7d41aa`  
		Last Modified: Mon, 22 Aug 2016 21:29:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ac6a9b044ac14415474eec679b88aa61b708825e1428317782f29bbc2f2ce`  
		Last Modified: Tue, 23 Aug 2016 18:36:30 GMT  
		Size: 68.3 MB (68308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2258851e6c76f6c47acf58ca1786833306d0e0a5bdac701594e7d5a918edfce`  
		Last Modified: Tue, 23 Aug 2016 18:36:14 GMT  
		Size: 15.3 MB (15291767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:latest`

```console
$ docker pull django@sha256:ba3452f7453506a5b453654decdac69d8c29be6547c7e982dba09ce5b8b588f6
```

-	Platforms:
	-	linux; amd64

### `django:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157800972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d802ec2b6c5df5c1e44d200041da69e3fd09f5e4cbee5c862c9946c5299a0b`
-	Default Command: `["python3"]`

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
# Mon, 08 Aug 2016 20:08:04 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 08 Aug 2016 20:08:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:35:27 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:35:28 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:35:56 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:92f3786ec97a54ef9e3eb18657f74bac7a0cc1841887e0704c524e244b8505d9`  
		Last Modified: Mon, 22 Aug 2016 21:29:36 GMT  
		Size: 19.5 MB (19528772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d08e53590560c1967d55c71c32cd9dc3072e500addc395aa7be6601d7d41aa`  
		Last Modified: Mon, 22 Aug 2016 21:29:29 GMT  
		Size: 269.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f6ac6a9b044ac14415474eec679b88aa61b708825e1428317782f29bbc2f2ce`  
		Last Modified: Tue, 23 Aug 2016 18:36:30 GMT  
		Size: 68.3 MB (68308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2258851e6c76f6c47acf58ca1786833306d0e0a5bdac701594e7d5a918edfce`  
		Last Modified: Tue, 23 Aug 2016 18:36:14 GMT  
		Size: 15.3 MB (15291767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3-onbuild`

```console
$ docker pull django@sha256:cbe2c8b9423ccb3cfe65738420c4785ed6fa403f47555c5183126b28702e609f
```

-	Platforms:
	-	linux; amd64

### `django:python3-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280900390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91056d207095bcb567fdb9ac1949523f2da8eee46db0fb24f1fb4f706ac027d5`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:37:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:37:30 GMT
ENV LANG=C.UTF-8
# Tue, 09 Aug 2016 20:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 20:42:54 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 09 Aug 2016 20:42:55 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 09 Aug 2016 20:42:55 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:52:32 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:52:34 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:52:34 GMT
CMD ["python3"]
# Mon, 22 Aug 2016 21:02:15 GMT
RUN mkdir -p /usr/src/app
# Mon, 22 Aug 2016 21:02:15 GMT
WORKDIR /usr/src/app
# Mon, 22 Aug 2016 21:02:16 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 22 Aug 2016 21:02:16 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 22 Aug 2016 21:02:17 GMT
ONBUILD COPY . /usr/src/app
# Tue, 23 Aug 2016 18:33:30 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:33:31 GMT
EXPOSE 8000/tcp
# Tue, 23 Aug 2016 18:33:32 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4211bb5376972ebb740e54525e95b9ea6ef08c85e7519f795170501632942fbb`  
		Last Modified: Tue, 09 Aug 2016 21:16:33 GMT  
		Size: 2.9 MB (2888355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf45a156ad25138ebe53b5a98a0ea2a2d01227b2bf8c95b3fc2c8c0a867c4e5`  
		Last Modified: Mon, 22 Aug 2016 21:29:01 GMT  
		Size: 19.1 MB (19141728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae6c5e933e633ba9fb772a2d4402a6f1dbcd27d13807be47614c434c24eee6a`  
		Last Modified: Mon, 22 Aug 2016 21:28:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a482b290e165444310f2f20cca682eeeed12668225961829716854f7a3f2653`  
		Last Modified: Mon, 22 Aug 2016 21:31:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55957dfc125371aa6d8602c814130dbb138c06239fbbf78dac3d9130df34db7`  
		Last Modified: Tue, 23 Aug 2016 18:33:48 GMT  
		Size: 16.8 MB (16789407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:onbuild`

```console
$ docker pull django@sha256:cbe2c8b9423ccb3cfe65738420c4785ed6fa403f47555c5183126b28702e609f
```

-	Platforms:
	-	linux; amd64

### `django:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.9 MB (280900390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91056d207095bcb567fdb9ac1949523f2da8eee46db0fb24f1fb4f706ac027d5`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:37:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:37:30 GMT
ENV LANG=C.UTF-8
# Tue, 09 Aug 2016 20:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 20:42:54 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 09 Aug 2016 20:42:55 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 09 Aug 2016 20:42:55 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:52:32 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:52:34 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:52:34 GMT
CMD ["python3"]
# Mon, 22 Aug 2016 21:02:15 GMT
RUN mkdir -p /usr/src/app
# Mon, 22 Aug 2016 21:02:15 GMT
WORKDIR /usr/src/app
# Mon, 22 Aug 2016 21:02:16 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 22 Aug 2016 21:02:16 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 22 Aug 2016 21:02:17 GMT
ONBUILD COPY . /usr/src/app
# Tue, 23 Aug 2016 18:33:30 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:33:31 GMT
EXPOSE 8000/tcp
# Tue, 23 Aug 2016 18:33:32 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4211bb5376972ebb740e54525e95b9ea6ef08c85e7519f795170501632942fbb`  
		Last Modified: Tue, 09 Aug 2016 21:16:33 GMT  
		Size: 2.9 MB (2888355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faf45a156ad25138ebe53b5a98a0ea2a2d01227b2bf8c95b3fc2c8c0a867c4e5`  
		Last Modified: Mon, 22 Aug 2016 21:29:01 GMT  
		Size: 19.1 MB (19141728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae6c5e933e633ba9fb772a2d4402a6f1dbcd27d13807be47614c434c24eee6a`  
		Last Modified: Mon, 22 Aug 2016 21:28:53 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a482b290e165444310f2f20cca682eeeed12668225961829716854f7a3f2653`  
		Last Modified: Mon, 22 Aug 2016 21:31:22 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55957dfc125371aa6d8602c814130dbb138c06239fbbf78dac3d9130df34db7`  
		Last Modified: Tue, 23 Aug 2016 18:33:48 GMT  
		Size: 16.8 MB (16789407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10-python2`

```console
$ docker pull django@sha256:0f894cfb92298f3dfaea0d7b369d62ae3458361112d3cf98dddb5472177935fa
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154567912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290f09db8822a30d3cbd64ff33d16106d23c03d5b80dec8755c87225db68f704`
-	Default Command: `["python2"]`

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
# Tue, 23 Aug 2016 18:29:33 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:29:35 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:29:54 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:0df7bb040730bf0092354de9f54e4ae2aea9752ce529c756447948a183cc7c35`  
		Last Modified: Tue, 23 Aug 2016 18:30:27 GMT  
		Size: 68.3 MB (68307954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97271617292f9dec64393d6282933190ae689f7bc81be57c3af55a0fbd3b74f`  
		Last Modified: Tue, 23 Aug 2016 18:30:13 GMT  
		Size: 15.3 MB (15293364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python2`

```console
$ docker pull django@sha256:0f894cfb92298f3dfaea0d7b369d62ae3458361112d3cf98dddb5472177935fa
```

-	Platforms:
	-	linux; amd64

### `django:1-python2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154567912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290f09db8822a30d3cbd64ff33d16106d23c03d5b80dec8755c87225db68f704`
-	Default Command: `["python2"]`

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
# Tue, 23 Aug 2016 18:29:33 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:29:35 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:29:54 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:0df7bb040730bf0092354de9f54e4ae2aea9752ce529c756447948a183cc7c35`  
		Last Modified: Tue, 23 Aug 2016 18:30:27 GMT  
		Size: 68.3 MB (68307954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97271617292f9dec64393d6282933190ae689f7bc81be57c3af55a0fbd3b74f`  
		Last Modified: Tue, 23 Aug 2016 18:30:13 GMT  
		Size: 15.3 MB (15293364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2`

```console
$ docker pull django@sha256:0f894cfb92298f3dfaea0d7b369d62ae3458361112d3cf98dddb5472177935fa
```

-	Platforms:
	-	linux; amd64

### `django:python2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154567912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290f09db8822a30d3cbd64ff33d16106d23c03d5b80dec8755c87225db68f704`
-	Default Command: `["python2"]`

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
# Tue, 23 Aug 2016 18:29:33 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:29:35 GMT
ENV DJANGO_VERSION=1.10
# Tue, 23 Aug 2016 18:29:54 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:0df7bb040730bf0092354de9f54e4ae2aea9752ce529c756447948a183cc7c35`  
		Last Modified: Tue, 23 Aug 2016 18:30:27 GMT  
		Size: 68.3 MB (68307954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97271617292f9dec64393d6282933190ae689f7bc81be57c3af55a0fbd3b74f`  
		Last Modified: Tue, 23 Aug 2016 18:30:13 GMT  
		Size: 15.3 MB (15293364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2-onbuild`

```console
$ docker pull django@sha256:5ae8f2c1dd651b74318a3ba73d9c8930d5599a23cc2ff4ed4640b7092f832ab9
```

-	Platforms:
	-	linux; amd64

### `django:python2-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.6 MB (282571552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218eea8262bf14f9ccdf07a0941da162a04ebeb92581c25db8b4e775346fe38f`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Thu, 28 Jul 2016 17:47:54 GMT
ADD file:0e0565652aa852f62033d99f84892216020d30f64521ded5e72d4940bc4c9697 in /
# Thu, 28 Jul 2016 17:47:55 GMT
CMD ["/bin/bash"]
# Thu, 28 Jul 2016 17:57:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 17:59:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 28 Jul 2016 18:23:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 19:37:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 08 Aug 2016 19:37:30 GMT
ENV LANG=C.UTF-8
# Tue, 09 Aug 2016 20:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 09 Aug 2016 20:16:09 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 09 Aug 2016 20:16:09 GMT
ENV PYTHON_VERSION=2.7.12
# Tue, 09 Aug 2016 20:16:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 22 Aug 2016 20:26:39 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:26:43 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 22 Aug 2016 20:26:43 GMT
CMD ["python2"]
# Mon, 22 Aug 2016 20:35:28 GMT
RUN mkdir -p /usr/src/app
# Mon, 22 Aug 2016 20:35:29 GMT
WORKDIR /usr/src/app
# Mon, 22 Aug 2016 20:35:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 22 Aug 2016 20:35:30 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 22 Aug 2016 20:35:30 GMT
ONBUILD COPY . /usr/src/app
# Tue, 23 Aug 2016 18:32:00 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 23 Aug 2016 18:32:01 GMT
EXPOSE 8000/tcp
# Tue, 23 Aug 2016 18:32:02 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4211bb5376972ebb740e54525e95b9ea6ef08c85e7519f795170501632942fbb`  
		Last Modified: Tue, 09 Aug 2016 21:16:33 GMT  
		Size: 2.9 MB (2888355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4318888d2d481aeac042b3d1421bac9ebedfdba01d705c26b2d78c9fd3561cc7`  
		Last Modified: Mon, 22 Aug 2016 21:22:23 GMT  
		Size: 15.9 MB (15872341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdcd6a142be730b1040554f072872478c59f214eed7f208b2c6ed323d8518a74`  
		Last Modified: Mon, 22 Aug 2016 21:22:20 GMT  
		Size: 4.9 MB (4940574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fff9df81f6c0b2f4e1c6e7f90c5f32a71bbace9d6cdec5b4290501671e4412`  
		Last Modified: Mon, 22 Aug 2016 21:25:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:653ab759c66c4e912c43f5ddbc6b38e22d630477d5429038a548b519a5c46c3a`  
		Last Modified: Tue, 23 Aug 2016 18:32:20 GMT  
		Size: 16.8 MB (16789650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
