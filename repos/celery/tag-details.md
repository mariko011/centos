<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `celery`

-	[`celery:4.0.0rc7`](#celery400rc7)
-	[`celery:4.0`](#celery40)
-	[`celery:4`](#celery4)
-	[`celery:3.1.25`](#celery3125)
-	[`celery:3.1`](#celery31)
-	[`celery:3`](#celery3)
-	[`celery:latest`](#celerylatest)

## `celery:4.0.0rc7`

```console
$ docker pull celery@sha256:c7fd169074fe890a51bbaabfb7076b0ecdae75143e1fef416e3a4e83a6d1fe97
```

-	Platforms:
	-	linux; amd64

### `celery:4.0.0rc7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80457469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e13c9d2cb7969a8acd3124b8fb08fd428312769971935e3eb8c87b1d0cc316`
-	Default Command: `["celery","worker"]`

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
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_VERSION=3.5.2
# Thu, 17 Nov 2016 22:43:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:45:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:45:49 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:45:49 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:53:40 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Nov 2016 00:53:40 GMT
WORKDIR /home/user
# Fri, 18 Nov 2016 00:53:43 GMT
RUN pip install redis
# Fri, 18 Nov 2016 00:53:51 GMT
ENV CELERY_VERSION=4.0.0rc7
# Fri, 18 Nov 2016 00:53:55 GMT
RUN pip install celery=="$CELERY_VERSION"
# Fri, 18 Nov 2016 00:53:56 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Fri, 18 Nov 2016 00:53:56 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Fri, 18 Nov 2016 00:53:56 GMT
USER [user]
# Fri, 18 Nov 2016 00:53:56 GMT
CMD ["celery" "worker"]
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
	-	`sha256:230efb915eab5edf0aaece46ddd3ecd606142e2daaa3bec5b99fc5f67260e2eb`  
		Last Modified: Thu, 17 Nov 2016 23:05:26 GMT  
		Size: 20.9 MB (20896004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ff1366f29cb90d808837e2c5955895721858fbcede4c61905a2d2941503735`  
		Last Modified: Thu, 17 Nov 2016 23:05:20 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80be3f3d5f3137cafa842f74ff5dc398da9d4c202e0a637205a47d343ef4994`  
		Last Modified: Fri, 18 Nov 2016 00:54:09 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65762bb49ada7294f7fd120aeac432b0772662c3465c9beabe0ae6ee5f42e44c`  
		Last Modified: Fri, 18 Nov 2016 00:54:11 GMT  
		Size: 1.9 MB (1851789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acdcda2705870d445fa503280206b4c5caf3014ab71eeb3f1b2064cfe2f4b98`  
		Last Modified: Fri, 18 Nov 2016 00:55:13 GMT  
		Size: 3.0 MB (3009227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535eaa8d68fdd47f5169c31beaa04a0fd78e7923f1f911ca9b4ff614f848d7db`  
		Last Modified: Fri, 18 Nov 2016 00:55:13 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:4.0`

```console
$ docker pull celery@sha256:c7fd169074fe890a51bbaabfb7076b0ecdae75143e1fef416e3a4e83a6d1fe97
```

-	Platforms:
	-	linux; amd64

### `celery:4.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80457469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e13c9d2cb7969a8acd3124b8fb08fd428312769971935e3eb8c87b1d0cc316`
-	Default Command: `["celery","worker"]`

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
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_VERSION=3.5.2
# Thu, 17 Nov 2016 22:43:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:45:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:45:49 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:45:49 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:53:40 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Nov 2016 00:53:40 GMT
WORKDIR /home/user
# Fri, 18 Nov 2016 00:53:43 GMT
RUN pip install redis
# Fri, 18 Nov 2016 00:53:51 GMT
ENV CELERY_VERSION=4.0.0rc7
# Fri, 18 Nov 2016 00:53:55 GMT
RUN pip install celery=="$CELERY_VERSION"
# Fri, 18 Nov 2016 00:53:56 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Fri, 18 Nov 2016 00:53:56 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Fri, 18 Nov 2016 00:53:56 GMT
USER [user]
# Fri, 18 Nov 2016 00:53:56 GMT
CMD ["celery" "worker"]
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
	-	`sha256:230efb915eab5edf0aaece46ddd3ecd606142e2daaa3bec5b99fc5f67260e2eb`  
		Last Modified: Thu, 17 Nov 2016 23:05:26 GMT  
		Size: 20.9 MB (20896004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ff1366f29cb90d808837e2c5955895721858fbcede4c61905a2d2941503735`  
		Last Modified: Thu, 17 Nov 2016 23:05:20 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80be3f3d5f3137cafa842f74ff5dc398da9d4c202e0a637205a47d343ef4994`  
		Last Modified: Fri, 18 Nov 2016 00:54:09 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65762bb49ada7294f7fd120aeac432b0772662c3465c9beabe0ae6ee5f42e44c`  
		Last Modified: Fri, 18 Nov 2016 00:54:11 GMT  
		Size: 1.9 MB (1851789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acdcda2705870d445fa503280206b4c5caf3014ab71eeb3f1b2064cfe2f4b98`  
		Last Modified: Fri, 18 Nov 2016 00:55:13 GMT  
		Size: 3.0 MB (3009227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535eaa8d68fdd47f5169c31beaa04a0fd78e7923f1f911ca9b4ff614f848d7db`  
		Last Modified: Fri, 18 Nov 2016 00:55:13 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:4`

```console
$ docker pull celery@sha256:2c95efcd0afc186c10ac7bd667337ffdc6870d79eff9cd852392fd20601f9374
```

-	Platforms:
	-	linux; amd64

### `celery:4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80351691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faa32f645d7ad93847a0c6c2a80623351f548b0fd3498a12dab3e08668f5d154`
-	Default Command: `["celery","worker"]`

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
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:33:09 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:33:10 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 09 Nov 2016 00:33:10 GMT
CMD ["python3"]
# Thu, 10 Nov 2016 02:56:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 10 Nov 2016 02:56:43 GMT
WORKDIR /home/user
# Thu, 10 Nov 2016 02:56:48 GMT
RUN pip install redis
# Thu, 10 Nov 2016 02:58:04 GMT
ENV CELERY_VERSION=4.0.0rc7
# Thu, 10 Nov 2016 02:58:08 GMT
RUN pip install celery=="$CELERY_VERSION"
# Thu, 10 Nov 2016 02:58:17 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Thu, 10 Nov 2016 02:58:17 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Thu, 10 Nov 2016 02:58:17 GMT
USER [user]
# Thu, 10 Nov 2016 02:58:18 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7045ec8a72dddd6ebfc2c9e81418a8cee7ced26f620b3d61cae55f103c8e4799`  
		Last Modified: Wed, 09 Nov 2016 00:33:28 GMT  
		Size: 20.8 MB (20844135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cbc2c8e547bf14bd3d3ec6fa4d0c645c6a459cbe21af12bacec2ce5944b631`  
		Last Modified: Wed, 09 Nov 2016 00:33:22 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d86aa590b7dddfcb291d3637015db70c088b86dbaea200ba037eee9a1b387ee`  
		Last Modified: Thu, 10 Nov 2016 02:57:08 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c78bfd4947960e5a6f5f7995742e4d8a090568ca76af1191dc93a216653cee`  
		Last Modified: Thu, 10 Nov 2016 02:57:09 GMT  
		Size: 1.8 MB (1797944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:035ae9bfa08c111c3d8126282c885f7cb8704b7a9491bd60d2dab30915175289`  
		Last Modified: Thu, 10 Nov 2016 02:58:30 GMT  
		Size: 3.0 MB (3009174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecd14242c227246a43264f3143a1a5e669ee4af282fe62ca7c8d2dfda6bb4f6`  
		Last Modified: Thu, 10 Nov 2016 02:58:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3.1.25`

```console
$ docker pull celery@sha256:b2ab7e2bd77a45a5f01ca9946bc8ea6623e5a208fde45989e06678f931cc8ab6
```

-	Platforms:
	-	linux; amd64

### `celery:3.1.25` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81634464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0a93680a55db3928384d9b9989d69ebb7f9b323bd52a9057301ccb3f7aedbf`
-	Default Command: `["celery","worker"]`

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
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_VERSION=3.5.2
# Thu, 17 Nov 2016 22:43:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:45:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:45:49 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:45:49 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:53:40 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Nov 2016 00:53:40 GMT
WORKDIR /home/user
# Fri, 18 Nov 2016 00:53:43 GMT
RUN pip install redis
# Fri, 18 Nov 2016 00:53:43 GMT
ENV CELERY_VERSION=3.1.25
# Fri, 18 Nov 2016 00:53:49 GMT
RUN pip install celery=="$CELERY_VERSION"
# Fri, 18 Nov 2016 00:53:50 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Fri, 18 Nov 2016 00:53:50 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Fri, 18 Nov 2016 00:53:50 GMT
USER [user]
# Fri, 18 Nov 2016 00:53:50 GMT
CMD ["celery" "worker"]
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
	-	`sha256:230efb915eab5edf0aaece46ddd3ecd606142e2daaa3bec5b99fc5f67260e2eb`  
		Last Modified: Thu, 17 Nov 2016 23:05:26 GMT  
		Size: 20.9 MB (20896004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ff1366f29cb90d808837e2c5955895721858fbcede4c61905a2d2941503735`  
		Last Modified: Thu, 17 Nov 2016 23:05:20 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80be3f3d5f3137cafa842f74ff5dc398da9d4c202e0a637205a47d343ef4994`  
		Last Modified: Fri, 18 Nov 2016 00:54:09 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65762bb49ada7294f7fd120aeac432b0772662c3465c9beabe0ae6ee5f42e44c`  
		Last Modified: Fri, 18 Nov 2016 00:54:11 GMT  
		Size: 1.9 MB (1851789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd58d0733cd800c8fd2b62e647d3eb68d81c7d0f9915b2a08f17611d35fe54`  
		Last Modified: Fri, 18 Nov 2016 00:54:12 GMT  
		Size: 4.2 MB (4186222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd5c53fcd9ae27b7b64a051f5e369f8f9fbd49d44e00b7893a35729f2acd2df`  
		Last Modified: Fri, 18 Nov 2016 00:54:10 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3.1`

```console
$ docker pull celery@sha256:b2ab7e2bd77a45a5f01ca9946bc8ea6623e5a208fde45989e06678f931cc8ab6
```

-	Platforms:
	-	linux; amd64

### `celery:3.1` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81634464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0a93680a55db3928384d9b9989d69ebb7f9b323bd52a9057301ccb3f7aedbf`
-	Default Command: `["celery","worker"]`

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
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_VERSION=3.5.2
# Thu, 17 Nov 2016 22:43:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:45:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:45:49 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:45:49 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:53:40 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Nov 2016 00:53:40 GMT
WORKDIR /home/user
# Fri, 18 Nov 2016 00:53:43 GMT
RUN pip install redis
# Fri, 18 Nov 2016 00:53:43 GMT
ENV CELERY_VERSION=3.1.25
# Fri, 18 Nov 2016 00:53:49 GMT
RUN pip install celery=="$CELERY_VERSION"
# Fri, 18 Nov 2016 00:53:50 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Fri, 18 Nov 2016 00:53:50 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Fri, 18 Nov 2016 00:53:50 GMT
USER [user]
# Fri, 18 Nov 2016 00:53:50 GMT
CMD ["celery" "worker"]
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
	-	`sha256:230efb915eab5edf0aaece46ddd3ecd606142e2daaa3bec5b99fc5f67260e2eb`  
		Last Modified: Thu, 17 Nov 2016 23:05:26 GMT  
		Size: 20.9 MB (20896004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ff1366f29cb90d808837e2c5955895721858fbcede4c61905a2d2941503735`  
		Last Modified: Thu, 17 Nov 2016 23:05:20 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80be3f3d5f3137cafa842f74ff5dc398da9d4c202e0a637205a47d343ef4994`  
		Last Modified: Fri, 18 Nov 2016 00:54:09 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65762bb49ada7294f7fd120aeac432b0772662c3465c9beabe0ae6ee5f42e44c`  
		Last Modified: Fri, 18 Nov 2016 00:54:11 GMT  
		Size: 1.9 MB (1851789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd58d0733cd800c8fd2b62e647d3eb68d81c7d0f9915b2a08f17611d35fe54`  
		Last Modified: Fri, 18 Nov 2016 00:54:12 GMT  
		Size: 4.2 MB (4186222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd5c53fcd9ae27b7b64a051f5e369f8f9fbd49d44e00b7893a35729f2acd2df`  
		Last Modified: Fri, 18 Nov 2016 00:54:10 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3`

```console
$ docker pull celery@sha256:b2ab7e2bd77a45a5f01ca9946bc8ea6623e5a208fde45989e06678f931cc8ab6
```

-	Platforms:
	-	linux; amd64

### `celery:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.6 MB (81634464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e0a93680a55db3928384d9b9989d69ebb7f9b323bd52a9057301ccb3f7aedbf`
-	Default Command: `["celery","worker"]`

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
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_VERSION=3.5.2
# Thu, 17 Nov 2016 22:43:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 17 Nov 2016 22:45:48 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Thu, 17 Nov 2016 22:45:49 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 17 Nov 2016 22:45:49 GMT
CMD ["python3"]
# Fri, 18 Nov 2016 00:53:40 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Fri, 18 Nov 2016 00:53:40 GMT
WORKDIR /home/user
# Fri, 18 Nov 2016 00:53:43 GMT
RUN pip install redis
# Fri, 18 Nov 2016 00:53:43 GMT
ENV CELERY_VERSION=3.1.25
# Fri, 18 Nov 2016 00:53:49 GMT
RUN pip install celery=="$CELERY_VERSION"
# Fri, 18 Nov 2016 00:53:50 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Fri, 18 Nov 2016 00:53:50 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Fri, 18 Nov 2016 00:53:50 GMT
USER [user]
# Fri, 18 Nov 2016 00:53:50 GMT
CMD ["celery" "worker"]
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
	-	`sha256:230efb915eab5edf0aaece46ddd3ecd606142e2daaa3bec5b99fc5f67260e2eb`  
		Last Modified: Thu, 17 Nov 2016 23:05:26 GMT  
		Size: 20.9 MB (20896004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ff1366f29cb90d808837e2c5955895721858fbcede4c61905a2d2941503735`  
		Last Modified: Thu, 17 Nov 2016 23:05:20 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80be3f3d5f3137cafa842f74ff5dc398da9d4c202e0a637205a47d343ef4994`  
		Last Modified: Fri, 18 Nov 2016 00:54:09 GMT  
		Size: 4.3 KB (4345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65762bb49ada7294f7fd120aeac432b0772662c3465c9beabe0ae6ee5f42e44c`  
		Last Modified: Fri, 18 Nov 2016 00:54:11 GMT  
		Size: 1.9 MB (1851789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66cd58d0733cd800c8fd2b62e647d3eb68d81c7d0f9915b2a08f17611d35fe54`  
		Last Modified: Fri, 18 Nov 2016 00:54:12 GMT  
		Size: 4.2 MB (4186222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd5c53fcd9ae27b7b64a051f5e369f8f9fbd49d44e00b7893a35729f2acd2df`  
		Last Modified: Fri, 18 Nov 2016 00:54:10 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:latest`

```console
$ docker pull celery@sha256:d001bd8dae0fbad491558d11bf114f6254c021fb1eac73465f38d8b21cdf516f
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81528826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee8de5aae92b749b66b37ed67f1076eda7290dd25bc4f02c1ad74dd9a2c6204`
-	Default Command: `["celery","worker"]`

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
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 09 Nov 2016 00:31:14 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 09 Nov 2016 00:33:09 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 09 Nov 2016 00:33:10 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 09 Nov 2016 00:33:10 GMT
CMD ["python3"]
# Thu, 10 Nov 2016 02:56:43 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Thu, 10 Nov 2016 02:56:43 GMT
WORKDIR /home/user
# Thu, 10 Nov 2016 02:56:48 GMT
RUN pip install redis
# Thu, 10 Nov 2016 02:56:48 GMT
ENV CELERY_VERSION=3.1.25
# Thu, 10 Nov 2016 02:56:54 GMT
RUN pip install celery=="$CELERY_VERSION"
# Thu, 10 Nov 2016 02:56:55 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Thu, 10 Nov 2016 02:56:55 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Thu, 10 Nov 2016 02:56:56 GMT
USER [user]
# Thu, 10 Nov 2016 02:56:56 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7045ec8a72dddd6ebfc2c9e81418a8cee7ced26f620b3d61cae55f103c8e4799`  
		Last Modified: Wed, 09 Nov 2016 00:33:28 GMT  
		Size: 20.8 MB (20844135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cbc2c8e547bf14bd3d3ec6fa4d0c645c6a459cbe21af12bacec2ce5944b631`  
		Last Modified: Wed, 09 Nov 2016 00:33:22 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d86aa590b7dddfcb291d3637015db70c088b86dbaea200ba037eee9a1b387ee`  
		Last Modified: Thu, 10 Nov 2016 02:57:08 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c78bfd4947960e5a6f5f7995742e4d8a090568ca76af1191dc93a216653cee`  
		Last Modified: Thu, 10 Nov 2016 02:57:09 GMT  
		Size: 1.8 MB (1797944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d74483e6bdaad8509e2deb7a6aeb7f0df26d751f31cd7cc4ba37215faa4b55`  
		Last Modified: Thu, 10 Nov 2016 02:57:10 GMT  
		Size: 4.2 MB (4186308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c1104cc4f76e76bbb9a12b15f2872b2f7267e50672c6629489f2988357d23a`  
		Last Modified: Thu, 10 Nov 2016 02:57:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
