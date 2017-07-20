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
$ docker pull php-zendserver@sha256:59595b12bdf435cb85aa65b8eaea97a438a8be741b10b522dc8fb7adaa2a5a69
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334682802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1adfb2a49ffe39e05e0323eda076544e1d56faefba9e10f122842ad5062495`
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
# Thu, 20 Jul 2017 20:20:36 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 20 Jul 2017 20:20:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:20:38 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:20:40 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:20:41 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:20:41 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:20:46 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:20:47 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:20:48 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:20:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:21:26 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:21:27 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:21:28 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:21:29 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:21:29 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:21:30 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:21:30 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:21:31 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:21:31 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:21:32 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:21:33 GMT
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
	-	`sha256:4c4be61a97da0eca6c4d68c9fe7365b256fde3e065dcb0a6e6605c8f5fc09822`  
		Last Modified: Thu, 20 Jul 2017 20:28:54 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5eb3fc57b1e506806cf15225c0d547eb671c63b7af54f06c2b81bf9e6bc31c4`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a299044c3f7580261dcc186b7e914aa7c9525373bb7ba7f73cce024cb9659c`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd7556f0415c930fb844246d5539060f093d0949bfe3557ca40982604e36545`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c169773b8e5b2162da693009bc10d28ffc451194af0038ad376a4f4ed9351188`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 474.4 KB (474431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065bdc1e1832ff2586354f3d660bb20a58d67d93c37c4e55a56cb1e94086ec20`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e141d99595c40db85217d5b8b0b4d0dce071bb6dc52d1411d253afefbab31630`  
		Last Modified: Thu, 20 Jul 2017 20:28:50 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05acf916e416cf93b78e7bfac5f41d12277152d44108f46f1b3ce55ffe63e17`  
		Last Modified: Thu, 20 Jul 2017 20:28:51 GMT  
		Size: 11.4 MB (11445987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4571bd5a3eacfeedfcbac0ba93257af1261fc9eb09f7761b88aa37b57b2167`  
		Last Modified: Thu, 20 Jul 2017 20:28:50 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ec1e7ff50c0ec7059b675afa2c3ce0fbc0d82f19a52f2e6f0cbecdc19bb447`  
		Last Modified: Thu, 20 Jul 2017 20:28:49 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f758d396d151be6cfb5791a83546887854c2b7e6cf9070a4934f7b0cb0ef55`  
		Last Modified: Thu, 20 Jul 2017 20:28:49 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d41d9ad086b2e1335293c90a9ee1e75d5d2cf69edbdbdc6306f2b3981a528a1`  
		Last Modified: Thu, 20 Jul 2017 20:28:50 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:59595b12bdf435cb85aa65b8eaea97a438a8be741b10b522dc8fb7adaa2a5a69
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334682802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1adfb2a49ffe39e05e0323eda076544e1d56faefba9e10f122842ad5062495`
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
# Thu, 20 Jul 2017 20:20:36 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 20 Jul 2017 20:20:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:20:38 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:20:40 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:20:41 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:20:41 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:20:46 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:20:47 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:20:48 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:20:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:21:26 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:21:27 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:21:28 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:21:29 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:21:29 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:21:30 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:21:30 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:21:31 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:21:31 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:21:32 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:21:33 GMT
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
	-	`sha256:4c4be61a97da0eca6c4d68c9fe7365b256fde3e065dcb0a6e6605c8f5fc09822`  
		Last Modified: Thu, 20 Jul 2017 20:28:54 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5eb3fc57b1e506806cf15225c0d547eb671c63b7af54f06c2b81bf9e6bc31c4`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a299044c3f7580261dcc186b7e914aa7c9525373bb7ba7f73cce024cb9659c`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd7556f0415c930fb844246d5539060f093d0949bfe3557ca40982604e36545`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c169773b8e5b2162da693009bc10d28ffc451194af0038ad376a4f4ed9351188`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 474.4 KB (474431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065bdc1e1832ff2586354f3d660bb20a58d67d93c37c4e55a56cb1e94086ec20`  
		Last Modified: Thu, 20 Jul 2017 20:28:52 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e141d99595c40db85217d5b8b0b4d0dce071bb6dc52d1411d253afefbab31630`  
		Last Modified: Thu, 20 Jul 2017 20:28:50 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05acf916e416cf93b78e7bfac5f41d12277152d44108f46f1b3ce55ffe63e17`  
		Last Modified: Thu, 20 Jul 2017 20:28:51 GMT  
		Size: 11.4 MB (11445987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4571bd5a3eacfeedfcbac0ba93257af1261fc9eb09f7761b88aa37b57b2167`  
		Last Modified: Thu, 20 Jul 2017 20:28:50 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ec1e7ff50c0ec7059b675afa2c3ce0fbc0d82f19a52f2e6f0cbecdc19bb447`  
		Last Modified: Thu, 20 Jul 2017 20:28:49 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f758d396d151be6cfb5791a83546887854c2b7e6cf9070a4934f7b0cb0ef55`  
		Last Modified: Thu, 20 Jul 2017 20:28:49 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d41d9ad086b2e1335293c90a9ee1e75d5d2cf69edbdbdc6306f2b3981a528a1`  
		Last Modified: Thu, 20 Jul 2017 20:28:50 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:dc9d833f59ba326df3ddd26dc78df14d845bf6ad785d2b5efad95a66c15650ae
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331484093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65debd2a5b9f3cc578424b8d860f6ce95235332746cadbc49dfbb238ede1368a`
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
# Thu, 20 Jul 2017 20:23:23 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 20 Jul 2017 20:23:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:23:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:23:26 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:23:27 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:23:27 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:23:32 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:23:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:23:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:23:39 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:24:11 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:24:12 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:24:12 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:24:14 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:24:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:24:15 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:24:17 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:24:17 GMT
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
	-	`sha256:b43a5c76c2596a415f7f478e389598c89a5695315c8a1ceaf8596ef374cd3bea`  
		Last Modified: Thu, 20 Jul 2017 20:30:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bcc44db0f1bbd44b14d931678ec476e79bccb0e711536dc3bf1c272a0f5cb1`  
		Last Modified: Thu, 20 Jul 2017 20:30:02 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c61db46250bd22510d39df99c35a5ea31a8df8546b3f95d1485b8969ba291`  
		Last Modified: Thu, 20 Jul 2017 20:30:02 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ba3add21b91a64750619a866c611c6da9d8cbdf4e3c76c9dbd5d298875f610`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6f0265fcdceed0941a464078559d0724ac6141965947cd2708960b35509a8a`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 476.2 KB (476171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d978f255a2e21e10ab12f30fe3b9b109906525a838fd90054a8fe25e438541b`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 15.7 KB (15680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a89a0969e02d98bae4b4b7c5394aa94a1eca26de16b42685d0faef9a7737c`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9847be1976b701a95dacf27d79a2f4a9c4441f01d2ee0b8e1622cf8437d14c`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 11.5 MB (11473620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e8c6efd2b2f458bb97dd73112cff6b7d12fd87b64abb06f4944caebb5f12af`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5762c2a7558fff73e0829efee47412cb57465afc9856e2da4b250ae1854d186`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4179435b7b065b393774926287236884994915508e068c6fb2ab0575a3345ae5`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b8cd03ffbba002d563eb39d4c908e893d078d5a5220817ddf269e2317c3266`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:dc9d833f59ba326df3ddd26dc78df14d845bf6ad785d2b5efad95a66c15650ae
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331484093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65debd2a5b9f3cc578424b8d860f6ce95235332746cadbc49dfbb238ede1368a`
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
# Thu, 20 Jul 2017 20:23:23 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 20 Jul 2017 20:23:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:23:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:23:26 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:23:27 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:23:27 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:23:32 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:23:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:23:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:23:39 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:24:11 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:24:12 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:24:12 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:24:14 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:24:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:24:15 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:24:17 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:24:17 GMT
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
	-	`sha256:b43a5c76c2596a415f7f478e389598c89a5695315c8a1ceaf8596ef374cd3bea`  
		Last Modified: Thu, 20 Jul 2017 20:30:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bcc44db0f1bbd44b14d931678ec476e79bccb0e711536dc3bf1c272a0f5cb1`  
		Last Modified: Thu, 20 Jul 2017 20:30:02 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c61db46250bd22510d39df99c35a5ea31a8df8546b3f95d1485b8969ba291`  
		Last Modified: Thu, 20 Jul 2017 20:30:02 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ba3add21b91a64750619a866c611c6da9d8cbdf4e3c76c9dbd5d298875f610`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6f0265fcdceed0941a464078559d0724ac6141965947cd2708960b35509a8a`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 476.2 KB (476171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d978f255a2e21e10ab12f30fe3b9b109906525a838fd90054a8fe25e438541b`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 15.7 KB (15680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a89a0969e02d98bae4b4b7c5394aa94a1eca26de16b42685d0faef9a7737c`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9847be1976b701a95dacf27d79a2f4a9c4441f01d2ee0b8e1622cf8437d14c`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 11.5 MB (11473620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e8c6efd2b2f458bb97dd73112cff6b7d12fd87b64abb06f4944caebb5f12af`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5762c2a7558fff73e0829efee47412cb57465afc9856e2da4b250ae1854d186`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4179435b7b065b393774926287236884994915508e068c6fb2ab0575a3345ae5`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b8cd03ffbba002d563eb39d4c908e893d078d5a5220817ddf269e2317c3266`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:dc9d833f59ba326df3ddd26dc78df14d845bf6ad785d2b5efad95a66c15650ae
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331484093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65debd2a5b9f3cc578424b8d860f6ce95235332746cadbc49dfbb238ede1368a`
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
# Thu, 20 Jul 2017 20:23:23 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 20 Jul 2017 20:23:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:23:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:23:26 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:23:27 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:23:27 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:23:32 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:23:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:23:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:23:39 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:24:11 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:24:12 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:24:12 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:24:14 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:24:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:24:15 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:24:16 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:24:17 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:24:17 GMT
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
	-	`sha256:b43a5c76c2596a415f7f478e389598c89a5695315c8a1ceaf8596ef374cd3bea`  
		Last Modified: Thu, 20 Jul 2017 20:30:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bcc44db0f1bbd44b14d931678ec476e79bccb0e711536dc3bf1c272a0f5cb1`  
		Last Modified: Thu, 20 Jul 2017 20:30:02 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c61db46250bd22510d39df99c35a5ea31a8df8546b3f95d1485b8969ba291`  
		Last Modified: Thu, 20 Jul 2017 20:30:02 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ba3add21b91a64750619a866c611c6da9d8cbdf4e3c76c9dbd5d298875f610`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de6f0265fcdceed0941a464078559d0724ac6141965947cd2708960b35509a8a`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 476.2 KB (476171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d978f255a2e21e10ab12f30fe3b9b109906525a838fd90054a8fe25e438541b`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 15.7 KB (15680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a89a0969e02d98bae4b4b7c5394aa94a1eca26de16b42685d0faef9a7737c`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9847be1976b701a95dacf27d79a2f4a9c4441f01d2ee0b8e1622cf8437d14c`  
		Last Modified: Thu, 20 Jul 2017 20:30:01 GMT  
		Size: 11.5 MB (11473620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e8c6efd2b2f458bb97dd73112cff6b7d12fd87b64abb06f4944caebb5f12af`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5762c2a7558fff73e0829efee47412cb57465afc9856e2da4b250ae1854d186`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 2.5 KB (2517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4179435b7b065b393774926287236884994915508e068c6fb2ab0575a3345ae5`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b8cd03ffbba002d563eb39d4c908e893d078d5a5220817ddf269e2317c3266`  
		Last Modified: Thu, 20 Jul 2017 20:29:59 GMT  
		Size: 1.2 KB (1243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:fceaaf3d7b6d1761ab2cc8f698b08d0ca1deff3564f59b2d85d70f9db23b58e5
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297408313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d2dd544855c4b7cdb329a5f600af0b5dc44f4e9b3b3cc9ebd7fcc223200cfa`
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
# Thu, 20 Jul 2017 20:16:39 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Thu, 20 Jul 2017 20:16:40 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 20 Jul 2017 20:16:41 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 20 Jul 2017 20:16:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:16:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 20 Jul 2017 20:18:24 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 20 Jul 2017 20:18:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:18:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:18:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:18:29 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:18:29 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:18:30 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:18:30 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:18:31 GMT
EXPOSE 10060/tcp
# Thu, 20 Jul 2017 20:18:31 GMT
EXPOSE 10061/tcp
# Thu, 20 Jul 2017 20:18:32 GMT
EXPOSE 10062/tcp
# Thu, 20 Jul 2017 20:18:33 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:18:33 GMT
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
	-	`sha256:372264319738b2054da2a0a408ddaa7bc876a460f5a7d5df16fc0683f4faca62`  
		Last Modified: Thu, 20 Jul 2017 20:27:28 GMT  
		Size: 996.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3c31259a3b5dc79271c3cf920890353763792837c34bcfc3db7ebdcc5c1a99`  
		Last Modified: Thu, 20 Jul 2017 20:27:28 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb9e7f27d0e5bdb485ea2fda8e716d44515dac3fb4f84ad0979118dcbc84d7`  
		Last Modified: Thu, 20 Jul 2017 20:27:29 GMT  
		Size: 938.4 KB (938375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11010f24693f30b82e3b7ff366781e5d28ee827e3cce9820eb3329ed4fa5738`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176e0fad707cc0db9302564811705566c9aad99dd3a873fad3953d755ce1ea6`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a318dc348ced5418b70437dfc773949ec4f59ed089c185fdc610a1bb40d18`  
		Last Modified: Thu, 20 Jul 2017 20:28:20 GMT  
		Size: 229.3 MB (229254269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a936194d0aef0019be47912eba9450ff1ca94b37d25004fea1922f1f9da4365`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e427b9b1120dffd588c26e3d6bfd7a4fdef737fdafbf81fcad783c12515221`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8456d56a9303981d37953c21b33f39fbed09e4d6177fd3da085ff748397a86f1`  
		Last Modified: Thu, 20 Jul 2017 20:27:27 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:fceaaf3d7b6d1761ab2cc8f698b08d0ca1deff3564f59b2d85d70f9db23b58e5
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.4 MB (297408313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d2dd544855c4b7cdb329a5f600af0b5dc44f4e9b3b3cc9ebd7fcc223200cfa`
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
# Thu, 20 Jul 2017 20:16:39 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Thu, 20 Jul 2017 20:16:40 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 20 Jul 2017 20:16:41 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 20 Jul 2017 20:16:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:16:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 20 Jul 2017 20:18:24 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 20 Jul 2017 20:18:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:18:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:18:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:18:29 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:18:29 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:18:30 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:18:30 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:18:31 GMT
EXPOSE 10060/tcp
# Thu, 20 Jul 2017 20:18:31 GMT
EXPOSE 10061/tcp
# Thu, 20 Jul 2017 20:18:32 GMT
EXPOSE 10062/tcp
# Thu, 20 Jul 2017 20:18:33 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:18:33 GMT
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
	-	`sha256:372264319738b2054da2a0a408ddaa7bc876a460f5a7d5df16fc0683f4faca62`  
		Last Modified: Thu, 20 Jul 2017 20:27:28 GMT  
		Size: 996.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d3c31259a3b5dc79271c3cf920890353763792837c34bcfc3db7ebdcc5c1a99`  
		Last Modified: Thu, 20 Jul 2017 20:27:28 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cb9e7f27d0e5bdb485ea2fda8e716d44515dac3fb4f84ad0979118dcbc84d7`  
		Last Modified: Thu, 20 Jul 2017 20:27:29 GMT  
		Size: 938.4 KB (938375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c11010f24693f30b82e3b7ff366781e5d28ee827e3cce9820eb3329ed4fa5738`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e176e0fad707cc0db9302564811705566c9aad99dd3a873fad3953d755ce1ea6`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7a318dc348ced5418b70437dfc773949ec4f59ed089c185fdc610a1bb40d18`  
		Last Modified: Thu, 20 Jul 2017 20:28:20 GMT  
		Size: 229.3 MB (229254269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a936194d0aef0019be47912eba9450ff1ca94b37d25004fea1922f1f9da4365`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e427b9b1120dffd588c26e3d6bfd7a4fdef737fdafbf81fcad783c12515221`  
		Last Modified: Thu, 20 Jul 2017 20:27:26 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8456d56a9303981d37953c21b33f39fbed09e4d6177fd3da085ff748397a86f1`  
		Last Modified: Thu, 20 Jul 2017 20:27:27 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:0aa80f20f976c2fa4ddc1045cdca390642e23b6c7c4a6cabc390bd27a28a7ae1
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.7 MB (417658745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8cb7ac721d7f85ca0f8316b4a777a9c1db21a91ac5196080208e40749ac658`
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
# Thu, 20 Jul 2017 20:26:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 20 Jul 2017 20:26:27 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Thu, 20 Jul 2017 20:26:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:26:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:26:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:26:31 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:26:31 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:26:36 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:26:38 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:26:38 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:26:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:27:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:27:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:27:10 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:27:11 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:27:11 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:27:12 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:27:14 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:27:15 GMT
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
	-	`sha256:c2b621541d09bf48876eadd87dd3ccd79d8772cb556181eb9917f3d1c7e51daf`  
		Last Modified: Thu, 20 Jul 2017 20:31:55 GMT  
		Size: 338.0 MB (337989578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb331f6466e664a75628a75fe24f19dab2cdba3adf4b97386c2bbb78c91b3e`  
		Last Modified: Thu, 20 Jul 2017 20:31:14 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4e5289ee213cb79f48f593caa114759d7bb300e6cdc5aed4b26ec3509d89f`  
		Last Modified: Thu, 20 Jul 2017 20:31:13 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c48c98b291fcc5e7525e9c5e9531e99f51ef1e0a11d00eae366428381feceb5`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0fcb3187a0e9442d21001d6697970b090bd03313e5cfaa2d70d47decbbcf38`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bab60d96c94c510e2624f448bedb90e1286d99c7fd6de2515e3aae714b88a1`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 470.2 KB (470201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f0d2beca98dca0430386d2cd8c1df2de8600c08b5406ab3e925f0a7fb4bc17`  
		Last Modified: Thu, 20 Jul 2017 20:31:13 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574bd1c7fc521d24f1503896afa82e5ed0cf294275519ec392b13a43348b3346`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 489.4 KB (489414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e680a59d7f36c52ba4796b8decb71efb3ca3e0543c14da0170883446505ede`  
		Last Modified: Thu, 20 Jul 2017 20:31:11 GMT  
		Size: 11.5 MB (11473614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407891f14c3630dce7ed840c2b520886dc5e5c06757d102b5562d912e64025cc`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d8e4c31d5ef303ed2fc56b52d20dbc0b76fdfdc59e1a0922136c22e66c40cf`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3c7ddeeb50cdde8a7fc60ea708dde8e2ec8a5014a0c374062e0692794371dd`  
		Last Modified: Thu, 20 Jul 2017 20:31:09 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f59ff0acb7f5a245c81b7ad7becbab2f2270dbf1e0df1f74a71043fc0411dd9`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:0aa80f20f976c2fa4ddc1045cdca390642e23b6c7c4a6cabc390bd27a28a7ae1
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.7 MB (417658745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8cb7ac721d7f85ca0f8316b4a777a9c1db21a91ac5196080208e40749ac658`
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
# Thu, 20 Jul 2017 20:26:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 20 Jul 2017 20:26:27 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Thu, 20 Jul 2017 20:26:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:26:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:26:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:26:31 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:26:31 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:26:36 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:26:38 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:26:38 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:26:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:27:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:27:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:27:10 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:27:11 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:27:11 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:27:12 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:27:14 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:27:15 GMT
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
	-	`sha256:c2b621541d09bf48876eadd87dd3ccd79d8772cb556181eb9917f3d1c7e51daf`  
		Last Modified: Thu, 20 Jul 2017 20:31:55 GMT  
		Size: 338.0 MB (337989578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb331f6466e664a75628a75fe24f19dab2cdba3adf4b97386c2bbb78c91b3e`  
		Last Modified: Thu, 20 Jul 2017 20:31:14 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4e5289ee213cb79f48f593caa114759d7bb300e6cdc5aed4b26ec3509d89f`  
		Last Modified: Thu, 20 Jul 2017 20:31:13 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c48c98b291fcc5e7525e9c5e9531e99f51ef1e0a11d00eae366428381feceb5`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0fcb3187a0e9442d21001d6697970b090bd03313e5cfaa2d70d47decbbcf38`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bab60d96c94c510e2624f448bedb90e1286d99c7fd6de2515e3aae714b88a1`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 470.2 KB (470201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f0d2beca98dca0430386d2cd8c1df2de8600c08b5406ab3e925f0a7fb4bc17`  
		Last Modified: Thu, 20 Jul 2017 20:31:13 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574bd1c7fc521d24f1503896afa82e5ed0cf294275519ec392b13a43348b3346`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 489.4 KB (489414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e680a59d7f36c52ba4796b8decb71efb3ca3e0543c14da0170883446505ede`  
		Last Modified: Thu, 20 Jul 2017 20:31:11 GMT  
		Size: 11.5 MB (11473614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407891f14c3630dce7ed840c2b520886dc5e5c06757d102b5562d912e64025cc`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d8e4c31d5ef303ed2fc56b52d20dbc0b76fdfdc59e1a0922136c22e66c40cf`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3c7ddeeb50cdde8a7fc60ea708dde8e2ec8a5014a0c374062e0692794371dd`  
		Last Modified: Thu, 20 Jul 2017 20:31:09 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f59ff0acb7f5a245c81b7ad7becbab2f2270dbf1e0df1f74a71043fc0411dd9`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
