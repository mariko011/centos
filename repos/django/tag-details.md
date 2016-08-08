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
$ docker pull django@sha256:df251731e721fae2fc87514dcf20279adc0256949112bcb83c6f4d4fa129e703
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157780930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56080e5b1503c1fe770a80cccce4c689c32ed615eb5a057fa4d4722b7d5a1f5`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:55:39 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:55:40 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:56:07 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:81a546def56944519e81de3936cf068ddfdf57d283bea529f7e5ef419e279888`  
		Last Modified: Mon, 08 Aug 2016 21:13:45 GMT  
		Size: 21.6 MB (21593706 bytes)
	-	`sha256:9b920892339d2aefccd65e6f36b200ded5b9286bfc5ef702d1ef6e18ca302ec8`  
		Last Modified: Mon, 08 Aug 2016 21:13:37 GMT  
		Size: 267.0 B
	-	`sha256:0f69443d8b03cfef86ea1130a2b00f116ff952ffc74bbf59c248197450513467`  
		Last Modified: Mon, 08 Aug 2016 21:56:36 GMT  
		Size: 66.2 MB (66223409 bytes)
	-	`sha256:a56a6d46b6d63cd0c03119939c8728d327bf05088f9e57f535ac217b7a0b3188`  
		Last Modified: Mon, 08 Aug 2016 21:56:23 GMT  
		Size: 15.3 MB (15291688 bytes)

## `django:1-python3`

```console
$ docker pull django@sha256:df251731e721fae2fc87514dcf20279adc0256949112bcb83c6f4d4fa129e703
```

-	Platforms:
	-	linux; amd64

### `django:1-python3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157780930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56080e5b1503c1fe770a80cccce4c689c32ed615eb5a057fa4d4722b7d5a1f5`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:55:39 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:55:40 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:56:07 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:81a546def56944519e81de3936cf068ddfdf57d283bea529f7e5ef419e279888`  
		Last Modified: Mon, 08 Aug 2016 21:13:45 GMT  
		Size: 21.6 MB (21593706 bytes)
	-	`sha256:9b920892339d2aefccd65e6f36b200ded5b9286bfc5ef702d1ef6e18ca302ec8`  
		Last Modified: Mon, 08 Aug 2016 21:13:37 GMT  
		Size: 267.0 B
	-	`sha256:0f69443d8b03cfef86ea1130a2b00f116ff952ffc74bbf59c248197450513467`  
		Last Modified: Mon, 08 Aug 2016 21:56:36 GMT  
		Size: 66.2 MB (66223409 bytes)
	-	`sha256:a56a6d46b6d63cd0c03119939c8728d327bf05088f9e57f535ac217b7a0b3188`  
		Last Modified: Mon, 08 Aug 2016 21:56:23 GMT  
		Size: 15.3 MB (15291688 bytes)

## `django:python3`

```console
$ docker pull django@sha256:df251731e721fae2fc87514dcf20279adc0256949112bcb83c6f4d4fa129e703
```

-	Platforms:
	-	linux; amd64

### `django:python3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157780930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56080e5b1503c1fe770a80cccce4c689c32ed615eb5a057fa4d4722b7d5a1f5`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:55:39 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:55:40 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:56:07 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:81a546def56944519e81de3936cf068ddfdf57d283bea529f7e5ef419e279888`  
		Last Modified: Mon, 08 Aug 2016 21:13:45 GMT  
		Size: 21.6 MB (21593706 bytes)
	-	`sha256:9b920892339d2aefccd65e6f36b200ded5b9286bfc5ef702d1ef6e18ca302ec8`  
		Last Modified: Mon, 08 Aug 2016 21:13:37 GMT  
		Size: 267.0 B
	-	`sha256:0f69443d8b03cfef86ea1130a2b00f116ff952ffc74bbf59c248197450513467`  
		Last Modified: Mon, 08 Aug 2016 21:56:36 GMT  
		Size: 66.2 MB (66223409 bytes)
	-	`sha256:a56a6d46b6d63cd0c03119939c8728d327bf05088f9e57f535ac217b7a0b3188`  
		Last Modified: Mon, 08 Aug 2016 21:56:23 GMT  
		Size: 15.3 MB (15291688 bytes)

## `django:1.10`

