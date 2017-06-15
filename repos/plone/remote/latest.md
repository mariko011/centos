## `plone:latest`

```console
$ docker pull plone@sha256:5cef64c5bed97e95129c7f01086508b6dd88ea4d272d3323da15f6f8d2da0044
```

-	Platforms:
	-	linux; amd64

### `plone:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.7 MB (268666850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa45e00c5972c784c7b0ab436fe2a83c2cb55c0bf10821fda8eb2770e8d40084`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["start"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Thu, 08 Jun 2017 21:03:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Jun 2017 21:03:07 GMT
ENV LANG=C.UTF-8
# Thu, 08 Jun 2017 21:03:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libgdbm3 		libsqlite3-0 		libssl1.0.0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 08 Jun 2017 21:03:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 08 Jun 2017 21:03:21 GMT
ENV PYTHON_VERSION=2.7.13
# Thu, 08 Jun 2017 21:05:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncurses-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 08 Jun 2017 21:05:32 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 08 Jun 2017 21:05:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a -name test -o -name tests \) 			-o 			\( -type f -a -name '*.pyc' -o -name '*.pyo' \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 08 Jun 2017 21:05:49 GMT
CMD ["python2"]
# Thu, 15 Jun 2017 19:38:47 GMT
RUN useradd --system -m -d /plone -U -u 500 plone  && mkdir -p /data/filestorage /data/blobstorage  && chown -R plone:plone /data
# Thu, 15 Jun 2017 19:38:48 GMT
ENV PLONE_MAJOR=5.0
# Thu, 15 Jun 2017 19:38:49 GMT
ENV PLONE_VERSION=5.0.8
# Thu, 15 Jun 2017 19:38:50 GMT
ENV PLONE_MD5=246788240851f48bc2f84289a3dc6480
# Thu, 15 Jun 2017 19:38:50 GMT
LABEL plone=5.0.8 os=debian os.version=8 name=Plone 5 description=Plone image, based on Unified Installer maintainer=Plone Community
# Thu, 15 Jun 2017 19:43:07 GMT
RUN buildDeps="wget sudo python-setuptools python-dev build-essential libssl-dev libxml2-dev libxslt1-dev libbz2-dev libjpeg62-turbo-dev libtiff5-dev libopenjp2-7-dev"  && runDeps="libxml2 libxslt1.1 libjpeg62 rsync lynx wv libtiff5 libopenjp2-7 poppler-utils"  && apt-get update  && apt-get install -y --no-install-recommends $buildDeps  && wget -O Plone.tgz https://launchpad.net/plone/$PLONE_MAJOR/$PLONE_VERSION/+download/Plone-$PLONE_VERSION-UnifiedInstaller.tgz  && echo "$PLONE_MD5 Plone.tgz" | md5sum -c -  && tar -xzf Plone.tgz  && ./Plone-$PLONE_VERSION-UnifiedInstaller/install.sh       --password=admin       --daemon-user=plone       --owner=plone       --group=plone       --target=/plone       --instance=instance       --var=/data       none  && cd /plone/instance  && sed -i 's/parts =/parts =\n    zeoserver/g' buildout.cfg  && echo '\n[zeoserver]\n<= zeoserver_base\nrecipe = plone.recipe.zeoserver' >> buildout.cfg  && sudo -u plone bin/buildout  && chown -R plone:plone /plone /data  && rm -rf /Plone*  && SUDO_FORCE_REMOVE=yes apt-get remove --purge -y $buildDeps && apt-get install -y --no-install-recommends $runDeps  && apt-get clean  && rm -rf /var/lib/apt/lists/*  && rm -rf /plone/buildout-cache/downloads/*  && rm -rf /plone/Plone-docs  && find /plone \( -type f -a -name '*.pyc' -o -name '*.pyo' \) -exec rm -rf '{}' +
# Thu, 15 Jun 2017 19:43:09 GMT
VOLUME [/data]
# Thu, 15 Jun 2017 19:43:11 GMT
COPY multi:df870708d456e9785c9b887f2caba9a08a7b0644a7384dc8873e8ff7b1eed3b4 in / 
# Thu, 15 Jun 2017 19:43:12 GMT
EXPOSE 8080/tcp
# Thu, 15 Jun 2017 19:43:13 GMT
USER [plone]
# Thu, 15 Jun 2017 19:43:14 GMT
WORKDIR /plone/instance
# Thu, 15 Jun 2017 19:43:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 15 Jun 2017 19:43:17 GMT
CMD ["start"]
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a615537653d216b495be0fa8706000ac5810de7dea6e5318dd210cb8142893e`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 3.5 MB (3472809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd25cca6a1715de85ea4b203a135fd4fa0df3526759ee3b783b518c9dd1833b2`  
		Last Modified: Thu, 08 Jun 2017 21:54:16 GMT  
		Size: 15.0 MB (15000662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f8782a0f0cf26f7c28a876f64c99104925d84b86462c86c680a0ba208e896`  
		Last Modified: Thu, 08 Jun 2017 21:54:13 GMT  
		Size: 1.7 MB (1736373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004d8753b946215b383a388936e71a32ac1e87c1286478ea89055ec0e21df5dd`  
		Last Modified: Thu, 15 Jun 2017 20:00:50 GMT  
		Size: 4.2 KB (4167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d254978728bc3c378512594475de9eb9393936885f53d51b6521f58d263feda6`  
		Last Modified: Thu, 15 Jun 2017 20:01:23 GMT  
		Size: 195.9 MB (195882341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d0f5fd05664101460e88dc42bfc213779f9df8b2dec33e7d57a49f04e74e08`  
		Last Modified: Thu, 15 Jun 2017 20:00:50 GMT  
		Size: 2.2 KB (2229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
