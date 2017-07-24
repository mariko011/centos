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
$ docker pull php-zendserver@sha256:96d3608a5362248152b5eb020a6edf8feffe3d11341967c35ff2cfb929c09f29
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334710906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e868385866d75d9e090d405fac7fb3f3769c648ff0b327e03e8575b519676629`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:18:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 20 Jul 2017 20:20:35 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:46:16 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:46:17 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:46:19 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:46:19 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:46:20 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:46:20 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:46:38 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:46:39 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:46:39 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:46:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:47:43 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:47:44 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:47:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:47:48 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:47:48 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:47:48 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:47:50 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:47:50 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:47:51 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:47:55 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:47:59 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b0c103f7bc8fdf8a2b25dfad6d8a10f3985c893b3d92bc8de09f97d4abf955`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85ce17496e945b0c4d9b589e511e158eb0fca0f4ef98474ee23395cd61198f8`  
		Last Modified: Thu, 20 Jul 2017 20:29:32 GMT  
		Size: 255.0 MB (255037028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5303841c6a489e8a0feb1b8ee8230d017459a7a58f97317e80b411ac1df4a063`  
		Last Modified: Mon, 24 Jul 2017 16:54:25 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e22ed38918dc1686f8e93e11b73e39f70b34154ade26bebaa88320c80687a48`  
		Last Modified: Mon, 24 Jul 2017 16:54:24 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a324a1320ca18d0bcedec9d22b92ff964dafecc58f51855a4398505e70dfd60`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96eca6e602b2ee19951def43420c8f57074b4ac30b7fa0f2c37754b159ce5e48`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdc385c06fe233b10b7156b527d8e3ba74f8accad151d0647c3a7462899e52c`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 474.5 KB (474478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5f66c3c250e3f4d3615917d9bccd6aa0c4f9ad84379cb90bdcbded8536f662`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b6e7cbd472ab45a62d1b95e73ae6e21b05b49cc92e195eabf1bd80a42647c2`  
		Last Modified: Mon, 24 Jul 2017 16:54:22 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11e8b41680c3fdf8d6c85a41df3c749e4acbcf48a7ea7947c545815a76c57c0`  
		Last Modified: Mon, 24 Jul 2017 16:54:25 GMT  
		Size: 11.5 MB (11474048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aade5d5d4f654fecec6c79e6255dab079dccdeb0131e6709ba57c804d21fd278`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 13.3 KB (13342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556ec99f5d20488340b50907fbfef3345949d9a929a17dfe5d6461fca8ba64cd`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a68ef7599453733426145018dac46e608b2178c9fa37703f7a0416cc619f4a4`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4a24ae95df48dcc24849d32e7364a9bff67e12913a5925b50bbb7f00598d1e`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:96d3608a5362248152b5eb020a6edf8feffe3d11341967c35ff2cfb929c09f29
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334710906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e868385866d75d9e090d405fac7fb3f3769c648ff0b327e03e8575b519676629`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:18:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 20 Jul 2017 20:20:35 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:46:16 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:46:17 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:46:19 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:46:19 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:46:20 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:46:20 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:46:38 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:46:39 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:46:39 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:46:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:47:43 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:47:44 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:47:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:47:48 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:47:48 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:47:48 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:47:50 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:47:50 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:47:51 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:47:55 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:47:59 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b0c103f7bc8fdf8a2b25dfad6d8a10f3985c893b3d92bc8de09f97d4abf955`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e85ce17496e945b0c4d9b589e511e158eb0fca0f4ef98474ee23395cd61198f8`  
		Last Modified: Thu, 20 Jul 2017 20:29:32 GMT  
		Size: 255.0 MB (255037028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5303841c6a489e8a0feb1b8ee8230d017459a7a58f97317e80b411ac1df4a063`  
		Last Modified: Mon, 24 Jul 2017 16:54:25 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e22ed38918dc1686f8e93e11b73e39f70b34154ade26bebaa88320c80687a48`  
		Last Modified: Mon, 24 Jul 2017 16:54:24 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a324a1320ca18d0bcedec9d22b92ff964dafecc58f51855a4398505e70dfd60`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96eca6e602b2ee19951def43420c8f57074b4ac30b7fa0f2c37754b159ce5e48`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fdc385c06fe233b10b7156b527d8e3ba74f8accad151d0647c3a7462899e52c`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 474.5 KB (474478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5f66c3c250e3f4d3615917d9bccd6aa0c4f9ad84379cb90bdcbded8536f662`  
		Last Modified: Mon, 24 Jul 2017 16:54:23 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b6e7cbd472ab45a62d1b95e73ae6e21b05b49cc92e195eabf1bd80a42647c2`  
		Last Modified: Mon, 24 Jul 2017 16:54:22 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11e8b41680c3fdf8d6c85a41df3c749e4acbcf48a7ea7947c545815a76c57c0`  
		Last Modified: Mon, 24 Jul 2017 16:54:25 GMT  
		Size: 11.5 MB (11474048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aade5d5d4f654fecec6c79e6255dab079dccdeb0131e6709ba57c804d21fd278`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 13.3 KB (13342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556ec99f5d20488340b50907fbfef3345949d9a929a17dfe5d6461fca8ba64cd`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a68ef7599453733426145018dac46e608b2178c9fa37703f7a0416cc619f4a4`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4a24ae95df48dcc24849d32e7364a9bff67e12913a5925b50bbb7f00598d1e`  
		Last Modified: Mon, 24 Jul 2017 16:54:21 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:0faa9f6e8e81e9b85df703aa95033a67f64e1ba908b9d7b78f1924edc47594c5
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331511511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b8967ab999606f5879368da1493589007c49a335180e27d9538b852ae15fb`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:18:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 20 Jul 2017 20:23:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:48:02 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:48:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:48:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:48:04 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:48:05 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:48:05 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:48:32 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:48:34 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:48:35 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:48:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:49:16 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:49:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:49:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:49:17 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:49:17 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:49:17 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:49:18 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b0c103f7bc8fdf8a2b25dfad6d8a10f3985c893b3d92bc8de09f97d4abf955`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e9d7d28c8ab561d1866d830718d53b8f2277aec92f3a064c66db3055395176`  
		Last Modified: Thu, 20 Jul 2017 20:30:31 GMT  
		Size: 251.8 MB (251808942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38f893e0e19281571f67e17483983313b7721dd355587641356282de42c0494`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82093dd48363f15aeba726b5d652f35562f4f9dbad3018918144fe2bfb199747`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5bb5b3e2f315cc6c534506d23832ebd37c441880cb451aeba99a06d33b9daf`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744ef538cb7530924cf7820a1bd55cc5cc9cfb45457e905b4e5916dd75934ac8`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f540db51ba71a9b1396dabd75a0adbd30ba93cfceda43ef7931f4ae6ca0df3c8`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 476.2 KB (476212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051bc1ceb1e5b601558221015c9c147afe6c03dde1848a57eeade1bad689d90e`  
		Last Modified: Mon, 24 Jul 2017 16:54:40 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5479e13f893d9c96dbd4c99f845d9b8a62017668babe501707f68d4b5b1c784`  
		Last Modified: Mon, 24 Jul 2017 16:54:40 GMT  
		Size: 489.4 KB (489416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1aa727e33db2bd6f8292b3689ff29d95c80347ed1ef90bf39930fa3e76e3b8`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 11.5 MB (11500999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03977336971bac5d811f2f4545ccfd0ad0778c4f64eb25698e11a2bfdb740a37`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f009f5064f29e807d3c1683b12c65981b0814496526646170ac41a9fdac961`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e305fe912456978874cd05c0fd4d0368996a24a4d1372825b75f1783f14feda`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da67d491aaf6b4ee9ada310d1311f2f1ec97fa994bbf635e533da6a0c498ff7`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:0faa9f6e8e81e9b85df703aa95033a67f64e1ba908b9d7b78f1924edc47594c5
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331511511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b8967ab999606f5879368da1493589007c49a335180e27d9538b852ae15fb`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:18:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 20 Jul 2017 20:23:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:48:02 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:48:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:48:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:48:04 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:48:05 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:48:05 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:48:32 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:48:34 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:48:35 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:48:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:49:16 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:49:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:49:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:49:17 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:49:17 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:49:17 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:49:18 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b0c103f7bc8fdf8a2b25dfad6d8a10f3985c893b3d92bc8de09f97d4abf955`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e9d7d28c8ab561d1866d830718d53b8f2277aec92f3a064c66db3055395176`  
		Last Modified: Thu, 20 Jul 2017 20:30:31 GMT  
		Size: 251.8 MB (251808942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38f893e0e19281571f67e17483983313b7721dd355587641356282de42c0494`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82093dd48363f15aeba726b5d652f35562f4f9dbad3018918144fe2bfb199747`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5bb5b3e2f315cc6c534506d23832ebd37c441880cb451aeba99a06d33b9daf`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744ef538cb7530924cf7820a1bd55cc5cc9cfb45457e905b4e5916dd75934ac8`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f540db51ba71a9b1396dabd75a0adbd30ba93cfceda43ef7931f4ae6ca0df3c8`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 476.2 KB (476212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051bc1ceb1e5b601558221015c9c147afe6c03dde1848a57eeade1bad689d90e`  
		Last Modified: Mon, 24 Jul 2017 16:54:40 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5479e13f893d9c96dbd4c99f845d9b8a62017668babe501707f68d4b5b1c784`  
		Last Modified: Mon, 24 Jul 2017 16:54:40 GMT  
		Size: 489.4 KB (489416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1aa727e33db2bd6f8292b3689ff29d95c80347ed1ef90bf39930fa3e76e3b8`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 11.5 MB (11500999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03977336971bac5d811f2f4545ccfd0ad0778c4f64eb25698e11a2bfdb740a37`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f009f5064f29e807d3c1683b12c65981b0814496526646170ac41a9fdac961`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e305fe912456978874cd05c0fd4d0368996a24a4d1372825b75f1783f14feda`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da67d491aaf6b4ee9ada310d1311f2f1ec97fa994bbf635e533da6a0c498ff7`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:0faa9f6e8e81e9b85df703aa95033a67f64e1ba908b9d7b78f1924edc47594c5
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331511511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102b8967ab999606f5879368da1493589007c49a335180e27d9538b852ae15fb`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:18:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 20 Jul 2017 20:23:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:48:02 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:48:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:48:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:48:04 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:48:05 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:48:05 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:48:32 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:48:34 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:48:35 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:48:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:49:16 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:49:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:49:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:49:17 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:49:17 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:49:17 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:49:18 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:49:18 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b0c103f7bc8fdf8a2b25dfad6d8a10f3985c893b3d92bc8de09f97d4abf955`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e9d7d28c8ab561d1866d830718d53b8f2277aec92f3a064c66db3055395176`  
		Last Modified: Thu, 20 Jul 2017 20:30:31 GMT  
		Size: 251.8 MB (251808942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38f893e0e19281571f67e17483983313b7721dd355587641356282de42c0494`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82093dd48363f15aeba726b5d652f35562f4f9dbad3018918144fe2bfb199747`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5bb5b3e2f315cc6c534506d23832ebd37c441880cb451aeba99a06d33b9daf`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:744ef538cb7530924cf7820a1bd55cc5cc9cfb45457e905b4e5916dd75934ac8`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f540db51ba71a9b1396dabd75a0adbd30ba93cfceda43ef7931f4ae6ca0df3c8`  
		Last Modified: Mon, 24 Jul 2017 16:54:41 GMT  
		Size: 476.2 KB (476212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051bc1ceb1e5b601558221015c9c147afe6c03dde1848a57eeade1bad689d90e`  
		Last Modified: Mon, 24 Jul 2017 16:54:40 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5479e13f893d9c96dbd4c99f845d9b8a62017668babe501707f68d4b5b1c784`  
		Last Modified: Mon, 24 Jul 2017 16:54:40 GMT  
		Size: 489.4 KB (489416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1aa727e33db2bd6f8292b3689ff29d95c80347ed1ef90bf39930fa3e76e3b8`  
		Last Modified: Mon, 24 Jul 2017 16:54:43 GMT  
		Size: 11.5 MB (11500999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03977336971bac5d811f2f4545ccfd0ad0778c4f64eb25698e11a2bfdb740a37`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82f009f5064f29e807d3c1683b12c65981b0814496526646170ac41a9fdac961`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e305fe912456978874cd05c0fd4d0368996a24a4d1372825b75f1783f14feda`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da67d491aaf6b4ee9ada310d1311f2f1ec97fa994bbf635e533da6a0c498ff7`  
		Last Modified: Mon, 24 Jul 2017 16:54:39 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:a90d1db92c2ed98db67e70108c85312871a8c8d9258f254c37f10546b4d96956
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.7 MB (295696510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eeb89c1b77ef0670144dbf5fe2715d4d29bd00ab737d7a3a8dd81d27a56d8d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Mon, 24 Jul 2017 16:49:20 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Mon, 24 Jul 2017 16:49:21 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 24 Jul 2017 16:49:21 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 24 Jul 2017 16:49:25 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 24 Jul 2017 16:49:26 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 24 Jul 2017 16:51:08 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:51:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:51:12 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:51:13 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:51:14 GMT
EXPOSE 10060/tcp
# Mon, 24 Jul 2017 16:51:14 GMT
EXPOSE 10061/tcp
# Mon, 24 Jul 2017 16:51:14 GMT
EXPOSE 10062/tcp
# Mon, 24 Jul 2017 16:51:15 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:51:16 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725daa91a1fe7c26b01470d26748a51dfb42796b56709273fad35bf739fde4b0`  
		Last Modified: Mon, 24 Jul 2017 16:55:05 GMT  
		Size: 997.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523d344ecdb289520aa660678e3170a5e88a6dfecfd5b584cd76c1d45e3dbcdb`  
		Last Modified: Mon, 24 Jul 2017 16:55:05 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8578b927c6196667c5f1662ffd9738c1b96dfece69c62eb0aff9ae69026dd`  
		Last Modified: Mon, 24 Jul 2017 16:55:05 GMT  
		Size: 938.4 KB (938375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499514d49e9451a7ae3e5e29c310557c1b5b5cdd5c03545888a240eb31013432`  
		Last Modified: Mon, 24 Jul 2017 16:55:03 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead80aa91ecf9a18b4f9315eb378478477d6f7f7a2c02ea4884655c0c53c202d`  
		Last Modified: Mon, 24 Jul 2017 16:55:03 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f2775d2790f87a5765611ad865b0b765dd1d163c998bc6329fb62e895179d3`  
		Last Modified: Mon, 24 Jul 2017 16:55:45 GMT  
		Size: 227.5 MB (227542461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decc553e68e6f1eac4b657ad44ab88bf9fd36b28d8deee55a30602b10a439625`  
		Last Modified: Mon, 24 Jul 2017 16:55:02 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed3f72d4dfb8b2641c37cc012a887bfa7ae7c44be18c935ef3bb8badd47695e`  
		Last Modified: Mon, 24 Jul 2017 16:55:02 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6638ed4d89534f5ce70e9c9087fb4299b40d2cd26721712ca88adf9786c3e`  
		Last Modified: Mon, 24 Jul 2017 16:55:03 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:a90d1db92c2ed98db67e70108c85312871a8c8d9258f254c37f10546b4d96956
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.7 MB (295696510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74eeb89c1b77ef0670144dbf5fe2715d4d29bd00ab737d7a3a8dd81d27a56d8d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Mon, 24 Jul 2017 16:49:20 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Mon, 24 Jul 2017 16:49:21 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 24 Jul 2017 16:49:21 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 24 Jul 2017 16:49:25 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 24 Jul 2017 16:49:26 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 24 Jul 2017 16:51:08 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:51:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:51:12 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:51:13 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:51:13 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:51:14 GMT
EXPOSE 10060/tcp
# Mon, 24 Jul 2017 16:51:14 GMT
EXPOSE 10061/tcp
# Mon, 24 Jul 2017 16:51:14 GMT
EXPOSE 10062/tcp
# Mon, 24 Jul 2017 16:51:15 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:51:16 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725daa91a1fe7c26b01470d26748a51dfb42796b56709273fad35bf739fde4b0`  
		Last Modified: Mon, 24 Jul 2017 16:55:05 GMT  
		Size: 997.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523d344ecdb289520aa660678e3170a5e88a6dfecfd5b584cd76c1d45e3dbcdb`  
		Last Modified: Mon, 24 Jul 2017 16:55:05 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8578b927c6196667c5f1662ffd9738c1b96dfece69c62eb0aff9ae69026dd`  
		Last Modified: Mon, 24 Jul 2017 16:55:05 GMT  
		Size: 938.4 KB (938375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499514d49e9451a7ae3e5e29c310557c1b5b5cdd5c03545888a240eb31013432`  
		Last Modified: Mon, 24 Jul 2017 16:55:03 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead80aa91ecf9a18b4f9315eb378478477d6f7f7a2c02ea4884655c0c53c202d`  
		Last Modified: Mon, 24 Jul 2017 16:55:03 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73f2775d2790f87a5765611ad865b0b765dd1d163c998bc6329fb62e895179d3`  
		Last Modified: Mon, 24 Jul 2017 16:55:45 GMT  
		Size: 227.5 MB (227542461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:decc553e68e6f1eac4b657ad44ab88bf9fd36b28d8deee55a30602b10a439625`  
		Last Modified: Mon, 24 Jul 2017 16:55:02 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed3f72d4dfb8b2641c37cc012a887bfa7ae7c44be18c935ef3bb8badd47695e`  
		Last Modified: Mon, 24 Jul 2017 16:55:02 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d6638ed4d89534f5ce70e9c9087fb4299b40d2cd26721712ca88adf9786c3e`  
		Last Modified: Mon, 24 Jul 2017 16:55:03 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:577b43f772b76a94dfd45572a032196645a47a534f464a47a8b69f1e5465f180
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.4 MB (421394150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33bf942c8811017c208bb25c44484dcb4437a3d494d26ab95610bc43ccea53b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:24:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 24 Jul 2017 16:53:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:53:27 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:53:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:53:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:53:30 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:53:30 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:53:30 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:53:40 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:53:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:53:42 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:53:47 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:54:13 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:54:13 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:54:14 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:54:14 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:54:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:54:16 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:54:16 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e304c86e302641147238e99b8b07c098950475f8c2c7461514aa62ceb1b3df`  
		Last Modified: Thu, 20 Jul 2017 20:31:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c20b784a2e03354f7e4a72249c7305fc87964225ffbc8782bc8d233a36f65e9`  
		Last Modified: Mon, 24 Jul 2017 16:57:16 GMT  
		Size: 341.7 MB (341697414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d67848e721a00cb1d4dd23b8c5d22ba095fb1b02f1b82535e591bb9dbf469d2`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c3b4ff62feece222c9ea19cf273f092d76719569ed5b6ddbe4287f72decea`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa61a125cff65ba0a4c2a1db2867594903e321c40fd5cc9651a3a6d4cf177f14`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1feb81d62bb74b50a93215a36cc4d9ba907a19844bc70ba97ab510208d4a3ffa`  
		Last Modified: Mon, 24 Jul 2017 16:56:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463dfc13eed323c991f39d5365e8a93bd1b89b0e209a850a1702c9ded88060d5`  
		Last Modified: Mon, 24 Jul 2017 16:56:02 GMT  
		Size: 470.4 KB (470379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64f51c3f49a3995eb7aeac75776f40c73ce82cd3dd468f702fa25c3016206f3`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 15.7 KB (15682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0a2cb06191e11a967b8a746e72be2aee65f75986adce89a94fc225b8771f20`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc624c119ef43e49707247f4bce763d440a1d1ba24d4e9a0b71724cf4ea89f1b`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 11.5 MB (11500997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b044304545d42d455294b6d83bf1c0e4c1b875d52867eb6b41b434b02a4d18cd`  
		Last Modified: Mon, 24 Jul 2017 16:56:00 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d0b045dcab35421db178644efab718692d336a0c3ad32760436c1f7efe0424`  
		Last Modified: Mon, 24 Jul 2017 16:55:59 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bc36b3717d5a42e20158c94cda7c7e69473fd2fcbccb7f50b470cea07e1321`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede77749218576b641e002f796eee5a3c2330a19daf93f397123dc8c6e73312`  
		Last Modified: Mon, 24 Jul 2017 16:56:00 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:577b43f772b76a94dfd45572a032196645a47a534f464a47a8b69f1e5465f180
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.4 MB (421394150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33bf942c8811017c208bb25c44484dcb4437a3d494d26ab95610bc43ccea53b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:24:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 24 Jul 2017 16:53:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:53:27 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:53:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:53:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:53:30 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:53:30 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:53:30 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:53:40 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:53:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:53:42 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:53:47 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:54:13 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:54:13 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:54:14 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:54:14 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:54:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:54:16 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:54:16 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e304c86e302641147238e99b8b07c098950475f8c2c7461514aa62ceb1b3df`  
		Last Modified: Thu, 20 Jul 2017 20:31:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c20b784a2e03354f7e4a72249c7305fc87964225ffbc8782bc8d233a36f65e9`  
		Last Modified: Mon, 24 Jul 2017 16:57:16 GMT  
		Size: 341.7 MB (341697414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d67848e721a00cb1d4dd23b8c5d22ba095fb1b02f1b82535e591bb9dbf469d2`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c3b4ff62feece222c9ea19cf273f092d76719569ed5b6ddbe4287f72decea`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa61a125cff65ba0a4c2a1db2867594903e321c40fd5cc9651a3a6d4cf177f14`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1feb81d62bb74b50a93215a36cc4d9ba907a19844bc70ba97ab510208d4a3ffa`  
		Last Modified: Mon, 24 Jul 2017 16:56:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463dfc13eed323c991f39d5365e8a93bd1b89b0e209a850a1702c9ded88060d5`  
		Last Modified: Mon, 24 Jul 2017 16:56:02 GMT  
		Size: 470.4 KB (470379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64f51c3f49a3995eb7aeac75776f40c73ce82cd3dd468f702fa25c3016206f3`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 15.7 KB (15682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0a2cb06191e11a967b8a746e72be2aee65f75986adce89a94fc225b8771f20`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc624c119ef43e49707247f4bce763d440a1d1ba24d4e9a0b71724cf4ea89f1b`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 11.5 MB (11500997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b044304545d42d455294b6d83bf1c0e4c1b875d52867eb6b41b434b02a4d18cd`  
		Last Modified: Mon, 24 Jul 2017 16:56:00 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d0b045dcab35421db178644efab718692d336a0c3ad32760436c1f7efe0424`  
		Last Modified: Mon, 24 Jul 2017 16:55:59 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bc36b3717d5a42e20158c94cda7c7e69473fd2fcbccb7f50b470cea07e1321`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede77749218576b641e002f796eee5a3c2330a19daf93f397123dc8c6e73312`  
		Last Modified: Mon, 24 Jul 2017 16:56:00 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