```console
$ docker pull django@sha256:df251731e721fae2fc87514dcf20279adc0256949112bcb83c6f4d4fa129e703
```

-	Platforms:
	-	linux; amd64

### `django:1.10` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157780930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56080e5b1503c1fe770a80cccce4c689c32ed615eb5a057fa4d4722b7d5a1f5`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:55:39 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:55:40 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:56:07 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:81a546def56944519e81de3936cf068ddfdf57d283bea529f7e5ef419e279888`  
		Last Modified: Mon, 08 Aug 2016 21:13:45 GMT  
		Size: 21.6 MB (21593706 bytes)
	-	`sha256:9b920892339d2aefccd65e6f36b200ded5b9286bfc5ef702d1ef6e18ca302ec8`  
		Last Modified: Mon, 08 Aug 2016 21:13:37 GMT  
		Size: 267.0 B
	-	`sha256:0f69443d8b03cfef86ea1130a2b00f116ff952ffc74bbf59c248197450513467`  
		Last Modified: Mon, 08 Aug 2016 21:56:36 GMT  
		Size: 66.2 MB (66223409 bytes)
	-	`sha256:a56a6d46b6d63cd0c03119939c8728d327bf05088f9e57f535ac217b7a0b3188`  
		Last Modified: Mon, 08 Aug 2016 21:56:23 GMT  
		Size: 15.3 MB (15291688 bytes)

## `django:1`

```console
$ docker pull django@sha256:df251731e721fae2fc87514dcf20279adc0256949112bcb83c6f4d4fa129e703
```

-	Platforms:
	-	linux; amd64

### `django:1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157780930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56080e5b1503c1fe770a80cccce4c689c32ed615eb5a057fa4d4722b7d5a1f5`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:55:39 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:55:40 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:56:07 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:81a546def56944519e81de3936cf068ddfdf57d283bea529f7e5ef419e279888`  
		Last Modified: Mon, 08 Aug 2016 21:13:45 GMT  
		Size: 21.6 MB (21593706 bytes)
	-	`sha256:9b920892339d2aefccd65e6f36b200ded5b9286bfc5ef702d1ef6e18ca302ec8`  
		Last Modified: Mon, 08 Aug 2016 21:13:37 GMT  
		Size: 267.0 B
	-	`sha256:0f69443d8b03cfef86ea1130a2b00f116ff952ffc74bbf59c248197450513467`  
		Last Modified: Mon, 08 Aug 2016 21:56:36 GMT  
		Size: 66.2 MB (66223409 bytes)
	-	`sha256:a56a6d46b6d63cd0c03119939c8728d327bf05088f9e57f535ac217b7a0b3188`  
		Last Modified: Mon, 08 Aug 2016 21:56:23 GMT  
		Size: 15.3 MB (15291688 bytes)

## `django:latest`

```console
$ docker pull django@sha256:df251731e721fae2fc87514dcf20279adc0256949112bcb83c6f4d4fa129e703
```

-	Platforms:
	-	linux; amd64

### `django:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157780930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e56080e5b1503c1fe770a80cccce4c689c32ed615eb5a057fa4d4722b7d5a1f5`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:55:39 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:55:40 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:56:07 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:81a546def56944519e81de3936cf068ddfdf57d283bea529f7e5ef419e279888`  
		Last Modified: Mon, 08 Aug 2016 21:13:45 GMT  
		Size: 21.6 MB (21593706 bytes)
	-	`sha256:9b920892339d2aefccd65e6f36b200ded5b9286bfc5ef702d1ef6e18ca302ec8`  
		Last Modified: Mon, 08 Aug 2016 21:13:37 GMT  
		Size: 267.0 B
	-	`sha256:0f69443d8b03cfef86ea1130a2b00f116ff952ffc74bbf59c248197450513467`  
		Last Modified: Mon, 08 Aug 2016 21:56:36 GMT  
		Size: 66.2 MB (66223409 bytes)
	-	`sha256:a56a6d46b6d63cd0c03119939c8728d327bf05088f9e57f535ac217b7a0b3188`  
		Last Modified: Mon, 08 Aug 2016 21:56:23 GMT  
		Size: 15.3 MB (15291688 bytes)

## `django:python3-onbuild`

```console
$ docker pull django@sha256:f2c8de05c78a2a8b15f0532eb0f71a89421405639e06bf6c36406dbf23d7bbef
```

