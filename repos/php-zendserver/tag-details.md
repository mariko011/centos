<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:5.5`](#php-zendserver55)
-	[`php-zendserver:8.5-php5.5`](#php-zendserver85-php55)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:5.4`](#php-zendserver54)
-	[`php-zendserver:7.0-php5.4`](#php-zendserver70-php54)
-	[`php-zendserver:9.0`](#php-zendserver90)
-	[`php-zendserver:9.0-php7`](#php-zendserver90-php7)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:475ab95eda003991278e277f29423e4dbcf3761288841272a9a438ee2ff38a44
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (327992450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f72363a69773cffabe3a0d74c52959029439aaf199d68eb503a96304e4b99c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:46:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:48:25 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:48:26 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:48:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:48:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:48:29 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:48:29 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:48:30 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:48:34 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:48:35 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:48:35 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:48:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:49:39 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:49:40 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:49:41 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:49:42 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:49:42 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:49:43 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:49:43 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:49:44 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:49:44 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:49:44 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:49:45 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db1c595153c1f0fb263cb53b8ce9c81bb5921922e4ad79f8351b18a47ed5f7d`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10d49e9241ac491e04caabd752ae8ad5bd80ee5be28956c4149b86220ae8e3e`  
		Last Modified: Thu, 17 Nov 2016 00:59:55 GMT  
		Size: 251.6 MB (251604327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c29276e3b4cab52826ccf743034e6ec221c8927b8a4a966844ac2a66d975dff`  
		Last Modified: Thu, 17 Nov 2016 00:58:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77a792702063d6e0c69362ccf3d728bc72d5968bab249e0de6d86c82a5a3bb`  
		Last Modified: Thu, 17 Nov 2016 00:58:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174f993455f3d8aed6f40b507482440ef1bcf81f39cd0470de787c29706deead`  
		Last Modified: Thu, 17 Nov 2016 00:58:52 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac96825b294af55220b58460b39821bfbe642e0cd5f21ce8b643f97576a3b9d`  
		Last Modified: Thu, 17 Nov 2016 00:58:50 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971bef93d02cae72f9d3a501fb0712e463047b57828ca641ddfcd32e403abf08`  
		Last Modified: Thu, 17 Nov 2016 00:58:51 GMT  
		Size: 471.5 KB (471505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11661a68282e33b717756ccb77aab664c8f2af0e690d1714de62e43365640138`  
		Last Modified: Thu, 17 Nov 2016 00:58:49 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6564dc0357476286d0c678ce5340bb589d68697d017997a387e24c0afd8871ec`  
		Last Modified: Thu, 17 Nov 2016 00:58:50 GMT  
		Size: 457.6 KB (457557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83fc4beba54228ee5cea077640a9cb1a4d0d8d7d59d9ce3b37de8e304fe6d0b`  
		Last Modified: Thu, 17 Nov 2016 00:58:48 GMT  
		Size: 9.6 MB (9636667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538f1127aa0e32fe5e7601894baac5e4a3989d242033a0b91394475cff39f764`  
		Last Modified: Thu, 17 Nov 2016 00:58:46 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ed2f7d8ca61becc7e12e15b6ede86f18af9f3cc77e2bf4e986f4fef6a51693`  
		Last Modified: Thu, 17 Nov 2016 00:58:46 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60c3ee69ee0c778389853a4d2a73d48a17af7d28c3cef8dbc408d6f42376b76`  
		Last Modified: Thu, 17 Nov 2016 00:58:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf90b85b214a794807c72d4ed4ef658e56cdeffac14a1bef81b9b7cf730a13b`  
		Last Modified: Thu, 17 Nov 2016 00:58:47 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:475ab95eda003991278e277f29423e4dbcf3761288841272a9a438ee2ff38a44
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (327992450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f72363a69773cffabe3a0d74c52959029439aaf199d68eb503a96304e4b99c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:46:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:48:25 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:48:26 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:48:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:48:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:48:29 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:48:29 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:48:30 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:48:34 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:48:35 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:48:35 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:48:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:49:39 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:49:40 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:49:41 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:49:42 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:49:42 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:49:43 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:49:43 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:49:44 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:49:44 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:49:44 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:49:45 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db1c595153c1f0fb263cb53b8ce9c81bb5921922e4ad79f8351b18a47ed5f7d`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10d49e9241ac491e04caabd752ae8ad5bd80ee5be28956c4149b86220ae8e3e`  
		Last Modified: Thu, 17 Nov 2016 00:59:55 GMT  
		Size: 251.6 MB (251604327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c29276e3b4cab52826ccf743034e6ec221c8927b8a4a966844ac2a66d975dff`  
		Last Modified: Thu, 17 Nov 2016 00:58:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f77a792702063d6e0c69362ccf3d728bc72d5968bab249e0de6d86c82a5a3bb`  
		Last Modified: Thu, 17 Nov 2016 00:58:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174f993455f3d8aed6f40b507482440ef1bcf81f39cd0470de787c29706deead`  
		Last Modified: Thu, 17 Nov 2016 00:58:52 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac96825b294af55220b58460b39821bfbe642e0cd5f21ce8b643f97576a3b9d`  
		Last Modified: Thu, 17 Nov 2016 00:58:50 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971bef93d02cae72f9d3a501fb0712e463047b57828ca641ddfcd32e403abf08`  
		Last Modified: Thu, 17 Nov 2016 00:58:51 GMT  
		Size: 471.5 KB (471505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11661a68282e33b717756ccb77aab664c8f2af0e690d1714de62e43365640138`  
		Last Modified: Thu, 17 Nov 2016 00:58:49 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6564dc0357476286d0c678ce5340bb589d68697d017997a387e24c0afd8871ec`  
		Last Modified: Thu, 17 Nov 2016 00:58:50 GMT  
		Size: 457.6 KB (457557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83fc4beba54228ee5cea077640a9cb1a4d0d8d7d59d9ce3b37de8e304fe6d0b`  
		Last Modified: Thu, 17 Nov 2016 00:58:48 GMT  
		Size: 9.6 MB (9636667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:538f1127aa0e32fe5e7601894baac5e4a3989d242033a0b91394475cff39f764`  
		Last Modified: Thu, 17 Nov 2016 00:58:46 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ed2f7d8ca61becc7e12e15b6ede86f18af9f3cc77e2bf4e986f4fef6a51693`  
		Last Modified: Thu, 17 Nov 2016 00:58:46 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60c3ee69ee0c778389853a4d2a73d48a17af7d28c3cef8dbc408d6f42376b76`  
		Last Modified: Thu, 17 Nov 2016 00:58:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cf90b85b214a794807c72d4ed4ef658e56cdeffac14a1bef81b9b7cf730a13b`  
		Last Modified: Thu, 17 Nov 2016 00:58:47 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:6728e710bbfc6b44ea50d3defe6d76a208acf5f96e4fd5d7fa76a4dc82a4a511
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324718235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065258633c5c09e7f058f4eebcc9c0abec07488f70a6740b20b8862d16304e17`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:46:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:51:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:51:25 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:51:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:51:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:51:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:51:28 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:51:29 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:51:32 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:51:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:51:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:51:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:52:37 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:52:38 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:52:39 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:52:40 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:52:40 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:52:42 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:52:42 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:52:43 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db1c595153c1f0fb263cb53b8ce9c81bb5921922e4ad79f8351b18a47ed5f7d`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c3321b825ba4da83065a23443bc047a09aa48fbe0720f4de3fdf462d8124`  
		Last Modified: Thu, 17 Nov 2016 01:01:46 GMT  
		Size: 248.3 MB (248319860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ce1052cff1550245c086e8d8de4e25a1a6c0eed068ff97cb6a72b68e5c1f2e`  
		Last Modified: Thu, 17 Nov 2016 01:00:44 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e849a231d734202f3e31e869bc63af399b43a876f5fbf8039d267317024590a`  
		Last Modified: Thu, 17 Nov 2016 01:00:43 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c536f783d9cd484f50d5d092506011204cd8ebc5729925634316376e189f4d25`  
		Last Modified: Thu, 17 Nov 2016 01:00:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555785fa00b8e84d721aa0adc7bd19387efebdfbb0cc925e45640841756bd06a`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c602d61c709da842d51bf5507aec06e6d7c6e623cf04c9c5b893345e39ec16`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 473.5 KB (473477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c346367c0c25a004d1eaca4c9800d3eaf6952ba92f4b616bd3defc94f01e115`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835d0d0e675eee8a9ab164563abf88f9bd72ff42c6696ba704420a3f0192077`  
		Last Modified: Thu, 17 Nov 2016 01:00:40 GMT  
		Size: 457.6 KB (457551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc4025848b7987697234d124d06cec5c3b879fc287965b3a2dc13733ab72653`  
		Last Modified: Thu, 17 Nov 2016 01:00:39 GMT  
		Size: 9.6 MB (9644963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f6dfea020f3f734efea828c466ace13ecd6605b156999a8a029f39136daeb8`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526aa53dbf8668b309eefa2b34e6b0bd6d0fcdd7f1542bd78136590c2af9875e`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df540b186ac54adbcb5e8642dc6d432a2f206dfa5687d71e221ecf4f14815ad5`  
		Last Modified: Thu, 17 Nov 2016 01:00:36 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5495b8850b3b1df6e83bbe1fa73fd3ec68c31c2f829cfd5495fa9bafe8930065`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:6728e710bbfc6b44ea50d3defe6d76a208acf5f96e4fd5d7fa76a4dc82a4a511
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324718235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065258633c5c09e7f058f4eebcc9c0abec07488f70a6740b20b8862d16304e17`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:46:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:51:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:51:25 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:51:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:51:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:51:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:51:28 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:51:29 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:51:32 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:51:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:51:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:51:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:52:37 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:52:38 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:52:39 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:52:40 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:52:40 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:52:42 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:52:42 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:52:43 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db1c595153c1f0fb263cb53b8ce9c81bb5921922e4ad79f8351b18a47ed5f7d`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c3321b825ba4da83065a23443bc047a09aa48fbe0720f4de3fdf462d8124`  
		Last Modified: Thu, 17 Nov 2016 01:01:46 GMT  
		Size: 248.3 MB (248319860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ce1052cff1550245c086e8d8de4e25a1a6c0eed068ff97cb6a72b68e5c1f2e`  
		Last Modified: Thu, 17 Nov 2016 01:00:44 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e849a231d734202f3e31e869bc63af399b43a876f5fbf8039d267317024590a`  
		Last Modified: Thu, 17 Nov 2016 01:00:43 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c536f783d9cd484f50d5d092506011204cd8ebc5729925634316376e189f4d25`  
		Last Modified: Thu, 17 Nov 2016 01:00:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555785fa00b8e84d721aa0adc7bd19387efebdfbb0cc925e45640841756bd06a`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c602d61c709da842d51bf5507aec06e6d7c6e623cf04c9c5b893345e39ec16`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 473.5 KB (473477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c346367c0c25a004d1eaca4c9800d3eaf6952ba92f4b616bd3defc94f01e115`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835d0d0e675eee8a9ab164563abf88f9bd72ff42c6696ba704420a3f0192077`  
		Last Modified: Thu, 17 Nov 2016 01:00:40 GMT  
		Size: 457.6 KB (457551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc4025848b7987697234d124d06cec5c3b879fc287965b3a2dc13733ab72653`  
		Last Modified: Thu, 17 Nov 2016 01:00:39 GMT  
		Size: 9.6 MB (9644963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f6dfea020f3f734efea828c466ace13ecd6605b156999a8a029f39136daeb8`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526aa53dbf8668b309eefa2b34e6b0bd6d0fcdd7f1542bd78136590c2af9875e`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df540b186ac54adbcb5e8642dc6d432a2f206dfa5687d71e221ecf4f14815ad5`  
		Last Modified: Thu, 17 Nov 2016 01:00:36 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5495b8850b3b1df6e83bbe1fa73fd3ec68c31c2f829cfd5495fa9bafe8930065`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:6728e710bbfc6b44ea50d3defe6d76a208acf5f96e4fd5d7fa76a4dc82a4a511
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.7 MB (324718235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:065258633c5c09e7f058f4eebcc9c0abec07488f70a6740b20b8862d16304e17`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:46:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:51:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:51:25 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:51:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:51:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:51:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:51:28 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:51:29 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:51:32 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:51:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:51:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:51:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:52:37 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:52:38 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:52:39 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:52:40 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:52:40 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:52:41 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:52:42 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:52:42 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:52:43 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db1c595153c1f0fb263cb53b8ce9c81bb5921922e4ad79f8351b18a47ed5f7d`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0830c3321b825ba4da83065a23443bc047a09aa48fbe0720f4de3fdf462d8124`  
		Last Modified: Thu, 17 Nov 2016 01:01:46 GMT  
		Size: 248.3 MB (248319860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ce1052cff1550245c086e8d8de4e25a1a6c0eed068ff97cb6a72b68e5c1f2e`  
		Last Modified: Thu, 17 Nov 2016 01:00:44 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e849a231d734202f3e31e869bc63af399b43a876f5fbf8039d267317024590a`  
		Last Modified: Thu, 17 Nov 2016 01:00:43 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c536f783d9cd484f50d5d092506011204cd8ebc5729925634316376e189f4d25`  
		Last Modified: Thu, 17 Nov 2016 01:00:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555785fa00b8e84d721aa0adc7bd19387efebdfbb0cc925e45640841756bd06a`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c602d61c709da842d51bf5507aec06e6d7c6e623cf04c9c5b893345e39ec16`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 473.5 KB (473477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c346367c0c25a004d1eaca4c9800d3eaf6952ba92f4b616bd3defc94f01e115`  
		Last Modified: Thu, 17 Nov 2016 01:00:41 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835d0d0e675eee8a9ab164563abf88f9bd72ff42c6696ba704420a3f0192077`  
		Last Modified: Thu, 17 Nov 2016 01:00:40 GMT  
		Size: 457.6 KB (457551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc4025848b7987697234d124d06cec5c3b879fc287965b3a2dc13733ab72653`  
		Last Modified: Thu, 17 Nov 2016 01:00:39 GMT  
		Size: 9.6 MB (9644963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f6dfea020f3f734efea828c466ace13ecd6605b156999a8a029f39136daeb8`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:526aa53dbf8668b309eefa2b34e6b0bd6d0fcdd7f1542bd78136590c2af9875e`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df540b186ac54adbcb5e8642dc6d432a2f206dfa5687d71e221ecf4f14815ad5`  
		Last Modified: Thu, 17 Nov 2016 01:00:36 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5495b8850b3b1df6e83bbe1fa73fd3ec68c31c2f829cfd5495fa9bafe8930065`  
		Last Modified: Thu, 17 Nov 2016 01:00:38 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:3de1362c62f09c64e16e1daa2c7af7d3de6cdc91af0ad29f7b094ec2c8b2b74a
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290886296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a11b9fe963c7eee687453c2d078874dca7ef4d87ac91dc88c61b7bb6cab06d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:44:32 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Thu, 17 Nov 2016 00:44:33 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 17 Nov 2016 00:44:34 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 17 Nov 2016 00:44:36 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:44:37 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:46:10 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:46:12 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:46:12 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:46:13 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:46:14 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:46:14 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:46:15 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:46:15 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:46:16 GMT
EXPOSE 10060/tcp
# Thu, 17 Nov 2016 00:46:16 GMT
EXPOSE 10061/tcp
# Thu, 17 Nov 2016 00:46:17 GMT
EXPOSE 10062/tcp
# Thu, 17 Nov 2016 00:46:17 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:46:17 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb0eb72eafa0e76a75cb397eb77281fff4c360a2d79164b286a9fc74caa4082`  
		Last Modified: Thu, 17 Nov 2016 00:57:28 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf2cf6a6025d0622022d77e142f51e3991acb607d44025d1c939782c8e6c8db`  
		Last Modified: Thu, 17 Nov 2016 00:57:27 GMT  
		Size: 11.7 KB (11701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d283cb9208a49763c0bd1eaa35ecfae78bd01c46d2dde5a84f36381c9ac8a`  
		Last Modified: Thu, 17 Nov 2016 00:57:28 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74215ac9aa9522d9652ee8d6a3152a91b948738d046751d8d8036c0622c6cf5`  
		Last Modified: Thu, 17 Nov 2016 00:57:27 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bc2c93497ddb823183055fd4b654e169a849d1a19769676fb1df1c82fe811d`  
		Last Modified: Thu, 17 Nov 2016 00:57:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553902c7a296098f16d63c30649bcf4b3869e9eafcc6f08d78159fc479ab12bb`  
		Last Modified: Thu, 17 Nov 2016 00:58:11 GMT  
		Size: 224.2 MB (224165728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa740f9c5ca2f1280112481736e2ed8f425d449263616fed20beb80c59cea4f`  
		Last Modified: Thu, 17 Nov 2016 00:57:24 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fadaa840a3da99c8f0313ecb13e2626874b9a84a52e1809d80c40d9a776ec`  
		Last Modified: Thu, 17 Nov 2016 00:57:24 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7434479360da787fb6854b77cbc44e69d6a27763f39a3065b81ca0fd40a53f7`  
		Last Modified: Thu, 17 Nov 2016 00:57:25 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:3de1362c62f09c64e16e1daa2c7af7d3de6cdc91af0ad29f7b094ec2c8b2b74a
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290886296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a11b9fe963c7eee687453c2d078874dca7ef4d87ac91dc88c61b7bb6cab06d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:44:32 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Thu, 17 Nov 2016 00:44:33 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 17 Nov 2016 00:44:34 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 17 Nov 2016 00:44:36 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:44:37 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:46:10 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:46:12 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:46:12 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:46:13 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:46:14 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:46:14 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:46:15 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:46:15 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:46:16 GMT
EXPOSE 10060/tcp
# Thu, 17 Nov 2016 00:46:16 GMT
EXPOSE 10061/tcp
# Thu, 17 Nov 2016 00:46:17 GMT
EXPOSE 10062/tcp
# Thu, 17 Nov 2016 00:46:17 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:46:17 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb0eb72eafa0e76a75cb397eb77281fff4c360a2d79164b286a9fc74caa4082`  
		Last Modified: Thu, 17 Nov 2016 00:57:28 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf2cf6a6025d0622022d77e142f51e3991acb607d44025d1c939782c8e6c8db`  
		Last Modified: Thu, 17 Nov 2016 00:57:27 GMT  
		Size: 11.7 KB (11701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:461d283cb9208a49763c0bd1eaa35ecfae78bd01c46d2dde5a84f36381c9ac8a`  
		Last Modified: Thu, 17 Nov 2016 00:57:28 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b74215ac9aa9522d9652ee8d6a3152a91b948738d046751d8d8036c0622c6cf5`  
		Last Modified: Thu, 17 Nov 2016 00:57:27 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bc2c93497ddb823183055fd4b654e169a849d1a19769676fb1df1c82fe811d`  
		Last Modified: Thu, 17 Nov 2016 00:57:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:553902c7a296098f16d63c30649bcf4b3869e9eafcc6f08d78159fc479ab12bb`  
		Last Modified: Thu, 17 Nov 2016 00:58:11 GMT  
		Size: 224.2 MB (224165728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa740f9c5ca2f1280112481736e2ed8f425d449263616fed20beb80c59cea4f`  
		Last Modified: Thu, 17 Nov 2016 00:57:24 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788fadaa840a3da99c8f0313ecb13e2626874b9a84a52e1809d80c40d9a776ec`  
		Last Modified: Thu, 17 Nov 2016 00:57:24 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7434479360da787fb6854b77cbc44e69d6a27763f39a3065b81ca0fd40a53f7`  
		Last Modified: Thu, 17 Nov 2016 00:57:25 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0`

```console
$ docker pull php-zendserver@sha256:4b463404197bbc5422e5b514ddd47b7a1131afa5602cbf44023941ef984be763
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.1 MB (376059644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a581bde75aa69cec6affc52054480418e7b95c213e9b7c0202faf652635624`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:52:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:55:57 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:55:58 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:55:59 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:56:00 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:56:01 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:56:05 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:56:06 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:56:06 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:56:12 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:57:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:57:07 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:57:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:57:09 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:57:09 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:57:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91631c29792abb40da4f053f99565c93bc23cc274b5b69114a7f56f8600b4765`  
		Last Modified: Thu, 17 Nov 2016 01:02:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19e72ffecb1c7c929c6d8be08f8c7ad4ba1685d04ee08bfd97ed65586b1954b`  
		Last Modified: Thu, 17 Nov 2016 01:03:47 GMT  
		Size: 299.7 MB (299667858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb235817f787a70cb3a62d919a619a92af7fca4ac52c002bd6a0eec0d15e729f`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4820bc767d0593c4abaeeb954c5600745293685d5d563b5a99ba707675e3c8c`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a44f1c4111400a9092de38737c4056268ab2e707bc2e69cd36c8dccd3330c73`  
		Last Modified: Thu, 17 Nov 2016 01:02:44 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc67a0c8c6a90cebfb69f163d66dcfa1b620c1bd6c198930a18ff1c9f8adb9f2`  
		Last Modified: Thu, 17 Nov 2016 01:02:43 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8994062eedac474c7e12c3bd6780cc1d711f52b7b92c82f6c4507cfd453c9a04`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 467.0 KB (466967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3314ca846047df6cb9278d9b585558978e478f740fb503b2952fa62a044213ad`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 15.6 KB (15591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce080502ee17f5a1a4e473dcac5a53c9b766f1c0d91ae573c6e9e3b2026340d`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 457.5 KB (457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3928b388eb8e66f142e83546177581976ad48c4eaa07cba1355152ecae8656d6`  
		Last Modified: Thu, 17 Nov 2016 01:02:41 GMT  
		Size: 9.6 MB (9644880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43fac36b45a80423d19e64a0b8142d67d0435827aafc84c638363a0eb1e7337`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd0868aa649802e50a6b2c0258213f624edb82a636f15c9aa34b6987d9d261c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dc21e3fb68dd91e1b5aef75521bea9222937c433a834e49d474a9534bddde4`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9ba8fff183aa179c9bc0e4e2dd75822f7811fde9b67e57c8bc615e588ac19c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:4b463404197bbc5422e5b514ddd47b7a1131afa5602cbf44023941ef984be763
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.1 MB (376059644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a581bde75aa69cec6affc52054480418e7b95c213e9b7c0202faf652635624`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:52:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:55:57 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:55:58 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:55:59 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:56:00 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:56:01 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:56:05 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:56:06 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:56:06 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:56:12 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:57:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:57:07 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:57:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:57:09 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:57:09 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:57:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91631c29792abb40da4f053f99565c93bc23cc274b5b69114a7f56f8600b4765`  
		Last Modified: Thu, 17 Nov 2016 01:02:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19e72ffecb1c7c929c6d8be08f8c7ad4ba1685d04ee08bfd97ed65586b1954b`  
		Last Modified: Thu, 17 Nov 2016 01:03:47 GMT  
		Size: 299.7 MB (299667858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb235817f787a70cb3a62d919a619a92af7fca4ac52c002bd6a0eec0d15e729f`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4820bc767d0593c4abaeeb954c5600745293685d5d563b5a99ba707675e3c8c`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a44f1c4111400a9092de38737c4056268ab2e707bc2e69cd36c8dccd3330c73`  
		Last Modified: Thu, 17 Nov 2016 01:02:44 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc67a0c8c6a90cebfb69f163d66dcfa1b620c1bd6c198930a18ff1c9f8adb9f2`  
		Last Modified: Thu, 17 Nov 2016 01:02:43 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8994062eedac474c7e12c3bd6780cc1d711f52b7b92c82f6c4507cfd453c9a04`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 467.0 KB (466967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3314ca846047df6cb9278d9b585558978e478f740fb503b2952fa62a044213ad`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 15.6 KB (15591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce080502ee17f5a1a4e473dcac5a53c9b766f1c0d91ae573c6e9e3b2026340d`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 457.5 KB (457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3928b388eb8e66f142e83546177581976ad48c4eaa07cba1355152ecae8656d6`  
		Last Modified: Thu, 17 Nov 2016 01:02:41 GMT  
		Size: 9.6 MB (9644880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43fac36b45a80423d19e64a0b8142d67d0435827aafc84c638363a0eb1e7337`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd0868aa649802e50a6b2c0258213f624edb82a636f15c9aa34b6987d9d261c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dc21e3fb68dd91e1b5aef75521bea9222937c433a834e49d474a9534bddde4`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9ba8fff183aa179c9bc0e4e2dd75822f7811fde9b67e57c8bc615e588ac19c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:4b463404197bbc5422e5b514ddd47b7a1131afa5602cbf44023941ef984be763
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.1 MB (376059644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a581bde75aa69cec6affc52054480418e7b95c213e9b7c0202faf652635624`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:52:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:55:57 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:55:58 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:55:59 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:56:00 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:56:01 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:56:05 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:56:06 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:56:06 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:56:12 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:57:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:57:07 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:57:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:57:09 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:57:09 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:57:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91631c29792abb40da4f053f99565c93bc23cc274b5b69114a7f56f8600b4765`  
		Last Modified: Thu, 17 Nov 2016 01:02:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19e72ffecb1c7c929c6d8be08f8c7ad4ba1685d04ee08bfd97ed65586b1954b`  
		Last Modified: Thu, 17 Nov 2016 01:03:47 GMT  
		Size: 299.7 MB (299667858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb235817f787a70cb3a62d919a619a92af7fca4ac52c002bd6a0eec0d15e729f`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4820bc767d0593c4abaeeb954c5600745293685d5d563b5a99ba707675e3c8c`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a44f1c4111400a9092de38737c4056268ab2e707bc2e69cd36c8dccd3330c73`  
		Last Modified: Thu, 17 Nov 2016 01:02:44 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc67a0c8c6a90cebfb69f163d66dcfa1b620c1bd6c198930a18ff1c9f8adb9f2`  
		Last Modified: Thu, 17 Nov 2016 01:02:43 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8994062eedac474c7e12c3bd6780cc1d711f52b7b92c82f6c4507cfd453c9a04`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 467.0 KB (466967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3314ca846047df6cb9278d9b585558978e478f740fb503b2952fa62a044213ad`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 15.6 KB (15591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce080502ee17f5a1a4e473dcac5a53c9b766f1c0d91ae573c6e9e3b2026340d`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 457.5 KB (457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3928b388eb8e66f142e83546177581976ad48c4eaa07cba1355152ecae8656d6`  
		Last Modified: Thu, 17 Nov 2016 01:02:41 GMT  
		Size: 9.6 MB (9644880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43fac36b45a80423d19e64a0b8142d67d0435827aafc84c638363a0eb1e7337`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd0868aa649802e50a6b2c0258213f624edb82a636f15c9aa34b6987d9d261c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dc21e3fb68dd91e1b5aef75521bea9222937c433a834e49d474a9534bddde4`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9ba8fff183aa179c9bc0e4e2dd75822f7811fde9b67e57c8bc615e588ac19c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
