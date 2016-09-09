## `celery:latest`

```console
$ docker pull celery@sha256:ed4e7a07d696b0e20d081e2d56403b8c3be49be2e3b0902b7c1933dc16faebab
```

-	Platforms:
	-	linux; amd64

### `celery:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81451853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:796f9d0c5d0c83923e356e8c0a0633a3e728ece018a172cc38423a3982c4e6de`
-	Default Command: `["celery","worker"]`

```dockerfile
# Tue, 30 Aug 2016 21:00:51 GMT
ADD file:f2453b914e7e026efd39c6321c7b14509b6d09dd3cf5567a8f6bd38466e06954 in / 
# Tue, 30 Aug 2016 21:00:52 GMT
CMD ["/bin/bash"]
# Wed, 31 Aug 2016 02:39:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Aug 2016 02:39:27 GMT
ENV LANG=C.UTF-8
# Wed, 31 Aug 2016 02:39:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 31 Aug 2016 02:54:42 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 31 Aug 2016 03:02:23 GMT
ENV PYTHON_VERSION=3.5.2
# Wed, 31 Aug 2016 03:02:24 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Wed, 31 Aug 2016 03:04:21 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 31 Aug 2016 03:04:21 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 31 Aug 2016 03:04:22 GMT
CMD ["python3"]
# Wed, 07 Sep 2016 17:59:56 GMT
RUN groupadd user && useradd --create-home --home-dir /home/user -g user user
# Wed, 07 Sep 2016 17:59:56 GMT
WORKDIR /home/user
# Wed, 07 Sep 2016 17:59:59 GMT
RUN pip install redis
# Wed, 07 Sep 2016 18:00:07 GMT
ENV CELERY_VERSION=3.1.23
# Wed, 07 Sep 2016 18:00:13 GMT
RUN pip install celery=="$CELERY_VERSION"
# Wed, 07 Sep 2016 18:00:14 GMT
RUN { 	echo 'import os'; 	echo "BROKER_URL = os.environ.get('CELERY_BROKER_URL', 'amqp://')"; } > celeryconfig.py
# Wed, 07 Sep 2016 18:00:14 GMT
ENV CELERY_BROKER_URL=amqp://guest@rabbit
# Wed, 07 Sep 2016 18:00:14 GMT
USER [user]
# Wed, 07 Sep 2016 18:00:15 GMT
CMD ["celery" "worker"]
```

-	Layers:
	-	`sha256:8ad8b3f87b378cfae583fef34e47a3c9203847d779961b7351cbf786af0bc09f`  
		Last Modified: Tue, 30 Aug 2016 21:02:02 GMT  
		Size: 51.4 MB (51367268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd93129182c531040957d480b6e59e387cd4c24e9a2e4edeaf3a15b413e82f2`  
		Last Modified: Wed, 07 Sep 2016 18:00:24 GMT  
		Size: 3.3 MB (3306391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc44f8f7766f1bf11c8c80816ca07c7a4e99f247678640a499151f92b8f7001e`  
		Last Modified: Wed, 07 Sep 2016 18:00:34 GMT  
		Size: 20.8 MB (20803138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5701e452130ed5271b690aabd8e7198759444f8618edc47f255f642c62c646a9`  
		Last Modified: Wed, 07 Sep 2016 18:00:21 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e347bfb96f43d6763b8cecd88b0aaf037d4a4a7fcef771a50a7a075cd9b1d33a`  
		Last Modified: Wed, 07 Sep 2016 18:00:20 GMT  
		Size: 4.3 KB (4337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dd0955cad80d81579c0949887f5df99868b44c09cc0f1343b8c79c5edbe5ea`  
		Last Modified: Wed, 07 Sep 2016 18:00:21 GMT  
		Size: 1.8 MB (1797276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b1d0df7f415bd479aa4d0473bf96734ec81fdcda6ec12c5802c947ad97950f`  
		Last Modified: Wed, 07 Sep 2016 18:01:08 GMT  
		Size: 4.2 MB (4172948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586c9aed0b71d22f9382358570132f2aa395aa71b7c59725deb1bb4cdad5d5ab`  
		Last Modified: Wed, 07 Sep 2016 18:01:05 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
