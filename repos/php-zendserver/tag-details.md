<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:5.5`](#php-zendserver55)
-	[`php-zendserver:8.5-php5.5`](#php-zendserver85-php55)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:5.4`](#php-zendserver54)
-	[`php-zendserver:7.0-php5.4`](#php-zendserver70-php54)
-	[`php-zendserver:9.1`](#php-zendserver91)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:0f0ffc3c90180f192d2fdc0636a7c6b8f95510f958a1fc9318ce0c4f3ea7cb16
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.8 MB (330770016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ad7761ca7ac9af1e8fb8285d7d38ad877f85c5de39b8118fc553fb38eb0f21`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:18:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:19:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:21:21 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:21:40 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 03 Jun 2017 00:21:42 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:21:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:21:45 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:21:45 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 03 Jun 2017 00:21:46 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 03 Jun 2017 00:21:51 GMT
RUN apt-get install -y curl
# Sat, 03 Jun 2017 00:22:13 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 03 Jun 2017 00:22:14 GMT
WORKDIR /usr/local/zs-init
# Sat, 03 Jun 2017 00:22:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 03 Jun 2017 00:23:32 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 03 Jun 2017 00:23:33 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 03 Jun 2017 00:23:34 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 03 Jun 2017 00:23:56 GMT
RUN rm /var/www/html/index.html
# Sat, 03 Jun 2017 00:23:58 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 03 Jun 2017 00:23:58 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:24:20 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:24:21 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:24:22 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:24:22 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:24:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b914347183bc6c00db2421b478e9f9b03021f43fa463a0bc5cd0a529eeff1`  
		Last Modified: Sat, 03 Jun 2017 00:40:30 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4acc8a357271d703ae128c868dedf9517c70fca954899605aca3c1b792060`  
		Last Modified: Sat, 03 Jun 2017 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b97a69266bff39f536b15599bb41f2c656549303255984882e91b0541be85`  
		Last Modified: Sat, 03 Jun 2017 00:41:13 GMT  
		Size: 251.6 MB (251553255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889512331e5fe56f453ade71d1c1ec266149602036e34c37a96e39d58215106`  
		Last Modified: Sat, 03 Jun 2017 00:40:28 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c89f880125bf7719bcf1f5bde263ee81a1ef953a07f686b120324b306fe89`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7dddf72f4fb60d6d2f85cb689a3edecd7744a6161814871b10ce0dcd4ec3c0`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03d0091da7438bee764d780a3cf854e19f5ea592842aaad999792678cc21747`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e43e19f3e49164691a7badc8b8806ca7b7279e7679d9da839d99689008f81b`  
		Last Modified: Sat, 03 Jun 2017 00:40:25 GMT  
		Size: 474.3 KB (474334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0422d6a650a654545fbe6c201e4b5519d17f2c30e3766f0b3245ab4168c3747`  
		Last Modified: Sat, 03 Jun 2017 00:40:25 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a009893b5032c6a116f1ca75f0140448d7f3e66a5712d7c9376841e9fc38c05`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d4c9326e9481065986f6922ab23520706be089a64376c0559a5fd6737a074`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 11.0 MB (11021697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bcc7b757e5bc57b68c9ae7f7ff2147e62257e4ca2de785ccdbd4141d4e576`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02700f0d67e3902ee476f4bb942ff9c9cb3a7ee76f4f38c3f372a5e124b812`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7444c1fda4292e5d471061f9548d73c34699120c4098938a321a19ec9065758`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f68325970c4921286da06daa14a88ca4334305dbb2e236b7731aec1057e5430`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:0f0ffc3c90180f192d2fdc0636a7c6b8f95510f958a1fc9318ce0c4f3ea7cb16
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.8 MB (330770016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47ad7761ca7ac9af1e8fb8285d7d38ad877f85c5de39b8118fc553fb38eb0f21`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:18:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:19:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:21:21 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:21:40 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 03 Jun 2017 00:21:42 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:21:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:21:45 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:21:45 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 03 Jun 2017 00:21:46 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 03 Jun 2017 00:21:51 GMT
RUN apt-get install -y curl
# Sat, 03 Jun 2017 00:22:13 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 03 Jun 2017 00:22:14 GMT
WORKDIR /usr/local/zs-init
# Sat, 03 Jun 2017 00:22:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 03 Jun 2017 00:23:32 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 03 Jun 2017 00:23:33 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 03 Jun 2017 00:23:34 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 03 Jun 2017 00:23:56 GMT
RUN rm /var/www/html/index.html
# Sat, 03 Jun 2017 00:23:58 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 03 Jun 2017 00:23:58 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:24:20 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:24:21 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:24:22 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:24:22 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:24:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b914347183bc6c00db2421b478e9f9b03021f43fa463a0bc5cd0a529eeff1`  
		Last Modified: Sat, 03 Jun 2017 00:40:30 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4acc8a357271d703ae128c868dedf9517c70fca954899605aca3c1b792060`  
		Last Modified: Sat, 03 Jun 2017 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56b97a69266bff39f536b15599bb41f2c656549303255984882e91b0541be85`  
		Last Modified: Sat, 03 Jun 2017 00:41:13 GMT  
		Size: 251.6 MB (251553255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d889512331e5fe56f453ade71d1c1ec266149602036e34c37a96e39d58215106`  
		Last Modified: Sat, 03 Jun 2017 00:40:28 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683c89f880125bf7719bcf1f5bde263ee81a1ef953a07f686b120324b306fe89`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c7dddf72f4fb60d6d2f85cb689a3edecd7744a6161814871b10ce0dcd4ec3c0`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d03d0091da7438bee764d780a3cf854e19f5ea592842aaad999792678cc21747`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e43e19f3e49164691a7badc8b8806ca7b7279e7679d9da839d99689008f81b`  
		Last Modified: Sat, 03 Jun 2017 00:40:25 GMT  
		Size: 474.3 KB (474334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0422d6a650a654545fbe6c201e4b5519d17f2c30e3766f0b3245ab4168c3747`  
		Last Modified: Sat, 03 Jun 2017 00:40:25 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a009893b5032c6a116f1ca75f0140448d7f3e66a5712d7c9376841e9fc38c05`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151d4c9326e9481065986f6922ab23520706be089a64376c0559a5fd6737a074`  
		Last Modified: Sat, 03 Jun 2017 00:40:26 GMT  
		Size: 11.0 MB (11021697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142bcc7b757e5bc57b68c9ae7f7ff2147e62257e4ca2de785ccdbd4141d4e576`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c02700f0d67e3902ee476f4bb942ff9c9cb3a7ee76f4f38c3f372a5e124b812`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7444c1fda4292e5d471061f9548d73c34699120c4098938a321a19ec9065758`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f68325970c4921286da06daa14a88ca4334305dbb2e236b7731aec1057e5430`  
		Last Modified: Sat, 03 Jun 2017 00:40:23 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:f3386af3030111ea20a99f8e431a54a03e5cb9b255230c733f56871894806ac0
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (330972864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27637f5c3bab0aa125f8e71406bd60efe8255e3f34be9a92be1c408bac2fccb`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:18:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:19:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:27:27 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:27:33 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 03 Jun 2017 00:27:34 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:27:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:27:37 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:27:38 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 03 Jun 2017 00:27:39 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 03 Jun 2017 00:27:45 GMT
RUN apt-get install -y curl
# Sat, 03 Jun 2017 00:28:06 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 03 Jun 2017 00:28:07 GMT
WORKDIR /usr/local/zs-init
# Sat, 03 Jun 2017 00:28:14 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 03 Jun 2017 00:29:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 03 Jun 2017 00:29:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 03 Jun 2017 00:29:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 03 Jun 2017 00:29:08 GMT
RUN rm /var/www/html/index.html
# Sat, 03 Jun 2017 00:29:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 03 Jun 2017 00:29:30 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:29:31 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:29:32 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:29:33 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:29:34 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:29:35 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b914347183bc6c00db2421b478e9f9b03021f43fa463a0bc5cd0a529eeff1`  
		Last Modified: Sat, 03 Jun 2017 00:40:30 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4acc8a357271d703ae128c868dedf9517c70fca954899605aca3c1b792060`  
		Last Modified: Sat, 03 Jun 2017 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc2c15197fc59485ab5afa0b136bd2e95451eb62a5c4da2c356bd5ffc06d708`  
		Last Modified: Sat, 03 Jun 2017 00:42:58 GMT  
		Size: 251.7 MB (251725363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f23c2cce7d565f984f39b11ce597862f784f9d4db3b62c8c389d4bc4655294`  
		Last Modified: Sat, 03 Jun 2017 00:42:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7106ab2077429db43389f255013fb6d00d168afa17c14f5b3d2fdd2305de7b2`  
		Last Modified: Sat, 03 Jun 2017 00:42:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5526dbf9ae2906b0ed3ff74da9d54ce313ce18f031e4b9f271a238777f18dbea`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549e3da2c2163feffbc808f3dbd3e20ba67ec4a634df9f14385a444681e62dce`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34013d69dd82ca932859a33e8faf3173f63cbf6672eb6da58e641832283d884`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 476.1 KB (476134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7b9914c16ec4e119276ed75c1f4e74473222d7493d6804ca98a635440c3f1d`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cea40068c5fbe2ee189a6d271c084ee62031162e7cc6d714509b50b32a35b`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5699927f16b6a485dd8506ec345799b23ae9095aaa9ed97feee8a8efd199ad43`  
		Last Modified: Sat, 03 Jun 2017 00:42:13 GMT  
		Size: 11.1 MB (11050633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c2061e7f6850415b255b16b6a7969a725fc2141313fa79b2f1fd8f719fee2e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891b1aea9ece51150d16131d91aca24ed2300cf75ab58f6d29561f30ea22853e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab069eaf626c37bfa0ebec87381a9eded007c6f9cd3e98a9e13239f8983836e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8089e94021a843d59306be16805de4905ea9d33fb365fbb16d724f3ba7356d8a`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:f3386af3030111ea20a99f8e431a54a03e5cb9b255230c733f56871894806ac0
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (330972864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27637f5c3bab0aa125f8e71406bd60efe8255e3f34be9a92be1c408bac2fccb`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:18:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:19:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:27:27 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:27:33 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 03 Jun 2017 00:27:34 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:27:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:27:37 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:27:38 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 03 Jun 2017 00:27:39 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 03 Jun 2017 00:27:45 GMT
RUN apt-get install -y curl
# Sat, 03 Jun 2017 00:28:06 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 03 Jun 2017 00:28:07 GMT
WORKDIR /usr/local/zs-init
# Sat, 03 Jun 2017 00:28:14 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 03 Jun 2017 00:29:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 03 Jun 2017 00:29:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 03 Jun 2017 00:29:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 03 Jun 2017 00:29:08 GMT
RUN rm /var/www/html/index.html
# Sat, 03 Jun 2017 00:29:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 03 Jun 2017 00:29:30 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:29:31 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:29:32 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:29:33 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:29:34 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:29:35 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b914347183bc6c00db2421b478e9f9b03021f43fa463a0bc5cd0a529eeff1`  
		Last Modified: Sat, 03 Jun 2017 00:40:30 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4acc8a357271d703ae128c868dedf9517c70fca954899605aca3c1b792060`  
		Last Modified: Sat, 03 Jun 2017 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc2c15197fc59485ab5afa0b136bd2e95451eb62a5c4da2c356bd5ffc06d708`  
		Last Modified: Sat, 03 Jun 2017 00:42:58 GMT  
		Size: 251.7 MB (251725363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f23c2cce7d565f984f39b11ce597862f784f9d4db3b62c8c389d4bc4655294`  
		Last Modified: Sat, 03 Jun 2017 00:42:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7106ab2077429db43389f255013fb6d00d168afa17c14f5b3d2fdd2305de7b2`  
		Last Modified: Sat, 03 Jun 2017 00:42:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5526dbf9ae2906b0ed3ff74da9d54ce313ce18f031e4b9f271a238777f18dbea`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549e3da2c2163feffbc808f3dbd3e20ba67ec4a634df9f14385a444681e62dce`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34013d69dd82ca932859a33e8faf3173f63cbf6672eb6da58e641832283d884`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 476.1 KB (476134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7b9914c16ec4e119276ed75c1f4e74473222d7493d6804ca98a635440c3f1d`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cea40068c5fbe2ee189a6d271c084ee62031162e7cc6d714509b50b32a35b`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5699927f16b6a485dd8506ec345799b23ae9095aaa9ed97feee8a8efd199ad43`  
		Last Modified: Sat, 03 Jun 2017 00:42:13 GMT  
		Size: 11.1 MB (11050633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c2061e7f6850415b255b16b6a7969a725fc2141313fa79b2f1fd8f719fee2e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891b1aea9ece51150d16131d91aca24ed2300cf75ab58f6d29561f30ea22853e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab069eaf626c37bfa0ebec87381a9eded007c6f9cd3e98a9e13239f8983836e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8089e94021a843d59306be16805de4905ea9d33fb365fbb16d724f3ba7356d8a`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:f3386af3030111ea20a99f8e431a54a03e5cb9b255230c733f56871894806ac0
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (330972864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f27637f5c3bab0aa125f8e71406bd60efe8255e3f34be9a92be1c408bac2fccb`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:18:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:19:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:27:27 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:27:33 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 03 Jun 2017 00:27:34 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:27:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:27:37 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:27:38 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 03 Jun 2017 00:27:39 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 03 Jun 2017 00:27:45 GMT
RUN apt-get install -y curl
# Sat, 03 Jun 2017 00:28:06 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 03 Jun 2017 00:28:07 GMT
WORKDIR /usr/local/zs-init
# Sat, 03 Jun 2017 00:28:14 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 03 Jun 2017 00:29:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 03 Jun 2017 00:29:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 03 Jun 2017 00:29:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 03 Jun 2017 00:29:08 GMT
RUN rm /var/www/html/index.html
# Sat, 03 Jun 2017 00:29:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 03 Jun 2017 00:29:30 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:29:31 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:29:32 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:29:33 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:29:34 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:29:35 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b914347183bc6c00db2421b478e9f9b03021f43fa463a0bc5cd0a529eeff1`  
		Last Modified: Sat, 03 Jun 2017 00:40:30 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e4acc8a357271d703ae128c868dedf9517c70fca954899605aca3c1b792060`  
		Last Modified: Sat, 03 Jun 2017 00:40:28 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc2c15197fc59485ab5afa0b136bd2e95451eb62a5c4da2c356bd5ffc06d708`  
		Last Modified: Sat, 03 Jun 2017 00:42:58 GMT  
		Size: 251.7 MB (251725363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f23c2cce7d565f984f39b11ce597862f784f9d4db3b62c8c389d4bc4655294`  
		Last Modified: Sat, 03 Jun 2017 00:42:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7106ab2077429db43389f255013fb6d00d168afa17c14f5b3d2fdd2305de7b2`  
		Last Modified: Sat, 03 Jun 2017 00:42:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5526dbf9ae2906b0ed3ff74da9d54ce313ce18f031e4b9f271a238777f18dbea`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:549e3da2c2163feffbc808f3dbd3e20ba67ec4a634df9f14385a444681e62dce`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34013d69dd82ca932859a33e8faf3173f63cbf6672eb6da58e641832283d884`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 476.1 KB (476134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7b9914c16ec4e119276ed75c1f4e74473222d7493d6804ca98a635440c3f1d`  
		Last Modified: Sat, 03 Jun 2017 00:42:11 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78cea40068c5fbe2ee189a6d271c084ee62031162e7cc6d714509b50b32a35b`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5699927f16b6a485dd8506ec345799b23ae9095aaa9ed97feee8a8efd199ad43`  
		Last Modified: Sat, 03 Jun 2017 00:42:13 GMT  
		Size: 11.1 MB (11050633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c2061e7f6850415b255b16b6a7969a725fc2141313fa79b2f1fd8f719fee2e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:891b1aea9ece51150d16131d91aca24ed2300cf75ab58f6d29561f30ea22853e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab069eaf626c37bfa0ebec87381a9eded007c6f9cd3e98a9e13239f8983836e`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8089e94021a843d59306be16805de4905ea9d33fb365fbb16d724f3ba7356d8a`  
		Last Modified: Sat, 03 Jun 2017 00:42:09 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:49b639b110204a55c2ebbdb7508173c20902e0297bf7b849d8cb50de2b479269
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.3 MB (297317147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6fff86c7127e20cca9b5d076f2da4d9eb8e455c85dd3d180f1cc6aced87c9`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:30:18 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Sat, 03 Jun 2017 00:30:19 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Sat, 03 Jun 2017 00:30:21 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Sat, 03 Jun 2017 00:30:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:30:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:32:44 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:32:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:32:57 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:33:18 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:33:19 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:33:20 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:33:41 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:33:42 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:33:43 GMT
EXPOSE 10060/tcp
# Sat, 03 Jun 2017 00:33:43 GMT
EXPOSE 10061/tcp
# Sat, 03 Jun 2017 00:33:44 GMT
EXPOSE 10062/tcp
# Sat, 03 Jun 2017 00:33:45 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:33:46 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631e7cb005c9a1a2a8f8a343f6c2453d785c01b0168049a64c2e085b2495392b`  
		Last Modified: Sat, 03 Jun 2017 00:44:19 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e6a68874a91174c6a60311d2c42290f93a9253487ca98955c06cfe97c57c30`  
		Last Modified: Sat, 03 Jun 2017 00:44:19 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e5841c56cedb304f6ce81f2e9a9382fc67f9824a4e65c36e45d9387f96bfab`  
		Last Modified: Sat, 03 Jun 2017 00:44:20 GMT  
		Size: 938.4 KB (938378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b7f5e1490f3cf66d7411ab230a8f43a30d20cefce8877820b158b6856b5f29`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875b42c90253559f100bd952106e10955f9109caa47075a50039a40a0e22e88f`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c90ce04bec1126f0e75e94d921df9f2cd06919cc2754bb98e5c738b80736c0`  
		Last Modified: Sat, 03 Jun 2017 00:45:06 GMT  
		Size: 229.2 MB (229167727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2fdd9461feaa79146d7f72250ea6d8e5c85c997ff6790951694fcd1726529`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07753de4286232c047a56aae2ba4addb060f19e527a329a049be8bd53d90a278`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47ba3fb4adf13c2fe3b156c3b4da0686f447388b20beccb766e46bdb48d16a8`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:49b639b110204a55c2ebbdb7508173c20902e0297bf7b849d8cb50de2b479269
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.3 MB (297317147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b6fff86c7127e20cca9b5d076f2da4d9eb8e455c85dd3d180f1cc6aced87c9`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:30:18 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Sat, 03 Jun 2017 00:30:19 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Sat, 03 Jun 2017 00:30:21 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Sat, 03 Jun 2017 00:30:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:30:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:32:44 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:32:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:32:57 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:33:18 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:33:19 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:33:20 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:33:41 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:33:42 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:33:43 GMT
EXPOSE 10060/tcp
# Sat, 03 Jun 2017 00:33:43 GMT
EXPOSE 10061/tcp
# Sat, 03 Jun 2017 00:33:44 GMT
EXPOSE 10062/tcp
# Sat, 03 Jun 2017 00:33:45 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:33:46 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631e7cb005c9a1a2a8f8a343f6c2453d785c01b0168049a64c2e085b2495392b`  
		Last Modified: Sat, 03 Jun 2017 00:44:19 GMT  
		Size: 999.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e6a68874a91174c6a60311d2c42290f93a9253487ca98955c06cfe97c57c30`  
		Last Modified: Sat, 03 Jun 2017 00:44:19 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e5841c56cedb304f6ce81f2e9a9382fc67f9824a4e65c36e45d9387f96bfab`  
		Last Modified: Sat, 03 Jun 2017 00:44:20 GMT  
		Size: 938.4 KB (938378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b7f5e1490f3cf66d7411ab230a8f43a30d20cefce8877820b158b6856b5f29`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:875b42c90253559f100bd952106e10955f9109caa47075a50039a40a0e22e88f`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c90ce04bec1126f0e75e94d921df9f2cd06919cc2754bb98e5c738b80736c0`  
		Last Modified: Sat, 03 Jun 2017 00:45:06 GMT  
		Size: 229.2 MB (229167727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d2fdd9461feaa79146d7f72250ea6d8e5c85c997ff6790951694fcd1726529`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07753de4286232c047a56aae2ba4addb060f19e527a329a049be8bd53d90a278`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47ba3fb4adf13c2fe3b156c3b4da0686f447388b20beccb766e46bdb48d16a8`  
		Last Modified: Sat, 03 Jun 2017 00:44:17 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:17f7c41a18c73e4fdfd42c51b9981bb46e9e8ef92a1536120ba022001a3b2652
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.8 MB (413750837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87b780f3be21753f26cd7dffefa333321d162880e39b974f8f8bed4f1224e3f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:18:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:34:29 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:37:06 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:37:19 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Sat, 03 Jun 2017 00:37:20 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:37:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:37:44 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:38:05 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 03 Jun 2017 00:38:06 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 03 Jun 2017 00:38:13 GMT
RUN apt-get install -y curl
# Sat, 03 Jun 2017 00:38:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 03 Jun 2017 00:38:37 GMT
WORKDIR /usr/local/zs-init
# Sat, 03 Jun 2017 00:38:43 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 03 Jun 2017 00:39:26 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 03 Jun 2017 00:39:28 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 03 Jun 2017 00:39:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 03 Jun 2017 00:39:30 GMT
RUN rm /var/www/html/index.html
# Sat, 03 Jun 2017 00:39:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 03 Jun 2017 00:39:32 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:39:33 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:39:34 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:39:35 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:39:36 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:39:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b914347183bc6c00db2421b478e9f9b03021f43fa463a0bc5cd0a529eeff1`  
		Last Modified: Sat, 03 Jun 2017 00:40:30 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb18a449ad92168f04a5690e77de0fdfb2a880271ec4cd9d7995a9cf644ef9b`  
		Last Modified: Sat, 03 Jun 2017 00:46:06 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe282e5f32975b3ee58e6ebfed0388cdf3f4103f08b53ba50935caea82db2a0d`  
		Last Modified: Sat, 03 Jun 2017 00:47:08 GMT  
		Size: 334.5 MB (334509315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde36d86bbba1e6173fb22a70cf92761d16930862e9d48f80de8ba066284a8a7`  
		Last Modified: Sat, 03 Jun 2017 00:46:06 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21a91b9d693c9d64692b5b60a023c7c2c172262aa8e60f159a591b16de92d69`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acfd7768cb1743523c2641501eb6c2605dc483fe540b5082ea9c10f353477c3`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcd82f070ac080fd4b71d19f0ea5c237afa75c976008a45c0dad31549a73976`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c655ab225636d05c6b9cb46e580284e46c229ac386cf2705d1e3bed525b3385`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 470.2 KB (470184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703ec2ba8e0a901efb0c6593ad09afe04dd102e1b9f2833762fe43a6d6705877`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e3b6189ed2025d4ea37f7fac8640f8901bf8ba083ef6c096584ab0b7d8761`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 489.4 KB (489420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b2bd9f86fd89cf626d04c39928eca6bc35c2a824c255b897a6562940969cb`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 11.1 MB (11050616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e422b7f75f7fd967c02d7e24b893c1fe189004ae7418aed8448026990e202d`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce120623326a32d2ced0e2275494b43403a3722b2684411df2aa9d47d242047b`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 2.5 KB (2513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e705ec11ed2798e377ce3f9493a60658f95302401ce1e06dab90140be999c15`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a829631a979bdb93f5a5fe3248052caa77424b3ce80a916aaac6b0f67ebd605c`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:17f7c41a18c73e4fdfd42c51b9981bb46e9e8ef92a1536120ba022001a3b2652
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **413.8 MB (413750837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87b780f3be21753f26cd7dffefa333321d162880e39b974f8f8bed4f1224e3f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Sat, 03 Jun 2017 00:18:42 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 03 Jun 2017 00:34:29 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 03 Jun 2017 00:37:06 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 03 Jun 2017 00:37:19 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Sat, 03 Jun 2017 00:37:20 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 03 Jun 2017 00:37:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 03 Jun 2017 00:37:44 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 03 Jun 2017 00:38:05 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 03 Jun 2017 00:38:06 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 03 Jun 2017 00:38:13 GMT
RUN apt-get install -y curl
# Sat, 03 Jun 2017 00:38:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 03 Jun 2017 00:38:37 GMT
WORKDIR /usr/local/zs-init
# Sat, 03 Jun 2017 00:38:43 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 03 Jun 2017 00:39:26 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 03 Jun 2017 00:39:28 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 03 Jun 2017 00:39:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 03 Jun 2017 00:39:30 GMT
RUN rm /var/www/html/index.html
# Sat, 03 Jun 2017 00:39:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 03 Jun 2017 00:39:32 GMT
EXPOSE 80/tcp
# Sat, 03 Jun 2017 00:39:33 GMT
EXPOSE 443/tcp
# Sat, 03 Jun 2017 00:39:34 GMT
EXPOSE 10081/tcp
# Sat, 03 Jun 2017 00:39:35 GMT
EXPOSE 10082/tcp
# Sat, 03 Jun 2017 00:39:36 GMT
WORKDIR /var/www/html
# Sat, 03 Jun 2017 00:39:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b914347183bc6c00db2421b478e9f9b03021f43fa463a0bc5cd0a529eeff1`  
		Last Modified: Sat, 03 Jun 2017 00:40:30 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb18a449ad92168f04a5690e77de0fdfb2a880271ec4cd9d7995a9cf644ef9b`  
		Last Modified: Sat, 03 Jun 2017 00:46:06 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe282e5f32975b3ee58e6ebfed0388cdf3f4103f08b53ba50935caea82db2a0d`  
		Last Modified: Sat, 03 Jun 2017 00:47:08 GMT  
		Size: 334.5 MB (334509315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde36d86bbba1e6173fb22a70cf92761d16930862e9d48f80de8ba066284a8a7`  
		Last Modified: Sat, 03 Jun 2017 00:46:06 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21a91b9d693c9d64692b5b60a023c7c2c172262aa8e60f159a591b16de92d69`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1acfd7768cb1743523c2641501eb6c2605dc483fe540b5082ea9c10f353477c3`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcd82f070ac080fd4b71d19f0ea5c237afa75c976008a45c0dad31549a73976`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c655ab225636d05c6b9cb46e580284e46c229ac386cf2705d1e3bed525b3385`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 470.2 KB (470184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703ec2ba8e0a901efb0c6593ad09afe04dd102e1b9f2833762fe43a6d6705877`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469e3b6189ed2025d4ea37f7fac8640f8901bf8ba083ef6c096584ab0b7d8761`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 489.4 KB (489420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4b2bd9f86fd89cf626d04c39928eca6bc35c2a824c255b897a6562940969cb`  
		Last Modified: Sat, 03 Jun 2017 00:46:04 GMT  
		Size: 11.1 MB (11050616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e422b7f75f7fd967c02d7e24b893c1fe189004ae7418aed8448026990e202d`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce120623326a32d2ced0e2275494b43403a3722b2684411df2aa9d47d242047b`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 2.5 KB (2513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e705ec11ed2798e377ce3f9493a60658f95302401ce1e06dab90140be999c15`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a829631a979bdb93f5a5fe3248052caa77424b3ce80a916aaac6b0f67ebd605c`  
		Last Modified: Sat, 03 Jun 2017 00:46:01 GMT  
		Size: 1.2 KB (1242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
