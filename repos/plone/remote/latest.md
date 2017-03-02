## `plone:latest`

```console
$ docker pull plone@sha256:6918f1f4b97bf4a7fb78421ae1c8e76d428635d33947d49904de2d48ae2396ac
```

-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.5 MB (141526505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356d4b710015f249f953082f4006100cfefd31e1d3a6309df59be5376171dd6d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 20:40:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 Feb 2017 20:40:14 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 22:15:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 22:15:23 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 28 Feb 2017 22:15:23 GMT
ENV PYTHON_VERSION=2.7.13
# Tue, 28 Feb 2017 22:15:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 28 Feb 2017 22:17:39 GMT
RUN set -ex 	&& buildDeps=' 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -r "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& ./configure 		--enable-shared 		--enable-unicode=ucs4 	&& make -j$(nproc) 	&& make install 	&& ldconfig 			&& wget -O /tmp/get-pip.py 'https://bootstrap.pypa.io/get-pip.py' 		&& python2 /tmp/get-pip.py "pip==$PYTHON_PIP_VERSION" 		&& rm /tmp/get-pip.py 	&& pip install --no-cache-dir --upgrade --force-reinstall "pip==$PYTHON_PIP_VERSION" 	&& [ "$(pip list |tac|tac| awk -F '[ ()]+' '$1 == "pip" { print $2; exit }')" = "$PYTHON_PIP_VERSION" ] 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& apt-get purge -y --auto-remove $buildDeps 	&& rm -rf /usr/src/python ~/.cache
# Tue, 28 Feb 2017 22:17:40 GMT
CMD ["python2"]
# Wed, 01 Mar 2017 17:34:00 GMT
MAINTAINER "Plone Community" http://community.plone.org
# Wed, 01 Mar 2017 17:34:01 GMT
RUN useradd --system -U -u 500 plone  && mkdir -p /plone /data/filestorage /data/blobstorage  && chown -R plone:plone /plone /data
# Wed, 01 Mar 2017 17:42:07 GMT
ENV PLONE_MAJOR=5.0
# Wed, 01 Mar 2017 17:42:08 GMT
ENV PLONE_VERSION=5.0.6
# Wed, 01 Mar 2017 17:42:08 GMT
ENV PLONE_MD5=c6951b0f79be1bf12337d49f34afc524
# Wed, 01 Mar 2017 17:53:00 GMT
RUN buildDeps="curl sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && curl -o Plone.tgz -SL https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get purge -y --auto-remove $buildDeps  && apt-get install -y --no-install-recommends $runDeps  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Wed, 01 Mar 2017 17:53:02 GMT
VOLUME [/data]
# Wed, 01 Mar 2017 17:53:03 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Wed, 01 Mar 2017 17:53:04 GMT
EXPOSE 8080/tcp
# Wed, 01 Mar 2017 17:53:04 GMT
USER [plone]
# Wed, 01 Mar 2017 17:53:05 GMT
WORKDIR /plone/instance
# Wed, 01 Mar 2017 17:53:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 01 Mar 2017 17:53:07 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764f950e58321d40da999d0b1da856017c3b0faecaf1f6b02c228b7c854ac450`  
		Last Modified: Wed, 01 Mar 2017 15:55:20 GMT  
		Size: 3.3 MB (3344487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690360b5f9532df86160b5644bc5509dc8db409884dae5178f0fc9729b1ddece`  
		Last Modified: Wed, 01 Mar 2017 15:55:28 GMT  
		Size: 16.4 MB (16400684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:321a15361477f91a2050a7d565028ae1b836d14a2fc47d7868454cdfbc34a9df`  
		Last Modified: Thu, 02 Mar 2017 03:12:28 GMT  
		Size: 2.0 KB (1960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7c1a0d715bbbf3bb5755b930e6e8f5880a61d3604bb640c8fff192c44c2566`  
		Last Modified: Thu, 02 Mar 2017 03:14:34 GMT  
		Size: 70.4 MB (70413779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8995b49e46dcdb71225caaf9ed916d3ecbcb3906cc5278b1911946a7bd7448`  
		Last Modified: Thu, 02 Mar 2017 03:13:58 GMT  
		Size: 2.2 KB (2221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
