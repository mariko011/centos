<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `django`

-	[`django:1.10.2-python3`](#django1102-python3)
-	[`django:1.10-python3`](#django110-python3)
-	[`django:1-python3`](#django1-python3)
-	[`django:python3`](#djangopython3)
-	[`django:1.10.2`](#django1102)
-	[`django:1.10`](#django110)
-	[`django:1`](#django1)
-	[`django:latest`](#djangolatest)
-	[`django:python3-onbuild`](#djangopython3-onbuild)
-	[`django:onbuild`](#djangoonbuild)
-	[`django:1.10.2-python2`](#django1102-python2)
-	[`django:1.10-python2`](#django110-python2)
-	[`django:1-python2`](#django1-python2)
-	[`django:python2`](#djangopython2)
-	[`django:python2-onbuild`](#djangopython2-onbuild)

## `django:1.10.2-python3`

**does not exist** (yet?)

## `django:1.10-python3`

```console
$ docker pull django@sha256:5fad082d80122c3d15c3f8eb73d505f73763c97d73e44a9e1e15cbf0abaf9062
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157798109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1330314259768d5c66e03430306b5ae65070aae97c226a8ca885b9951f97ef1`
-	Default Command: `["python3"]`

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
# Fri, 23 Sep 2016 22:27:27 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_VERSION=3.4.5
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:39:25 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:39:26 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 23 Sep 2016 22:39:26 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 00:24:44 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:24:44 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:25:04 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:285677e2a7cecc5010f75374bc5567005a094e0f9e117edf38da2bff01c8eb48`  
		Last Modified: Fri, 23 Sep 2016 22:39:40 GMT  
		Size: 19.5 MB (19528394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a495afed098655d5ce9e0b57cae9347daafc81cb63d906a57e10be92302234d1`  
		Last Modified: Fri, 23 Sep 2016 22:39:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae11ba615d27c718cfc036425562dc0b1eab48d0a58c4ade3154256b6b99991`  
		Last Modified: Sat, 24 Sep 2016 00:25:32 GMT  
		Size: 68.3 MB (68313591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8725ce046097ff59a6a626983aac484bced51796051ebf2eedf2205073ede`  
		Last Modified: Sat, 24 Sep 2016 00:25:16 GMT  
		Size: 15.3 MB (15294981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python3`

```console
$ docker pull django@sha256:5fad082d80122c3d15c3f8eb73d505f73763c97d73e44a9e1e15cbf0abaf9062
```

-	Platforms:
	-	linux; amd64

### `django:1-python3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157798109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1330314259768d5c66e03430306b5ae65070aae97c226a8ca885b9951f97ef1`
-	Default Command: `["python3"]`

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
# Fri, 23 Sep 2016 22:27:27 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_VERSION=3.4.5
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:39:25 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:39:26 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 23 Sep 2016 22:39:26 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 00:24:44 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:24:44 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:25:04 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:285677e2a7cecc5010f75374bc5567005a094e0f9e117edf38da2bff01c8eb48`  
		Last Modified: Fri, 23 Sep 2016 22:39:40 GMT  
		Size: 19.5 MB (19528394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a495afed098655d5ce9e0b57cae9347daafc81cb63d906a57e10be92302234d1`  
		Last Modified: Fri, 23 Sep 2016 22:39:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae11ba615d27c718cfc036425562dc0b1eab48d0a58c4ade3154256b6b99991`  
		Last Modified: Sat, 24 Sep 2016 00:25:32 GMT  
		Size: 68.3 MB (68313591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8725ce046097ff59a6a626983aac484bced51796051ebf2eedf2205073ede`  
		Last Modified: Sat, 24 Sep 2016 00:25:16 GMT  
		Size: 15.3 MB (15294981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3`

```console
$ docker pull django@sha256:5fad082d80122c3d15c3f8eb73d505f73763c97d73e44a9e1e15cbf0abaf9062
```

-	Platforms:
	-	linux; amd64

### `django:python3` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157798109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1330314259768d5c66e03430306b5ae65070aae97c226a8ca885b9951f97ef1`
-	Default Command: `["python3"]`

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
# Fri, 23 Sep 2016 22:27:27 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_VERSION=3.4.5
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:39:25 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:39:26 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 23 Sep 2016 22:39:26 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 00:24:44 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:24:44 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:25:04 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:285677e2a7cecc5010f75374bc5567005a094e0f9e117edf38da2bff01c8eb48`  
		Last Modified: Fri, 23 Sep 2016 22:39:40 GMT  
		Size: 19.5 MB (19528394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a495afed098655d5ce9e0b57cae9347daafc81cb63d906a57e10be92302234d1`  
		Last Modified: Fri, 23 Sep 2016 22:39:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae11ba615d27c718cfc036425562dc0b1eab48d0a58c4ade3154256b6b99991`  
		Last Modified: Sat, 24 Sep 2016 00:25:32 GMT  
		Size: 68.3 MB (68313591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8725ce046097ff59a6a626983aac484bced51796051ebf2eedf2205073ede`  
		Last Modified: Sat, 24 Sep 2016 00:25:16 GMT  
		Size: 15.3 MB (15294981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10.2`

**does not exist** (yet?)

## `django:1.10`

```console
$ docker pull django@sha256:5fad082d80122c3d15c3f8eb73d505f73763c97d73e44a9e1e15cbf0abaf9062
```

-	Platforms:
	-	linux; amd64

### `django:1.10` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157798109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1330314259768d5c66e03430306b5ae65070aae97c226a8ca885b9951f97ef1`
-	Default Command: `["python3"]`

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
# Fri, 23 Sep 2016 22:27:27 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_VERSION=3.4.5
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:39:25 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:39:26 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 23 Sep 2016 22:39:26 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 00:24:44 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:24:44 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:25:04 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:285677e2a7cecc5010f75374bc5567005a094e0f9e117edf38da2bff01c8eb48`  
		Last Modified: Fri, 23 Sep 2016 22:39:40 GMT  
		Size: 19.5 MB (19528394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a495afed098655d5ce9e0b57cae9347daafc81cb63d906a57e10be92302234d1`  
		Last Modified: Fri, 23 Sep 2016 22:39:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae11ba615d27c718cfc036425562dc0b1eab48d0a58c4ade3154256b6b99991`  
		Last Modified: Sat, 24 Sep 2016 00:25:32 GMT  
		Size: 68.3 MB (68313591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8725ce046097ff59a6a626983aac484bced51796051ebf2eedf2205073ede`  
		Last Modified: Sat, 24 Sep 2016 00:25:16 GMT  
		Size: 15.3 MB (15294981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1`

```console
$ docker pull django@sha256:5fad082d80122c3d15c3f8eb73d505f73763c97d73e44a9e1e15cbf0abaf9062
```

-	Platforms:
	-	linux; amd64

### `django:1` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157798109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1330314259768d5c66e03430306b5ae65070aae97c226a8ca885b9951f97ef1`
-	Default Command: `["python3"]`

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
# Fri, 23 Sep 2016 22:27:27 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_VERSION=3.4.5
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:39:25 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:39:26 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 23 Sep 2016 22:39:26 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 00:24:44 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:24:44 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:25:04 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:285677e2a7cecc5010f75374bc5567005a094e0f9e117edf38da2bff01c8eb48`  
		Last Modified: Fri, 23 Sep 2016 22:39:40 GMT  
		Size: 19.5 MB (19528394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a495afed098655d5ce9e0b57cae9347daafc81cb63d906a57e10be92302234d1`  
		Last Modified: Fri, 23 Sep 2016 22:39:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae11ba615d27c718cfc036425562dc0b1eab48d0a58c4ade3154256b6b99991`  
		Last Modified: Sat, 24 Sep 2016 00:25:32 GMT  
		Size: 68.3 MB (68313591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8725ce046097ff59a6a626983aac484bced51796051ebf2eedf2205073ede`  
		Last Modified: Sat, 24 Sep 2016 00:25:16 GMT  
		Size: 15.3 MB (15294981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:latest`

```console
$ docker pull django@sha256:5fad082d80122c3d15c3f8eb73d505f73763c97d73e44a9e1e15cbf0abaf9062
```

-	Platforms:
	-	linux; amd64

### `django:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157798109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1330314259768d5c66e03430306b5ae65070aae97c226a8ca885b9951f97ef1`
-	Default Command: `["python3"]`

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
# Fri, 23 Sep 2016 22:27:27 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_VERSION=3.4.5
# Fri, 23 Sep 2016 22:37:10 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Fri, 23 Sep 2016 22:39:25 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Fri, 23 Sep 2016 22:39:26 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 23 Sep 2016 22:39:26 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 00:24:44 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:24:44 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:25:04 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:285677e2a7cecc5010f75374bc5567005a094e0f9e117edf38da2bff01c8eb48`  
		Last Modified: Fri, 23 Sep 2016 22:39:40 GMT  
		Size: 19.5 MB (19528394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a495afed098655d5ce9e0b57cae9347daafc81cb63d906a57e10be92302234d1`  
		Last Modified: Fri, 23 Sep 2016 22:39:34 GMT  
		Size: 268.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae11ba615d27c718cfc036425562dc0b1eab48d0a58c4ade3154256b6b99991`  
		Last Modified: Sat, 24 Sep 2016 00:25:32 GMT  
		Size: 68.3 MB (68313591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59e8725ce046097ff59a6a626983aac484bced51796051ebf2eedf2205073ede`  
		Last Modified: Sat, 24 Sep 2016 00:25:16 GMT  
		Size: 15.3 MB (15294981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python3-onbuild`

```console
$ docker pull django@sha256:cb0936521eb420f34f6242a295409dcd0aa07e3da9fd8fbc8ca97b7521e79fef
```

-	Platforms:
	-	linux; amd64

### `django:python3-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.8 MB (281832464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8f673213fe335e32d4e10d07380168d863fc28cf3b41a612211f1e01da390b`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:13:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 05:13:41 GMT
ENV LANG=C.UTF-8
# Sat, 24 Sep 2016 05:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:22:14 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 24 Sep 2016 05:28:43 GMT
ENV PYTHON_VERSION=3.4.5
# Sat, 24 Sep 2016 05:28:43 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 24 Sep 2016 05:30:31 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 24 Sep 2016 05:30:32 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 24 Sep 2016 05:30:32 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 05:31:04 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:31:05 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:31:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 24 Sep 2016 05:31:05 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 24 Sep 2016 05:31:06 GMT
ONBUILD COPY . /usr/src/app
# Sat, 24 Sep 2016 05:53:43 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:53:43 GMT
EXPOSE 8000/tcp
# Sat, 24 Sep 2016 05:53:43 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766692404ca72f4e31e248eb82f8eca6b2fcc15b22930ec50e3804cc3efe0aba`  
		Last Modified: Sat, 24 Sep 2016 05:14:22 GMT  
		Size: 2.9 MB (2888618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fab7bfacb2c2a1792aae9066510a1fb398f82f09532ef4ce85c204f64699c22`  
		Last Modified: Sat, 24 Sep 2016 05:30:46 GMT  
		Size: 19.1 MB (19141876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546e67c44271bf3c4cb8a0042f6d122d942279a5e34cc103bdab37c3b64fae29`  
		Last Modified: Sat, 24 Sep 2016 05:30:39 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bdf5d4586da625830f741b7fa9cd12a079b3d1604eae54f73fdccf9d19d92`  
		Last Modified: Sat, 24 Sep 2016 05:31:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be4221cd2912f00dea203ae64b848119372c3a68f7c6b49ee31242c92a6feba`  
		Last Modified: Sat, 24 Sep 2016 05:53:57 GMT  
		Size: 16.4 MB (16379184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:onbuild`

```console
$ docker pull django@sha256:cb0936521eb420f34f6242a295409dcd0aa07e3da9fd8fbc8ca97b7521e79fef
```

-	Platforms:
	-	linux; amd64

### `django:onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.8 MB (281832464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8f673213fe335e32d4e10d07380168d863fc28cf3b41a612211f1e01da390b`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:13:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 05:13:41 GMT
ENV LANG=C.UTF-8
# Sat, 24 Sep 2016 05:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:22:14 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 24 Sep 2016 05:28:43 GMT
ENV PYTHON_VERSION=3.4.5
# Sat, 24 Sep 2016 05:28:43 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 24 Sep 2016 05:30:31 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 24 Sep 2016 05:30:32 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 24 Sep 2016 05:30:32 GMT
CMD ["python3"]
# Sat, 24 Sep 2016 05:31:04 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:31:05 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:31:05 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 24 Sep 2016 05:31:05 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 24 Sep 2016 05:31:06 GMT
ONBUILD COPY . /usr/src/app
# Sat, 24 Sep 2016 05:53:43 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:53:43 GMT
EXPOSE 8000/tcp
# Sat, 24 Sep 2016 05:53:43 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766692404ca72f4e31e248eb82f8eca6b2fcc15b22930ec50e3804cc3efe0aba`  
		Last Modified: Sat, 24 Sep 2016 05:14:22 GMT  
		Size: 2.9 MB (2888618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fab7bfacb2c2a1792aae9066510a1fb398f82f09532ef4ce85c204f64699c22`  
		Last Modified: Sat, 24 Sep 2016 05:30:46 GMT  
		Size: 19.1 MB (19141876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546e67c44271bf3c4cb8a0042f6d122d942279a5e34cc103bdab37c3b64fae29`  
		Last Modified: Sat, 24 Sep 2016 05:30:39 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bdf5d4586da625830f741b7fa9cd12a079b3d1604eae54f73fdccf9d19d92`  
		Last Modified: Sat, 24 Sep 2016 05:31:13 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be4221cd2912f00dea203ae64b848119372c3a68f7c6b49ee31242c92a6feba`  
		Last Modified: Sat, 24 Sep 2016 05:53:57 GMT  
		Size: 16.4 MB (16379184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1.10.2-python2`

**does not exist** (yet?)

## `django:1.10-python2`

```console
$ docker pull django@sha256:f8dbba4eeb806787f941f6981aa7f197a8617a49de99510a9103069843d0b2e4
```

-	Platforms:
	-	linux; amd64

### `django:1.10-python2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154579918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c656c0f0840a5d785e35e4193aca9d5224bfe34583ca34b3ee2f65bca0f1ed6`
-	Default Command: `["python2"]`

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
# Sat, 24 Sep 2016 00:27:09 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:27:09 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:27:24 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:392423e7e80c006a1c96bd5bdea2ff8e70ab34fda56ef6de7fab4d2591cc62cf`  
		Last Modified: Sat, 24 Sep 2016 00:27:52 GMT  
		Size: 68.3 MB (68313494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6a6cfd0d9dcdc02aa8b269a11c282ef40e09acdd370e387f2996911b357c7d`  
		Last Modified: Sat, 24 Sep 2016 00:27:36 GMT  
		Size: 15.3 MB (15304081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:1-python2`

```console
$ docker pull django@sha256:f8dbba4eeb806787f941f6981aa7f197a8617a49de99510a9103069843d0b2e4
```

-	Platforms:
	-	linux; amd64

### `django:1-python2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154579918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c656c0f0840a5d785e35e4193aca9d5224bfe34583ca34b3ee2f65bca0f1ed6`
-	Default Command: `["python2"]`

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
# Sat, 24 Sep 2016 00:27:09 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:27:09 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:27:24 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:392423e7e80c006a1c96bd5bdea2ff8e70ab34fda56ef6de7fab4d2591cc62cf`  
		Last Modified: Sat, 24 Sep 2016 00:27:52 GMT  
		Size: 68.3 MB (68313494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6a6cfd0d9dcdc02aa8b269a11c282ef40e09acdd370e387f2996911b357c7d`  
		Last Modified: Sat, 24 Sep 2016 00:27:36 GMT  
		Size: 15.3 MB (15304081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2`

```console
$ docker pull django@sha256:f8dbba4eeb806787f941f6981aa7f197a8617a49de99510a9103069843d0b2e4
```

-	Platforms:
	-	linux; amd64

### `django:python2` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.6 MB (154579918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c656c0f0840a5d785e35e4193aca9d5224bfe34583ca34b3ee2f65bca0f1ed6`
-	Default Command: `["python2"]`

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
# Sat, 24 Sep 2016 00:27:09 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:27:09 GMT
ENV DJANGO_VERSION=1.10.1
# Sat, 24 Sep 2016 00:27:24 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
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
	-	`sha256:392423e7e80c006a1c96bd5bdea2ff8e70ab34fda56ef6de7fab4d2591cc62cf`  
		Last Modified: Sat, 24 Sep 2016 00:27:52 GMT  
		Size: 68.3 MB (68313494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6a6cfd0d9dcdc02aa8b269a11c282ef40e09acdd370e387f2996911b357c7d`  
		Last Modified: Sat, 24 Sep 2016 00:27:36 GMT  
		Size: 15.3 MB (15304081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `django:python2-onbuild`

```console
$ docker pull django@sha256:ead8d31028f6defb4fc2b889e3179b1dbfb7ac33bb569ce5cbfdc422f558ce6e
```

-	Platforms:
	-	linux; amd64

### `django:python2-onbuild` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283510246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89296562280fe1468320aa7a7fda157b4c3884e07e615ae75431efb66278f242`
-	Default Command: `["python","manage.py","runserver","0.0.0.0:8000"]`

```dockerfile
# Fri, 23 Sep 2016 18:08:50 GMT
ADD file:c6c23585ab140b0b320d4e99bc1b0eb544c9e96c24d90fec5e069a6d57d335ca in / 
# Fri, 23 Sep 2016 18:08:51 GMT
CMD ["/bin/bash"]
# Fri, 23 Sep 2016 18:25:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Sep 2016 18:26:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 00:13:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libmysqlclient-dev 		libncurses-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:13:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 24 Sep 2016 05:13:41 GMT
ENV LANG=C.UTF-8
# Sat, 24 Sep 2016 05:13:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:18:33 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 24 Sep 2016 05:18:33 GMT
ENV PYTHON_VERSION=2.7.12
# Sat, 24 Sep 2016 05:18:33 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 24 Sep 2016 05:20:11 GMT
RUN set -ex 	&& buildDeps=' 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 24 Sep 2016 05:20:13 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 24 Sep 2016 05:20:13 GMT
CMD ["python2"]
# Sat, 24 Sep 2016 05:20:56 GMT
RUN mkdir -p /usr/src/app
# Sat, 24 Sep 2016 05:20:57 GMT
WORKDIR /usr/src/app
# Sat, 24 Sep 2016 05:20:57 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 24 Sep 2016 05:20:57 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 24 Sep 2016 05:20:58 GMT
ONBUILD COPY . /usr/src/app
# Sat, 24 Sep 2016 05:54:26 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 24 Sep 2016 05:54:27 GMT
EXPOSE 8000/tcp
# Sat, 24 Sep 2016 05:54:27 GMT
CMD ["python" "manage.py" "runserver" "0.0.0.0:8000"]
```

-	Layers:
	-	`sha256:6a5a5368e0c2d3e5909184fa28ddfd56072e7ff3ee9a945876f7eee5896ef5bb`  
		Last Modified: Fri, 23 Sep 2016 18:10:19 GMT  
		Size: 51.4 MB (51354364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9457ec39de00bc70af1c9631b9ae6ede5a3ab715e6492c0a2641868ec1deda`  
		Last Modified: Fri, 23 Sep 2016 18:25:33 GMT  
		Size: 18.5 MB (18528257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff18e19c2db42055e6f34323700737bde3c819b413997cddace2c1b7180d7efd`  
		Last Modified: Fri, 23 Sep 2016 18:26:43 GMT  
		Size: 42.5 MB (42495967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3d69edbe90ef916e1ecd8d197f056de873ed08bcfd55a1cd0b43588f3dbb9a`  
		Last Modified: Sat, 24 Sep 2016 00:13:39 GMT  
		Size: 131.0 MB (131043806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766692404ca72f4e31e248eb82f8eca6b2fcc15b22930ec50e3804cc3efe0aba`  
		Last Modified: Sat, 24 Sep 2016 05:14:22 GMT  
		Size: 2.9 MB (2888618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea0cc832151e30b69e325f59748dcb95068a36c90307371de01dfeb5509fa87`  
		Last Modified: Sat, 24 Sep 2016 05:20:29 GMT  
		Size: 15.9 MB (15879568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80b8049666f98fdea8ee5d08d38e893fce8660db931be4b1499fbef0d1d0fb1`  
		Last Modified: Sat, 24 Sep 2016 05:20:23 GMT  
		Size: 4.9 MB (4940548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a497c0da64e5ce2a5df8b3400e557a8111b8f519be8bd9a41ffab9c156522b1e`  
		Last Modified: Sat, 24 Sep 2016 05:21:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f18aedb2a32548041b0debb3d5c4ccc4d61efc7a59ea4ce964acae877175d7d`  
		Last Modified: Sat, 24 Sep 2016 05:54:41 GMT  
		Size: 16.4 MB (16378992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