-	Platforms:
	-	linux; amd64

### `django:python3-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280253905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23f94540542c29ebf5f7bae67486c4c32b70a868a33f6c540a784d94e65cea4`
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
# Mon, 08 Aug 2016 20:04:14 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 08 Aug 2016 20:04:14 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 08 Aug 2016 20:04:15 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 08 Aug 2016 20:08:02 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& runDeps=' 		tcl 		tk 	' 	&& apt-get update && apt-get install -y $runDeps $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:08:03 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:08:04 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 20:44:16 GMT
RUN mkdir -p /usr/src/app
# Mon, 08 Aug 2016 20:44:16 GMT
WORKDIR /usr/src/app
# Mon, 08 Aug 2016 20:44:16 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 08 Aug 2016 20:44:17 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 08 Aug 2016 20:44:17 GMT
ONBUILD COPY . /usr/src/app
# Mon, 08 Aug 2016 21:53:45 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:53:46 GMT
EXPOSE 8000/tcp
# Mon, 08 Aug 2016 21:53:47 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:24cac5b79002c7087dd8ac2b1ac77e39fa639b2b48b283d94a21120cff9a3293`  
		Last Modified: Mon, 08 Aug 2016 21:13:12 GMT  
		Size: 21.8 MB (21797180 bytes)
	-	`sha256:51d3f6ca567db58d3fe9a576640ff50a1a2f22defc75d05003bce8d3af01dd32`  
		Last Modified: Mon, 08 Aug 2016 21:13:06 GMT  
		Size: 267.0 B
	-	`sha256:3392cc0a4915bee7812d60341cd266900395bc8706daabcff5b6ab1b58d07cea`  
		Last Modified: Mon, 08 Aug 2016 21:15:20 GMT  
		Size: 127.0 B
	-	`sha256:8804aa315d6a0a51a84afcb3c5a969e04b20ab94f2f01f4a378dfb659e9f2a3a`  
		Last Modified: Mon, 08 Aug 2016 21:54:01 GMT  
		Size: 16.4 MB (16375825 bytes)

## `django:onbuild`

```console
$ docker pull django@sha256:f3b0f6cf3b07cdcd8dbad32b901925803c23df282c84ee92dd7adc457564cb57
```

-	Platforms:
	-	linux; amd64

