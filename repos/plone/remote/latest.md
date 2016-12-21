## `plone:latest`

```console
$ docker pull plone@sha256:f0c413a7dded6914d5d0b1ee49953c05fbf88942cd788a337d7ee9e1413546a5
```

-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.4 MB (141434039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c63409eab7b86d3aec6bdc7075d6a4e93746da0a75e741a649bd260f4f706ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

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
# Wed, 14 Dec 2016 17:38:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_VERSION=2.7.12
# Wed, 14 Dec 2016 17:38:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Dec 2016 18:47:35 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Wed, 14 Dec 2016 18:47:37 GMT
CMD ["python2"]
# Mon, 19 Dec 2016 17:01:52 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Mon, 19 Dec 2016 17:01:53 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Mon, 19 Dec 2016 17:07:00 GMT
ENV PLONE_MAJOR=5.0
# Mon, 19 Dec 2016 17:07:00 GMT
ENV PLONE_VERSION=5.0.6
# Mon, 19 Dec 2016 17:07:00 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Mon, 19 Dec 2016 17:13:39 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Mon, 19 Dec 2016 17:13:40 GMT
VOLUME [/data]
# Mon, 19 Dec 2016 17:13:41 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Mon, 19 Dec 2016 17:13:41 GMT
EXPOSE 8080/tcp
# Mon, 19 Dec 2016 17:13:41 GMT
USER [plone]
# Mon, 19 Dec 2016 17:13:42 GMT
WORKDIR /plone/instance
# Mon, 19 Dec 2016 17:13:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 19 Dec 2016 17:13:44 GMT
CMD ["start"]
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
	-	`sha256:a044686e6e0af7e1186aff3111899868a0e203d76bfde7b2e41c4c57c9d5595c`  
		Last Modified: Mon, 19 Dec 2016 18:28:51 GMT  
		Size: 16.4 MB (16364587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c09caa75bf0a5bd8b0d6d96bc0ea6373e64284cf745e1c8e343d4737f013a07`  
		Last Modified: Wed, 21 Dec 2016 19:05:51 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01991f400ee69324b200343483a6764a4d6e38078644b4d6601275f682a198db`  
		Last Modified: Wed, 21 Dec 2016 19:07:51 GMT  
		Size: 70.4 MB (70362884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc1e2c8aee146a423162c31b8692cb91e34e150c52f2369328b4da8cbab4ee5`  
		Last Modified: Wed, 21 Dec 2016 19:07:15 GMT  
		Size: 2.2 KB (2219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
