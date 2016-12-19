<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `celery`

-	[`celery:4.0.2`](#celery402)
-	[`celery:4.0`](#celery40)
-	[`celery:4`](#celery4)
-	[`celery:3.1.25`](#celery3125)
-	[`celery:3.1`](#celery31)
-	[`celery:3`](#celery3)
-	[`celery:latest`](#celerylatest)

## `celery:4.0.2`

```console
$ docker pull celery@sha256:bdf2701db11d279f83f62588805410791850f45b07f5d9cd5145ab3130507e2f
```

-	Platforms:
	-	linux; amd64

### `celery:4.0.2` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80426944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1f1bccd5bbe51c2c65f3b660cc2a23d5296647282a6f135db7d0af22d2be8a`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:47:38 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 14 Dec 2016 18:47:38 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 14 Dec 2016 18:47:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:50:00 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:50:08 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Dec 2016 18:50:09 GMT
CMD ["python3"]
# Mon, 19 Dec 2016 16:32:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 19 Dec 2016 16:32:24 GMT
WORKDIR /home/user
# Mon, 19 Dec 2016 16:32:29 GMT
RUN pip install redis
# Mon, 19 Dec 2016 22:05:45 GMT
ENV CELERY_VERSION=4.0.2
# Mon, 19 Dec 2016 22:05:50 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 19 Dec 2016 22:05:51 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 19 Dec 2016 22:05:51 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 19 Dec 2016 22:05:52 GMT
USER [user]
# Mon, 19 Dec 2016 22:05:52 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22a97b27ff04c94271cda7368cd5a78829fbfaf39b0b561081a503948b6ebe`  
		Last Modified: Mon, 19 Dec 2016 18:15:03 GMT  
		Size: 20.9 MB (20896099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f95b6cb774eb142998bbd8ee1781e27505bbb167a71fe6ea9470500a0d0f036`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233157ebca729137fb68673915d1fcad8b618b470095cd169c714aa902515883`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141958752e1d34fae00ab6479f69d976b42995ccd7906b7c0528e23e3df8e9e`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 1.9 MB (1852344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c123dda5da2588f99892389c35303fcc0fac5fcddc3157f5d7e09678bc35a7`  
		Last Modified: Mon, 19 Dec 2016 22:06:08 GMT  
		Size: 3.0 MB (2971275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b951d25b042583ca5ec691a02fb49ceebb5f29d49787f88f63252b2a93fe29cb`  
		Last Modified: Mon, 19 Dec 2016 22:06:07 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:4.0`

```console
$ docker pull celery@sha256:bdf2701db11d279f83f62588805410791850f45b07f5d9cd5145ab3130507e2f
```

-	Platforms:
	-	linux; amd64

### `celery:4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80426944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1f1bccd5bbe51c2c65f3b660cc2a23d5296647282a6f135db7d0af22d2be8a`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:47:38 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 14 Dec 2016 18:47:38 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 14 Dec 2016 18:47:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:50:00 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:50:08 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Dec 2016 18:50:09 GMT
CMD ["python3"]
# Mon, 19 Dec 2016 16:32:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 19 Dec 2016 16:32:24 GMT
WORKDIR /home/user
# Mon, 19 Dec 2016 16:32:29 GMT
RUN pip install redis
# Mon, 19 Dec 2016 22:05:45 GMT
ENV CELERY_VERSION=4.0.2
# Mon, 19 Dec 2016 22:05:50 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 19 Dec 2016 22:05:51 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 19 Dec 2016 22:05:51 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 19 Dec 2016 22:05:52 GMT
USER [user]
# Mon, 19 Dec 2016 22:05:52 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22a97b27ff04c94271cda7368cd5a78829fbfaf39b0b561081a503948b6ebe`  
		Last Modified: Mon, 19 Dec 2016 18:15:03 GMT  
		Size: 20.9 MB (20896099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f95b6cb774eb142998bbd8ee1781e27505bbb167a71fe6ea9470500a0d0f036`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233157ebca729137fb68673915d1fcad8b618b470095cd169c714aa902515883`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141958752e1d34fae00ab6479f69d976b42995ccd7906b7c0528e23e3df8e9e`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 1.9 MB (1852344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c123dda5da2588f99892389c35303fcc0fac5fcddc3157f5d7e09678bc35a7`  
		Last Modified: Mon, 19 Dec 2016 22:06:08 GMT  
		Size: 3.0 MB (2971275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b951d25b042583ca5ec691a02fb49ceebb5f29d49787f88f63252b2a93fe29cb`  
		Last Modified: Mon, 19 Dec 2016 22:06:07 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:4`

```console
$ docker pull celery@sha256:bdf2701db11d279f83f62588805410791850f45b07f5d9cd5145ab3130507e2f
```

-	Platforms:
	-	linux; amd64

### `celery:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80426944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e1f1bccd5bbe51c2c65f3b660cc2a23d5296647282a6f135db7d0af22d2be8a`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:47:38 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 14 Dec 2016 18:47:38 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 14 Dec 2016 18:47:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:50:00 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:50:08 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Dec 2016 18:50:09 GMT
CMD ["python3"]
# Mon, 19 Dec 2016 16:32:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 19 Dec 2016 16:32:24 GMT
WORKDIR /home/user
# Mon, 19 Dec 2016 16:32:29 GMT
RUN pip install redis
# Mon, 19 Dec 2016 22:05:45 GMT
ENV CELERY_VERSION=4.0.2
# Mon, 19 Dec 2016 22:05:50 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 19 Dec 2016 22:05:51 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 19 Dec 2016 22:05:51 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 19 Dec 2016 22:05:52 GMT
USER [user]
# Mon, 19 Dec 2016 22:05:52 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22a97b27ff04c94271cda7368cd5a78829fbfaf39b0b561081a503948b6ebe`  
		Last Modified: Mon, 19 Dec 2016 18:15:03 GMT  
		Size: 20.9 MB (20896099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f95b6cb774eb142998bbd8ee1781e27505bbb167a71fe6ea9470500a0d0f036`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233157ebca729137fb68673915d1fcad8b618b470095cd169c714aa902515883`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141958752e1d34fae00ab6479f69d976b42995ccd7906b7c0528e23e3df8e9e`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 1.9 MB (1852344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c123dda5da2588f99892389c35303fcc0fac5fcddc3157f5d7e09678bc35a7`  
		Last Modified: Mon, 19 Dec 2016 22:06:08 GMT  
		Size: 3.0 MB (2971275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b951d25b042583ca5ec691a02fb49ceebb5f29d49787f88f63252b2a93fe29cb`  
		Last Modified: Mon, 19 Dec 2016 22:06:07 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3.1.25`

```console
$ docker pull celery@sha256:ec266b3d9226d82f9c86152cd3a28267500051c4d2568cd7f60e38e98c1aebb0
```

-	Platforms:
	-	linux; amd64

### `celery:3.1.25` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81649115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721deb3746a3b0532af0f0424623222839aa746e276bc8f894862126b30e00ec`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:47:38 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 14 Dec 2016 18:47:38 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 14 Dec 2016 18:47:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:50:00 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:50:08 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Dec 2016 18:50:09 GMT
CMD ["python3"]
# Mon, 19 Dec 2016 16:32:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 19 Dec 2016 16:32:24 GMT
WORKDIR /home/user
# Mon, 19 Dec 2016 16:32:29 GMT
RUN pip install redis
# Mon, 19 Dec 2016 16:32:29 GMT
ENV CELERY_VERSION=3.1.25
# Mon, 19 Dec 2016 16:32:34 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 19 Dec 2016 16:32:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 19 Dec 2016 16:32:35 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 19 Dec 2016 16:32:35 GMT
USER [user]
# Mon, 19 Dec 2016 16:32:36 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22a97b27ff04c94271cda7368cd5a78829fbfaf39b0b561081a503948b6ebe`  
		Last Modified: Mon, 19 Dec 2016 18:15:03 GMT  
		Size: 20.9 MB (20896099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f95b6cb774eb142998bbd8ee1781e27505bbb167a71fe6ea9470500a0d0f036`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233157ebca729137fb68673915d1fcad8b618b470095cd169c714aa902515883`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141958752e1d34fae00ab6479f69d976b42995ccd7906b7c0528e23e3df8e9e`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 1.9 MB (1852344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e6b14a642fd96151c52befccc09b340c65bf613ddf75a265dbb5e0165d98c7`  
		Last Modified: Mon, 19 Dec 2016 18:14:54 GMT  
		Size: 4.2 MB (4193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9b8f8e06fe939fae72893cd85ec78c5d093827c490fadd231dac7bbec3cbe6`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3.1`

```console
$ docker pull celery@sha256:ec266b3d9226d82f9c86152cd3a28267500051c4d2568cd7f60e38e98c1aebb0
```

-	Platforms:
	-	linux; amd64

### `celery:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81649115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721deb3746a3b0532af0f0424623222839aa746e276bc8f894862126b30e00ec`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:47:38 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 14 Dec 2016 18:47:38 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 14 Dec 2016 18:47:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:50:00 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:50:08 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Dec 2016 18:50:09 GMT
CMD ["python3"]
# Mon, 19 Dec 2016 16:32:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 19 Dec 2016 16:32:24 GMT
WORKDIR /home/user
# Mon, 19 Dec 2016 16:32:29 GMT
RUN pip install redis
# Mon, 19 Dec 2016 16:32:29 GMT
ENV CELERY_VERSION=3.1.25
# Mon, 19 Dec 2016 16:32:34 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 19 Dec 2016 16:32:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 19 Dec 2016 16:32:35 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 19 Dec 2016 16:32:35 GMT
USER [user]
# Mon, 19 Dec 2016 16:32:36 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22a97b27ff04c94271cda7368cd5a78829fbfaf39b0b561081a503948b6ebe`  
		Last Modified: Mon, 19 Dec 2016 18:15:03 GMT  
		Size: 20.9 MB (20896099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f95b6cb774eb142998bbd8ee1781e27505bbb167a71fe6ea9470500a0d0f036`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233157ebca729137fb68673915d1fcad8b618b470095cd169c714aa902515883`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141958752e1d34fae00ab6479f69d976b42995ccd7906b7c0528e23e3df8e9e`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 1.9 MB (1852344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e6b14a642fd96151c52befccc09b340c65bf613ddf75a265dbb5e0165d98c7`  
		Last Modified: Mon, 19 Dec 2016 18:14:54 GMT  
		Size: 4.2 MB (4193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9b8f8e06fe939fae72893cd85ec78c5d093827c490fadd231dac7bbec3cbe6`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3`

```console
$ docker pull celery@sha256:ec266b3d9226d82f9c86152cd3a28267500051c4d2568cd7f60e38e98c1aebb0
```

-	Platforms:
	-	linux; amd64

### `celery:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81649115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721deb3746a3b0532af0f0424623222839aa746e276bc8f894862126b30e00ec`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:47:38 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 14 Dec 2016 18:47:38 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 14 Dec 2016 18:47:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:50:00 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:50:08 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Dec 2016 18:50:09 GMT
CMD ["python3"]
# Mon, 19 Dec 2016 16:32:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 19 Dec 2016 16:32:24 GMT
WORKDIR /home/user
# Mon, 19 Dec 2016 16:32:29 GMT
RUN pip install redis
# Mon, 19 Dec 2016 16:32:29 GMT
ENV CELERY_VERSION=3.1.25
# Mon, 19 Dec 2016 16:32:34 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 19 Dec 2016 16:32:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 19 Dec 2016 16:32:35 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 19 Dec 2016 16:32:35 GMT
USER [user]
# Mon, 19 Dec 2016 16:32:36 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22a97b27ff04c94271cda7368cd5a78829fbfaf39b0b561081a503948b6ebe`  
		Last Modified: Mon, 19 Dec 2016 18:15:03 GMT  
		Size: 20.9 MB (20896099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f95b6cb774eb142998bbd8ee1781e27505bbb167a71fe6ea9470500a0d0f036`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233157ebca729137fb68673915d1fcad8b618b470095cd169c714aa902515883`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141958752e1d34fae00ab6479f69d976b42995ccd7906b7c0528e23e3df8e9e`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 1.9 MB (1852344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e6b14a642fd96151c52befccc09b340c65bf613ddf75a265dbb5e0165d98c7`  
		Last Modified: Mon, 19 Dec 2016 18:14:54 GMT  
		Size: 4.2 MB (4193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9b8f8e06fe939fae72893cd85ec78c5d093827c490fadd231dac7bbec3cbe6`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:latest`

```console
$ docker pull celery@sha256:ec266b3d9226d82f9c86152cd3a28267500051c4d2568cd7f60e38e98c1aebb0
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81649115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:721deb3746a3b0532af0f0424623222839aa746e276bc8f894862126b30e00ec`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Wed, 14 Dec 2016 17:36:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Dec 2016 17:36:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Dec 2016 17:38:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Dec 2016 18:47:38 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 14 Dec 2016 18:47:38 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 14 Dec 2016 18:47:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:50:00 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:50:08 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Dec 2016 18:50:09 GMT
CMD ["python3"]
# Mon, 19 Dec 2016 16:32:24 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 19 Dec 2016 16:32:24 GMT
WORKDIR /home/user
# Mon, 19 Dec 2016 16:32:29 GMT
RUN pip install redis
# Mon, 19 Dec 2016 16:32:29 GMT
ENV CELERY_VERSION=3.1.25
# Mon, 19 Dec 2016 16:32:34 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 19 Dec 2016 16:32:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 19 Dec 2016 16:32:35 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 19 Dec 2016 16:32:35 GMT
USER [user]
# Mon, 19 Dec 2016 16:32:36 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4665cede9d1cf30769226da349e1f7e35bf16f75d90688b9cab8569ce00ab79`  
		Last Modified: Mon, 19 Dec 2016 18:14:55 GMT  
		Size: 3.3 MB (3339260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22a97b27ff04c94271cda7368cd5a78829fbfaf39b0b561081a503948b6ebe`  
		Last Modified: Mon, 19 Dec 2016 18:15:03 GMT  
		Size: 20.9 MB (20896099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f95b6cb774eb142998bbd8ee1781e27505bbb167a71fe6ea9470500a0d0f036`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233157ebca729137fb68673915d1fcad8b618b470095cd169c714aa902515883`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 4.3 KB (4341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c141958752e1d34fae00ab6479f69d976b42995ccd7906b7c0528e23e3df8e9e`  
		Last Modified: Mon, 19 Dec 2016 18:14:52 GMT  
		Size: 1.9 MB (1852344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e6b14a642fd96151c52befccc09b340c65bf613ddf75a265dbb5e0165d98c7`  
		Last Modified: Mon, 19 Dec 2016 18:14:54 GMT  
		Size: 4.2 MB (4193446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9b8f8e06fe939fae72893cd85ec78c5d093827c490fadd231dac7bbec3cbe6`  
		Last Modified: Mon, 19 Dec 2016 18:14:51 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
