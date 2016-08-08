<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `celery`

-	[`celery:3.1.23`](#celery3123)
-	[`celery:3.1`](#celery31)
-	[`celery:3`](#celery3)
-	[`celery:latest`](#celerylatest)

## `celery:3.1.23`

```console
$ docker pull celery@sha256:6f1c1c5d36ce7d0db54012e94f6baa2af641232399c6bed54bc9f99a2bd7aac1
```

-	Platforms:
	-	linux; amd64

### `celery:3.1.23` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82178857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0828c179d1b521f0284e47288038a17ad17d4b3b55c9e7c6fba417b2abfa17ba`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:46:56 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 08 Aug 2016 21:46:56 GMT
WORKDIR /home/user
# Mon, 08 Aug 2016 21:47:00 GMT
RUN pip install redis
# Mon, 08 Aug 2016 21:47:01 GMT
ENV CELERY_VERSION=3.1.23
# Mon, 08 Aug 2016 21:47:09 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 08 Aug 2016 21:47:11 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 08 Aug 2016 21:47:12 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 08 Aug 2016 21:47:13 GMT
USER [user]
# Mon, 08 Aug 2016 21:47:21 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7e51ab90b9b2950b0549a4d5c4ebe764645043616a0bb6e4af53ae27424d13c3`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 4.3 KB (4341 bytes)
	-	`sha256:30f60ad060aa0113de8a2217e6f4f6bada6e6325df20037059ee9ecfa692d7cf`  
		Last Modified: Mon, 08 Aug 2016 21:47:39 GMT  
		Size: 1.7 MB (1732585 bytes)
	-	`sha256:ef6a1ba95125f09ee573906ce84ed9b5683ccb39e9bc3c54c4e29cec8bf0584a`  
		Last Modified: Mon, 08 Aug 2016 21:47:40 GMT  
		Size: 4.2 MB (4175865 bytes)
	-	`sha256:de8e75064d8f873af752f7889dbd7d771b75282130e5f661a5a8345b7f8b64bb`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 233.0 B

## `celery:3.1`

```console
$ docker pull celery@sha256:6f1c1c5d36ce7d0db54012e94f6baa2af641232399c6bed54bc9f99a2bd7aac1
```

-	Platforms:
	-	linux; amd64

### `celery:3.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82178857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0828c179d1b521f0284e47288038a17ad17d4b3b55c9e7c6fba417b2abfa17ba`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:46:56 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 08 Aug 2016 21:46:56 GMT
WORKDIR /home/user
# Mon, 08 Aug 2016 21:47:00 GMT
RUN pip install redis
# Mon, 08 Aug 2016 21:47:01 GMT
ENV CELERY_VERSION=3.1.23
# Mon, 08 Aug 2016 21:47:09 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 08 Aug 2016 21:47:11 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 08 Aug 2016 21:47:12 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 08 Aug 2016 21:47:13 GMT
USER [user]
# Mon, 08 Aug 2016 21:47:21 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7e51ab90b9b2950b0549a4d5c4ebe764645043616a0bb6e4af53ae27424d13c3`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 4.3 KB (4341 bytes)
	-	`sha256:30f60ad060aa0113de8a2217e6f4f6bada6e6325df20037059ee9ecfa692d7cf`  
		Last Modified: Mon, 08 Aug 2016 21:47:39 GMT  
		Size: 1.7 MB (1732585 bytes)
	-	`sha256:ef6a1ba95125f09ee573906ce84ed9b5683ccb39e9bc3c54c4e29cec8bf0584a`  
		Last Modified: Mon, 08 Aug 2016 21:47:40 GMT  
		Size: 4.2 MB (4175865 bytes)
	-	`sha256:de8e75064d8f873af752f7889dbd7d771b75282130e5f661a5a8345b7f8b64bb`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 233.0 B

## `celery:3`

```console
$ docker pull celery@sha256:6f1c1c5d36ce7d0db54012e94f6baa2af641232399c6bed54bc9f99a2bd7aac1
```

-	Platforms:
	-	linux; amd64

### `celery:3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82178857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0828c179d1b521f0284e47288038a17ad17d4b3b55c9e7c6fba417b2abfa17ba`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:46:56 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 08 Aug 2016 21:46:56 GMT
WORKDIR /home/user
# Mon, 08 Aug 2016 21:47:00 GMT
RUN pip install redis
# Mon, 08 Aug 2016 21:47:01 GMT
ENV CELERY_VERSION=3.1.23
# Mon, 08 Aug 2016 21:47:09 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 08 Aug 2016 21:47:11 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 08 Aug 2016 21:47:12 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 08 Aug 2016 21:47:13 GMT
USER [user]
# Mon, 08 Aug 2016 21:47:21 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7e51ab90b9b2950b0549a4d5c4ebe764645043616a0bb6e4af53ae27424d13c3`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 4.3 KB (4341 bytes)
	-	`sha256:30f60ad060aa0113de8a2217e6f4f6bada6e6325df20037059ee9ecfa692d7cf`  
		Last Modified: Mon, 08 Aug 2016 21:47:39 GMT  
		Size: 1.7 MB (1732585 bytes)
	-	`sha256:ef6a1ba95125f09ee573906ce84ed9b5683ccb39e9bc3c54c4e29cec8bf0584a`  
		Last Modified: Mon, 08 Aug 2016 21:47:40 GMT  
		Size: 4.2 MB (4175865 bytes)
	-	`sha256:de8e75064d8f873af752f7889dbd7d771b75282130e5f661a5a8345b7f8b64bb`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 233.0 B

## `celery:latest`

```console
$ docker pull celery@sha256:6f1c1c5d36ce7d0db54012e94f6baa2af641232399c6bed54bc9f99a2bd7aac1
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.2 MB (82178857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0828c179d1b521f0284e47288038a17ad17d4b3b55c9e7c6fba417b2abfa17ba`
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
# Mon, 08 Aug 2016 20:12:26 GMT
RUN set -ex 	&& buildDeps=' 		curl 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" -o python.tar.xz 	&& curl -fSL "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" -o python.tar.xz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 	&& pip3 install --no-cache-dir --upgrade pip==$PYTHON_PIP_VERSION 	&& [ "$(pip list | awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 	&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Mon, 08 Aug 2016 20:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s easy_install-3.4 easy_install 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 08 Aug 2016 20:12:28 GMT
CMD ["python3"]
# Mon, 08 Aug 2016 21:46:56 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Mon, 08 Aug 2016 21:46:56 GMT
WORKDIR /home/user
# Mon, 08 Aug 2016 21:47:00 GMT
RUN pip install redis
# Mon, 08 Aug 2016 21:47:01 GMT
ENV CELERY_VERSION=3.1.23
# Mon, 08 Aug 2016 21:47:09 GMT
RUN pip install celery=="$CELERY_VERSION"
# Mon, 08 Aug 2016 21:47:11 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Mon, 08 Aug 2016 21:47:12 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Mon, 08 Aug 2016 21:47:13 GMT
USER [user]
# Mon, 08 Aug 2016 21:47:21 GMT
CMD ["celery" "worker"]
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
	-	`sha256:7e51ab90b9b2950b0549a4d5c4ebe764645043616a0bb6e4af53ae27424d13c3`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 4.3 KB (4341 bytes)
	-	`sha256:30f60ad060aa0113de8a2217e6f4f6bada6e6325df20037059ee9ecfa692d7cf`  
		Last Modified: Mon, 08 Aug 2016 21:47:39 GMT  
		Size: 1.7 MB (1732585 bytes)
	-	`sha256:ef6a1ba95125f09ee573906ce84ed9b5683ccb39e9bc3c54c4e29cec8bf0584a`  
		Last Modified: Mon, 08 Aug 2016 21:47:40 GMT  
		Size: 4.2 MB (4175865 bytes)
	-	`sha256:de8e75064d8f873af752f7889dbd7d771b75282130e5f661a5a8345b7f8b64bb`  
		Last Modified: Mon, 08 Aug 2016 21:47:38 GMT  
		Size: 233.0 B
