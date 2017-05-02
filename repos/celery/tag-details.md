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
$ docker pull celery@sha256:58ab6efb124ca9d63c2e80b9ce9de16c4d528f19770b4b3204d51204fbfc799d
```

-	Platforms:
	-	linux; amd64

### `celery:4.0.2` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82312812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77258c370262026671b3bc6871308b2778114e85c93630067bdb92a349686b47`
-	Default Command: `["celery","worker"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:31:43 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 25 Apr 2017 04:34:28 GMT
ENV PYTHON_VERSION=3.5.3
# Mon, 01 May 2017 23:27:33 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 23:27:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 01 May 2017 23:27:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 23:27:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 23:27:58 GMT
CMD ["python3"]
# Tue, 02 May 2017 17:44:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 02 May 2017 17:44:23 GMT
WORKDIR /home/user
# Tue, 02 May 2017 17:44:27 GMT
RUN pip install redis
# Tue, 02 May 2017 17:44:56 GMT
ENV CELERY_VERSION=4.0.2
# Tue, 02 May 2017 17:44:59 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 02 May 2017 17:45:01 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 02 May 2017 17:45:02 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 02 May 2017 17:45:02 GMT
USER [user]
# Tue, 02 May 2017 17:45:03 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1265da2cb79e153342f64f9f80378207aa2e4da6451c9ef3a4e3e3acf5daa`  
		Last Modified: Tue, 02 May 2017 17:03:53 GMT  
		Size: 19.7 MB (19685939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07133e202a2f1a679ee752ecbfd121130bea90ce5f123fd6e9c93ad912d131b`  
		Last Modified: Tue, 02 May 2017 17:03:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7637c98376a82722dcb2672b0b285ae929b23a21b682a3cce4087ffb395fad4`  
		Last Modified: Tue, 02 May 2017 17:03:48 GMT  
		Size: 1.8 MB (1753293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f8e61353f1e32cc1a6912390bd47837b2d31c3f39dcf38f52446d34d6cb8e`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0914f27938f9c20f4721bb82041c19289e012ce6da6170940888953e94fbc504`  
		Last Modified: Tue, 02 May 2017 17:45:28 GMT  
		Size: 1.9 MB (1857172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db855965a3007d97da5c2833b8ba6586ed7c5bec1c011dfe5a7492cdbb371240`  
		Last Modified: Tue, 02 May 2017 17:47:09 GMT  
		Size: 3.0 MB (2983305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f2fc4c818abdb2026c8a83adcec6ea91c8d13ec1d81033a45db4814f3b78f`  
		Last Modified: Tue, 02 May 2017 17:47:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:4.0`

```console
$ docker pull celery@sha256:58ab6efb124ca9d63c2e80b9ce9de16c4d528f19770b4b3204d51204fbfc799d
```

-	Platforms:
	-	linux; amd64

### `celery:4.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82312812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77258c370262026671b3bc6871308b2778114e85c93630067bdb92a349686b47`
-	Default Command: `["celery","worker"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:31:43 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 25 Apr 2017 04:34:28 GMT
ENV PYTHON_VERSION=3.5.3
# Mon, 01 May 2017 23:27:33 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 23:27:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 01 May 2017 23:27:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 23:27:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 23:27:58 GMT
CMD ["python3"]
# Tue, 02 May 2017 17:44:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 02 May 2017 17:44:23 GMT
WORKDIR /home/user
# Tue, 02 May 2017 17:44:27 GMT
RUN pip install redis
# Tue, 02 May 2017 17:44:56 GMT
ENV CELERY_VERSION=4.0.2
# Tue, 02 May 2017 17:44:59 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 02 May 2017 17:45:01 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 02 May 2017 17:45:02 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 02 May 2017 17:45:02 GMT
USER [user]
# Tue, 02 May 2017 17:45:03 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1265da2cb79e153342f64f9f80378207aa2e4da6451c9ef3a4e3e3acf5daa`  
		Last Modified: Tue, 02 May 2017 17:03:53 GMT  
		Size: 19.7 MB (19685939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07133e202a2f1a679ee752ecbfd121130bea90ce5f123fd6e9c93ad912d131b`  
		Last Modified: Tue, 02 May 2017 17:03:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7637c98376a82722dcb2672b0b285ae929b23a21b682a3cce4087ffb395fad4`  
		Last Modified: Tue, 02 May 2017 17:03:48 GMT  
		Size: 1.8 MB (1753293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f8e61353f1e32cc1a6912390bd47837b2d31c3f39dcf38f52446d34d6cb8e`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0914f27938f9c20f4721bb82041c19289e012ce6da6170940888953e94fbc504`  
		Last Modified: Tue, 02 May 2017 17:45:28 GMT  
		Size: 1.9 MB (1857172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db855965a3007d97da5c2833b8ba6586ed7c5bec1c011dfe5a7492cdbb371240`  
		Last Modified: Tue, 02 May 2017 17:47:09 GMT  
		Size: 3.0 MB (2983305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f2fc4c818abdb2026c8a83adcec6ea91c8d13ec1d81033a45db4814f3b78f`  
		Last Modified: Tue, 02 May 2017 17:47:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:4`

```console
$ docker pull celery@sha256:58ab6efb124ca9d63c2e80b9ce9de16c4d528f19770b4b3204d51204fbfc799d
```

-	Platforms:
	-	linux; amd64

### `celery:4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82312812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77258c370262026671b3bc6871308b2778114e85c93630067bdb92a349686b47`
-	Default Command: `["celery","worker"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:31:43 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 25 Apr 2017 04:34:28 GMT
ENV PYTHON_VERSION=3.5.3
# Mon, 01 May 2017 23:27:33 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 23:27:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 01 May 2017 23:27:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 23:27:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 23:27:58 GMT
CMD ["python3"]
# Tue, 02 May 2017 17:44:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 02 May 2017 17:44:23 GMT
WORKDIR /home/user
# Tue, 02 May 2017 17:44:27 GMT
RUN pip install redis
# Tue, 02 May 2017 17:44:56 GMT
ENV CELERY_VERSION=4.0.2
# Tue, 02 May 2017 17:44:59 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 02 May 2017 17:45:01 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 02 May 2017 17:45:02 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 02 May 2017 17:45:02 GMT
USER [user]
# Tue, 02 May 2017 17:45:03 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1265da2cb79e153342f64f9f80378207aa2e4da6451c9ef3a4e3e3acf5daa`  
		Last Modified: Tue, 02 May 2017 17:03:53 GMT  
		Size: 19.7 MB (19685939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07133e202a2f1a679ee752ecbfd121130bea90ce5f123fd6e9c93ad912d131b`  
		Last Modified: Tue, 02 May 2017 17:03:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7637c98376a82722dcb2672b0b285ae929b23a21b682a3cce4087ffb395fad4`  
		Last Modified: Tue, 02 May 2017 17:03:48 GMT  
		Size: 1.8 MB (1753293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f8e61353f1e32cc1a6912390bd47837b2d31c3f39dcf38f52446d34d6cb8e`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0914f27938f9c20f4721bb82041c19289e012ce6da6170940888953e94fbc504`  
		Last Modified: Tue, 02 May 2017 17:45:28 GMT  
		Size: 1.9 MB (1857172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db855965a3007d97da5c2833b8ba6586ed7c5bec1c011dfe5a7492cdbb371240`  
		Last Modified: Tue, 02 May 2017 17:47:09 GMT  
		Size: 3.0 MB (2983305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5f2fc4c818abdb2026c8a83adcec6ea91c8d13ec1d81033a45db4814f3b78f`  
		Last Modified: Tue, 02 May 2017 17:47:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3.1.25`

```console
$ docker pull celery@sha256:cd58c051ae6076eda4c0bd61e41a888a3c9d356256a897b6df9cbeb4acb2dcb9
```

-	Platforms:
	-	linux; amd64

### `celery:3.1.25` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83703137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205c5ae6d07f1e555a0b6e8ea659a7c942a347f804a52eba958dd03e8e4d9fa6`
-	Default Command: `["celery","worker"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:31:43 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 25 Apr 2017 04:34:28 GMT
ENV PYTHON_VERSION=3.5.3
# Mon, 01 May 2017 23:27:33 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 23:27:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 01 May 2017 23:27:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 23:27:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 23:27:58 GMT
CMD ["python3"]
# Tue, 02 May 2017 17:44:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 02 May 2017 17:44:23 GMT
WORKDIR /home/user
# Tue, 02 May 2017 17:44:27 GMT
RUN pip install redis
# Tue, 02 May 2017 17:44:27 GMT
ENV CELERY_VERSION=3.1.25
# Tue, 02 May 2017 17:44:33 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 02 May 2017 17:44:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 02 May 2017 17:44:36 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 02 May 2017 17:44:36 GMT
USER [user]
# Tue, 02 May 2017 17:44:37 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1265da2cb79e153342f64f9f80378207aa2e4da6451c9ef3a4e3e3acf5daa`  
		Last Modified: Tue, 02 May 2017 17:03:53 GMT  
		Size: 19.7 MB (19685939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07133e202a2f1a679ee752ecbfd121130bea90ce5f123fd6e9c93ad912d131b`  
		Last Modified: Tue, 02 May 2017 17:03:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7637c98376a82722dcb2672b0b285ae929b23a21b682a3cce4087ffb395fad4`  
		Last Modified: Tue, 02 May 2017 17:03:48 GMT  
		Size: 1.8 MB (1753293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f8e61353f1e32cc1a6912390bd47837b2d31c3f39dcf38f52446d34d6cb8e`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0914f27938f9c20f4721bb82041c19289e012ce6da6170940888953e94fbc504`  
		Last Modified: Tue, 02 May 2017 17:45:28 GMT  
		Size: 1.9 MB (1857172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7302ec9aa8991dea36223bba4569c4282c3dd23ea07fb36669f6d6b63570ded`  
		Last Modified: Tue, 02 May 2017 17:45:26 GMT  
		Size: 4.4 MB (4373629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bad49189ca9bfe049b19b7009cf7434dd975ad64fc25df79d35497b605b3f08`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3.1`

```console
$ docker pull celery@sha256:cd58c051ae6076eda4c0bd61e41a888a3c9d356256a897b6df9cbeb4acb2dcb9
```

-	Platforms:
	-	linux; amd64

### `celery:3.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83703137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205c5ae6d07f1e555a0b6e8ea659a7c942a347f804a52eba958dd03e8e4d9fa6`
-	Default Command: `["celery","worker"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:31:43 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 25 Apr 2017 04:34:28 GMT
ENV PYTHON_VERSION=3.5.3
# Mon, 01 May 2017 23:27:33 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 23:27:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 01 May 2017 23:27:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 23:27:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 23:27:58 GMT
CMD ["python3"]
# Tue, 02 May 2017 17:44:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 02 May 2017 17:44:23 GMT
WORKDIR /home/user
# Tue, 02 May 2017 17:44:27 GMT
RUN pip install redis
# Tue, 02 May 2017 17:44:27 GMT
ENV CELERY_VERSION=3.1.25
# Tue, 02 May 2017 17:44:33 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 02 May 2017 17:44:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 02 May 2017 17:44:36 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 02 May 2017 17:44:36 GMT
USER [user]
# Tue, 02 May 2017 17:44:37 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1265da2cb79e153342f64f9f80378207aa2e4da6451c9ef3a4e3e3acf5daa`  
		Last Modified: Tue, 02 May 2017 17:03:53 GMT  
		Size: 19.7 MB (19685939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07133e202a2f1a679ee752ecbfd121130bea90ce5f123fd6e9c93ad912d131b`  
		Last Modified: Tue, 02 May 2017 17:03:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7637c98376a82722dcb2672b0b285ae929b23a21b682a3cce4087ffb395fad4`  
		Last Modified: Tue, 02 May 2017 17:03:48 GMT  
		Size: 1.8 MB (1753293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f8e61353f1e32cc1a6912390bd47837b2d31c3f39dcf38f52446d34d6cb8e`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0914f27938f9c20f4721bb82041c19289e012ce6da6170940888953e94fbc504`  
		Last Modified: Tue, 02 May 2017 17:45:28 GMT  
		Size: 1.9 MB (1857172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7302ec9aa8991dea36223bba4569c4282c3dd23ea07fb36669f6d6b63570ded`  
		Last Modified: Tue, 02 May 2017 17:45:26 GMT  
		Size: 4.4 MB (4373629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bad49189ca9bfe049b19b7009cf7434dd975ad64fc25df79d35497b605b3f08`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3`

```console
$ docker pull celery@sha256:cd58c051ae6076eda4c0bd61e41a888a3c9d356256a897b6df9cbeb4acb2dcb9
```

-	Platforms:
	-	linux; amd64

### `celery:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83703137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205c5ae6d07f1e555a0b6e8ea659a7c942a347f804a52eba958dd03e8e4d9fa6`
-	Default Command: `["celery","worker"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:31:43 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 25 Apr 2017 04:34:28 GMT
ENV PYTHON_VERSION=3.5.3
# Mon, 01 May 2017 23:27:33 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 23:27:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 01 May 2017 23:27:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 23:27:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 23:27:58 GMT
CMD ["python3"]
# Tue, 02 May 2017 17:44:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 02 May 2017 17:44:23 GMT
WORKDIR /home/user
# Tue, 02 May 2017 17:44:27 GMT
RUN pip install redis
# Tue, 02 May 2017 17:44:27 GMT
ENV CELERY_VERSION=3.1.25
# Tue, 02 May 2017 17:44:33 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 02 May 2017 17:44:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 02 May 2017 17:44:36 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 02 May 2017 17:44:36 GMT
USER [user]
# Tue, 02 May 2017 17:44:37 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1265da2cb79e153342f64f9f80378207aa2e4da6451c9ef3a4e3e3acf5daa`  
		Last Modified: Tue, 02 May 2017 17:03:53 GMT  
		Size: 19.7 MB (19685939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07133e202a2f1a679ee752ecbfd121130bea90ce5f123fd6e9c93ad912d131b`  
		Last Modified: Tue, 02 May 2017 17:03:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7637c98376a82722dcb2672b0b285ae929b23a21b682a3cce4087ffb395fad4`  
		Last Modified: Tue, 02 May 2017 17:03:48 GMT  
		Size: 1.8 MB (1753293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f8e61353f1e32cc1a6912390bd47837b2d31c3f39dcf38f52446d34d6cb8e`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0914f27938f9c20f4721bb82041c19289e012ce6da6170940888953e94fbc504`  
		Last Modified: Tue, 02 May 2017 17:45:28 GMT  
		Size: 1.9 MB (1857172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7302ec9aa8991dea36223bba4569c4282c3dd23ea07fb36669f6d6b63570ded`  
		Last Modified: Tue, 02 May 2017 17:45:26 GMT  
		Size: 4.4 MB (4373629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bad49189ca9bfe049b19b7009cf7434dd975ad64fc25df79d35497b605b3f08`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:latest`

```console
$ docker pull celery@sha256:cd58c051ae6076eda4c0bd61e41a888a3c9d356256a897b6df9cbeb4acb2dcb9
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83703137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:205c5ae6d07f1e555a0b6e8ea659a7c942a347f804a52eba958dd03e8e4d9fa6`
-	Default Command: `["celery","worker"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Tue, 25 Apr 2017 04:18:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Apr 2017 04:18:54 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 04:22:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 04:31:43 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 25 Apr 2017 04:34:28 GMT
ENV PYTHON_VERSION=3.5.3
# Mon, 01 May 2017 23:27:33 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 01 May 2017 23:27:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 01 May 2017 23:27:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Mon, 01 May 2017 23:27:57 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 01 May 2017 23:27:58 GMT
CMD ["python3"]
# Tue, 02 May 2017 17:44:22 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 02 May 2017 17:44:23 GMT
WORKDIR /home/user
# Tue, 02 May 2017 17:44:27 GMT
RUN pip install redis
# Tue, 02 May 2017 17:44:27 GMT
ENV CELERY_VERSION=3.1.25
# Tue, 02 May 2017 17:44:33 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 02 May 2017 17:44:35 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 02 May 2017 17:44:36 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 02 May 2017 17:44:36 GMT
USER [user]
# Tue, 02 May 2017 17:44:37 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a63ab31b004f167ebb0db90f846b6ba7644571af2d8da4a4fcac0b541d0e6f`  
		Last Modified: Tue, 25 Apr 2017 05:08:49 GMT  
		Size: 3.5 MB (3477989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a1265da2cb79e153342f64f9f80378207aa2e4da6451c9ef3a4e3e3acf5daa`  
		Last Modified: Tue, 02 May 2017 17:03:53 GMT  
		Size: 19.7 MB (19685939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07133e202a2f1a679ee752ecbfd121130bea90ce5f123fd6e9c93ad912d131b`  
		Last Modified: Tue, 02 May 2017 17:03:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7637c98376a82722dcb2672b0b285ae929b23a21b682a3cce4087ffb395fad4`  
		Last Modified: Tue, 02 May 2017 17:03:48 GMT  
		Size: 1.8 MB (1753293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f8e61353f1e32cc1a6912390bd47837b2d31c3f39dcf38f52446d34d6cb8e`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 4.4 KB (4372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0914f27938f9c20f4721bb82041c19289e012ce6da6170940888953e94fbc504`  
		Last Modified: Tue, 02 May 2017 17:45:28 GMT  
		Size: 1.9 MB (1857172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7302ec9aa8991dea36223bba4569c4282c3dd23ea07fb36669f6d6b63570ded`  
		Last Modified: Tue, 02 May 2017 17:45:26 GMT  
		Size: 4.4 MB (4373629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bad49189ca9bfe049b19b7009cf7434dd975ad64fc25df79d35497b605b3f08`  
		Last Modified: Tue, 02 May 2017 17:45:25 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
