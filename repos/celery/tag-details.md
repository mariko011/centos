<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `celery`

-	[`celery:3.1.23`](#celery3123)
-	[`celery:3.1`](#celery31)
-	[`celery:3`](#celery3)
-	[`celery:latest`](#celerylatest)

## `celery:3.1.23`

```console
$ docker pull celery@sha256:41128fd4b3a0483e30572c58e285abf8f9009cf479889a076382ac7cd9873026
```

-	Platforms:
	-	linux; amd64

### `celery:3.1.23` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034988093985042b4f8ded8d732c4f5a439580bf4299ddb2dfccfbb74a802734`
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
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:26:53 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 23 Aug 2016 18:26:54 GMT
WORKDIR /home/user
# Tue, 23 Aug 2016 18:26:58 GMT
RUN pip install redis
# Tue, 23 Aug 2016 18:26:59 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 23 Aug 2016 18:27:06 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 23 Aug 2016 18:27:09 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 23 Aug 2016 18:27:10 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 23 Aug 2016 18:27:11 GMT
USER [user]
# Tue, 23 Aug 2016 18:27:11 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7be0d7351c45b2e66084970fa5167c5545cd177165b328e84bb25fb0398ec9dd`  
		Last Modified: Tue, 23 Aug 2016 18:27:23 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204ddd217d38c0880eea2d58ede543bd57ba2f182d95cbc9b0b5a2b58fe8498f`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 1.7 MB (1732554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f915ca1f7a0a97512a96ac6e56fc14d954f0e642c6bbc5b841fad7d53c0fc8f9`  
		Last Modified: Tue, 23 Aug 2016 18:27:25 GMT  
		Size: 4.2 MB (4175905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a0bbb81e19e530aaa8b13be7941085e35ca2e9a0f66db456aed514dccff327`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3.1`

```console
$ docker pull celery@sha256:41128fd4b3a0483e30572c58e285abf8f9009cf479889a076382ac7cd9873026
```

-	Platforms:
	-	linux; amd64

### `celery:3.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034988093985042b4f8ded8d732c4f5a439580bf4299ddb2dfccfbb74a802734`
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
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:26:53 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 23 Aug 2016 18:26:54 GMT
WORKDIR /home/user
# Tue, 23 Aug 2016 18:26:58 GMT
RUN pip install redis
# Tue, 23 Aug 2016 18:26:59 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 23 Aug 2016 18:27:06 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 23 Aug 2016 18:27:09 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 23 Aug 2016 18:27:10 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 23 Aug 2016 18:27:11 GMT
USER [user]
# Tue, 23 Aug 2016 18:27:11 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7be0d7351c45b2e66084970fa5167c5545cd177165b328e84bb25fb0398ec9dd`  
		Last Modified: Tue, 23 Aug 2016 18:27:23 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204ddd217d38c0880eea2d58ede543bd57ba2f182d95cbc9b0b5a2b58fe8498f`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 1.7 MB (1732554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f915ca1f7a0a97512a96ac6e56fc14d954f0e642c6bbc5b841fad7d53c0fc8f9`  
		Last Modified: Tue, 23 Aug 2016 18:27:25 GMT  
		Size: 4.2 MB (4175905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a0bbb81e19e530aaa8b13be7941085e35ca2e9a0f66db456aed514dccff327`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:3`

```console
$ docker pull celery@sha256:41128fd4b3a0483e30572c58e285abf8f9009cf479889a076382ac7cd9873026
```

-	Platforms:
	-	linux; amd64

### `celery:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034988093985042b4f8ded8d732c4f5a439580bf4299ddb2dfccfbb74a802734`
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
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:26:53 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 23 Aug 2016 18:26:54 GMT
WORKDIR /home/user
# Tue, 23 Aug 2016 18:26:58 GMT
RUN pip install redis
# Tue, 23 Aug 2016 18:26:59 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 23 Aug 2016 18:27:06 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 23 Aug 2016 18:27:09 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 23 Aug 2016 18:27:10 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 23 Aug 2016 18:27:11 GMT
USER [user]
# Tue, 23 Aug 2016 18:27:11 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7be0d7351c45b2e66084970fa5167c5545cd177165b328e84bb25fb0398ec9dd`  
		Last Modified: Tue, 23 Aug 2016 18:27:23 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204ddd217d38c0880eea2d58ede543bd57ba2f182d95cbc9b0b5a2b58fe8498f`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 1.7 MB (1732554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f915ca1f7a0a97512a96ac6e56fc14d954f0e642c6bbc5b841fad7d53c0fc8f9`  
		Last Modified: Tue, 23 Aug 2016 18:27:25 GMT  
		Size: 4.2 MB (4175905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a0bbb81e19e530aaa8b13be7941085e35ca2e9a0f66db456aed514dccff327`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `celery:latest`

```console
$ docker pull celery@sha256:41128fd4b3a0483e30572c58e285abf8f9009cf479889a076382ac7cd9873026
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80113932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034988093985042b4f8ded8d732c4f5a439580bf4299ddb2dfccfbb74a802734`
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
# Mon, 22 Aug 2016 20:56:55 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 22 Aug 2016 20:56:57 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 22 Aug 2016 20:56:57 GMT
CMD ["python3"]
# Tue, 23 Aug 2016 18:26:53 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Tue, 23 Aug 2016 18:26:54 GMT
WORKDIR /home/user
# Tue, 23 Aug 2016 18:26:58 GMT
RUN pip install redis
# Tue, 23 Aug 2016 18:26:59 GMT
ENV CELERY_VERSION=3.1.23
# Tue, 23 Aug 2016 18:27:06 GMT
RUN pip install celery=="$CELERY_VERSION"
# Tue, 23 Aug 2016 18:27:09 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Tue, 23 Aug 2016 18:27:10 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Tue, 23 Aug 2016 18:27:11 GMT
USER [user]
# Tue, 23 Aug 2016 18:27:11 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7be0d7351c45b2e66084970fa5167c5545cd177165b328e84bb25fb0398ec9dd`  
		Last Modified: Tue, 23 Aug 2016 18:27:23 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204ddd217d38c0880eea2d58ede543bd57ba2f182d95cbc9b0b5a2b58fe8498f`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 1.7 MB (1732554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f915ca1f7a0a97512a96ac6e56fc14d954f0e642c6bbc5b841fad7d53c0fc8f9`  
		Last Modified: Tue, 23 Aug 2016 18:27:25 GMT  
		Size: 4.2 MB (4175905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a0bbb81e19e530aaa8b13be7941085e35ca2e9a0f66db456aed514dccff327`  
		Last Modified: Tue, 23 Aug 2016 18:27:24 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
