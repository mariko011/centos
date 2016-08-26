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
$ docker pull php-zendserver@sha256:db3dcdb25cd5b53429bab5edbe480d8d4439e41d968f028bc00813ba7a3d9dd4
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331454747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b1f8012dac08091b0b57cff3912a2293da5a3a78a1d1533a00b5e18d28eee3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:00:20 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:00:24 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:00:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:00:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:00:32 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:00:34 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:00:35 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:00:59 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:01:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:01:03 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:01:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:02:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:02:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:02:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:02:13 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:02:15 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:02:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:02:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:02:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:02:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:02:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:02:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e945c97c6c59b21f7cab6f363c720b6ece958e12b9dea4162578b8a6829271de`  
		Last Modified: Fri, 26 Aug 2016 21:03:49 GMT  
		Size: 255.8 MB (255773325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65514eb6acad924ee4d48828cd6f4e775bbc840b194c29a3ea420853b5af8fd2`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e3bf8058c538cf85deae7c2847eeedac0ed05f4264601ea08d947b0d835f8`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d352324776e319486cbfa392d17a601a2d22b47e0d3958611aa01221f3dd8f0`  
		Last Modified: Fri, 26 Aug 2016 21:02:42 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b09e169dfbdf7482b69e28b6557e2be93910f63c7a623cf8d73e3a9e0a5f70`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead184c21ebfd31a1e9243427008ef2b1ac3fa73301182fc495b3e2f74170194`  
		Last Modified: Fri, 26 Aug 2016 21:02:39 GMT  
		Size: 473.6 KB (473568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37c504d88f5bdb64b584b62608ef15a76cff004b721ac22821583d5ff611fb4`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e07def8defe8b8df1de1e6d956b1a02bd08f8749ab8bb76aeabfba2c9c669a`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2f0999319b1df559e3c0bd3c3b99ad59af1886aa38a00f24bf0d1adb29411d`  
		Last Modified: Fri, 26 Aug 2016 21:02:41 GMT  
		Size: 8.9 MB (8929726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c44152573bd011de97af529596799cc66c236f3c81b0755e24da30eb0d63c`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1045f7cebd142c311236373c525d0c16b004d31b24fc519dd5038a1eb1aa2b`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3324970d68c0586469f1cc9bd11f1050a857ae5f9f1f2c1218cff5c0e7db5ad0`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7a7fe75c061e2cd78be4fd4a076fe934161a5a43f75bdf2cb544cf3dfe79c3`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:db3dcdb25cd5b53429bab5edbe480d8d4439e41d968f028bc00813ba7a3d9dd4
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331454747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b1f8012dac08091b0b57cff3912a2293da5a3a78a1d1533a00b5e18d28eee3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:00:20 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:00:24 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:00:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:00:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:00:32 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:00:34 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:00:35 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:00:59 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:01:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:01:03 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:01:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:02:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:02:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:02:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:02:13 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:02:15 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:02:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:02:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:02:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:02:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:02:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:02:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e945c97c6c59b21f7cab6f363c720b6ece958e12b9dea4162578b8a6829271de`  
		Last Modified: Fri, 26 Aug 2016 21:03:49 GMT  
		Size: 255.8 MB (255773325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65514eb6acad924ee4d48828cd6f4e775bbc840b194c29a3ea420853b5af8fd2`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e3bf8058c538cf85deae7c2847eeedac0ed05f4264601ea08d947b0d835f8`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d352324776e319486cbfa392d17a601a2d22b47e0d3958611aa01221f3dd8f0`  
		Last Modified: Fri, 26 Aug 2016 21:02:42 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b09e169dfbdf7482b69e28b6557e2be93910f63c7a623cf8d73e3a9e0a5f70`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead184c21ebfd31a1e9243427008ef2b1ac3fa73301182fc495b3e2f74170194`  
		Last Modified: Fri, 26 Aug 2016 21:02:39 GMT  
		Size: 473.6 KB (473568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37c504d88f5bdb64b584b62608ef15a76cff004b721ac22821583d5ff611fb4`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e07def8defe8b8df1de1e6d956b1a02bd08f8749ab8bb76aeabfba2c9c669a`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2f0999319b1df559e3c0bd3c3b99ad59af1886aa38a00f24bf0d1adb29411d`  
		Last Modified: Fri, 26 Aug 2016 21:02:41 GMT  
		Size: 8.9 MB (8929726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c44152573bd011de97af529596799cc66c236f3c81b0755e24da30eb0d63c`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1045f7cebd142c311236373c525d0c16b004d31b24fc519dd5038a1eb1aa2b`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3324970d68c0586469f1cc9bd11f1050a857ae5f9f1f2c1218cff5c0e7db5ad0`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7a7fe75c061e2cd78be4fd4a076fe934161a5a43f75bdf2cb544cf3dfe79c3`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:db3dcdb25cd5b53429bab5edbe480d8d4439e41d968f028bc00813ba7a3d9dd4
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331454747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b1f8012dac08091b0b57cff3912a2293da5a3a78a1d1533a00b5e18d28eee3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:00:20 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:00:24 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:00:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:00:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:00:32 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:00:34 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:00:35 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:00:59 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:01:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:01:03 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:01:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:02:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:02:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:02:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:02:13 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:02:15 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:02:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:02:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:02:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:02:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:02:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:02:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e945c97c6c59b21f7cab6f363c720b6ece958e12b9dea4162578b8a6829271de`  
		Last Modified: Fri, 26 Aug 2016 21:03:49 GMT  
		Size: 255.8 MB (255773325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65514eb6acad924ee4d48828cd6f4e775bbc840b194c29a3ea420853b5af8fd2`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e3bf8058c538cf85deae7c2847eeedac0ed05f4264601ea08d947b0d835f8`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d352324776e319486cbfa392d17a601a2d22b47e0d3958611aa01221f3dd8f0`  
		Last Modified: Fri, 26 Aug 2016 21:02:42 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b09e169dfbdf7482b69e28b6557e2be93910f63c7a623cf8d73e3a9e0a5f70`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead184c21ebfd31a1e9243427008ef2b1ac3fa73301182fc495b3e2f74170194`  
		Last Modified: Fri, 26 Aug 2016 21:02:39 GMT  
		Size: 473.6 KB (473568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37c504d88f5bdb64b584b62608ef15a76cff004b721ac22821583d5ff611fb4`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e07def8defe8b8df1de1e6d956b1a02bd08f8749ab8bb76aeabfba2c9c669a`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2f0999319b1df559e3c0bd3c3b99ad59af1886aa38a00f24bf0d1adb29411d`  
		Last Modified: Fri, 26 Aug 2016 21:02:41 GMT  
		Size: 8.9 MB (8929726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c44152573bd011de97af529596799cc66c236f3c81b0755e24da30eb0d63c`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1045f7cebd142c311236373c525d0c16b004d31b24fc519dd5038a1eb1aa2b`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3324970d68c0586469f1cc9bd11f1050a857ae5f9f1f2c1218cff5c0e7db5ad0`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7a7fe75c061e2cd78be4fd4a076fe934161a5a43f75bdf2cb544cf3dfe79c3`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:bc4d2aa9fb3e743989a7954117b0744bb715b66cf2d3f67db4a3497f359ce4d6
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292438679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36251e3867499d90c3d41d07108640035d7c9f10b5551b144117c559f7200fe`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:51:00 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run
# Fri, 26 Aug 2016 20:51:02 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing
# Fri, 26 Aug 2016 20:51:04 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/
# Fri, 26 Aug 2016 20:51:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:51:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 20:54:38 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 20:54:41 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 20:54:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 20:54:46 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 20:54:47 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 20:54:48 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 20:54:49 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 20:54:50 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 20:54:52 GMT
EXPOSE 10060/tcp
# Fri, 26 Aug 2016 20:54:53 GMT
EXPOSE 10061/tcp
# Fri, 26 Aug 2016 20:54:54 GMT
EXPOSE 10062/tcp
# Fri, 26 Aug 2016 20:54:55 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 20:54:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a9634ca24b5162be8e9bd9f9fe0427350e1188a751a48c094830bc5e9aad75`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638dc51c7525ab849fa5bbc957031bdc50aa33769172f22eb2487866370443b4`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 11.7 KB (11695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453f331ae8c658235eac64bbb8f86c707ee646b2ec4994f89c7064eef48401a1`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69a5bd906d3e902776181bad3aec38b43202d7778566766bc752ed5e474d04`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924b2762723d723aa94a43daaa02a88e24bca617b1834642063d24e29ba9ecec`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6551c7c729d5d0b1f0c31fd7975cb1894dacd30acf7f0f16f52ef249b1bbecf2`  
		Last Modified: Fri, 26 Aug 2016 20:56:15 GMT  
		Size: 225.7 MB (225719866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cea304edb5a849c90f41d6cac9f513a70781cf536d163db7734a4657af4a59`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7687c15077baaa5382da804fefbff9bdda4cbb54e68e2be2f7d31d0df0cf2945`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee150d453258d97e7176bb42a822b8122d6daf0aaaf666a6ac7345bfdfa6bd0d`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:bc4d2aa9fb3e743989a7954117b0744bb715b66cf2d3f67db4a3497f359ce4d6
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292438679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36251e3867499d90c3d41d07108640035d7c9f10b5551b144117c559f7200fe`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:51:00 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run
# Fri, 26 Aug 2016 20:51:02 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing
# Fri, 26 Aug 2016 20:51:04 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/
# Fri, 26 Aug 2016 20:51:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:51:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 20:54:38 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 20:54:41 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 20:54:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 20:54:46 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 20:54:47 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 20:54:48 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 20:54:49 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 20:54:50 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 20:54:52 GMT
EXPOSE 10060/tcp
# Fri, 26 Aug 2016 20:54:53 GMT
EXPOSE 10061/tcp
# Fri, 26 Aug 2016 20:54:54 GMT
EXPOSE 10062/tcp
# Fri, 26 Aug 2016 20:54:55 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 20:54:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a9634ca24b5162be8e9bd9f9fe0427350e1188a751a48c094830bc5e9aad75`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638dc51c7525ab849fa5bbc957031bdc50aa33769172f22eb2487866370443b4`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 11.7 KB (11695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453f331ae8c658235eac64bbb8f86c707ee646b2ec4994f89c7064eef48401a1`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69a5bd906d3e902776181bad3aec38b43202d7778566766bc752ed5e474d04`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924b2762723d723aa94a43daaa02a88e24bca617b1834642063d24e29ba9ecec`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6551c7c729d5d0b1f0c31fd7975cb1894dacd30acf7f0f16f52ef249b1bbecf2`  
		Last Modified: Fri, 26 Aug 2016 20:56:15 GMT  
		Size: 225.7 MB (225719866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cea304edb5a849c90f41d6cac9f513a70781cf536d163db7734a4657af4a59`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7687c15077baaa5382da804fefbff9bdda4cbb54e68e2be2f7d31d0df0cf2945`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee150d453258d97e7176bb42a822b8122d6daf0aaaf666a6ac7345bfdfa6bd0d`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
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
