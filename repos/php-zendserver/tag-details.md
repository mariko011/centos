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
$ docker pull php-zendserver@sha256:e22eb173b7544d2f4aad93489f8c46f2b9c106ce4ec27725e5cce0e60b006df2
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334549020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816e314a6885fb7f0493b9054257b570fd1c2c21fd39579b1ccf0f56e31f24b0`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:48:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:50:38 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:50:39 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:50:40 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:50:40 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:50:41 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:31:32 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:31:33 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:31:49 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:31:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:31:51 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:32:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:32:30 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:32:33 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:32:34 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:32:34 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:32:35 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:32:35 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:32:35 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:32:39 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:32:40 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:32:40 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:32:40 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c2e73e7f141247bb4637bcbc00b4e0d624dcafea51653865169f9b443f7d6`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f7c5da3b83f87e9fa69cdb4fc8a147c6607b64fc4c382963562bec56d45ebc`  
		Last Modified: Fri, 11 Aug 2017 00:04:42 GMT  
		Size: 253.3 MB (253336887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef498b005a9cfddb1c43d75f51ad318a16fb866270ab1f440a17be77a00f20`  
		Last Modified: Fri, 11 Aug 2017 00:03:49 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e15a6cacf2fcbb385251e06bbe1cc884ebcf8e6ff2358d6977d83ab10e51423`  
		Last Modified: Fri, 11 Aug 2017 00:03:49 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1a6aa8f8b51a396eaea2140f9702997f384eb8628b30ebee389b1a7755f1a8`  
		Last Modified: Fri, 11 Aug 2017 00:03:47 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a91593a2af56fefc8a9e696731942738cce8d0b99d9168d768f25f640e28226`  
		Last Modified: Fri, 11 Aug 2017 00:03:47 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e442a1914c6a94c5e8acab5d200c0a9a62c18f709dda9ec8cfaa3db3c0dac81`  
		Last Modified: Tue, 15 Aug 2017 22:39:40 GMT  
		Size: 474.5 KB (474493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282e6acc1f1335f0d8adef195b3d9358a3b6ee996ce04de715e018ebbd22ad99`  
		Last Modified: Tue, 15 Aug 2017 22:39:40 GMT  
		Size: 18.8 KB (18821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6224c4b6947ea617b54af033271b0b4b84f7e07b56fff12e21e51f6cd5c56482`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 492.6 KB (492615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31d3dff1a3bd1a7459cedd9bf38f3c82f930e670498a24beba1938538d96417`  
		Last Modified: Tue, 15 Aug 2017 22:39:43 GMT  
		Size: 13.0 MB (13005003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34de78993d7eda59858c8a0e707c1010f26c2953f2e8d5b6a4b60c828051a2a`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06ed17f007caba78cdd04efb68b38d0728fc99934d954b0e6d5048a2c49aa9f`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be6645c5ed3751e54c7e22b4f2342f8ff7f698667941d312fc9745708a0b930`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dde2cbe89abb5147d9968c119026c17f2d6a927cf49c23f3e046a133d688098`  
		Last Modified: Tue, 15 Aug 2017 22:39:39 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:e22eb173b7544d2f4aad93489f8c46f2b9c106ce4ec27725e5cce0e60b006df2
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334549020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816e314a6885fb7f0493b9054257b570fd1c2c21fd39579b1ccf0f56e31f24b0`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:48:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:50:38 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:50:39 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:50:40 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:50:40 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:50:41 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:31:32 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:31:33 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:31:49 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:31:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:31:51 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:32:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:32:30 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:32:33 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:32:34 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:32:34 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:32:35 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:32:35 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:32:35 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:32:39 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:32:40 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:32:40 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:32:40 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c2e73e7f141247bb4637bcbc00b4e0d624dcafea51653865169f9b443f7d6`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f7c5da3b83f87e9fa69cdb4fc8a147c6607b64fc4c382963562bec56d45ebc`  
		Last Modified: Fri, 11 Aug 2017 00:04:42 GMT  
		Size: 253.3 MB (253336887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ef498b005a9cfddb1c43d75f51ad318a16fb866270ab1f440a17be77a00f20`  
		Last Modified: Fri, 11 Aug 2017 00:03:49 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e15a6cacf2fcbb385251e06bbe1cc884ebcf8e6ff2358d6977d83ab10e51423`  
		Last Modified: Fri, 11 Aug 2017 00:03:49 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1a6aa8f8b51a396eaea2140f9702997f384eb8628b30ebee389b1a7755f1a8`  
		Last Modified: Fri, 11 Aug 2017 00:03:47 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a91593a2af56fefc8a9e696731942738cce8d0b99d9168d768f25f640e28226`  
		Last Modified: Fri, 11 Aug 2017 00:03:47 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e442a1914c6a94c5e8acab5d200c0a9a62c18f709dda9ec8cfaa3db3c0dac81`  
		Last Modified: Tue, 15 Aug 2017 22:39:40 GMT  
		Size: 474.5 KB (474493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:282e6acc1f1335f0d8adef195b3d9358a3b6ee996ce04de715e018ebbd22ad99`  
		Last Modified: Tue, 15 Aug 2017 22:39:40 GMT  
		Size: 18.8 KB (18821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6224c4b6947ea617b54af033271b0b4b84f7e07b56fff12e21e51f6cd5c56482`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 492.6 KB (492615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31d3dff1a3bd1a7459cedd9bf38f3c82f930e670498a24beba1938538d96417`  
		Last Modified: Tue, 15 Aug 2017 22:39:43 GMT  
		Size: 13.0 MB (13005003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34de78993d7eda59858c8a0e707c1010f26c2953f2e8d5b6a4b60c828051a2a`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06ed17f007caba78cdd04efb68b38d0728fc99934d954b0e6d5048a2c49aa9f`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be6645c5ed3751e54c7e22b4f2342f8ff7f698667941d312fc9745708a0b930`  
		Last Modified: Tue, 15 Aug 2017 22:39:38 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dde2cbe89abb5147d9968c119026c17f2d6a927cf49c23f3e046a133d688098`  
		Last Modified: Tue, 15 Aug 2017 22:39:39 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:954fc296b90dceda92620972b958f1482e0c7a39fc8d1250f772856cc08f98a8
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334764265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3d1336c8088fd6dfc9b318968029e3d6e69ae574d39edcb9574c45fc2d08ec`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:48:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:53:35 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:53:36 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:53:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:53:38 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:53:39 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:32:48 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:32:48 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:33:01 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:33:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:33:06 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:33:15 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:33:56 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:33:56 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:33:56 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:33:57 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:33:58 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:33:59 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:33:59 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:33:59 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c2e73e7f141247bb4637bcbc00b4e0d624dcafea51653865169f9b443f7d6`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319ffc0dbc9a5f6aca7fe31f05970ad736623d9880bbb638b2ab48c486378e0c`  
		Last Modified: Fri, 11 Aug 2017 00:05:59 GMT  
		Size: 253.5 MB (253513805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e3ee1fcb24234160e5adc032623f9e19e38b91d183b320b67ce829e65aed1`  
		Last Modified: Fri, 11 Aug 2017 00:05:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e495a0debc98fe6839e1496c1fa05c0bd4995488d267a9a09d89170fbab4dc`  
		Last Modified: Fri, 11 Aug 2017 00:05:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358fec3bd29933024f527a24b6898b956fbf1e34cf8bc9220a49070a93ea64a9`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b02379c8c6bd7dfcbb1940c16ee0ce368c2dce02486878079a4adaf81bba4b0`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccd5b69643debc567644049f5aecc234ee67547ba090f6ee54407ab854e3831`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 476.3 KB (476298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902e9ba1563ad8b7c8fbaeb08cb9bb808b062776d7e0532a95448aa4843fa5a`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 18.8 KB (18819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757c1ecc48a4b062ea38cceebd03f44aea19edeb70779401024ca715c503cc2`  
		Last Modified: Tue, 15 Aug 2017 22:40:02 GMT  
		Size: 492.6 KB (492613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6e050bcda871a999a1de39b11fc951bad5ac1d12ef0c640f925c84f4db0b66`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 13.0 MB (13041532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4cc5e61b50b656767f0765c337627376d6bc597964807398ceed286c24df91`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d9c59eca02d833182ca044089f52742aa10a06d195a3a34d9b8514f4691f4`  
		Last Modified: Tue, 15 Aug 2017 22:40:02 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a86bdb43a38adf7c2018857dc4739b7b3a7ca99400546288b6e9b781c19405a`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1fdcbe9b7c86cbd26410330608a1c3441d9dbc2620634a189ddee3b865d4e1`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:954fc296b90dceda92620972b958f1482e0c7a39fc8d1250f772856cc08f98a8
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334764265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3d1336c8088fd6dfc9b318968029e3d6e69ae574d39edcb9574c45fc2d08ec`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:48:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:53:35 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:53:36 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:53:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:53:38 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:53:39 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:32:48 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:32:48 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:33:01 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:33:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:33:06 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:33:15 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:33:56 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:33:56 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:33:56 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:33:57 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:33:58 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:33:59 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:33:59 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:33:59 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c2e73e7f141247bb4637bcbc00b4e0d624dcafea51653865169f9b443f7d6`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319ffc0dbc9a5f6aca7fe31f05970ad736623d9880bbb638b2ab48c486378e0c`  
		Last Modified: Fri, 11 Aug 2017 00:05:59 GMT  
		Size: 253.5 MB (253513805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e3ee1fcb24234160e5adc032623f9e19e38b91d183b320b67ce829e65aed1`  
		Last Modified: Fri, 11 Aug 2017 00:05:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e495a0debc98fe6839e1496c1fa05c0bd4995488d267a9a09d89170fbab4dc`  
		Last Modified: Fri, 11 Aug 2017 00:05:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358fec3bd29933024f527a24b6898b956fbf1e34cf8bc9220a49070a93ea64a9`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b02379c8c6bd7dfcbb1940c16ee0ce368c2dce02486878079a4adaf81bba4b0`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccd5b69643debc567644049f5aecc234ee67547ba090f6ee54407ab854e3831`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 476.3 KB (476298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902e9ba1563ad8b7c8fbaeb08cb9bb808b062776d7e0532a95448aa4843fa5a`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 18.8 KB (18819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757c1ecc48a4b062ea38cceebd03f44aea19edeb70779401024ca715c503cc2`  
		Last Modified: Tue, 15 Aug 2017 22:40:02 GMT  
		Size: 492.6 KB (492613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6e050bcda871a999a1de39b11fc951bad5ac1d12ef0c640f925c84f4db0b66`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 13.0 MB (13041532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4cc5e61b50b656767f0765c337627376d6bc597964807398ceed286c24df91`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d9c59eca02d833182ca044089f52742aa10a06d195a3a34d9b8514f4691f4`  
		Last Modified: Tue, 15 Aug 2017 22:40:02 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a86bdb43a38adf7c2018857dc4739b7b3a7ca99400546288b6e9b781c19405a`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1fdcbe9b7c86cbd26410330608a1c3441d9dbc2620634a189ddee3b865d4e1`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:954fc296b90dceda92620972b958f1482e0c7a39fc8d1250f772856cc08f98a8
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334764265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3d1336c8088fd6dfc9b318968029e3d6e69ae574d39edcb9574c45fc2d08ec`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:48:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:53:35 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:53:36 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:53:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:53:38 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:53:39 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:32:48 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:32:48 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:33:01 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:33:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:33:06 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:33:15 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:33:56 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:33:56 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:33:56 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:33:57 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:33:58 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:33:58 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:33:59 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:33:59 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:33:59 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9c2e73e7f141247bb4637bcbc00b4e0d624dcafea51653865169f9b443f7d6`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:319ffc0dbc9a5f6aca7fe31f05970ad736623d9880bbb638b2ab48c486378e0c`  
		Last Modified: Fri, 11 Aug 2017 00:05:59 GMT  
		Size: 253.5 MB (253513805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6e3ee1fcb24234160e5adc032623f9e19e38b91d183b320b67ce829e65aed1`  
		Last Modified: Fri, 11 Aug 2017 00:05:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e495a0debc98fe6839e1496c1fa05c0bd4995488d267a9a09d89170fbab4dc`  
		Last Modified: Fri, 11 Aug 2017 00:05:05 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358fec3bd29933024f527a24b6898b956fbf1e34cf8bc9220a49070a93ea64a9`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b02379c8c6bd7dfcbb1940c16ee0ce368c2dce02486878079a4adaf81bba4b0`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccd5b69643debc567644049f5aecc234ee67547ba090f6ee54407ab854e3831`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 476.3 KB (476298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1902e9ba1563ad8b7c8fbaeb08cb9bb808b062776d7e0532a95448aa4843fa5a`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 18.8 KB (18819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a757c1ecc48a4b062ea38cceebd03f44aea19edeb70779401024ca715c503cc2`  
		Last Modified: Tue, 15 Aug 2017 22:40:02 GMT  
		Size: 492.6 KB (492613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6e050bcda871a999a1de39b11fc951bad5ac1d12ef0c640f925c84f4db0b66`  
		Last Modified: Tue, 15 Aug 2017 22:40:04 GMT  
		Size: 13.0 MB (13041532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4cc5e61b50b656767f0765c337627376d6bc597964807398ceed286c24df91`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40d9c59eca02d833182ca044089f52742aa10a06d195a3a34d9b8514f4691f4`  
		Last Modified: Tue, 15 Aug 2017 22:40:02 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a86bdb43a38adf7c2018857dc4739b7b3a7ca99400546288b6e9b781c19405a`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1fdcbe9b7c86cbd26410330608a1c3441d9dbc2620634a189ddee3b865d4e1`  
		Last Modified: Tue, 15 Aug 2017 22:40:01 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:9044b2a950c96a4f2edca0beeb973aa70a03f7db0aa1f0b72e407250d35a25ef
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.7 MB (295708127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5287c86508172135dea7bf9c5db2f37c4270f9661fb94893f46dddd0d8e40ece`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:54:33 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Thu, 10 Aug 2017 23:54:33 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 10 Aug 2017 23:54:33 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 10 Aug 2017 23:54:38 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:54:39 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:56:20 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:56:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:56:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:56:22 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 10 Aug 2017 23:56:22 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:56:23 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:56:23 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:56:23 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:56:24 GMT
EXPOSE 10060/tcp
# Thu, 10 Aug 2017 23:56:24 GMT
EXPOSE 10061/tcp
# Thu, 10 Aug 2017 23:56:24 GMT
EXPOSE 10062/tcp
# Thu, 10 Aug 2017 23:56:25 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:56:25 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f719059557bb66c2f9b35d00abf40a519e3066e4708773854238cb67472dc36b`  
		Last Modified: Fri, 11 Aug 2017 00:06:29 GMT  
		Size: 997.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397dd2a46f06fac96998e68faed59df4aedd4068f8696cda245aeed96c6c7238`  
		Last Modified: Fri, 11 Aug 2017 00:06:29 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819b96eb017341fdd2c5b8a19b949ce6671a53523a283b2a285326e80e535f03`  
		Last Modified: Fri, 11 Aug 2017 00:06:29 GMT  
		Size: 938.4 KB (938375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a0c06a562d8222cfb4d987987e862c6b808da52d10f1bdb98e1924b05b0247`  
		Last Modified: Fri, 11 Aug 2017 00:06:27 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22134373a1b4ac2f857eea0e27a000865fd7555fe2f267dcb2d592dce1a8d6a4`  
		Last Modified: Fri, 11 Aug 2017 00:06:27 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369412cbff9fe1f9ac6d71c308a674a3ac060db28db6f65b9625f769e8acecc6`  
		Last Modified: Fri, 11 Aug 2017 00:07:12 GMT  
		Size: 227.6 MB (227553146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102cf13d6bf331c67b1ab8270b3c6cf745965ea9da262bf5e55506e5cd011441`  
		Last Modified: Fri, 11 Aug 2017 00:06:30 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700c1ff70833e95278e0d28d0585904f155b2817c8a8e24a38eab5b0377da7b2`  
		Last Modified: Fri, 11 Aug 2017 00:06:30 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab762ad957ec3ff9c1dd2d2e0cb2036f724a096c37fc9c1675abf7c43b50de0f`  
		Last Modified: Fri, 11 Aug 2017 00:06:27 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:9044b2a950c96a4f2edca0beeb973aa70a03f7db0aa1f0b72e407250d35a25ef
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.7 MB (295708127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5287c86508172135dea7bf9c5db2f37c4270f9661fb94893f46dddd0d8e40ece`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:54:33 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Thu, 10 Aug 2017 23:54:33 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 10 Aug 2017 23:54:33 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 10 Aug 2017 23:54:38 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:54:39 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:56:20 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:56:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:56:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:56:22 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 10 Aug 2017 23:56:22 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:56:23 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:56:23 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:56:23 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:56:24 GMT
EXPOSE 10060/tcp
# Thu, 10 Aug 2017 23:56:24 GMT
EXPOSE 10061/tcp
# Thu, 10 Aug 2017 23:56:24 GMT
EXPOSE 10062/tcp
# Thu, 10 Aug 2017 23:56:25 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:56:25 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f719059557bb66c2f9b35d00abf40a519e3066e4708773854238cb67472dc36b`  
		Last Modified: Fri, 11 Aug 2017 00:06:29 GMT  
		Size: 997.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397dd2a46f06fac96998e68faed59df4aedd4068f8696cda245aeed96c6c7238`  
		Last Modified: Fri, 11 Aug 2017 00:06:29 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819b96eb017341fdd2c5b8a19b949ce6671a53523a283b2a285326e80e535f03`  
		Last Modified: Fri, 11 Aug 2017 00:06:29 GMT  
		Size: 938.4 KB (938375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a0c06a562d8222cfb4d987987e862c6b808da52d10f1bdb98e1924b05b0247`  
		Last Modified: Fri, 11 Aug 2017 00:06:27 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22134373a1b4ac2f857eea0e27a000865fd7555fe2f267dcb2d592dce1a8d6a4`  
		Last Modified: Fri, 11 Aug 2017 00:06:27 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369412cbff9fe1f9ac6d71c308a674a3ac060db28db6f65b9625f769e8acecc6`  
		Last Modified: Fri, 11 Aug 2017 00:07:12 GMT  
		Size: 227.6 MB (227553146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102cf13d6bf331c67b1ab8270b3c6cf745965ea9da262bf5e55506e5cd011441`  
		Last Modified: Fri, 11 Aug 2017 00:06:30 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:700c1ff70833e95278e0d28d0585904f155b2817c8a8e24a38eab5b0377da7b2`  
		Last Modified: Fri, 11 Aug 2017 00:06:30 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab762ad957ec3ff9c1dd2d2e0cb2036f724a096c37fc9c1675abf7c43b50de0f`  
		Last Modified: Fri, 11 Aug 2017 00:06:27 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:168cf8f1dc03ad64220b51a0db07849a60fadcc271d3bc9e3caf41716ae61a60
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.2 MB (414189148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ea6b297b6752591de5005cf91203590c6e158c1c331a44acd9f3ed019e3ad1`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:56:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:58:23 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:58:24 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:58:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:58:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:58:26 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:34:11 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:34:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:34:24 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:34:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:34:26 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:34:35 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:35:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:39:23 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:39:24 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:39:24 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:39:25 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:39:25 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:39:25 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:39:26 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:39:30 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:39:30 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:39:30 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6effbe78276ba5ea7d07e6489e1de2148e135a53b7291fd35062104fbe7dec7`  
		Last Modified: Fri, 11 Aug 2017 00:11:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478fb459cc8ae4da567482f3b11b4a81c265f4a2df17bc3469f5857b786233a`  
		Last Modified: Fri, 11 Aug 2017 00:12:49 GMT  
		Size: 332.9 MB (332944516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0235b22fb6eba9e16de7f97bdf7d0895df24cfae89454017a026d25c3a8ddb`  
		Last Modified: Fri, 11 Aug 2017 00:11:45 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeb8674854e2a57348d213ec29acca9416f63a4b00caaf204719609e432fcd4`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13df1c745daf3fa89fb9dd30bb829330ea44579cf1b9855fc4c50c58c896fb3`  
		Last Modified: Fri, 11 Aug 2017 00:11:43 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6636ee7060a7814e1070ccac84f9ae51198898723ce0bfa014ace06ba54f22`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a12f062befdc04d509b4818e4765f0a74d259befe52af77ca7c44f06751f96`  
		Last Modified: Tue, 15 Aug 2017 22:40:49 GMT  
		Size: 470.4 KB (470444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a1fefdc8a3ab53f5e88d0d80b6fd2562f03fa0d1c75cb4fb062b7d1e418c92`  
		Last Modified: Tue, 15 Aug 2017 22:40:48 GMT  
		Size: 18.8 KB (18823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d169f38fa9f92691c54685b5abad898eb60390067875ba31f49b33628da9919`  
		Last Modified: Tue, 15 Aug 2017 22:40:47 GMT  
		Size: 492.6 KB (492614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2fa6d07bed30caf887278cf69829848e09847b9f815d91ed0635ba240a74fc`  
		Last Modified: Tue, 15 Aug 2017 22:40:49 GMT  
		Size: 13.0 MB (13041551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3f1158ebdf1c533998e1d4bf623d2ba72b274070ae1b45779a4fb825a48556`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 13.3 KB (13345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40529122d9ac03b05fc5b15594d048afb7bd778887699c42cf6a8d92494d62b4`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9305a55280d13de94c96276d84d8be0d090600664d8a9867575910570970a2`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eec8ffe7c03a26364865f0c10a47507904de2d314750bd9603db3eb23e6a183`  
		Last Modified: Tue, 15 Aug 2017 22:40:47 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:168cf8f1dc03ad64220b51a0db07849a60fadcc271d3bc9e3caf41716ae61a60
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.2 MB (414189148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ea6b297b6752591de5005cf91203590c6e158c1c331a44acd9f3ed019e3ad1`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:56:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:58:23 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:58:24 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:58:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:58:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:58:26 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:34:11 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:34:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:34:24 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:34:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:34:26 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:34:35 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:35:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:39:23 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:39:24 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:39:24 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:39:25 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:39:25 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:39:25 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:39:26 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:39:30 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:39:30 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:39:30 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6effbe78276ba5ea7d07e6489e1de2148e135a53b7291fd35062104fbe7dec7`  
		Last Modified: Fri, 11 Aug 2017 00:11:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478fb459cc8ae4da567482f3b11b4a81c265f4a2df17bc3469f5857b786233a`  
		Last Modified: Fri, 11 Aug 2017 00:12:49 GMT  
		Size: 332.9 MB (332944516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0235b22fb6eba9e16de7f97bdf7d0895df24cfae89454017a026d25c3a8ddb`  
		Last Modified: Fri, 11 Aug 2017 00:11:45 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeb8674854e2a57348d213ec29acca9416f63a4b00caaf204719609e432fcd4`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13df1c745daf3fa89fb9dd30bb829330ea44579cf1b9855fc4c50c58c896fb3`  
		Last Modified: Fri, 11 Aug 2017 00:11:43 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6636ee7060a7814e1070ccac84f9ae51198898723ce0bfa014ace06ba54f22`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a12f062befdc04d509b4818e4765f0a74d259befe52af77ca7c44f06751f96`  
		Last Modified: Tue, 15 Aug 2017 22:40:49 GMT  
		Size: 470.4 KB (470444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a1fefdc8a3ab53f5e88d0d80b6fd2562f03fa0d1c75cb4fb062b7d1e418c92`  
		Last Modified: Tue, 15 Aug 2017 22:40:48 GMT  
		Size: 18.8 KB (18823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d169f38fa9f92691c54685b5abad898eb60390067875ba31f49b33628da9919`  
		Last Modified: Tue, 15 Aug 2017 22:40:47 GMT  
		Size: 492.6 KB (492614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2fa6d07bed30caf887278cf69829848e09847b9f815d91ed0635ba240a74fc`  
		Last Modified: Tue, 15 Aug 2017 22:40:49 GMT  
		Size: 13.0 MB (13041551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3f1158ebdf1c533998e1d4bf623d2ba72b274070ae1b45779a4fb825a48556`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 13.3 KB (13345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40529122d9ac03b05fc5b15594d048afb7bd778887699c42cf6a8d92494d62b4`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9305a55280d13de94c96276d84d8be0d090600664d8a9867575910570970a2`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eec8ffe7c03a26364865f0c10a47507904de2d314750bd9603db3eb23e6a183`  
		Last Modified: Tue, 15 Aug 2017 22:40:47 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