### `django:onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281990296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54d48b316c6e6fdac73650797476829b049ca0fea8e56f9350d35f2932fc9a5`
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
# Mon, 01 Aug 2016 23:28:08 GMT
RUN set -ex 	&& for bits in 		/usr/bin/*2to3* 		/usr/bin/*python* 		/usr/bin/pdb* 		/usr/bin/py* 	; do 		dpkg-divert --rename "$bits"; 	done
# Mon, 01 Aug 2016 23:28:09 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:59:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Mon, 01 Aug 2016 23:59:04 GMT
ENV PYTHON_VERSION=3.4.5
# Mon, 01 Aug 2016 23:59:05 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 02 Aug 2016 00:03:23 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& runDeps=' 		tcl 		tk 	' 	&& apt-get update && apt-get install -y $runDeps $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 02 Aug 2016 00:03:26 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 02 Aug 2016 00:03:27 GMT
CMD ["python3"]
# Tue, 02 Aug 2016 00:13:37 GMT
RUN mkdir -p /usr/src/app
# Tue, 02 Aug 2016 00:13:37 GMT
WORKDIR /usr/src/app
# Tue, 02 Aug 2016 00:13:38 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Tue, 02 Aug 2016 00:13:38 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Tue, 02 Aug 2016 00:13:39 GMT
ONBUILD COPY . /usr/src/app
# Wed, 03 Aug 2016 21:41:10 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 03 Aug 2016 21:41:10 GMT
EXPOSE 8000/tcp
# Wed, 03 Aug 2016 21:41:11 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:2b5e123cc71cd3b4d168bfec44bf359a2de7bf1dc0a569cd60e0da8e65f865b7`  
		Last Modified: Tue, 02 Aug 2016 00:33:18 GMT  
		Size: 1.7 MB (1736275 bytes)
	-	`sha256:bbc3802fe6db7a5bbe2fc822f91831c87714befa41ab226fee6f41f0d089f60b`  
		Last Modified: Tue, 02 Aug 2016 00:39:32 GMT  
		Size: 21.8 MB (21797345 bytes)
	-	`sha256:bf38bbff8c88394fb072f5d8f09eb798f0ab1781bc992d375a4c7d99289701e6`  
		Last Modified: Tue, 02 Aug 2016 00:39:23 GMT  
		Size: 269.0 B
	-	`sha256:ec5941c601492534884c25d7c7d5a8badfee9d3fddd7f7c6ae137af8525431b6`  
		Last Modified: Tue, 02 Aug 2016 00:41:35 GMT  
		Size: 125.0 B
	-	`sha256:f9d5ddeed04914bc16673bf4544155a00352af1518b2a3ece86f2a3a065ebfb4`  
		Last Modified: Wed, 03 Aug 2016 21:45:29 GMT  
		Size: 16.4 MB (16375776 bytes)

## `django:1.10-python2`

```console
$ docker pull django@sha256:54c92b2e77d69b33aa4fcd8427420b2212f66e06a954251b042eb89e946930fe
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154252537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5862773555d7b1033b8ce97b1fb0da6ded4dbd88809eb52e9ba35e4b9461eb`
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
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:49:50 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:49:51 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:50:12 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:b15f874b2d3db3b2f3fd0d5d9f92c8d3cb4f09fe48f99124e3773f8e3dcb960a`  
		Last Modified: Mon, 08 Aug 2016 21:50:41 GMT  
		Size: 66.2 MB (66223315 bytes)
	-	`sha256:af089b9644519488ea309fb160ac2a8d95eb53b3b8a0bd2711feaef58eacce82`  
		Last Modified: Mon, 08 Aug 2016 21:50:27 GMT  
		Size: 15.3 MB (15275043 bytes)

## `django:1-python2`

```console
$ docker pull django@sha256:54c92b2e77d69b33aa4fcd8427420b2212f66e06a954251b042eb89e946930fe
```

-	Platforms:
	-	linux; amd64

### `django:1-python2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154252537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5862773555d7b1033b8ce97b1fb0da6ded4dbd88809eb52e9ba35e4b9461eb`
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
# Mon, 08 Aug 2016 19:46:18 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 19:46:18 GMT
CMD ["python2"]
# Mon, 08 Aug 2016 21:49:50 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Mon, 08 Aug 2016 21:49:51 GMT
ENV DJANGO_VERSION=1.10
# Mon, 08 Aug 2016 21:50:12 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:e1d6fe3294d8480eb39c12db4f7825bbe05be6a0c1ffa5a3d8145f6d3aa88850`  
		Last Modified: Mon, 08 Aug 2016 21:07:32 GMT  
		Size: 18.1 MB (18082319 bytes)
	-	`sha256:b15f874b2d3db3b2f3fd0d5d9f92c8d3cb4f09fe48f99124e3773f8e3dcb960a`  
		Last Modified: Mon, 08 Aug 2016 21:50:41 GMT  
		Size: 66.2 MB (66223315 bytes)
	-	`sha256:af089b9644519488ea309fb160ac2a8d95eb53b3b8a0bd2711feaef58eacce82`  
		Last Modified: Mon, 08 Aug 2016 21:50:27 GMT  
		Size: 15.3 MB (15275043 bytes)

## `django:python2`

```console
$ docker pull django@sha256:cb845b97a4572eed3e2a59b6015d786d9a78c1036cb53cdbc838bbe5514916ac
```

-	Platforms:
	-	linux; amd64

### `django:python2` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.3 MB (154252254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b705e8df6619494fd2ca756dfed45494be8c0cc478b1210b40afc1bde73ed7`
-	Default Command: `["python2"]`

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
# Wed, 03 Aug 2016 21:42:27 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 03 Aug 2016 21:42:27 GMT
ENV DJANGO_VERSION=1.10
# Wed, 03 Aug 2016 21:42:47 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:62c1c9b8ceab209e3430fc9ff7124704ccffe864d22f86bb5de15c626416c572`  
		Last Modified: Wed, 03 Aug 2016 21:46:13 GMT  
		Size: 66.2 MB (66223630 bytes)
	-	`sha256:ab7364038e3ccd24d936b48b854b04753e604d3679f19c9883782bc8fb09b2f2`  
		Last Modified: Wed, 03 Aug 2016 21:46:00 GMT  
		Size: 15.3 MB (15274310 bytes)

## `django:python2-onbuild`

```console
$ docker pull django@sha256:9c6317e3f88b82b47e157285ab42b4328a96e8755881af032693e8c51d77dfef
```

-	Platforms:
	-	linux; amd64

### `django:python2-onbuild` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.0 MB (281965842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0637fadde7bafd3c81a5b9585d1b5c4dd4851f5b03940828f256d6d025ed6bf`
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
# Mon, 01 Aug 2016 23:28:08 GMT
RUN set -ex 	&& for bits in 		/usr/bin/*2to3* 		/usr/bin/*python* 		/usr/bin/pdb* 		/usr/bin/py* 	; do 		dpkg-divert --rename "$bits"; 	done
# Mon, 01 Aug 2016 23:28:09 GMT
ENV LANG=C.UTF-8
# Mon, 01 Aug 2016 23:28:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Mon, 01 Aug 2016 23:28:11 GMT
ENV PYTHON_VERSION=2.7.12
# Mon, 01 Aug 2016 23:28:12 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Mon, 01 Aug 2016 23:32:12 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& runDeps=' 		tcl 		tk 	' 	&& apt-get update && apt-get install -y $runDeps $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& curl -fSL 'https://bootstrap.pypa.io/get-pip.py' | python2 	&& pip install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 		    \( -type d -a -name test -o -name tests \) 		    -o 		    \( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 01 Aug 2016 23:32:16 GMT
RUN pip install --no-cache-dir virtualenv
# Mon, 01 Aug 2016 23:32:17 GMT
CMD ["python2"]
# Mon, 01 Aug 2016 23:43:27 GMT
RUN mkdir -p /usr/src/app
# Mon, 01 Aug 2016 23:43:28 GMT
WORKDIR /usr/src/app
# Mon, 01 Aug 2016 23:43:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Mon, 01 Aug 2016 23:43:29 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Mon, 01 Aug 2016 23:43:30 GMT
ONBUILD COPY . /usr/src/app
# Wed, 03 Aug 2016 21:43:46 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 03 Aug 2016 21:43:47 GMT
EXPOSE 8000/tcp
# Wed, 03 Aug 2016 21:43:47 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:52befadefd24601247558f63fcb2ccd96b79cbc447a148ea1d0aa2719a9ac3b1`  
		Last Modified: Thu, 28 Jul 2016 21:52:07 GMT  
		Size: 18.5 MB (18526978 bytes)
	-	`sha256:3c0732d5313c8ec8477e518f3e0af81796bdb047ed48cf256333785fc9916ba1`  
		Last Modified: Thu, 28 Jul 2016 21:52:20 GMT  
		Size: 42.5 MB (42495385 bytes)
	-	`sha256:ceb711c7e301352864df69931a5fa92b005f10713fa09c57ffe790f251234034`  
		Last Modified: Thu, 28 Jul 2016 21:52:37 GMT  
		Size: 129.7 MB (129692532 bytes)
	-	`sha256:2b5e123cc71cd3b4d168bfec44bf359a2de7bf1dc0a569cd60e0da8e65f865b7`  
		Last Modified: Tue, 02 Aug 2016 00:33:18 GMT  
		Size: 1.7 MB (1736275 bytes)
	-	`sha256:1eb3ddaf042fac673610639eb1e785000b990450a5bb98df617263457e78199f`  
		Last Modified: Tue, 02 Aug 2016 00:33:25 GMT  
		Size: 18.5 MB (18515833 bytes)
	-	`sha256:d2b82fb13fb4aee19dda8bf0a1c796baf3c538bf56bdb6aaccb064b70a837167`  
		Last Modified: Tue, 02 Aug 2016 00:33:19 GMT  
		Size: 3.3 MB (3257149 bytes)
	-	`sha256:7580e5ce40420fb9ce7656f57e549164d1718704c45001978e4546295861d139`  
		Last Modified: Tue, 02 Aug 2016 00:36:18 GMT  
		Size: 125.0 B
	-	`sha256:cf6cc9c06b1cf230386ce6baeeb7edd6d496d7576967ae948054a0daa96473d4`  
		Last Modified: Wed, 03 Aug 2016 21:46:56 GMT  
		Size: 16.4 MB (16375954 bytes)
