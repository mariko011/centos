<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `django`

-	[`django:1.10.4-python3`](#django1104-python3)
-	[`django:1.10-python3`](#django110-python3)
-	[`django:1-python3`](#django1-python3)
-	[`django:python3`](#djangopython3)
-	[`django:1.10.4`](#django1104)
-	[`django:1.10`](#django110)
-	[`django:1`](#django1)
-	[`django:latest`](#djangolatest)
-	[`django:python3-onbuild`](#djangopython3-onbuild)
-	[`django:onbuild`](#djangoonbuild)
-	[`django:1.10.4-python2`](#django1104-python2)
-	[`django:1.10-python2`](#django110-python2)
-	[`django:1-python2`](#django1-python2)
-	[`django:python2`](#djangopython2)
-	[`django:python2-onbuild`](#djangopython2-onbuild)

## `django:1.10.4-python3`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:1.10.4-python3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10-python3`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python3`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:1-python3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:python3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10.4`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:1.10.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:1.10` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:latest`

```console
$ docker pull django@sha256:a14be38ecd22e833a762bcd0cc9f4d4d2a16f6a4dfe5eda53be522a597c83c0b
```

-	Platforms:
	-	linux; amd64

### `django:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (158023374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8bc70dfddcbc5371b661f2a6a948e1200871ca4dd6cf106a04769400d0c3104`
-	Default Command: `["python3"]`

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
# Wed, 09 Nov 2016 00:31:13 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 09 Nov 2016 00:37:12 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:35:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:38:13 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:38:14 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:38:14 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:57:48 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:27:47 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:11 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:e03d6687a61705fc28c579fe338d298122b6dbea287e68d75d913274db27922f`  
		Last Modified: Thu, 17 Nov 2016 23:01:44 GMT  
		Size: 19.6 MB (19619662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7575d2be017fefb0ceb362365844ba6d0693ffdec6df9142bc6000746eb0fbf`  
		Last Modified: Thu, 17 Nov 2016 23:01:36 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5165b1f9adb7bc52e110e51ba7d723c5692db37d03b924b0a893aa2e5f51a5`  
		Last Modified: Fri, 18 Nov 2016 01:00:25 GMT  
		Size: 68.3 MB (68268831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea984bed36db0d8cc075ef077d6f2190d8cdb5130e3983d8911109ebd6c60c26`  
		Last Modified: Tue, 06 Dec 2016 20:28:47 GMT  
		Size: 15.4 MB (15439008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3-onbuild`

```console
$ docker pull django@sha256:e6559057174165359d5f7081514cbcf79515ff4082ae56630b32ffddb6f0a628
```

-	Platforms:
	-	linux; amd64

### `django:python3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280653721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19af2f4248662aa19dd3f5f76b83fb09bcf6d85c0191fb60b9d707d491d09efa`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:45:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:45:44 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 19:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:24:28 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Thu, 10 Nov 2016 08:33:34 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:33:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:35:45 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:35:46 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:35:46 GMT
CMD ["python3"]
# Thu, 17 Nov 2016 22:42:01 GMT
RUN mkdir -p /usr/src/app
# Thu, 17 Nov 2016 22:42:01 GMT
WORKDIR /usr/src/app
# Thu, 17 Nov 2016 22:42:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 17 Nov 2016 22:42:02 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 17 Nov 2016 22:42:02 GMT
ONBUILD COPY . /usr/src/app
# Fri, 18 Nov 2016 00:58:30 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 00:58:30 GMT
EXPOSE 8000/tcp
# Fri, 18 Nov 2016 00:58:31 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729baab2cba26b36b6736d76b9d8ab9b41bacd4f448d66901da14f1a4d765877`  
		Last Modified: Tue, 08 Nov 2016 19:50:50 GMT  
		Size: 2.9 MB (2889210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0138e46627cf03f972216fe65fc2157a9c402452ab20897dfd99def683604de`  
		Last Modified: Thu, 17 Nov 2016 23:01:00 GMT  
		Size: 19.2 MB (19197716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79760c78c6e1fff76fe3a028450082ef5888ea38e51764cd38b0e03ea88abb49`  
		Last Modified: Thu, 17 Nov 2016 23:00:53 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fc56d30ca6301ea6870a7f1c190348824f4ef3206d76c1e821b27cad05023b`  
		Last Modified: Thu, 17 Nov 2016 23:03:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c577d4768687117d850f67c1d062defbb44411e50d4f1c81259cd4a9ba2b11d1`  
		Last Modified: Fri, 18 Nov 2016 01:02:51 GMT  
		Size: 16.4 MB (16373918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:onbuild`

```console
$ docker pull django@sha256:e6559057174165359d5f7081514cbcf79515ff4082ae56630b32ffddb6f0a628
```

-	Platforms:
	-	linux; amd64

### `django:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280653721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19af2f4248662aa19dd3f5f76b83fb09bcf6d85c0191fb60b9d707d491d09efa`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:45:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:45:44 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 19:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:24:28 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Thu, 10 Nov 2016 08:33:34 GMT
ENV PYTHON_VERSION=3.4.5
# Thu, 17 Nov 2016 22:33:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:35:45 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:35:46 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:35:46 GMT
CMD ["python3"]
# Thu, 17 Nov 2016 22:42:01 GMT
RUN mkdir -p /usr/src/app
# Thu, 17 Nov 2016 22:42:01 GMT
WORKDIR /usr/src/app
# Thu, 17 Nov 2016 22:42:01 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 17 Nov 2016 22:42:02 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 17 Nov 2016 22:42:02 GMT
ONBUILD COPY . /usr/src/app
# Fri, 18 Nov 2016 00:58:30 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 00:58:30 GMT
EXPOSE 8000/tcp
# Fri, 18 Nov 2016 00:58:31 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729baab2cba26b36b6736d76b9d8ab9b41bacd4f448d66901da14f1a4d765877`  
		Last Modified: Tue, 08 Nov 2016 19:50:50 GMT  
		Size: 2.9 MB (2889210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0138e46627cf03f972216fe65fc2157a9c402452ab20897dfd99def683604de`  
		Last Modified: Thu, 17 Nov 2016 23:01:00 GMT  
		Size: 19.2 MB (19197716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79760c78c6e1fff76fe3a028450082ef5888ea38e51764cd38b0e03ea88abb49`  
		Last Modified: Thu, 17 Nov 2016 23:00:53 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02fc56d30ca6301ea6870a7f1c190348824f4ef3206d76c1e821b27cad05023b`  
		Last Modified: Thu, 17 Nov 2016 23:03:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c577d4768687117d850f67c1d062defbb44411e50d4f1c81259cd4a9ba2b11d1`  
		Last Modified: Fri, 18 Nov 2016 01:02:51 GMT  
		Size: 16.4 MB (16373918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10.4-python2`

```console
$ docker pull django@sha256:ebf73f5ff0aabff35a54fa25a7f0a39a55b7eb73dea8a75997b98c5dce376315
```

-	Platforms:
	-	linux; amd64

### `django:1.10.4-python2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.8 MB (154784381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc945ffb964bb704dd8ec9ebb5f200fb3747099f309636e0a58c44cb10d194d`
-	Default Command: `["python2"]`

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
# Fri, 18 Nov 2016 00:57:04 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:28:12 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:30 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:85f07e93f11bd8a889f09fdaafc9cde644bc4c0f0478c0413f9b815c15c21abe`  
		Last Modified: Fri, 18 Nov 2016 00:59:03 GMT  
		Size: 68.3 MB (68268247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606e1399b2eb5ea8fdf495836ff983d335ab2f7b902c74634e240bf262c53c0`  
		Last Modified: Tue, 06 Dec 2016 20:31:24 GMT  
		Size: 15.5 MB (15460367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10-python2`

```console
$ docker pull django@sha256:ebf73f5ff0aabff35a54fa25a7f0a39a55b7eb73dea8a75997b98c5dce376315
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.8 MB (154784381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc945ffb964bb704dd8ec9ebb5f200fb3747099f309636e0a58c44cb10d194d`
-	Default Command: `["python2"]`

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
# Fri, 18 Nov 2016 00:57:04 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:28:12 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:30 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:85f07e93f11bd8a889f09fdaafc9cde644bc4c0f0478c0413f9b815c15c21abe`  
		Last Modified: Fri, 18 Nov 2016 00:59:03 GMT  
		Size: 68.3 MB (68268247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606e1399b2eb5ea8fdf495836ff983d335ab2f7b902c74634e240bf262c53c0`  
		Last Modified: Tue, 06 Dec 2016 20:31:24 GMT  
		Size: 15.5 MB (15460367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python2`

```console
$ docker pull django@sha256:ebf73f5ff0aabff35a54fa25a7f0a39a55b7eb73dea8a75997b98c5dce376315
```

-	Platforms:
	-	linux; amd64

### `django:1-python2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.8 MB (154784381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc945ffb964bb704dd8ec9ebb5f200fb3747099f309636e0a58c44cb10d194d`
-	Default Command: `["python2"]`

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
# Fri, 18 Nov 2016 00:57:04 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:28:12 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:30 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:85f07e93f11bd8a889f09fdaafc9cde644bc4c0f0478c0413f9b815c15c21abe`  
		Last Modified: Fri, 18 Nov 2016 00:59:03 GMT  
		Size: 68.3 MB (68268247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606e1399b2eb5ea8fdf495836ff983d335ab2f7b902c74634e240bf262c53c0`  
		Last Modified: Tue, 06 Dec 2016 20:31:24 GMT  
		Size: 15.5 MB (15460367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2`

```console
$ docker pull django@sha256:ebf73f5ff0aabff35a54fa25a7f0a39a55b7eb73dea8a75997b98c5dce376315
```

-	Platforms:
	-	linux; amd64

### `django:python2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.8 MB (154784381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc945ffb964bb704dd8ec9ebb5f200fb3747099f309636e0a58c44cb10d194d`
-	Default Command: `["python2"]`

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
# Fri, 18 Nov 2016 00:57:04 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 06 Dec 2016 20:28:12 GMT
ENV DJANGO_VERSION=1.10.4
# Tue, 06 Dec 2016 20:28:30 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:85f07e93f11bd8a889f09fdaafc9cde644bc4c0f0478c0413f9b815c15c21abe`  
		Last Modified: Fri, 18 Nov 2016 00:59:03 GMT  
		Size: 68.3 MB (68268247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1606e1399b2eb5ea8fdf495836ff983d335ab2f7b902c74634e240bf262c53c0`  
		Last Modified: Tue, 06 Dec 2016 20:31:24 GMT  
		Size: 15.5 MB (15460367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2-onbuild`

```console
$ docker pull django@sha256:d742b70f34fce14a3923bd85c96b1978d685ff5dfd8dc8912b8c55a3430dc9ab
```

-	Platforms:
	-	linux; amd64

### `django:python2-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280723199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:315618dc4b13cf59b78c91f93229f313f91e3f4f7981c440fe19dc6a93da71fa`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:28:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 19:45:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Nov 2016 19:45:44 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 19:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 10 Nov 2016 08:17:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 10 Nov 2016 08:17:55 GMT
ENV PYTHON_VERSION=2.7.12
# Thu, 17 Nov 2016 22:17:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:19:16 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:19:19 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 17 Nov 2016 22:19:20 GMT
CMD ["python2"]
# Thu, 17 Nov 2016 22:25:02 GMT
RUN mkdir -p /usr/src/app
# Thu, 17 Nov 2016 22:25:02 GMT
WORKDIR /usr/src/app
# Thu, 17 Nov 2016 22:25:03 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Thu, 17 Nov 2016 22:25:03 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Thu, 17 Nov 2016 22:25:03 GMT
ONBUILD COPY . /usr/src/app
# Fri, 18 Nov 2016 00:58:19 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 18 Nov 2016 00:58:19 GMT
EXPOSE 8000/tcp
# Fri, 18 Nov 2016 00:58:20 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3ee139a57774dc3728a4bf9675bc379458093585e42f384852e644b1b272ac`  
		Last Modified: Mon, 07 Nov 2016 22:59:05 GMT  
		Size: 129.8 MB (129808774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729baab2cba26b36b6736d76b9d8ab9b41bacd4f448d66901da14f1a4d765877`  
		Last Modified: Tue, 08 Nov 2016 19:50:50 GMT  
		Size: 2.9 MB (2889210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda53d7523c413a4e51d0046fe5ee9d2fdef207b00998aee6b11e1db41ae8545`  
		Last Modified: Thu, 17 Nov 2016 22:53:31 GMT  
		Size: 15.9 MB (15937701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e71dbe4c63926a6735bbbc9bccba693671a105ef4ba80cabffb86f850a4780`  
		Last Modified: Thu, 17 Nov 2016 22:53:27 GMT  
		Size: 3.3 MB (3329817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cd01ea1ca9a5586800261f8a83475a40a96bea78c6c1e2d9426859f4b13c40`  
		Last Modified: Thu, 17 Nov 2016 22:56:59 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2e61e173f77ab1ee92616992cdc66b7516fdf022ecb8aecbbc5ee616ef43c83`  
		Last Modified: Fri, 18 Nov 2016 01:02:27 GMT  
		Size: 16.4 MB (16373861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
