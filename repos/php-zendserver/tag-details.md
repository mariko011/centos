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
$ docker pull php-zendserver@sha256:db63d2b555d639da73f4661e3bed05965827452c77f4e705f0db0785f2df08d8
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (330993697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4608a35734d10098504947633da426a2efc2df856b4a76eec6763a51dd961c81`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 02:50:28 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 02:50:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 02:52:48 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 02:52:50 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 23 Jun 2017 02:52:52 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 02:52:54 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 02:52:56 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 02:52:57 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 23 Jun 2017 02:52:57 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 23 Jun 2017 02:53:03 GMT
RUN apt-get install -y curl
# Fri, 23 Jun 2017 02:53:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 23 Jun 2017 02:53:06 GMT
WORKDIR /usr/local/zs-init
# Fri, 23 Jun 2017 02:53:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 23 Jun 2017 02:53:47 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 23 Jun 2017 02:53:48 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 23 Jun 2017 02:53:49 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 23 Jun 2017 02:53:51 GMT
RUN rm /var/www/html/index.html
# Fri, 23 Jun 2017 02:53:52 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 23 Jun 2017 02:53:53 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 02:53:54 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 02:53:55 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 02:53:56 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 02:53:57 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 02:53:58 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760258e04a0bf0e7250324443721debd5da37074e826e7143566ef33a1974760`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc836ee479d8832cf91a8fed0e6d683ee16427393d53001d61174ff11ca431`  
		Last Modified: Sat, 24 Jun 2017 18:53:32 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25822c78b36babb69727b8cb582231558127e73f94f6de1648f9e44431d5cfb4`  
		Last Modified: Sat, 24 Jun 2017 18:54:18 GMT  
		Size: 251.6 MB (251583042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2a83e3599e371430d3b79e1cf66853471b54d742124c344bd189e92d4171db`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb60520c18d19bf3f8d9e86e025c9f7fc0108f7c0e67b99dfaadb719d3e8dff`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e384764b4f906ec981447bd3040caf9fcbc334019cd10bceba14595551b015b0`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eb02426a636de0cd449edff9fef1c11a86d26ffddc47f01f054b1ef1ca57c9`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7698c0bc07cc67e5a52673ee5227a6e1226f6a220d3fbc74e5c09e11ab131be0`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 474.3 KB (474345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7d82f6db0f3056d005ae9ded27afcea61e0daead7d8130bd1bee6477cacc08`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3461b44fccd7c9a8aa7020804b39931098b37ca0a349bff0b9140ed715ea5f4c`  
		Last Modified: Sat, 24 Jun 2017 18:53:27 GMT  
		Size: 489.4 KB (489419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da30285bda797b9df4ed535d4c841c090dd8a9ab4a21cf490e53de624da26ec`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 11.2 MB (11211243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f479be67fdfae9d315d870d41d31c8791ef1d39199d6d6d3619058f469dd0c`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d6210e6d2ccd8fde8406f0464189909806027185d4c9b68f7ee41982fc5baf`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 2.5 KB (2520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f915947a88126fa9096b15a0836dd2ee0296e48de8ff7cf6e403c1155e03b27`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85836338969fffbc90eda11ef0745d0cbf013b7ce2f0ee5dcdd07d137aaacdf1`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:db63d2b555d639da73f4661e3bed05965827452c77f4e705f0db0785f2df08d8
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.0 MB (330993697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4608a35734d10098504947633da426a2efc2df856b4a76eec6763a51dd961c81`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 02:50:28 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 02:50:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 02:52:48 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 02:52:50 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 23 Jun 2017 02:52:52 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 02:52:54 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 02:52:56 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 02:52:57 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 23 Jun 2017 02:52:57 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 23 Jun 2017 02:53:03 GMT
RUN apt-get install -y curl
# Fri, 23 Jun 2017 02:53:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 23 Jun 2017 02:53:06 GMT
WORKDIR /usr/local/zs-init
# Fri, 23 Jun 2017 02:53:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 23 Jun 2017 02:53:47 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 23 Jun 2017 02:53:48 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 23 Jun 2017 02:53:49 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 23 Jun 2017 02:53:51 GMT
RUN rm /var/www/html/index.html
# Fri, 23 Jun 2017 02:53:52 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 23 Jun 2017 02:53:53 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 02:53:54 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 02:53:55 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 02:53:56 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 02:53:57 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 02:53:58 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760258e04a0bf0e7250324443721debd5da37074e826e7143566ef33a1974760`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc836ee479d8832cf91a8fed0e6d683ee16427393d53001d61174ff11ca431`  
		Last Modified: Sat, 24 Jun 2017 18:53:32 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25822c78b36babb69727b8cb582231558127e73f94f6de1648f9e44431d5cfb4`  
		Last Modified: Sat, 24 Jun 2017 18:54:18 GMT  
		Size: 251.6 MB (251583042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2a83e3599e371430d3b79e1cf66853471b54d742124c344bd189e92d4171db`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb60520c18d19bf3f8d9e86e025c9f7fc0108f7c0e67b99dfaadb719d3e8dff`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e384764b4f906ec981447bd3040caf9fcbc334019cd10bceba14595551b015b0`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76eb02426a636de0cd449edff9fef1c11a86d26ffddc47f01f054b1ef1ca57c9`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7698c0bc07cc67e5a52673ee5227a6e1226f6a220d3fbc74e5c09e11ab131be0`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 474.3 KB (474345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c7d82f6db0f3056d005ae9ded27afcea61e0daead7d8130bd1bee6477cacc08`  
		Last Modified: Sat, 24 Jun 2017 18:53:29 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3461b44fccd7c9a8aa7020804b39931098b37ca0a349bff0b9140ed715ea5f4c`  
		Last Modified: Sat, 24 Jun 2017 18:53:27 GMT  
		Size: 489.4 KB (489419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da30285bda797b9df4ed535d4c841c090dd8a9ab4a21cf490e53de624da26ec`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 11.2 MB (11211243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f479be67fdfae9d315d870d41d31c8791ef1d39199d6d6d3619058f469dd0c`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d6210e6d2ccd8fde8406f0464189909806027185d4c9b68f7ee41982fc5baf`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 2.5 KB (2520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f915947a88126fa9096b15a0836dd2ee0296e48de8ff7cf6e403c1155e03b27`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85836338969fffbc90eda11ef0745d0cbf013b7ce2f0ee5dcdd07d137aaacdf1`  
		Last Modified: Sat, 24 Jun 2017 18:53:26 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:e9b378e6e2525cbc768e98985853a976ddd06d281fbdacf829825c98a758a51f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.2 MB (331187145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf61cf17870950f061b60dafc2d345a01dd63e3754e6646f49ee5cc56ebd1a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 02:50:28 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 02:50:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 03:22:03 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 03:22:05 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 23 Jun 2017 03:22:06 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 03:22:08 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 03:22:10 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 03:22:10 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 23 Jun 2017 03:22:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 23 Jun 2017 03:22:16 GMT
RUN apt-get install -y curl
# Fri, 23 Jun 2017 03:22:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 23 Jun 2017 03:22:19 GMT
WORKDIR /usr/local/zs-init
# Fri, 23 Jun 2017 03:22:25 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 23 Jun 2017 03:22:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 23 Jun 2017 03:22:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 23 Jun 2017 03:23:00 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 23 Jun 2017 03:23:02 GMT
RUN rm /var/www/html/index.html
# Fri, 23 Jun 2017 03:23:03 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 23 Jun 2017 03:23:04 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 03:23:05 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 03:23:05 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 03:23:06 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 03:23:07 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 03:23:08 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760258e04a0bf0e7250324443721debd5da37074e826e7143566ef33a1974760`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc836ee479d8832cf91a8fed0e6d683ee16427393d53001d61174ff11ca431`  
		Last Modified: Sat, 24 Jun 2017 18:53:32 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a3e20236e4f49427d7e9eb39fe605529fa5f89d09b70e4bda1bfaa8a5cf309`  
		Last Modified: Sat, 24 Jun 2017 19:12:01 GMT  
		Size: 251.7 MB (251745970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712a05408f1e3f1627fc559bf5429dae56efd997a4cd3c4b2d85e894bdb4412c`  
		Last Modified: Sat, 24 Jun 2017 19:11:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b06b2dcde9d96400ab9b101e50fc072d41ffd78e2e204092a4c58c0df2ffbb3`  
		Last Modified: Sat, 24 Jun 2017 19:11:10 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62050510c3296e70be291ccb2f37fcd406c6c1f70b2ce0dfb94d7f466361464c`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c83f7e651b0fd55a1fae2ac01210ef9e29beb46c7945015c75883810faf803e`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea6e0f4f453132d24481ae0ef4f493705e70734aa9222d0bac49c6b1928613f`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 476.2 KB (476174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da45f7c12697c2ed6b7f833db3fcc06f20c1261421433882b0685e6397dfaaa6`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fd8d9d4f40e4992007469b438b47d330113ea96546f731b41e06191051cf56`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 489.4 KB (489418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1955915059061241f4d36bc5cdb846068d278a89b4570d5ae04a20a07e6d6ba5`  
		Last Modified: Sat, 24 Jun 2017 19:11:09 GMT  
		Size: 11.2 MB (11239937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168036f3138e8e2da2561c4d3fb650ff3a98f78b1b4dbdfbadae9065bc231feb`  
		Last Modified: Sat, 24 Jun 2017 19:11:05 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35ebba8ab63288047ff9b0abe502c50a3188679d150ad1fcebf832578414f51`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01437ed6a16fe5323393c3a8b556b706caffdb8215201c7c311e92e5d90ab42`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fe6af3ed319315c0b8797fcf21c54f7b175bc2d35afcef12a0a850e3425b3a`  
		Last Modified: Sat, 24 Jun 2017 19:11:05 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:e9b378e6e2525cbc768e98985853a976ddd06d281fbdacf829825c98a758a51f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.2 MB (331187145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf61cf17870950f061b60dafc2d345a01dd63e3754e6646f49ee5cc56ebd1a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 02:50:28 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 02:50:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 03:22:03 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 03:22:05 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 23 Jun 2017 03:22:06 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 03:22:08 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 03:22:10 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 03:22:10 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 23 Jun 2017 03:22:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 23 Jun 2017 03:22:16 GMT
RUN apt-get install -y curl
# Fri, 23 Jun 2017 03:22:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 23 Jun 2017 03:22:19 GMT
WORKDIR /usr/local/zs-init
# Fri, 23 Jun 2017 03:22:25 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 23 Jun 2017 03:22:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 23 Jun 2017 03:22:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 23 Jun 2017 03:23:00 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 23 Jun 2017 03:23:02 GMT
RUN rm /var/www/html/index.html
# Fri, 23 Jun 2017 03:23:03 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 23 Jun 2017 03:23:04 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 03:23:05 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 03:23:05 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 03:23:06 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 03:23:07 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 03:23:08 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760258e04a0bf0e7250324443721debd5da37074e826e7143566ef33a1974760`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc836ee479d8832cf91a8fed0e6d683ee16427393d53001d61174ff11ca431`  
		Last Modified: Sat, 24 Jun 2017 18:53:32 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a3e20236e4f49427d7e9eb39fe605529fa5f89d09b70e4bda1bfaa8a5cf309`  
		Last Modified: Sat, 24 Jun 2017 19:12:01 GMT  
		Size: 251.7 MB (251745970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712a05408f1e3f1627fc559bf5429dae56efd997a4cd3c4b2d85e894bdb4412c`  
		Last Modified: Sat, 24 Jun 2017 19:11:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b06b2dcde9d96400ab9b101e50fc072d41ffd78e2e204092a4c58c0df2ffbb3`  
		Last Modified: Sat, 24 Jun 2017 19:11:10 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62050510c3296e70be291ccb2f37fcd406c6c1f70b2ce0dfb94d7f466361464c`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c83f7e651b0fd55a1fae2ac01210ef9e29beb46c7945015c75883810faf803e`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea6e0f4f453132d24481ae0ef4f493705e70734aa9222d0bac49c6b1928613f`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 476.2 KB (476174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da45f7c12697c2ed6b7f833db3fcc06f20c1261421433882b0685e6397dfaaa6`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fd8d9d4f40e4992007469b438b47d330113ea96546f731b41e06191051cf56`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 489.4 KB (489418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1955915059061241f4d36bc5cdb846068d278a89b4570d5ae04a20a07e6d6ba5`  
		Last Modified: Sat, 24 Jun 2017 19:11:09 GMT  
		Size: 11.2 MB (11239937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168036f3138e8e2da2561c4d3fb650ff3a98f78b1b4dbdfbadae9065bc231feb`  
		Last Modified: Sat, 24 Jun 2017 19:11:05 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35ebba8ab63288047ff9b0abe502c50a3188679d150ad1fcebf832578414f51`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01437ed6a16fe5323393c3a8b556b706caffdb8215201c7c311e92e5d90ab42`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fe6af3ed319315c0b8797fcf21c54f7b175bc2d35afcef12a0a850e3425b3a`  
		Last Modified: Sat, 24 Jun 2017 19:11:05 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:e9b378e6e2525cbc768e98985853a976ddd06d281fbdacf829825c98a758a51f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.2 MB (331187145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baf61cf17870950f061b60dafc2d345a01dd63e3754e6646f49ee5cc56ebd1a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 02:50:28 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 02:50:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 03:22:03 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 03:22:05 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 23 Jun 2017 03:22:06 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 03:22:08 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 03:22:10 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 03:22:10 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 23 Jun 2017 03:22:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 23 Jun 2017 03:22:16 GMT
RUN apt-get install -y curl
# Fri, 23 Jun 2017 03:22:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 23 Jun 2017 03:22:19 GMT
WORKDIR /usr/local/zs-init
# Fri, 23 Jun 2017 03:22:25 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 23 Jun 2017 03:22:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 23 Jun 2017 03:22:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 23 Jun 2017 03:23:00 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 23 Jun 2017 03:23:02 GMT
RUN rm /var/www/html/index.html
# Fri, 23 Jun 2017 03:23:03 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 23 Jun 2017 03:23:04 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 03:23:05 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 03:23:05 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 03:23:06 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 03:23:07 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 03:23:08 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760258e04a0bf0e7250324443721debd5da37074e826e7143566ef33a1974760`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6abc836ee479d8832cf91a8fed0e6d683ee16427393d53001d61174ff11ca431`  
		Last Modified: Sat, 24 Jun 2017 18:53:32 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a3e20236e4f49427d7e9eb39fe605529fa5f89d09b70e4bda1bfaa8a5cf309`  
		Last Modified: Sat, 24 Jun 2017 19:12:01 GMT  
		Size: 251.7 MB (251745970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712a05408f1e3f1627fc559bf5429dae56efd997a4cd3c4b2d85e894bdb4412c`  
		Last Modified: Sat, 24 Jun 2017 19:11:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b06b2dcde9d96400ab9b101e50fc072d41ffd78e2e204092a4c58c0df2ffbb3`  
		Last Modified: Sat, 24 Jun 2017 19:11:10 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62050510c3296e70be291ccb2f37fcd406c6c1f70b2ce0dfb94d7f466361464c`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c83f7e651b0fd55a1fae2ac01210ef9e29beb46c7945015c75883810faf803e`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea6e0f4f453132d24481ae0ef4f493705e70734aa9222d0bac49c6b1928613f`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 476.2 KB (476174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da45f7c12697c2ed6b7f833db3fcc06f20c1261421433882b0685e6397dfaaa6`  
		Last Modified: Sat, 24 Jun 2017 19:11:08 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3fd8d9d4f40e4992007469b438b47d330113ea96546f731b41e06191051cf56`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 489.4 KB (489418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1955915059061241f4d36bc5cdb846068d278a89b4570d5ae04a20a07e6d6ba5`  
		Last Modified: Sat, 24 Jun 2017 19:11:09 GMT  
		Size: 11.2 MB (11239937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168036f3138e8e2da2561c4d3fb650ff3a98f78b1b4dbdfbadae9065bc231feb`  
		Last Modified: Sat, 24 Jun 2017 19:11:05 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35ebba8ab63288047ff9b0abe502c50a3188679d150ad1fcebf832578414f51`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01437ed6a16fe5323393c3a8b556b706caffdb8215201c7c311e92e5d90ab42`  
		Last Modified: Sat, 24 Jun 2017 19:11:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67fe6af3ed319315c0b8797fcf21c54f7b175bc2d35afcef12a0a850e3425b3a`  
		Last Modified: Sat, 24 Jun 2017 19:11:05 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:575afadeed765d6af79746fd3cf1489d1a2a884edaa6565794cddbb581a2ca54
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297352251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61fec47bcfdf0dc2cb7f29d50719b6756134b38cf1e3573aa2daa20eb825cd3b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 03:23:34 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Fri, 23 Jun 2017 03:23:35 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 23 Jun 2017 03:23:36 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 23 Jun 2017 03:23:39 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 03:23:41 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 03:25:30 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 03:25:33 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 03:25:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 03:25:38 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 03:25:39 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 03:25:40 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 03:25:41 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 03:25:42 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 03:25:43 GMT
EXPOSE 10060/tcp
# Fri, 23 Jun 2017 03:25:44 GMT
EXPOSE 10061/tcp
# Fri, 23 Jun 2017 03:25:44 GMT
EXPOSE 10062/tcp
# Fri, 23 Jun 2017 03:25:46 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 03:25:47 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d4e581e3fe995cc3be18196a6e7d3b4b48932a26f045966aff226130a68585`  
		Last Modified: Sat, 24 Jun 2017 19:13:32 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7399bee3dff799e53a75728c199559b6f959ff852ab7ed477e912e8310f9cd5`  
		Last Modified: Sat, 24 Jun 2017 19:13:32 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7f6024accb3c6de7cc32b52362a543be58b0956a3890b070f0b3661ba24fac`  
		Last Modified: Sat, 24 Jun 2017 19:13:32 GMT  
		Size: 938.4 KB (938379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775b928e30823c7257302b21332cc393ff9efbf7fe1202b3322a6de292359c10`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda24e0456c354c56b023f758e3b80a090be7fd90a27a89157739b821b2f2510`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0f6301fc6cd4dfa33045c3a2d03c6b92d2ef161548d1c58d38ef5f65ff891a`  
		Last Modified: Sat, 24 Jun 2017 19:14:16 GMT  
		Size: 229.2 MB (229198492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4f943e3acd10f932271e4e92897458eb1af6b7fad8605dbd2e0d45c63314a9`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ad951a5cc6fa3ff79b92f6df6bf450af8a62fccc7122d147e6f4a7753d1e0c`  
		Last Modified: Sat, 24 Jun 2017 19:13:29 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3f3ca938b7c4b404fcd5d96aec0374c3b8297986508156529f90a68004bcfe`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:575afadeed765d6af79746fd3cf1489d1a2a884edaa6565794cddbb581a2ca54
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297352251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61fec47bcfdf0dc2cb7f29d50719b6756134b38cf1e3573aa2daa20eb825cd3b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 03:23:34 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Fri, 23 Jun 2017 03:23:35 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 23 Jun 2017 03:23:36 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 23 Jun 2017 03:23:39 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 03:23:41 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 03:25:30 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 03:25:33 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 03:25:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 03:25:38 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 03:25:39 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 03:25:40 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 03:25:41 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 03:25:42 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 03:25:43 GMT
EXPOSE 10060/tcp
# Fri, 23 Jun 2017 03:25:44 GMT
EXPOSE 10061/tcp
# Fri, 23 Jun 2017 03:25:44 GMT
EXPOSE 10062/tcp
# Fri, 23 Jun 2017 03:25:46 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 03:25:47 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d4e581e3fe995cc3be18196a6e7d3b4b48932a26f045966aff226130a68585`  
		Last Modified: Sat, 24 Jun 2017 19:13:32 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7399bee3dff799e53a75728c199559b6f959ff852ab7ed477e912e8310f9cd5`  
		Last Modified: Sat, 24 Jun 2017 19:13:32 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7f6024accb3c6de7cc32b52362a543be58b0956a3890b070f0b3661ba24fac`  
		Last Modified: Sat, 24 Jun 2017 19:13:32 GMT  
		Size: 938.4 KB (938379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775b928e30823c7257302b21332cc393ff9efbf7fe1202b3322a6de292359c10`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda24e0456c354c56b023f758e3b80a090be7fd90a27a89157739b821b2f2510`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0f6301fc6cd4dfa33045c3a2d03c6b92d2ef161548d1c58d38ef5f65ff891a`  
		Last Modified: Sat, 24 Jun 2017 19:14:16 GMT  
		Size: 229.2 MB (229198492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4f943e3acd10f932271e4e92897458eb1af6b7fad8605dbd2e0d45c63314a9`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ad951a5cc6fa3ff79b92f6df6bf450af8a62fccc7122d147e6f4a7753d1e0c`  
		Last Modified: Sat, 24 Jun 2017 19:13:29 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb3f3ca938b7c4b404fcd5d96aec0374c3b8297986508156529f90a68004bcfe`  
		Last Modified: Sat, 24 Jun 2017 19:13:30 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:c6a38a3047ceed2edc9d024638863521ea48d61ebb422286e7fa205e6c93aecc
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.0 MB (413975316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9a66bfcb289f21d28827108b6be4470ed00e826ff3517eb794f4a4fe7ffa1e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 02:50:28 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 04:00:03 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 04:01:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 04:01:57 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Fri, 23 Jun 2017 04:01:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 04:02:00 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 04:02:02 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 04:02:02 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 23 Jun 2017 04:02:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 23 Jun 2017 04:02:08 GMT
RUN apt-get install -y curl
# Fri, 23 Jun 2017 04:02:10 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 23 Jun 2017 04:02:11 GMT
WORKDIR /usr/local/zs-init
# Fri, 23 Jun 2017 04:02:17 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 23 Jun 2017 04:02:43 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 23 Jun 2017 04:02:44 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 23 Jun 2017 04:02:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 23 Jun 2017 04:02:47 GMT
RUN rm /var/www/html/index.html
# Fri, 23 Jun 2017 04:02:48 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 23 Jun 2017 04:02:49 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 04:02:49 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 04:02:50 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 04:02:51 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 04:02:52 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 04:02:53 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760258e04a0bf0e7250324443721debd5da37074e826e7143566ef33a1974760`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54308dbc7c928d7c2cc927c4fb0cbac8efb9924e4527a0c12542fac26fb98db0`  
		Last Modified: Sat, 24 Jun 2017 19:15:21 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73920f7a90792bf3025465c5c4b47f1d30cd13ee9c6955d2dcf2e2c2c7e8accb`  
		Last Modified: Sat, 24 Jun 2017 19:16:21 GMT  
		Size: 334.5 MB (334539639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9948be13728624fb5756c73f2909e8c625ebcb6cfbdb9b40b44589e380d15ee8`  
		Last Modified: Sat, 24 Jun 2017 19:15:21 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00241cf1fc7bc780f746617cf938f0583381a3a66c3e090ffe06b350b3ec1bac`  
		Last Modified: Sat, 24 Jun 2017 19:15:20 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122bb9cee2ba478c4538cf1421931cc0de5a9364e79a52e28cd1a173f89a5c1f`  
		Last Modified: Sat, 24 Jun 2017 19:15:19 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd030295ba41567acfb9e1c82a00e68bb4814a01016f1dbea377a8e02b083c3b`  
		Last Modified: Sat, 24 Jun 2017 19:15:19 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185e9247708d482a9d93a3881f31aa550f4aa926ae33361f169ff2837aebe07d`  
		Last Modified: Sat, 24 Jun 2017 19:15:19 GMT  
		Size: 470.2 KB (470219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf09a685342742a8eafc12b0f572a9913dc1fcada0b3d31a92d3a42a8b1e9e41`  
		Last Modified: Sat, 24 Jun 2017 19:15:18 GMT  
		Size: 15.7 KB (15680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbde606c6f73f7095e681070683fa019238b29e614884c2c847be96d26b4847`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 489.4 KB (489419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eba043a080959c1c5390844596d74f3e1e3728aad1947fc0dab11abb595b579`  
		Last Modified: Sat, 24 Jun 2017 19:15:20 GMT  
		Size: 11.2 MB (11240394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0801a36f8ed634b9af7e3d6172400f3fc6f05ab0c0ff52fa4d71dafa7ca8d01`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 13.3 KB (13345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b807256a05b4769734ea172e1e3e50c69a3fe25ff017314b69098a1f230aefa`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595687853935e24b405ae1a52a2c4c96a9c3a2d5bc5aa22f7e4cb045a8466cd1`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eacd98e7eecc386953991975788cf52fc2319e47256702e76b941d3c36dbbb`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:c6a38a3047ceed2edc9d024638863521ea48d61ebb422286e7fa205e6c93aecc
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.0 MB (413975316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9a66bfcb289f21d28827108b6be4470ed00e826ff3517eb794f4a4fe7ffa1e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Fri, 23 Jun 2017 02:50:28 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 23 Jun 2017 04:00:03 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 23 Jun 2017 04:01:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 23 Jun 2017 04:01:57 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Fri, 23 Jun 2017 04:01:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 23 Jun 2017 04:02:00 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 23 Jun 2017 04:02:02 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 23 Jun 2017 04:02:02 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 23 Jun 2017 04:02:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 23 Jun 2017 04:02:08 GMT
RUN apt-get install -y curl
# Fri, 23 Jun 2017 04:02:10 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 23 Jun 2017 04:02:11 GMT
WORKDIR /usr/local/zs-init
# Fri, 23 Jun 2017 04:02:17 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 23 Jun 2017 04:02:43 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 23 Jun 2017 04:02:44 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 23 Jun 2017 04:02:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 23 Jun 2017 04:02:47 GMT
RUN rm /var/www/html/index.html
# Fri, 23 Jun 2017 04:02:48 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 23 Jun 2017 04:02:49 GMT
EXPOSE 80/tcp
# Fri, 23 Jun 2017 04:02:49 GMT
EXPOSE 443/tcp
# Fri, 23 Jun 2017 04:02:50 GMT
EXPOSE 10081/tcp
# Fri, 23 Jun 2017 04:02:51 GMT
EXPOSE 10082/tcp
# Fri, 23 Jun 2017 04:02:52 GMT
WORKDIR /var/www/html
# Fri, 23 Jun 2017 04:02:53 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760258e04a0bf0e7250324443721debd5da37074e826e7143566ef33a1974760`  
		Last Modified: Sat, 24 Jun 2017 18:53:31 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54308dbc7c928d7c2cc927c4fb0cbac8efb9924e4527a0c12542fac26fb98db0`  
		Last Modified: Sat, 24 Jun 2017 19:15:21 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73920f7a90792bf3025465c5c4b47f1d30cd13ee9c6955d2dcf2e2c2c7e8accb`  
		Last Modified: Sat, 24 Jun 2017 19:16:21 GMT  
		Size: 334.5 MB (334539639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9948be13728624fb5756c73f2909e8c625ebcb6cfbdb9b40b44589e380d15ee8`  
		Last Modified: Sat, 24 Jun 2017 19:15:21 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00241cf1fc7bc780f746617cf938f0583381a3a66c3e090ffe06b350b3ec1bac`  
		Last Modified: Sat, 24 Jun 2017 19:15:20 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:122bb9cee2ba478c4538cf1421931cc0de5a9364e79a52e28cd1a173f89a5c1f`  
		Last Modified: Sat, 24 Jun 2017 19:15:19 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd030295ba41567acfb9e1c82a00e68bb4814a01016f1dbea377a8e02b083c3b`  
		Last Modified: Sat, 24 Jun 2017 19:15:19 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185e9247708d482a9d93a3881f31aa550f4aa926ae33361f169ff2837aebe07d`  
		Last Modified: Sat, 24 Jun 2017 19:15:19 GMT  
		Size: 470.2 KB (470219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf09a685342742a8eafc12b0f572a9913dc1fcada0b3d31a92d3a42a8b1e9e41`  
		Last Modified: Sat, 24 Jun 2017 19:15:18 GMT  
		Size: 15.7 KB (15680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbde606c6f73f7095e681070683fa019238b29e614884c2c847be96d26b4847`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 489.4 KB (489419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eba043a080959c1c5390844596d74f3e1e3728aad1947fc0dab11abb595b579`  
		Last Modified: Sat, 24 Jun 2017 19:15:20 GMT  
		Size: 11.2 MB (11240394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0801a36f8ed634b9af7e3d6172400f3fc6f05ab0c0ff52fa4d71dafa7ca8d01`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 13.3 KB (13345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b807256a05b4769734ea172e1e3e50c69a3fe25ff017314b69098a1f230aefa`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 2.5 KB (2516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595687853935e24b405ae1a52a2c4c96a9c3a2d5bc5aa22f7e4cb045a8466cd1`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eacd98e7eecc386953991975788cf52fc2319e47256702e76b941d3c36dbbb`  
		Last Modified: Sat, 24 Jun 2017 19:15:16 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
