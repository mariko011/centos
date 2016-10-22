## `celery:latest`

```console
$ docker pull celery@sha256:eae17d604d39ac2e3bd021b55048e1e88e0cbcf4ac7251fc14ca962638a1eefe
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81450488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535960c3f7238e3cdce56a1b472db147dcccba84ad81dc0b9eb76ac8ec4b9a2d`
-	Default Command: `["celery","worker"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Sat, 22 Oct 2016 00:31:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 22 Oct 2016 00:34:53 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 22 Oct 2016 00:34:53 GMT
ENV PYTHON_VERSION=3.5.2
# Sat, 22 Oct 2016 00:34:53 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Sat, 22 Oct 2016 00:36:49 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Sat, 22 Oct 2016 00:36:50 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 22 Oct 2016 00:36:51 GMT
CMD ["python3"]
# Sat, 22 Oct 2016 02:38:31 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Sat, 22 Oct 2016 02:38:31 GMT
WORKDIR /home/user
# Sat, 22 Oct 2016 02:38:35 GMT
RUN pip install redis
# Sat, 22 Oct 2016 02:38:36 GMT
ENV CELERY_VERSION=3.1.24
# Sat, 22 Oct 2016 02:38:42 GMT
RUN pip install celery=="$CELERY_VERSION"
# Sat, 22 Oct 2016 02:38:43 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Sat, 22 Oct 2016 02:38:44 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Sat, 22 Oct 2016 02:38:44 GMT
USER [user]
# Sat, 22 Oct 2016 02:38:44 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9fe9b2de70b874ad252d8c05ae1298963545e3f6e9675fb4b16893290ae548`  
		Last Modified: Sat, 22 Oct 2016 00:34:20 GMT  
		Size: 3.3 MB (3306569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9a4fb4cf6875f86fc6381f36baf3380e68e2ad7fb6b17c9385e8a973cd7118`  
		Last Modified: Sat, 22 Oct 2016 00:37:07 GMT  
		Size: 20.8 MB (20802388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e616be8cf129454ccab7e07bb8a5ad4721adb81920a1a7324f47b2ea6b55ce88`  
		Last Modified: Sat, 22 Oct 2016 00:37:00 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45cc9824ba479f9d09ce14de328b7ce2fad0749aba625bc05b117b9f3e4384a2`  
		Last Modified: Sat, 22 Oct 2016 02:38:54 GMT  
		Size: 4.3 KB (4339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2f261c0b2eab68703533464d91c796f6a16d7319b6b8972e49cc9e667e9d84`  
		Last Modified: Sat, 22 Oct 2016 02:38:56 GMT  
		Size: 1.8 MB (1797020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dadc79923637980ae8ba773101d119a15a6bcf8efd96c19df15484ac1f745ca5`  
		Last Modified: Sat, 22 Oct 2016 02:38:57 GMT  
		Size: 4.2 MB (4186548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e7a459fe68b397635722df25d0eb52b9936e036f87408d06457f74332a4bcc`  
		Last Modified: Sat, 22 Oct 2016 02:38:55 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
