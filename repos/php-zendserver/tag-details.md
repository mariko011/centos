<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
$ docker pull php-zendserver@sha256:17416f3cf71afedb1ea519d04e83fef946235eeb85dd95bd07fdf6033b22e7f8
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.0 MB (327004517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467bf9551d0dad1c742f63adb1a609cf836da61c3f2cbf6d278f3ad015a9c7a6`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:27:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:46:17 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:46:20 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:46:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:46:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:46:31 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:46:32 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:46:33 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:46:56 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:46:58 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:46:59 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:47:06 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:48:05 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:48:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:48:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:48:10 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:48:11 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:48:12 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:48:13 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:48:14 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:48:15 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:48:16 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:48:17 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cb0b11690ab3cd26975d2b6194b32c89da95e350c58c94be937d3f147ffd0e`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270332fe81b89365a839ba0340cc989101f75db91aebb46b6974045f3f46e53c`  
		Last Modified: Thu, 11 Aug 2016 19:49:37 GMT  
		Size: 251.5 MB (251452809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8d83dd7b0fd4f43a6ba5ea6aaa90835a9aa0de5c0cf3d71bac412f370d223`  
		Last Modified: Thu, 11 Aug 2016 19:48:35 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480aba774b7b7c1f3b755716857005339659df575539419c15f93c41946d1706`  
		Last Modified: Thu, 11 Aug 2016 19:48:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028718a45f216fa7bea67030e50c008cf103abb675eb1a2170659d2d8f14330d`  
		Last Modified: Thu, 11 Aug 2016 19:48:35 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3945343eb4c7ce955d06314ac2d98a4fd0750adcc7624bbebddc266e0e386422`  
		Last Modified: Thu, 11 Aug 2016 19:48:33 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3af7dc3859ff7a080afa6a372cf61bcd564196cbc8d230ff26b240720786ac3`  
		Last Modified: Thu, 11 Aug 2016 19:48:33 GMT  
		Size: 471.7 KB (471657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42346dd021689ead0b7baf38aa444b49cba5b783f33bab2cd9ada0a44df27536`  
		Last Modified: Thu, 11 Aug 2016 19:48:32 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a199ad67a7158730aa6248e9d62a7fc27d54f120f0ae3238159fb68de381a8`  
		Last Modified: Thu, 11 Aug 2016 19:48:32 GMT  
		Size: 457.5 KB (457485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba116fa431c7bdc7478df68453ab3cc43be7d5b22040cfe4181e9746ca47c870`  
		Last Modified: Thu, 11 Aug 2016 19:48:33 GMT  
		Size: 8.8 MB (8803061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41b80dc196760ae51cb65a42fc284c9495010924b2dbee1c6302cf0ade13c99`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c320c0c02417996a9a5dfa6035fdf5ae5536de6771c13b3ec4e40dfcddb75c06`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd72a6fa822478e977a2b7722c1cc9c71c3ba9bc1a8d8080862da766725e4e0`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed10034da9e5ed15187693cc63945f58c90e100483d6ed49514ac978d64fefb5`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:17416f3cf71afedb1ea519d04e83fef946235eeb85dd95bd07fdf6033b22e7f8
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.0 MB (327004517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467bf9551d0dad1c742f63adb1a609cf836da61c3f2cbf6d278f3ad015a9c7a6`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:27:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:46:17 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:46:20 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:46:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:46:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:46:31 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:46:32 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:46:33 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:46:56 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:46:58 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:46:59 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:47:06 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:48:05 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:48:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:48:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:48:10 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:48:11 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:48:12 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:48:13 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:48:14 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:48:15 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:48:16 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:48:17 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cb0b11690ab3cd26975d2b6194b32c89da95e350c58c94be937d3f147ffd0e`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270332fe81b89365a839ba0340cc989101f75db91aebb46b6974045f3f46e53c`  
		Last Modified: Thu, 11 Aug 2016 19:49:37 GMT  
		Size: 251.5 MB (251452809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8d83dd7b0fd4f43a6ba5ea6aaa90835a9aa0de5c0cf3d71bac412f370d223`  
		Last Modified: Thu, 11 Aug 2016 19:48:35 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480aba774b7b7c1f3b755716857005339659df575539419c15f93c41946d1706`  
		Last Modified: Thu, 11 Aug 2016 19:48:36 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028718a45f216fa7bea67030e50c008cf103abb675eb1a2170659d2d8f14330d`  
		Last Modified: Thu, 11 Aug 2016 19:48:35 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3945343eb4c7ce955d06314ac2d98a4fd0750adcc7624bbebddc266e0e386422`  
		Last Modified: Thu, 11 Aug 2016 19:48:33 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3af7dc3859ff7a080afa6a372cf61bcd564196cbc8d230ff26b240720786ac3`  
		Last Modified: Thu, 11 Aug 2016 19:48:33 GMT  
		Size: 471.7 KB (471657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42346dd021689ead0b7baf38aa444b49cba5b783f33bab2cd9ada0a44df27536`  
		Last Modified: Thu, 11 Aug 2016 19:48:32 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a199ad67a7158730aa6248e9d62a7fc27d54f120f0ae3238159fb68de381a8`  
		Last Modified: Thu, 11 Aug 2016 19:48:32 GMT  
		Size: 457.5 KB (457485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba116fa431c7bdc7478df68453ab3cc43be7d5b22040cfe4181e9746ca47c870`  
		Last Modified: Thu, 11 Aug 2016 19:48:33 GMT  
		Size: 8.8 MB (8803061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41b80dc196760ae51cb65a42fc284c9495010924b2dbee1c6302cf0ade13c99`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c320c0c02417996a9a5dfa6035fdf5ae5536de6771c13b3ec4e40dfcddb75c06`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd72a6fa822478e977a2b7722c1cc9c71c3ba9bc1a8d8080862da766725e4e0`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed10034da9e5ed15187693cc63945f58c90e100483d6ed49514ac978d64fefb5`  
		Last Modified: Thu, 11 Aug 2016 19:48:29 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:97386fa6b9c54e224d5bf0ab9770dd8bc991bef80b7bf90e0ad95e801ec5e9da
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.1 MB (331109621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9eea724b8a95235382fa3e29d1236379c1d97c050ba860a3f1033a75e2e034`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:27:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:30:48 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:30:51 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:30:53 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:30:55 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:30:57 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:30:58 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:30:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:31:25 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:31:32 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:31:33 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:31:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:32:41 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:32:43 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:32:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:32:54 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:32:56 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:32:57 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:32:58 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:32:59 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:33:07 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:33:08 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:33:09 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cb0b11690ab3cd26975d2b6194b32c89da95e350c58c94be937d3f147ffd0e`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5032af34e687429ca5e5c282344962f95f575f980404db70199cd26407418f7`  
		Last Modified: Thu, 11 Aug 2016 19:34:38 GMT  
		Size: 255.6 MB (255555939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7093b8e473c6127d12d81a936fbd17b4c24e8c262687b01a3dbd233708258ec6`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5892db7b3df41ceb2911f3267ac47c8c97deba62e538155b6ea25fc943729a66`  
		Last Modified: Thu, 11 Aug 2016 19:33:28 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f52c9813740cfc58633687cdd7e5aed4368d90764c2738bada0c9cd95143d1`  
		Last Modified: Thu, 11 Aug 2016 19:33:27 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776c4a0e6fe330bbed868d8d6d8e7cff583a2ff9292cf33d440bc5b45b2650a`  
		Last Modified: Thu, 11 Aug 2016 19:33:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc68222a694f9b034a132ce635aa0fa6946e6ca5959c57efaa0759a78e7ce80c`  
		Last Modified: Thu, 11 Aug 2016 19:33:25 GMT  
		Size: 473.7 KB (473694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44872cd62eaaa9a54acc93a2697a1c54ad1f3885f8ba86c9922cdd979d0608e`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86de8bb32797b4e834ff2e2607d7013388799dba912faadf64fa423f9151ed1b`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab013de1088a3d2123fbc266a2afcf6f58a658b67d91f928ac00e3bb1c674c7`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 8.8 MB (8802984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c78d3459d2f9d6cabafaf0fb87c531f3f1cb2e43cc102b67c5a30897b7e677`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf7a853f861cbeb23fbdbf5a574bbcb167fff58a9d4406a89ce807febd7a4c7`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87db6b026b66bb3e254c4f572c5180396bb1e2a2ceb206056c6dae31147dd04`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43957f936ba624b2ea8e375ca01b861a05d6bacba63686e93a9d43b89a68028f`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:97386fa6b9c54e224d5bf0ab9770dd8bc991bef80b7bf90e0ad95e801ec5e9da
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.1 MB (331109621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9eea724b8a95235382fa3e29d1236379c1d97c050ba860a3f1033a75e2e034`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:27:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:30:48 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:30:51 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:30:53 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:30:55 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:30:57 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:30:58 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:30:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:31:25 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:31:32 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:31:33 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:31:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:32:41 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:32:43 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:32:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:32:54 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:32:56 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:32:57 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:32:58 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:32:59 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:33:07 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:33:08 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:33:09 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cb0b11690ab3cd26975d2b6194b32c89da95e350c58c94be937d3f147ffd0e`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5032af34e687429ca5e5c282344962f95f575f980404db70199cd26407418f7`  
		Last Modified: Thu, 11 Aug 2016 19:34:38 GMT  
		Size: 255.6 MB (255555939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7093b8e473c6127d12d81a936fbd17b4c24e8c262687b01a3dbd233708258ec6`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5892db7b3df41ceb2911f3267ac47c8c97deba62e538155b6ea25fc943729a66`  
		Last Modified: Thu, 11 Aug 2016 19:33:28 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f52c9813740cfc58633687cdd7e5aed4368d90764c2738bada0c9cd95143d1`  
		Last Modified: Thu, 11 Aug 2016 19:33:27 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776c4a0e6fe330bbed868d8d6d8e7cff583a2ff9292cf33d440bc5b45b2650a`  
		Last Modified: Thu, 11 Aug 2016 19:33:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc68222a694f9b034a132ce635aa0fa6946e6ca5959c57efaa0759a78e7ce80c`  
		Last Modified: Thu, 11 Aug 2016 19:33:25 GMT  
		Size: 473.7 KB (473694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44872cd62eaaa9a54acc93a2697a1c54ad1f3885f8ba86c9922cdd979d0608e`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86de8bb32797b4e834ff2e2607d7013388799dba912faadf64fa423f9151ed1b`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab013de1088a3d2123fbc266a2afcf6f58a658b67d91f928ac00e3bb1c674c7`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 8.8 MB (8802984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c78d3459d2f9d6cabafaf0fb87c531f3f1cb2e43cc102b67c5a30897b7e677`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf7a853f861cbeb23fbdbf5a574bbcb167fff58a9d4406a89ce807febd7a4c7`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87db6b026b66bb3e254c4f572c5180396bb1e2a2ceb206056c6dae31147dd04`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43957f936ba624b2ea8e375ca01b861a05d6bacba63686e93a9d43b89a68028f`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:97386fa6b9c54e224d5bf0ab9770dd8bc991bef80b7bf90e0ad95e801ec5e9da
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.1 MB (331109621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d9eea724b8a95235382fa3e29d1236379c1d97c050ba860a3f1033a75e2e034`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:27:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:30:48 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:30:51 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:30:53 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:30:55 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:30:57 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:30:58 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:30:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:31:25 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:31:32 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:31:33 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:31:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:32:41 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:32:43 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:32:45 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:32:54 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:32:56 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:32:57 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:32:58 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:32:59 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:33:07 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:33:08 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:33:09 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30cb0b11690ab3cd26975d2b6194b32c89da95e350c58c94be937d3f147ffd0e`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5032af34e687429ca5e5c282344962f95f575f980404db70199cd26407418f7`  
		Last Modified: Thu, 11 Aug 2016 19:34:38 GMT  
		Size: 255.6 MB (255555939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7093b8e473c6127d12d81a936fbd17b4c24e8c262687b01a3dbd233708258ec6`  
		Last Modified: Thu, 11 Aug 2016 19:33:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5892db7b3df41ceb2911f3267ac47c8c97deba62e538155b6ea25fc943729a66`  
		Last Modified: Thu, 11 Aug 2016 19:33:28 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f52c9813740cfc58633687cdd7e5aed4368d90764c2738bada0c9cd95143d1`  
		Last Modified: Thu, 11 Aug 2016 19:33:27 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d776c4a0e6fe330bbed868d8d6d8e7cff583a2ff9292cf33d440bc5b45b2650a`  
		Last Modified: Thu, 11 Aug 2016 19:33:25 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc68222a694f9b034a132ce635aa0fa6946e6ca5959c57efaa0759a78e7ce80c`  
		Last Modified: Thu, 11 Aug 2016 19:33:25 GMT  
		Size: 473.7 KB (473694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44872cd62eaaa9a54acc93a2697a1c54ad1f3885f8ba86c9922cdd979d0608e`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86de8bb32797b4e834ff2e2607d7013388799dba912faadf64fa423f9151ed1b`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab013de1088a3d2123fbc266a2afcf6f58a658b67d91f928ac00e3bb1c674c7`  
		Last Modified: Thu, 11 Aug 2016 19:33:26 GMT  
		Size: 8.8 MB (8802984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c78d3459d2f9d6cabafaf0fb87c531f3f1cb2e43cc102b67c5a30897b7e677`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf7a853f861cbeb23fbdbf5a574bbcb167fff58a9d4406a89ce807febd7a4c7`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87db6b026b66bb3e254c4f572c5180396bb1e2a2ceb206056c6dae31147dd04`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43957f936ba624b2ea8e375ca01b861a05d6bacba63686e93a9d43b89a68028f`  
		Last Modified: Thu, 11 Aug 2016 19:33:22 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:5b4c884f2a0e8094833d00f25778df652e39009ac4c58a562de5bb7ee21f8c27
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292417646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4d25b3a11e7b3cd1d0c118b9f31acd650d57d00c41af3f21172afad571cf87`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:20:04 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run
# Thu, 11 Aug 2016 19:20:06 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing
# Thu, 11 Aug 2016 19:20:09 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/
# Thu, 11 Aug 2016 19:20:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:20:35 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:24:18 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:24:22 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:24:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:24:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:24:30 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:24:31 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:24:32 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:24:34 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:24:35 GMT
EXPOSE 10060/tcp
# Thu, 11 Aug 2016 19:24:37 GMT
EXPOSE 10061/tcp
# Thu, 11 Aug 2016 19:24:38 GMT
EXPOSE 10062/tcp
# Thu, 11 Aug 2016 19:24:39 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:24:41 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5893308794eb6ecf7bdafbb10bd5f1967db1310a909d67ed95e8aa8f875a26e6`  
		Last Modified: Thu, 11 Aug 2016 19:24:59 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c522814ffd020d4e916db466295f0605a20aea764ed7c4a4dd2199cd7f958972`  
		Last Modified: Thu, 11 Aug 2016 19:24:59 GMT  
		Size: 11.7 KB (11699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c4a75f86e190132b1350fbaf846b3ee97a06e1b951cdb5c3ad5d59aa56b9ef`  
		Last Modified: Thu, 11 Aug 2016 19:24:59 GMT  
		Size: 918.3 KB (918296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225de97c0c31666faf73f1f89f800b3794e52c22747e540ede27ab558a291d2`  
		Last Modified: Thu, 11 Aug 2016 19:24:58 GMT  
		Size: 13.1 KB (13054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb09fe52f934bf829a65713db79c66c667431e6ee26632d40b293f82b7f5fc3`  
		Last Modified: Thu, 11 Aug 2016 19:24:56 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5101ec03d1ab12a5f381532f1a623a14a9ee140e07cf7d80d63a61caa747f71c`  
		Last Modified: Thu, 11 Aug 2016 19:26:09 GMT  
		Size: 225.7 MB (225699969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d4ed493a50faeeda3c5eeabe35ce0aebea1ae5c3e46e3a6ec7da9ce250024e`  
		Last Modified: Thu, 11 Aug 2016 19:24:55 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b71d2dedc6ea8874db7072460a5b1cc37a4d35bf76cddd6e5d86d65fb945c6`  
		Last Modified: Thu, 11 Aug 2016 19:24:56 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7623b6c0130e55675d155c07196ac4273ccfec208156ce676a90337adf84a28e`  
		Last Modified: Thu, 11 Aug 2016 19:24:56 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:5b4c884f2a0e8094833d00f25778df652e39009ac4c58a562de5bb7ee21f8c27
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292417646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4d25b3a11e7b3cd1d0c118b9f31acd650d57d00c41af3f21172afad571cf87`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:20:04 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run
# Thu, 11 Aug 2016 19:20:06 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing
# Thu, 11 Aug 2016 19:20:09 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/
# Thu, 11 Aug 2016 19:20:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:20:35 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:24:18 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:24:22 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:24:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:24:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:24:30 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:24:31 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:24:32 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:24:34 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:24:35 GMT
EXPOSE 10060/tcp
# Thu, 11 Aug 2016 19:24:37 GMT
EXPOSE 10061/tcp
# Thu, 11 Aug 2016 19:24:38 GMT
EXPOSE 10062/tcp
# Thu, 11 Aug 2016 19:24:39 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:24:41 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5893308794eb6ecf7bdafbb10bd5f1967db1310a909d67ed95e8aa8f875a26e6`  
		Last Modified: Thu, 11 Aug 2016 19:24:59 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c522814ffd020d4e916db466295f0605a20aea764ed7c4a4dd2199cd7f958972`  
		Last Modified: Thu, 11 Aug 2016 19:24:59 GMT  
		Size: 11.7 KB (11699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c4a75f86e190132b1350fbaf846b3ee97a06e1b951cdb5c3ad5d59aa56b9ef`  
		Last Modified: Thu, 11 Aug 2016 19:24:59 GMT  
		Size: 918.3 KB (918296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225de97c0c31666faf73f1f89f800b3794e52c22747e540ede27ab558a291d2`  
		Last Modified: Thu, 11 Aug 2016 19:24:58 GMT  
		Size: 13.1 KB (13054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb09fe52f934bf829a65713db79c66c667431e6ee26632d40b293f82b7f5fc3`  
		Last Modified: Thu, 11 Aug 2016 19:24:56 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5101ec03d1ab12a5f381532f1a623a14a9ee140e07cf7d80d63a61caa747f71c`  
		Last Modified: Thu, 11 Aug 2016 19:26:09 GMT  
		Size: 225.7 MB (225699969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d4ed493a50faeeda3c5eeabe35ce0aebea1ae5c3e46e3a6ec7da9ce250024e`  
		Last Modified: Thu, 11 Aug 2016 19:24:55 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b71d2dedc6ea8874db7072460a5b1cc37a4d35bf76cddd6e5d86d65fb945c6`  
		Last Modified: Thu, 11 Aug 2016 19:24:56 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7623b6c0130e55675d155c07196ac4273ccfec208156ce676a90337adf84a28e`  
		Last Modified: Thu, 11 Aug 2016 19:24:56 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0`

```console
$ docker pull php-zendserver@sha256:bcd2896149f6954932fae2d928b6f4c487cab22310d138d0091440ce649b5c2d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.9 MB (339877402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712d153f0aea65433296032421f32d1f4353fa87be07aab79b7c112fc913964a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:35:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:39:18 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:39:26 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:39:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:39:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:39:39 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:39:40 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:39:41 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:40:08 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:40:10 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:40:11 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:40:19 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:41:13 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:41:14 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:41:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:41:18 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:41:19 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:41:20 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:41:21 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:41:22 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:41:24 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:41:25 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:41:26 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a217295bdc9cc47ce9e18cd09b8d18139ded4c1c087cb18b368b03618102de`  
		Last Modified: Thu, 11 Aug 2016 19:41:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4891554ce17211ae869234253a83e30c187a531d9289c6506bfe288f972d5512`  
		Last Modified: Thu, 11 Aug 2016 19:42:50 GMT  
		Size: 264.3 MB (264334144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9949a1b1086195ad15059d2a01a4f932675c1121d7d3245131f3ed638390cf`  
		Last Modified: Thu, 11 Aug 2016 19:41:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff9d0a1958f376da08e84fdb8d9a6a10248ac68726e16565c1edcb464abc8cc`  
		Last Modified: Thu, 11 Aug 2016 19:41:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4d30cb4e2b5e06961b2fb3846a42a35a200fc3cbe961443da1b625b4e29b3b`  
		Last Modified: Thu, 11 Aug 2016 19:41:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7969d37922489119bffa3bfd983f27bb5e2a5973fb5d418b9e243e2c1957098`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3f00476bba86ad49d23b3068211d003d0b1a5e5e9efa2e236385a62ed2d7d`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 463.2 KB (463197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90339117a67e1a323d77ff05f2081b53a0b67d6e75cb1132e33331dcd167ac4`  
		Last Modified: Thu, 11 Aug 2016 19:41:39 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69bde5aa13d78e7e8b21a07d1fbeff7b584fe28f76b1333e792da9fbcd66f74`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e428329fa4892669c60011993fd800a91c2d2a0fa000e953ded86af9b7e4e7`  
		Last Modified: Thu, 11 Aug 2016 19:41:41 GMT  
		Size: 8.8 MB (8803072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554f98a648515bc9a15daeea34a1632a21f2c3777b527f308c43b2e8a8282044`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb26ae45adc3dc1be3c3fa0c465972cb26f95068b67045b4875b00f7a037981`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab750a30cfa8600380cc722a06ca6f309296e4847da68ef23f24f4693f42c23`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713b358b0c3cbc5ef8b81ee6fd8069ade4080648777de4a6d6c6ba80e5e7e186`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:bcd2896149f6954932fae2d928b6f4c487cab22310d138d0091440ce649b5c2d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.9 MB (339877402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712d153f0aea65433296032421f32d1f4353fa87be07aab79b7c112fc913964a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:35:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:39:18 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:39:26 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:39:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:39:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:39:39 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:39:40 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:39:41 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:40:08 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:40:10 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:40:11 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:40:19 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:41:13 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:41:14 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:41:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:41:18 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:41:19 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:41:20 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:41:21 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:41:22 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:41:24 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:41:25 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:41:26 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a217295bdc9cc47ce9e18cd09b8d18139ded4c1c087cb18b368b03618102de`  
		Last Modified: Thu, 11 Aug 2016 19:41:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4891554ce17211ae869234253a83e30c187a531d9289c6506bfe288f972d5512`  
		Last Modified: Thu, 11 Aug 2016 19:42:50 GMT  
		Size: 264.3 MB (264334144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9949a1b1086195ad15059d2a01a4f932675c1121d7d3245131f3ed638390cf`  
		Last Modified: Thu, 11 Aug 2016 19:41:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff9d0a1958f376da08e84fdb8d9a6a10248ac68726e16565c1edcb464abc8cc`  
		Last Modified: Thu, 11 Aug 2016 19:41:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4d30cb4e2b5e06961b2fb3846a42a35a200fc3cbe961443da1b625b4e29b3b`  
		Last Modified: Thu, 11 Aug 2016 19:41:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7969d37922489119bffa3bfd983f27bb5e2a5973fb5d418b9e243e2c1957098`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3f00476bba86ad49d23b3068211d003d0b1a5e5e9efa2e236385a62ed2d7d`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 463.2 KB (463197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90339117a67e1a323d77ff05f2081b53a0b67d6e75cb1132e33331dcd167ac4`  
		Last Modified: Thu, 11 Aug 2016 19:41:39 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69bde5aa13d78e7e8b21a07d1fbeff7b584fe28f76b1333e792da9fbcd66f74`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e428329fa4892669c60011993fd800a91c2d2a0fa000e953ded86af9b7e4e7`  
		Last Modified: Thu, 11 Aug 2016 19:41:41 GMT  
		Size: 8.8 MB (8803072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554f98a648515bc9a15daeea34a1632a21f2c3777b527f308c43b2e8a8282044`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb26ae45adc3dc1be3c3fa0c465972cb26f95068b67045b4875b00f7a037981`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab750a30cfa8600380cc722a06ca6f309296e4847da68ef23f24f4693f42c23`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713b358b0c3cbc5ef8b81ee6fd8069ade4080648777de4a6d6c6ba80e5e7e186`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:bcd2896149f6954932fae2d928b6f4c487cab22310d138d0091440ce649b5c2d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.9 MB (339877402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712d153f0aea65433296032421f32d1f4353fa87be07aab79b7c112fc913964a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 19:27:01 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 11 Aug 2016 19:35:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 11 Aug 2016 19:39:18 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 11 Aug 2016 19:39:26 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Thu, 11 Aug 2016 19:39:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Thu, 11 Aug 2016 19:39:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 11 Aug 2016 19:39:39 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 11 Aug 2016 19:39:40 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 11 Aug 2016 19:39:41 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 11 Aug 2016 19:40:08 GMT
RUN apt-get install -y curl
# Thu, 11 Aug 2016 19:40:10 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 11 Aug 2016 19:40:11 GMT
WORKDIR /usr/local/zs-init
# Thu, 11 Aug 2016 19:40:19 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 11 Aug 2016 19:41:13 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 11 Aug 2016 19:41:14 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Thu, 11 Aug 2016 19:41:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Thu, 11 Aug 2016 19:41:18 GMT
RUN rm /var/www/html/index.html
# Thu, 11 Aug 2016 19:41:19 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Thu, 11 Aug 2016 19:41:20 GMT
EXPOSE 80/tcp
# Thu, 11 Aug 2016 19:41:21 GMT
EXPOSE 443/tcp
# Thu, 11 Aug 2016 19:41:22 GMT
EXPOSE 10081/tcp
# Thu, 11 Aug 2016 19:41:24 GMT
EXPOSE 10082/tcp
# Thu, 11 Aug 2016 19:41:25 GMT
WORKDIR /var/www/html
# Thu, 11 Aug 2016 19:41:26 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0844c0c4ba3f24aabb3897ec421eec83c1b233f3da09f7e5eb22144dc530f589`  
		Last Modified: Thu, 11 Aug 2016 19:33:30 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a217295bdc9cc47ce9e18cd09b8d18139ded4c1c087cb18b368b03618102de`  
		Last Modified: Thu, 11 Aug 2016 19:41:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4891554ce17211ae869234253a83e30c187a531d9289c6506bfe288f972d5512`  
		Last Modified: Thu, 11 Aug 2016 19:42:50 GMT  
		Size: 264.3 MB (264334144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9949a1b1086195ad15059d2a01a4f932675c1121d7d3245131f3ed638390cf`  
		Last Modified: Thu, 11 Aug 2016 19:41:42 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff9d0a1958f376da08e84fdb8d9a6a10248ac68726e16565c1edcb464abc8cc`  
		Last Modified: Thu, 11 Aug 2016 19:41:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4d30cb4e2b5e06961b2fb3846a42a35a200fc3cbe961443da1b625b4e29b3b`  
		Last Modified: Thu, 11 Aug 2016 19:41:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7969d37922489119bffa3bfd983f27bb5e2a5973fb5d418b9e243e2c1957098`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3f00476bba86ad49d23b3068211d003d0b1a5e5e9efa2e236385a62ed2d7d`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 463.2 KB (463197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90339117a67e1a323d77ff05f2081b53a0b67d6e75cb1132e33331dcd167ac4`  
		Last Modified: Thu, 11 Aug 2016 19:41:39 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69bde5aa13d78e7e8b21a07d1fbeff7b584fe28f76b1333e792da9fbcd66f74`  
		Last Modified: Thu, 11 Aug 2016 19:41:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e428329fa4892669c60011993fd800a91c2d2a0fa000e953ded86af9b7e4e7`  
		Last Modified: Thu, 11 Aug 2016 19:41:41 GMT  
		Size: 8.8 MB (8803072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554f98a648515bc9a15daeea34a1632a21f2c3777b527f308c43b2e8a8282044`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb26ae45adc3dc1be3c3fa0c465972cb26f95068b67045b4875b00f7a037981`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab750a30cfa8600380cc722a06ca6f309296e4847da68ef23f24f4693f42c23`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713b358b0c3cbc5ef8b81ee6fd8069ade4080648777de4a6d6c6ba80e5e7e186`  
		Last Modified: Thu, 11 Aug 2016 19:41:37 GMT  
		Size: 1.2 KB (1241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
