<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `celery`

-	[`celery:3.1.23`](#celery3123)
-	[`celery:3.1`](#celery31)
-	[`celery:3`](#celery3)
-	[`celery:latest`](#celerylatest)

## `celery:3.1.23`

```console
$ docker pull celery@sha256:a2e98308496e76ab7cb5a178a3299c30cc18befe5459e7e79a58c12ed8d01eec
```

-	Platforms:
	-	linux; amd64

### `celery:3.1.23` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7170d66c0a6f36d5eb2e630ad269b79585518d8207c28c3b9dfe76babd582b93`
-	Default Command: `["celery","worker"]`

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
# Tue, 09 Aug 2016 20:51:09 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:51:10 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:51:10 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:03:04 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 09 Aug 2016 23:03:04 GMT
WORKDIR /home/user
# Tue, 09 Aug 2016 23:03:07 GMT
RUN pip install redis
# Tue, 09 Aug 2016 23:03:07 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 09 Aug 2016 23:03:15 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 09 Aug 2016 23:03:16 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 09 Aug 2016 23:03:17 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 09 Aug 2016 23:03:17 GMT
USER [user]
# Tue, 09 Aug 2016 23:03:18 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:1edc05b1775830422108d01615e6644b9a3a4344e56caac8e6dcbd06a67ecd11`  
		Last Modified: Tue, 09 Aug 2016 21:23:16 GMT  
		Size: 19.5 MB (19528523 bytes)
	-	`sha256:89066e65bfc86a6b61c88ee96e3dd3834ba672ee81616a0f6e2f8cc271cc2ae6`  
		Last Modified: Tue, 09 Aug 2016 21:23:10 GMT  
		Size: 267.0 B
	-	`sha256:3369a647201d8c0d20ecdcec440b8d82e128bb51e4951419eda471d2a864a3d1`  
		Last Modified: Tue, 09 Aug 2016 23:03:29 GMT  
		Size: 4.3 KB (4338 bytes)
	-	`sha256:04b19c55bc4c028cd82efc8f1456ab24bda23630c7b9f6b0aad26abb6d4372ab`  
		Last Modified: Tue, 09 Aug 2016 23:03:31 GMT  
		Size: 1.7 MB (1732615 bytes)
	-	`sha256:27101de7e419b2d51815c97b46b265213231d7a081280cae5dd4df8d3adb034c`  
		Last Modified: Tue, 09 Aug 2016 23:03:33 GMT  
		Size: 4.2 MB (4175754 bytes)
	-	`sha256:a1b24eb32950de63ada3744bf0c2ad75ceb69973f1fffe73dc04abee00e34368`  
		Last Modified: Tue, 09 Aug 2016 23:03:30 GMT  
		Size: 232.0 B

## `celery:3.1`

```console
$ docker pull celery@sha256:a2e98308496e76ab7cb5a178a3299c30cc18befe5459e7e79a58c12ed8d01eec
```

-	Platforms:
	-	linux; amd64

### `celery:3.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7170d66c0a6f36d5eb2e630ad269b79585518d8207c28c3b9dfe76babd582b93`
-	Default Command: `["celery","worker"]`

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
# Tue, 09 Aug 2016 20:51:09 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:51:10 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:51:10 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:03:04 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 09 Aug 2016 23:03:04 GMT
WORKDIR /home/user
# Tue, 09 Aug 2016 23:03:07 GMT
RUN pip install redis
# Tue, 09 Aug 2016 23:03:07 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 09 Aug 2016 23:03:15 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 09 Aug 2016 23:03:16 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 09 Aug 2016 23:03:17 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 09 Aug 2016 23:03:17 GMT
USER [user]
# Tue, 09 Aug 2016 23:03:18 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:1edc05b1775830422108d01615e6644b9a3a4344e56caac8e6dcbd06a67ecd11`  
		Last Modified: Tue, 09 Aug 2016 21:23:16 GMT  
		Size: 19.5 MB (19528523 bytes)
	-	`sha256:89066e65bfc86a6b61c88ee96e3dd3834ba672ee81616a0f6e2f8cc271cc2ae6`  
		Last Modified: Tue, 09 Aug 2016 21:23:10 GMT  
		Size: 267.0 B
	-	`sha256:3369a647201d8c0d20ecdcec440b8d82e128bb51e4951419eda471d2a864a3d1`  
		Last Modified: Tue, 09 Aug 2016 23:03:29 GMT  
		Size: 4.3 KB (4338 bytes)
	-	`sha256:04b19c55bc4c028cd82efc8f1456ab24bda23630c7b9f6b0aad26abb6d4372ab`  
		Last Modified: Tue, 09 Aug 2016 23:03:31 GMT  
		Size: 1.7 MB (1732615 bytes)
	-	`sha256:27101de7e419b2d51815c97b46b265213231d7a081280cae5dd4df8d3adb034c`  
		Last Modified: Tue, 09 Aug 2016 23:03:33 GMT  
		Size: 4.2 MB (4175754 bytes)
	-	`sha256:a1b24eb32950de63ada3744bf0c2ad75ceb69973f1fffe73dc04abee00e34368`  
		Last Modified: Tue, 09 Aug 2016 23:03:30 GMT  
		Size: 232.0 B

## `celery:3`

```console
$ docker pull celery@sha256:a2e98308496e76ab7cb5a178a3299c30cc18befe5459e7e79a58c12ed8d01eec
```

-	Platforms:
	-	linux; amd64

### `celery:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7170d66c0a6f36d5eb2e630ad269b79585518d8207c28c3b9dfe76babd582b93`
-	Default Command: `["celery","worker"]`

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
# Tue, 09 Aug 2016 20:51:09 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:51:10 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:51:10 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:03:04 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 09 Aug 2016 23:03:04 GMT
WORKDIR /home/user
# Tue, 09 Aug 2016 23:03:07 GMT
RUN pip install redis
# Tue, 09 Aug 2016 23:03:07 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 09 Aug 2016 23:03:15 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 09 Aug 2016 23:03:16 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 09 Aug 2016 23:03:17 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 09 Aug 2016 23:03:17 GMT
USER [user]
# Tue, 09 Aug 2016 23:03:18 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:1edc05b1775830422108d01615e6644b9a3a4344e56caac8e6dcbd06a67ecd11`  
		Last Modified: Tue, 09 Aug 2016 21:23:16 GMT  
		Size: 19.5 MB (19528523 bytes)
	-	`sha256:89066e65bfc86a6b61c88ee96e3dd3834ba672ee81616a0f6e2f8cc271cc2ae6`  
		Last Modified: Tue, 09 Aug 2016 21:23:10 GMT  
		Size: 267.0 B
	-	`sha256:3369a647201d8c0d20ecdcec440b8d82e128bb51e4951419eda471d2a864a3d1`  
		Last Modified: Tue, 09 Aug 2016 23:03:29 GMT  
		Size: 4.3 KB (4338 bytes)
	-	`sha256:04b19c55bc4c028cd82efc8f1456ab24bda23630c7b9f6b0aad26abb6d4372ab`  
		Last Modified: Tue, 09 Aug 2016 23:03:31 GMT  
		Size: 1.7 MB (1732615 bytes)
	-	`sha256:27101de7e419b2d51815c97b46b265213231d7a081280cae5dd4df8d3adb034c`  
		Last Modified: Tue, 09 Aug 2016 23:03:33 GMT  
		Size: 4.2 MB (4175754 bytes)
	-	`sha256:a1b24eb32950de63ada3744bf0c2ad75ceb69973f1fffe73dc04abee00e34368`  
		Last Modified: Tue, 09 Aug 2016 23:03:30 GMT  
		Size: 232.0 B

## `celery:latest`

```console
$ docker pull celery@sha256:a2e98308496e76ab7cb5a178a3299c30cc18befe5459e7e79a58c12ed8d01eec
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7170d66c0a6f36d5eb2e630ad269b79585518d8207c28c3b9dfe76babd582b93`
-	Default Command: `["celery","worker"]`

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
# Tue, 09 Aug 2016 20:51:09 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 09 Aug 2016 20:51:10 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 09 Aug 2016 20:51:10 GMT
CMD ["python3"]
# Tue, 09 Aug 2016 23:03:04 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 09 Aug 2016 23:03:04 GMT
WORKDIR /home/user
# Tue, 09 Aug 2016 23:03:07 GMT
RUN pip install redis
# Tue, 09 Aug 2016 23:03:07 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 09 Aug 2016 23:03:15 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 09 Aug 2016 23:03:16 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 09 Aug 2016 23:03:17 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 09 Aug 2016 23:03:17 GMT
USER [user]
# Tue, 09 Aug 2016 23:03:18 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:357ea8c3d80bc25792e010facfc98aee5972ebc47e290eb0d5aea3671a901cab`  
		Last Modified: Thu, 28 Jul 2016 17:49:58 GMT  
		Size: 51.4 MB (51365611 bytes)
	-	`sha256:57aad21b9e0f8c5efec1fdc781bbbbe387f0c188b9fd34c5ffa9b796c1ac0235`  
		Last Modified: Mon, 08 Aug 2016 21:07:23 GMT  
		Size: 3.3 MB (3306249 bytes)
	-	`sha256:1edc05b1775830422108d01615e6644b9a3a4344e56caac8e6dcbd06a67ecd11`  
		Last Modified: Tue, 09 Aug 2016 21:23:16 GMT  
		Size: 19.5 MB (19528523 bytes)
	-	`sha256:89066e65bfc86a6b61c88ee96e3dd3834ba672ee81616a0f6e2f8cc271cc2ae6`  
		Last Modified: Tue, 09 Aug 2016 21:23:10 GMT  
		Size: 267.0 B
	-	`sha256:3369a647201d8c0d20ecdcec440b8d82e128bb51e4951419eda471d2a864a3d1`  
		Last Modified: Tue, 09 Aug 2016 23:03:29 GMT  
		Size: 4.3 KB (4338 bytes)
	-	`sha256:04b19c55bc4c028cd82efc8f1456ab24bda23630c7b9f6b0aad26abb6d4372ab`  
		Last Modified: Tue, 09 Aug 2016 23:03:31 GMT  
		Size: 1.7 MB (1732615 bytes)
	-	`sha256:27101de7e419b2d51815c97b46b265213231d7a081280cae5dd4df8d3adb034c`  
		Last Modified: Tue, 09 Aug 2016 23:03:33 GMT  
		Size: 4.2 MB (4175754 bytes)
	-	`sha256:a1b24eb32950de63ada3744bf0c2ad75ceb69973f1fffe73dc04abee00e34368`  
		Last Modified: Tue, 09 Aug 2016 23:03:30 GMT  
		Size: 232.0 B
