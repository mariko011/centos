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
$ docker pull php-zendserver@sha256:93b73072dd9245086034d86a8f783f801c19f7ce95c2f2dffa9a4d99b25f939f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.2 MB (333175710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9a951f3219bee2f9fcdef58ff6e8b66a79208731ce5c031b1c0eb64c3e5680`
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
# Thu, 10 Aug 2017 23:50:41 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 10 Aug 2017 23:50:42 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 10 Aug 2017 23:50:50 GMT
RUN apt-get install -y curl
# Thu, 10 Aug 2017 23:50:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 10 Aug 2017 23:50:51 GMT
WORKDIR /usr/local/zs-init
# Thu, 10 Aug 2017 23:50:57 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 10 Aug 2017 23:51:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 10 Aug 2017 23:51:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 10 Aug 2017 23:51:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 10 Aug 2017 23:51:30 GMT
RUN rm /var/www/html/index.html
# Thu, 10 Aug 2017 23:51:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 10 Aug 2017 23:51:30 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:51:32 GMT
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
	-	`sha256:47d05d5eb164ba44c55c032802dd0911c3d15a10f9e2e2181ee5846d3aa88e5c`  
		Last Modified: Fri, 11 Aug 2017 00:03:48 GMT  
		Size: 474.5 KB (474491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca660d10ed8374471564b181231df4db57f2309a271ab710c60c44bacefa9ab`  
		Last Modified: Fri, 11 Aug 2017 00:03:47 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0428130f2d0863d40e221cd585bcb84fa3679d4b16e6c7afbb2026f7e070ed5`  
		Last Modified: Fri, 11 Aug 2017 00:03:46 GMT  
		Size: 492.6 KB (492613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850ec9e050e883551e1781e80408bc670bd22cf0265d0bc16c1450aaec1fe0c0`  
		Last Modified: Fri, 11 Aug 2017 00:03:49 GMT  
		Size: 11.6 MB (11634843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1365db81b6fc0068d0cdede145df6b383e3e899dae54d0461894755effedde`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 13.3 KB (13340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2dfd219ee65b81d747d31633748d17f6ea5479e68556ec158d73954210c4ff`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6afdabd948df33a6fece17970f002caa7de878fe8de566636339df70cd4bb6`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa95187e158096a8317e827f62049b99bffe9c65291d4210d8c0ee54f947c37`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:93b73072dd9245086034d86a8f783f801c19f7ce95c2f2dffa9a4d99b25f939f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.2 MB (333175710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9a951f3219bee2f9fcdef58ff6e8b66a79208731ce5c031b1c0eb64c3e5680`
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
# Thu, 10 Aug 2017 23:50:41 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 10 Aug 2017 23:50:42 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 10 Aug 2017 23:50:50 GMT
RUN apt-get install -y curl
# Thu, 10 Aug 2017 23:50:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 10 Aug 2017 23:50:51 GMT
WORKDIR /usr/local/zs-init
# Thu, 10 Aug 2017 23:50:57 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 10 Aug 2017 23:51:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 10 Aug 2017 23:51:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 10 Aug 2017 23:51:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 10 Aug 2017 23:51:30 GMT
RUN rm /var/www/html/index.html
# Thu, 10 Aug 2017 23:51:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 10 Aug 2017 23:51:30 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:51:31 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:51:32 GMT
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
	-	`sha256:47d05d5eb164ba44c55c032802dd0911c3d15a10f9e2e2181ee5846d3aa88e5c`  
		Last Modified: Fri, 11 Aug 2017 00:03:48 GMT  
		Size: 474.5 KB (474491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca660d10ed8374471564b181231df4db57f2309a271ab710c60c44bacefa9ab`  
		Last Modified: Fri, 11 Aug 2017 00:03:47 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0428130f2d0863d40e221cd585bcb84fa3679d4b16e6c7afbb2026f7e070ed5`  
		Last Modified: Fri, 11 Aug 2017 00:03:46 GMT  
		Size: 492.6 KB (492613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850ec9e050e883551e1781e80408bc670bd22cf0265d0bc16c1450aaec1fe0c0`  
		Last Modified: Fri, 11 Aug 2017 00:03:49 GMT  
		Size: 11.6 MB (11634843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1365db81b6fc0068d0cdede145df6b383e3e899dae54d0461894755effedde`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 13.3 KB (13340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2dfd219ee65b81d747d31633748d17f6ea5479e68556ec158d73954210c4ff`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6afdabd948df33a6fece17970f002caa7de878fe8de566636339df70cd4bb6`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa95187e158096a8317e827f62049b99bffe9c65291d4210d8c0ee54f947c37`  
		Last Modified: Fri, 11 Aug 2017 00:03:45 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:cbdba432c6c4bbb554a6935d8c0874c3b6f2872f22bb819f2dbd3e8b2e39ed04
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.4 MB (333385815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3366acfa76ab7961717441038fba014543c53f1d1cd7b759a69298d264b8b84f`
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
# Thu, 10 Aug 2017 23:53:39 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 10 Aug 2017 23:53:39 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 10 Aug 2017 23:53:48 GMT
RUN apt-get install -y curl
# Thu, 10 Aug 2017 23:53:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 10 Aug 2017 23:53:49 GMT
WORKDIR /usr/local/zs-init
# Thu, 10 Aug 2017 23:53:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 10 Aug 2017 23:54:24 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 10 Aug 2017 23:54:25 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 10 Aug 2017 23:54:25 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 10 Aug 2017 23:54:26 GMT
RUN rm /var/www/html/index.html
# Thu, 10 Aug 2017 23:54:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 10 Aug 2017 23:54:26 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:54:28 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:54:28 GMT
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
	-	`sha256:17affbff7a6e0e505076122f05353ce2a923854916d42098b248fe53bef19c01`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 476.3 KB (476282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de4ffc2fca602d64d5fbc8d18734dbf0ffb6e99d129893575f9a622921cc39f`  
		Last Modified: Fri, 11 Aug 2017 00:05:03 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7a3406b1721154e208e95bc6dc70fcd4320dbe8d45a35faf2f6a0b26fc8880`  
		Last Modified: Fri, 11 Aug 2017 00:05:02 GMT  
		Size: 492.6 KB (492612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc8e35482202a7e780a35d751dc17eb1d224fbd1c12a401992e210b36a1d59`  
		Last Modified: Fri, 11 Aug 2017 00:05:06 GMT  
		Size: 11.7 MB (11666241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50dbea43aa4819f19cafb20d9377ae53df00336c8f50aee4a845353a96880c1`  
		Last Modified: Fri, 11 Aug 2017 00:05:02 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bad445c51d35309f072245e9bc570a7e343238caf2c80f10fc8c58904b9815`  
		Last Modified: Fri, 11 Aug 2017 00:05:01 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a6e3a540d8056eabb10330c71f1ab70e45d285ae032a5e269c695eb225e191`  
		Last Modified: Fri, 11 Aug 2017 00:05:01 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353454c05ef871714a61b78cc359a77ab64c2193d7b62e3a6ba37f1fbdf86ce5`  
		Last Modified: Fri, 11 Aug 2017 00:05:05 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:cbdba432c6c4bbb554a6935d8c0874c3b6f2872f22bb819f2dbd3e8b2e39ed04
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.4 MB (333385815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3366acfa76ab7961717441038fba014543c53f1d1cd7b759a69298d264b8b84f`
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
# Thu, 10 Aug 2017 23:53:39 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 10 Aug 2017 23:53:39 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 10 Aug 2017 23:53:48 GMT
RUN apt-get install -y curl
# Thu, 10 Aug 2017 23:53:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 10 Aug 2017 23:53:49 GMT
WORKDIR /usr/local/zs-init
# Thu, 10 Aug 2017 23:53:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 10 Aug 2017 23:54:24 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 10 Aug 2017 23:54:25 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 10 Aug 2017 23:54:25 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 10 Aug 2017 23:54:26 GMT
RUN rm /var/www/html/index.html
# Thu, 10 Aug 2017 23:54:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 10 Aug 2017 23:54:26 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:54:28 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:54:28 GMT
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
	-	`sha256:17affbff7a6e0e505076122f05353ce2a923854916d42098b248fe53bef19c01`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 476.3 KB (476282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de4ffc2fca602d64d5fbc8d18734dbf0ffb6e99d129893575f9a622921cc39f`  
		Last Modified: Fri, 11 Aug 2017 00:05:03 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7a3406b1721154e208e95bc6dc70fcd4320dbe8d45a35faf2f6a0b26fc8880`  
		Last Modified: Fri, 11 Aug 2017 00:05:02 GMT  
		Size: 492.6 KB (492612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc8e35482202a7e780a35d751dc17eb1d224fbd1c12a401992e210b36a1d59`  
		Last Modified: Fri, 11 Aug 2017 00:05:06 GMT  
		Size: 11.7 MB (11666241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50dbea43aa4819f19cafb20d9377ae53df00336c8f50aee4a845353a96880c1`  
		Last Modified: Fri, 11 Aug 2017 00:05:02 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bad445c51d35309f072245e9bc570a7e343238caf2c80f10fc8c58904b9815`  
		Last Modified: Fri, 11 Aug 2017 00:05:01 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a6e3a540d8056eabb10330c71f1ab70e45d285ae032a5e269c695eb225e191`  
		Last Modified: Fri, 11 Aug 2017 00:05:01 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353454c05ef871714a61b78cc359a77ab64c2193d7b62e3a6ba37f1fbdf86ce5`  
		Last Modified: Fri, 11 Aug 2017 00:05:05 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:cbdba432c6c4bbb554a6935d8c0874c3b6f2872f22bb819f2dbd3e8b2e39ed04
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.4 MB (333385815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3366acfa76ab7961717441038fba014543c53f1d1cd7b759a69298d264b8b84f`
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
# Thu, 10 Aug 2017 23:53:39 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 10 Aug 2017 23:53:39 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 10 Aug 2017 23:53:48 GMT
RUN apt-get install -y curl
# Thu, 10 Aug 2017 23:53:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 10 Aug 2017 23:53:49 GMT
WORKDIR /usr/local/zs-init
# Thu, 10 Aug 2017 23:53:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 10 Aug 2017 23:54:24 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 10 Aug 2017 23:54:25 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 10 Aug 2017 23:54:25 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 10 Aug 2017 23:54:26 GMT
RUN rm /var/www/html/index.html
# Thu, 10 Aug 2017 23:54:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 10 Aug 2017 23:54:26 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:54:27 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:54:28 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:54:28 GMT
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
	-	`sha256:17affbff7a6e0e505076122f05353ce2a923854916d42098b248fe53bef19c01`  
		Last Modified: Fri, 11 Aug 2017 00:05:04 GMT  
		Size: 476.3 KB (476282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de4ffc2fca602d64d5fbc8d18734dbf0ffb6e99d129893575f9a622921cc39f`  
		Last Modified: Fri, 11 Aug 2017 00:05:03 GMT  
		Size: 15.7 KB (15679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7a3406b1721154e208e95bc6dc70fcd4320dbe8d45a35faf2f6a0b26fc8880`  
		Last Modified: Fri, 11 Aug 2017 00:05:02 GMT  
		Size: 492.6 KB (492612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ccc8e35482202a7e780a35d751dc17eb1d224fbd1c12a401992e210b36a1d59`  
		Last Modified: Fri, 11 Aug 2017 00:05:06 GMT  
		Size: 11.7 MB (11666241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50dbea43aa4819f19cafb20d9377ae53df00336c8f50aee4a845353a96880c1`  
		Last Modified: Fri, 11 Aug 2017 00:05:02 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95bad445c51d35309f072245e9bc570a7e343238caf2c80f10fc8c58904b9815`  
		Last Modified: Fri, 11 Aug 2017 00:05:01 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a6e3a540d8056eabb10330c71f1ab70e45d285ae032a5e269c695eb225e191`  
		Last Modified: Fri, 11 Aug 2017 00:05:01 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353454c05ef871714a61b78cc359a77ab64c2193d7b62e3a6ba37f1fbdf86ce5`  
		Last Modified: Fri, 11 Aug 2017 00:05:05 GMT  
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
$ docker pull php-zendserver@sha256:3b23e3ff90509045d02406088c9b994e67165a779ea719cf0bc42081d79e6c2d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.8 MB (412810716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ee95d02f6d1fd3012cc8259e8664fcf790457d18c07d866542107d43b909b`
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
# Thu, 10 Aug 2017 23:58:26 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 10 Aug 2017 23:58:26 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 10 Aug 2017 23:58:35 GMT
RUN apt-get install -y curl
# Thu, 10 Aug 2017 23:58:36 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 10 Aug 2017 23:58:36 GMT
WORKDIR /usr/local/zs-init
# Thu, 10 Aug 2017 23:58:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 10 Aug 2017 23:59:05 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 10 Aug 2017 23:59:05 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 10 Aug 2017 23:59:06 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 10 Aug 2017 23:59:07 GMT
RUN rm /var/www/html/index.html
# Thu, 10 Aug 2017 23:59:07 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 10 Aug 2017 23:59:07 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:59:07 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:59:08 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:59:08 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:59:08 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:59:08 GMT
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
	-	`sha256:d1fbcf7421e306bb23004b92cd10ed281cc79e3c88cbcd5b970650f2270d10de`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 470.4 KB (470446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b974f30e7ea83655dba5d643c668b70f6223578fb69440d15734bbee452489`  
		Last Modified: Fri, 11 Aug 2017 00:11:43 GMT  
		Size: 15.7 KB (15677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01c4af4354e6f82e9c12b1a9b5ee609500fe7e3f84b6d230f9d204050d70cf6`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 492.6 KB (492612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7664570e7bc04f3b92087b33fa064e1617fd1cf397919e68ba6340fda22c5fe6`  
		Last Modified: Fri, 11 Aug 2017 00:11:46 GMT  
		Size: 11.7 MB (11666273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ecc25b11e8833fc82ce9d498762bd83c7a721c3863f9d9d1d98fad02626695`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 13.3 KB (13342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e844b0bb93505a95486b07a889e0195ea4faa21b6c8530b16abbd0d5eae7cf9`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 2.5 KB (2514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e31bddc30126eb052455c8172ace0f0314db6a42626bd26f69838b4340e53b0`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8c9220982bac96ce95f329099b4059ce412f9f498ade7214be178d8e249873`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:3b23e3ff90509045d02406088c9b994e67165a779ea719cf0bc42081d79e6c2d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.8 MB (412810716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40ee95d02f6d1fd3012cc8259e8664fcf790457d18c07d866542107d43b909b`
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
# Thu, 10 Aug 2017 23:58:26 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 10 Aug 2017 23:58:26 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 10 Aug 2017 23:58:35 GMT
RUN apt-get install -y curl
# Thu, 10 Aug 2017 23:58:36 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 10 Aug 2017 23:58:36 GMT
WORKDIR /usr/local/zs-init
# Thu, 10 Aug 2017 23:58:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 10 Aug 2017 23:59:05 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 10 Aug 2017 23:59:05 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 10 Aug 2017 23:59:06 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 10 Aug 2017 23:59:07 GMT
RUN rm /var/www/html/index.html
# Thu, 10 Aug 2017 23:59:07 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 10 Aug 2017 23:59:07 GMT
EXPOSE 80/tcp
# Thu, 10 Aug 2017 23:59:07 GMT
EXPOSE 443/tcp
# Thu, 10 Aug 2017 23:59:08 GMT
EXPOSE 10081/tcp
# Thu, 10 Aug 2017 23:59:08 GMT
EXPOSE 10082/tcp
# Thu, 10 Aug 2017 23:59:08 GMT
WORKDIR /var/www/html
# Thu, 10 Aug 2017 23:59:08 GMT
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
	-	`sha256:d1fbcf7421e306bb23004b92cd10ed281cc79e3c88cbcd5b970650f2270d10de`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 470.4 KB (470446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0b974f30e7ea83655dba5d643c668b70f6223578fb69440d15734bbee452489`  
		Last Modified: Fri, 11 Aug 2017 00:11:43 GMT  
		Size: 15.7 KB (15677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01c4af4354e6f82e9c12b1a9b5ee609500fe7e3f84b6d230f9d204050d70cf6`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 492.6 KB (492612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7664570e7bc04f3b92087b33fa064e1617fd1cf397919e68ba6340fda22c5fe6`  
		Last Modified: Fri, 11 Aug 2017 00:11:46 GMT  
		Size: 11.7 MB (11666273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ecc25b11e8833fc82ce9d498762bd83c7a721c3863f9d9d1d98fad02626695`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 13.3 KB (13342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e844b0bb93505a95486b07a889e0195ea4faa21b6c8530b16abbd0d5eae7cf9`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 2.5 KB (2514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e31bddc30126eb052455c8172ace0f0314db6a42626bd26f69838b4340e53b0`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8c9220982bac96ce95f329099b4059ce412f9f498ade7214be178d8e249873`  
		Last Modified: Fri, 11 Aug 2017 00:11:41 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
