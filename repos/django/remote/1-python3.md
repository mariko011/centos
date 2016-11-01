## `django:1-python3`

```console
$ docker pull django@sha256:a605f025fec7eff832060ccdfbed3c1f7bd86b4f8fa10f480bed2efceafb9031
```

-	Platforms:
	-	linux; amd64

### `django:1-python3` - linux; amd64

-	Docker Version: 1.12.2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.9 MB (157929492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d1a20c299e5b941bf59fa2834c816973ec357186828fdedd5e43fcc4b85c76`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 21 Oct 2016 16:22:34 GMT
ADD file:23aa4f893e3288698c017b90be657911b72d54edb3b3a7c4d05c308f50f9228f in / 
# Fri, 21 Oct 2016 16:22:34 GMT
CMD ["/bin/bash"]
# Sat, 22 Oct 2016 00:28:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Oct 2016 00:28:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Oct 2016 23:49:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 00:03:03 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_VERSION=3.4.5
# Tue, 01 Nov 2016 00:03:03 GMT
ENV PYTHON_PIP_VERSION=8.1.2
# Tue, 01 Nov 2016 00:05:28 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libgdbm-dev 		liblzma-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-loadable-sqlite-extensions 		--enable-shared 	&& make -j$(nproc) 	&& make install 	&& ldconfig 		&& if [ ! -e /usr/local/bin/pip3 ]; then : 		&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python3 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	; fi 	&& pip3 install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 01 Nov 2016 00:05:29 GMT
RUN cd /usr/local/bin 	&& { [ -e easy_install ] || ln -s easy_install-* easy_install; } 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 Nov 2016 00:05:30 GMT
CMD ["python3"]
# Tue, 01 Nov 2016 01:32:06 GMT
RUN apt-get update && apt-get install -y 		gcc 		gettext 		mysql-client libmysqlclient-dev 		postgresql-client libpq-dev 		sqlite3 	--no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 01 Nov 2016 01:32:06 GMT
ENV DJANGO_VERSION=1.10.2
# Tue, 01 Nov 2016 01:32:26 GMT
RUN pip install mysqlclient psycopg2 django=="$DJANGO_VERSION"
```

-	Layers:
	-	`sha256:43c265008fae5d1f3cbee0dac9697235320b174d85acbed002a4fe44236adec0`  
		Last Modified: Fri, 21 Oct 2016 16:22:58 GMT  
		Size: 51.4 MB (51353125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2afa7f3c046730e8044953131c3f0e0c8ee060297441b4514a7f2cc9e8402d`  
		Last Modified: Tue, 01 Nov 2016 00:22:36 GMT  
		Size: 3.3 MB (3338730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31f9e15ea42c370f948855a9262b1c20dbaf9db8e571f8bf1c86851feffa8ac`  
		Last Modified: Tue, 01 Nov 2016 00:29:40 GMT  
		Size: 19.6 MB (19568722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a08138d87487b7704bfce8c277beefdd48a09136b297c705d686449d562f05`  
		Last Modified: Tue, 01 Nov 2016 00:29:33 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1efc062e1244eb1b154b8edc6195dac32c81b7bb6e353c48eccb3175f87e9e`  
		Last Modified: Tue, 01 Nov 2016 01:32:57 GMT  
		Size: 68.3 MB (68293492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc10d0d12c4fcee20354a7553936c054d25367fd3eee7ba95bd6588b635922b7`  
		Last Modified: Tue, 01 Nov 2016 01:32:42 GMT  
		Size: 15.4 MB (15375157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
