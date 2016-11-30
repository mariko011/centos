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
$ docker pull php-zendserver@sha256:62487e3f7379948f74529ef4a78d0401c2c1d2a4c8a0eaa89140e072c79e6e7f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331326783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bac36732b256869a0b66444422570e006dcd67818ca5660107b754b7a7e1a16`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:33:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:36:01 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:36:02 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:36:03 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:36:04 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:36:05 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:36:05 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:36:06 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:36:09 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:36:10 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:36:11 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:36:17 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:37:30 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:37:31 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:37:32 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:37:33 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:37:33 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:37:34 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:37:34 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:37:34 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:37:35 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:37:35 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:37:35 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1ba6d6bbaa7d3ec707882ab6fe19228c5ec587026934b6ad5d94cb85cc99c5`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df92590690a9daf00fde09a55a44e641ebb29caba9b1cf0341c5d39c2b119d3`  
		Last Modified: Wed, 30 Nov 2016 17:48:59 GMT  
		Size: 254.8 MB (254811576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ca773e120caaf988e18acbff5cc12596d39eb3fc8ffc3473f553d165eb5404`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec88c306f79cf3f7314a9eb69eee2a775363c6918cf66f28124197817c3b7805`  
		Last Modified: Wed, 30 Nov 2016 17:48:00 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948ce4d9d9e097761764b7ce2f99961bb02405318fb09140dce7de5f33bb601e`  
		Last Modified: Wed, 30 Nov 2016 17:47:59 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5495835c910fac54a9dd49c1de5547f3ccd3ff77532d095c592d0a68a21e8144`  
		Last Modified: Wed, 30 Nov 2016 17:47:57 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a79d755ffe6b90fb334e6224e5e7618a5a7beb8fef829781f0e5e273506e847`  
		Last Modified: Wed, 30 Nov 2016 17:47:58 GMT  
		Size: 471.9 KB (471914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf186bfbf239cc18babc50ebae9f1520decc79a8cdd792a8da3e233a91f7d66a`  
		Last Modified: Wed, 30 Nov 2016 17:47:56 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad31c5985217d05f3b98e8e2a37a86049e6cc95d7c83101f9d99767853c3124`  
		Last Modified: Wed, 30 Nov 2016 17:47:59 GMT  
		Size: 457.6 KB (457555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb20a71c307d934228917a41d0601dd5c672a3195f7af6eb2c1716f48888a2f5`  
		Last Modified: Wed, 30 Nov 2016 17:47:57 GMT  
		Size: 9.8 MB (9766550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a1bacadad242df75826c47089b78d6cda9011a900cbcc1159338d0fcdd9c7f`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 13.1 KB (13109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40084f723e87b208f25152be8d94dfbf959eb4e41efa6c419903a34cf16e08f8`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71532b553be665ccda98c52348681b0444e4f18d2866f4e699867dc71a37532`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab9294979681ac9cf3dc942843c8224ba2a5b37f786e3baca571f333f20f728`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:62487e3f7379948f74529ef4a78d0401c2c1d2a4c8a0eaa89140e072c79e6e7f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.3 MB (331326783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bac36732b256869a0b66444422570e006dcd67818ca5660107b754b7a7e1a16`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:33:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:36:01 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:36:02 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:36:03 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:36:04 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:36:05 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:36:05 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:36:06 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:36:09 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:36:10 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:36:11 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:36:17 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:37:30 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:37:31 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:37:32 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:37:33 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:37:33 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:37:34 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:37:34 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:37:34 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:37:35 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:37:35 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:37:35 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1ba6d6bbaa7d3ec707882ab6fe19228c5ec587026934b6ad5d94cb85cc99c5`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df92590690a9daf00fde09a55a44e641ebb29caba9b1cf0341c5d39c2b119d3`  
		Last Modified: Wed, 30 Nov 2016 17:48:59 GMT  
		Size: 254.8 MB (254811576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ca773e120caaf988e18acbff5cc12596d39eb3fc8ffc3473f553d165eb5404`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec88c306f79cf3f7314a9eb69eee2a775363c6918cf66f28124197817c3b7805`  
		Last Modified: Wed, 30 Nov 2016 17:48:00 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948ce4d9d9e097761764b7ce2f99961bb02405318fb09140dce7de5f33bb601e`  
		Last Modified: Wed, 30 Nov 2016 17:47:59 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5495835c910fac54a9dd49c1de5547f3ccd3ff77532d095c592d0a68a21e8144`  
		Last Modified: Wed, 30 Nov 2016 17:47:57 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a79d755ffe6b90fb334e6224e5e7618a5a7beb8fef829781f0e5e273506e847`  
		Last Modified: Wed, 30 Nov 2016 17:47:58 GMT  
		Size: 471.9 KB (471914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf186bfbf239cc18babc50ebae9f1520decc79a8cdd792a8da3e233a91f7d66a`  
		Last Modified: Wed, 30 Nov 2016 17:47:56 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bad31c5985217d05f3b98e8e2a37a86049e6cc95d7c83101f9d99767853c3124`  
		Last Modified: Wed, 30 Nov 2016 17:47:59 GMT  
		Size: 457.6 KB (457555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb20a71c307d934228917a41d0601dd5c672a3195f7af6eb2c1716f48888a2f5`  
		Last Modified: Wed, 30 Nov 2016 17:47:57 GMT  
		Size: 9.8 MB (9766550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a1bacadad242df75826c47089b78d6cda9011a900cbcc1159338d0fcdd9c7f`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 13.1 KB (13109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40084f723e87b208f25152be8d94dfbf959eb4e41efa6c419903a34cf16e08f8`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e71532b553be665ccda98c52348681b0444e4f18d2866f4e699867dc71a37532`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab9294979681ac9cf3dc942843c8224ba2a5b37f786e3baca571f333f20f728`  
		Last Modified: Wed, 30 Nov 2016 17:47:54 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:5d835ec260e9b578ff4ba864e6de6fe9f3779fb78baf4274d2d59f5412f189dc
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324882929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b0c533f274b6353aa5a36e5bf90109a7c38816020e366afcd099d456dcdad99`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:33:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:39:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:39:56 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:39:57 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:39:58 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:39:59 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:39:59 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:39:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:40:03 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:40:04 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:40:04 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:40:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:41:15 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:41:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:41:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:41:17 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:41:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:41:18 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:41:18 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:41:19 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1ba6d6bbaa7d3ec707882ab6fe19228c5ec587026934b6ad5d94cb85cc99c5`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a591d8ec73873b724331c85a138ad1a70b2b809432bb32866bf74f3ab7ceb4`  
		Last Modified: Wed, 30 Nov 2016 17:50:38 GMT  
		Size: 248.4 MB (248358027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dfd15dc7b7e7912d12a0473571e8613f67a79e9158d4995381bf9dbacdc418`  
		Last Modified: Wed, 30 Nov 2016 17:49:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe0b9d2ba8e0dcbcfb930358a84dc0d0cc720964c217d25db1360723b98170b`  
		Last Modified: Wed, 30 Nov 2016 17:49:43 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99625135681c90a8f7f88003bfc81cdbfffdec985033eb6589c88ccfac46a35b`  
		Last Modified: Wed, 30 Nov 2016 17:49:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf086f3b5dd378a533161776a18194d22a9f36c773d3bf6114cca73ac63b750a`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df2aea9349e47415a66d0e500dbaa15bac812b892e5f67ab4b4cd30f848d2d7`  
		Last Modified: Wed, 30 Nov 2016 17:49:41 GMT  
		Size: 473.8 KB (473760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a63bec47ebe15f1dee88d5a825892024d3ebcec8a3bfa9397a6b5d5e8974ce`  
		Last Modified: Wed, 30 Nov 2016 17:49:39 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8026cee207e7681c558c7879658922a0ab774e63a0ef23a744c1b7981f453ac`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 457.6 KB (457557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d5c916708a82b2657b6170681d0fbfc650b8269632f71e179c8b3e7b90a39`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 9.8 MB (9774386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e62d1f01e3ef290af47b50f5cc2eaf79461da0194894d958e0029f20aeb4b7`  
		Last Modified: Wed, 30 Nov 2016 17:49:37 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13cc620f6c5516dafd62ea741ac31dbebf07444e4fc66d3e6545d3d03d51824`  
		Last Modified: Wed, 30 Nov 2016 17:49:36 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33253260414d2199a0a24c065ff108f876caf4d89e4a3032320f18122b98e738`  
		Last Modified: Wed, 30 Nov 2016 17:49:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f645f392ed2c4acbc943101533661f79e0b7b23a3d382f9c8660cdcdbd7e6fda`  
		Last Modified: Wed, 30 Nov 2016 17:49:36 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:5d835ec260e9b578ff4ba864e6de6fe9f3779fb78baf4274d2d59f5412f189dc
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324882929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b0c533f274b6353aa5a36e5bf90109a7c38816020e366afcd099d456dcdad99`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:33:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:39:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:39:56 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:39:57 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:39:58 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:39:59 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:39:59 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:39:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:40:03 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:40:04 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:40:04 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:40:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:41:15 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:41:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:41:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:41:17 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:41:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:41:18 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:41:18 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:41:19 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1ba6d6bbaa7d3ec707882ab6fe19228c5ec587026934b6ad5d94cb85cc99c5`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a591d8ec73873b724331c85a138ad1a70b2b809432bb32866bf74f3ab7ceb4`  
		Last Modified: Wed, 30 Nov 2016 17:50:38 GMT  
		Size: 248.4 MB (248358027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dfd15dc7b7e7912d12a0473571e8613f67a79e9158d4995381bf9dbacdc418`  
		Last Modified: Wed, 30 Nov 2016 17:49:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe0b9d2ba8e0dcbcfb930358a84dc0d0cc720964c217d25db1360723b98170b`  
		Last Modified: Wed, 30 Nov 2016 17:49:43 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99625135681c90a8f7f88003bfc81cdbfffdec985033eb6589c88ccfac46a35b`  
		Last Modified: Wed, 30 Nov 2016 17:49:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf086f3b5dd378a533161776a18194d22a9f36c773d3bf6114cca73ac63b750a`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df2aea9349e47415a66d0e500dbaa15bac812b892e5f67ab4b4cd30f848d2d7`  
		Last Modified: Wed, 30 Nov 2016 17:49:41 GMT  
		Size: 473.8 KB (473760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a63bec47ebe15f1dee88d5a825892024d3ebcec8a3bfa9397a6b5d5e8974ce`  
		Last Modified: Wed, 30 Nov 2016 17:49:39 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8026cee207e7681c558c7879658922a0ab774e63a0ef23a744c1b7981f453ac`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 457.6 KB (457557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d5c916708a82b2657b6170681d0fbfc650b8269632f71e179c8b3e7b90a39`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 9.8 MB (9774386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e62d1f01e3ef290af47b50f5cc2eaf79461da0194894d958e0029f20aeb4b7`  
		Last Modified: Wed, 30 Nov 2016 17:49:37 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13cc620f6c5516dafd62ea741ac31dbebf07444e4fc66d3e6545d3d03d51824`  
		Last Modified: Wed, 30 Nov 2016 17:49:36 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33253260414d2199a0a24c065ff108f876caf4d89e4a3032320f18122b98e738`  
		Last Modified: Wed, 30 Nov 2016 17:49:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f645f392ed2c4acbc943101533661f79e0b7b23a3d382f9c8660cdcdbd7e6fda`  
		Last Modified: Wed, 30 Nov 2016 17:49:36 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:5d835ec260e9b578ff4ba864e6de6fe9f3779fb78baf4274d2d59f5412f189dc
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.9 MB (324882929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b0c533f274b6353aa5a36e5bf90109a7c38816020e366afcd099d456dcdad99`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:33:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:39:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:39:56 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:39:57 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:39:58 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:39:59 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:39:59 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:39:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:40:03 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:40:04 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:40:04 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:40:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:41:15 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:41:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:41:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:41:17 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:41:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:41:18 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:41:18 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:41:19 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:41:19 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1ba6d6bbaa7d3ec707882ab6fe19228c5ec587026934b6ad5d94cb85cc99c5`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a591d8ec73873b724331c85a138ad1a70b2b809432bb32866bf74f3ab7ceb4`  
		Last Modified: Wed, 30 Nov 2016 17:50:38 GMT  
		Size: 248.4 MB (248358027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99dfd15dc7b7e7912d12a0473571e8613f67a79e9158d4995381bf9dbacdc418`  
		Last Modified: Wed, 30 Nov 2016 17:49:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe0b9d2ba8e0dcbcfb930358a84dc0d0cc720964c217d25db1360723b98170b`  
		Last Modified: Wed, 30 Nov 2016 17:49:43 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99625135681c90a8f7f88003bfc81cdbfffdec985033eb6589c88ccfac46a35b`  
		Last Modified: Wed, 30 Nov 2016 17:49:42 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf086f3b5dd378a533161776a18194d22a9f36c773d3bf6114cca73ac63b750a`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df2aea9349e47415a66d0e500dbaa15bac812b892e5f67ab4b4cd30f848d2d7`  
		Last Modified: Wed, 30 Nov 2016 17:49:41 GMT  
		Size: 473.8 KB (473760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a63bec47ebe15f1dee88d5a825892024d3ebcec8a3bfa9397a6b5d5e8974ce`  
		Last Modified: Wed, 30 Nov 2016 17:49:39 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8026cee207e7681c558c7879658922a0ab774e63a0ef23a744c1b7981f453ac`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 457.6 KB (457557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d5c916708a82b2657b6170681d0fbfc650b8269632f71e179c8b3e7b90a39`  
		Last Modified: Wed, 30 Nov 2016 17:49:40 GMT  
		Size: 9.8 MB (9774386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e62d1f01e3ef290af47b50f5cc2eaf79461da0194894d958e0029f20aeb4b7`  
		Last Modified: Wed, 30 Nov 2016 17:49:37 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13cc620f6c5516dafd62ea741ac31dbebf07444e4fc66d3e6545d3d03d51824`  
		Last Modified: Wed, 30 Nov 2016 17:49:36 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33253260414d2199a0a24c065ff108f876caf4d89e4a3032320f18122b98e738`  
		Last Modified: Wed, 30 Nov 2016 17:49:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f645f392ed2c4acbc943101533661f79e0b7b23a3d382f9c8660cdcdbd7e6fda`  
		Last Modified: Wed, 30 Nov 2016 17:49:36 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:6ff3b56c8add71526e3fc9ed803a0c35c541eb1a00a03af6a36f8be4db4f60da
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289304871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3701e7eefe0ed5f59cdde26059742e83f0017a5bb422a155e2ca24037bbed5e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:31:04 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Wed, 30 Nov 2016 17:31:05 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Wed, 30 Nov 2016 17:31:05 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Wed, 30 Nov 2016 17:31:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:31:08 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:33:20 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:33:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:33:22 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:33:24 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:33:24 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:33:24 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:33:25 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:33:25 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:33:25 GMT
EXPOSE 10060/tcp
# Wed, 30 Nov 2016 17:33:26 GMT
EXPOSE 10061/tcp
# Wed, 30 Nov 2016 17:33:26 GMT
EXPOSE 10062/tcp
# Wed, 30 Nov 2016 17:33:27 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:33:27 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9d2b526ddae65e2f9e282814e8b6e2628a0c0241fb08265bb7a31b942bdcd3`  
		Last Modified: Wed, 30 Nov 2016 17:46:39 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764631af046c0d47fafaa9522449b54d2b3f8ed794f6affbc8c5c54671518b6e`  
		Last Modified: Wed, 30 Nov 2016 17:46:36 GMT  
		Size: 11.7 KB (11699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1136f0268590f84c3a0339c13bf3fd99884f2359f7641062d62f076ad482409d`  
		Last Modified: Wed, 30 Nov 2016 17:46:36 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e7dd840ceca0129935e8c8b4f5f39bf26aa6cb4d6245cdd905551543e976ba`  
		Last Modified: Wed, 30 Nov 2016 17:46:35 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abea056f3b2b80a12727555eb8b12f1092692458229d0cc44e2f54e9f0b6c0da`  
		Last Modified: Wed, 30 Nov 2016 17:46:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d629737ebb8e57d2a3129c79883b42a15fae10377e2846634d5f6a4f0e2cc89f`  
		Last Modified: Wed, 30 Nov 2016 17:47:17 GMT  
		Size: 222.6 MB (222587510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a42442968a045d83a487c11aefa0939c88eb31bceacdb87d67d65640252b10a`  
		Last Modified: Wed, 30 Nov 2016 17:46:33 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c741536e5dc142e14813a86842efcdd04c0b0cb51184fd353ff20ff5f3a55dcf`  
		Last Modified: Wed, 30 Nov 2016 17:46:33 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab73201d6bf9d471ea5ed2b0b96f8cf6ce6a61e44300755a53e2302c05a680c`  
		Last Modified: Wed, 30 Nov 2016 17:46:36 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:6ff3b56c8add71526e3fc9ed803a0c35c541eb1a00a03af6a36f8be4db4f60da
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289304871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3701e7eefe0ed5f59cdde26059742e83f0017a5bb422a155e2ca24037bbed5e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:31:04 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Wed, 30 Nov 2016 17:31:05 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Wed, 30 Nov 2016 17:31:05 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Wed, 30 Nov 2016 17:31:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:31:08 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:33:20 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:33:21 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:33:22 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:33:24 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:33:24 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:33:24 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:33:25 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:33:25 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:33:25 GMT
EXPOSE 10060/tcp
# Wed, 30 Nov 2016 17:33:26 GMT
EXPOSE 10061/tcp
# Wed, 30 Nov 2016 17:33:26 GMT
EXPOSE 10062/tcp
# Wed, 30 Nov 2016 17:33:27 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:33:27 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9d2b526ddae65e2f9e282814e8b6e2628a0c0241fb08265bb7a31b942bdcd3`  
		Last Modified: Wed, 30 Nov 2016 17:46:39 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764631af046c0d47fafaa9522449b54d2b3f8ed794f6affbc8c5c54671518b6e`  
		Last Modified: Wed, 30 Nov 2016 17:46:36 GMT  
		Size: 11.7 KB (11699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1136f0268590f84c3a0339c13bf3fd99884f2359f7641062d62f076ad482409d`  
		Last Modified: Wed, 30 Nov 2016 17:46:36 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e7dd840ceca0129935e8c8b4f5f39bf26aa6cb4d6245cdd905551543e976ba`  
		Last Modified: Wed, 30 Nov 2016 17:46:35 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abea056f3b2b80a12727555eb8b12f1092692458229d0cc44e2f54e9f0b6c0da`  
		Last Modified: Wed, 30 Nov 2016 17:46:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d629737ebb8e57d2a3129c79883b42a15fae10377e2846634d5f6a4f0e2cc89f`  
		Last Modified: Wed, 30 Nov 2016 17:47:17 GMT  
		Size: 222.6 MB (222587510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a42442968a045d83a487c11aefa0939c88eb31bceacdb87d67d65640252b10a`  
		Last Modified: Wed, 30 Nov 2016 17:46:33 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c741536e5dc142e14813a86842efcdd04c0b0cb51184fd353ff20ff5f3a55dcf`  
		Last Modified: Wed, 30 Nov 2016 17:46:33 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab73201d6bf9d471ea5ed2b0b96f8cf6ce6a61e44300755a53e2302c05a680c`  
		Last Modified: Wed, 30 Nov 2016 17:46:36 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0`

```console
$ docker pull php-zendserver@sha256:5041c4363251047a9929dca1e570e9ac2c7dd8d77b23e09f8154a1a92208754a
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.2 MB (376229050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63647a2fd78ba311f7022f611df119ff25f71adb80d42a2c754c5fe86a4c23c7`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:41:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:44:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:44:23 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:44:23 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:44:24 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:44:25 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:44:25 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:44:26 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:44:29 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:44:30 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:44:31 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:44:37 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:45:37 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:45:38 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:45:38 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:45:39 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:45:40 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:45:40 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:45:42 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:45:42 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98be78a1292095e10db6736681c07100ec20cb7e75f939ca19a4b91877b2a80`  
		Last Modified: Wed, 30 Nov 2016 17:51:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def63f34eff83cf0bd92354921c3f4ea7483bbff36a693c33d1b6d126f453a38`  
		Last Modified: Wed, 30 Nov 2016 17:53:03 GMT  
		Size: 299.7 MB (299710799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8083ac61736d0064e9f5c29c270b662e2a0775edfa7193bf12d8523b09e0062`  
		Last Modified: Wed, 30 Nov 2016 17:51:39 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415acb56f3fd8a3b07fda67bb2d2f4b048e36ec588d3b7b23028b474678a1758`  
		Last Modified: Wed, 30 Nov 2016 17:51:39 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7181ca34c5e899c965d9fce3dd51200ed56481549c70c091b3bb45afbf9ab362`  
		Last Modified: Wed, 30 Nov 2016 17:51:38 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434615a1be68b1d2ec690e4167c8e238360b379bbd664181a52e833dde4aa8e`  
		Last Modified: Wed, 30 Nov 2016 17:51:37 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89638d38c00e1ac53318ff67de9236249be07c657152610fdd2a84e7312ec69`  
		Last Modified: Wed, 30 Nov 2016 17:51:36 GMT  
		Size: 467.3 KB (467263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424c4afe0d51a31078bcaa28b0f52415b18365be62d3ffe0de55b0be6d30a7c`  
		Last Modified: Wed, 30 Nov 2016 17:51:35 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cbe7d383419bcf58756ee2d7395478454d0f0a4fc66fb99694c3dfb3409844`  
		Last Modified: Wed, 30 Nov 2016 17:51:36 GMT  
		Size: 457.5 KB (457549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419914fd1cb76900248a494b559d2881ef5da61d455801f25ab8906927198ec`  
		Last Modified: Wed, 30 Nov 2016 17:51:37 GMT  
		Size: 9.8 MB (9774262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce32f1daaf0367386a1eaef496e26dfd7a4e348e31b7e428f62ff24c976128a6`  
		Last Modified: Wed, 30 Nov 2016 17:51:33 GMT  
		Size: 13.1 KB (13104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742988f9bfa7a307aab95a96a7bb48d055b00f3c654b1bd1fb9decfdddd0df71`  
		Last Modified: Wed, 30 Nov 2016 17:51:33 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178a70e049d63f53867c7d70bdc7768fd7352f5adca30315daf51be4575c9c8a`  
		Last Modified: Wed, 30 Nov 2016 17:51:32 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa86ef0dd5c20307c880a4bd7ed68a8c5f9866c795117eb3ac162c9aa69a348`  
		Last Modified: Wed, 30 Nov 2016 17:51:34 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:5041c4363251047a9929dca1e570e9ac2c7dd8d77b23e09f8154a1a92208754a
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.2 MB (376229050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63647a2fd78ba311f7022f611df119ff25f71adb80d42a2c754c5fe86a4c23c7`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:41:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:44:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:44:23 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:44:23 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:44:24 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:44:25 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:44:25 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:44:26 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:44:29 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:44:30 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:44:31 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:44:37 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:45:37 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:45:38 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:45:38 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:45:39 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:45:40 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:45:40 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:45:42 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:45:42 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98be78a1292095e10db6736681c07100ec20cb7e75f939ca19a4b91877b2a80`  
		Last Modified: Wed, 30 Nov 2016 17:51:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def63f34eff83cf0bd92354921c3f4ea7483bbff36a693c33d1b6d126f453a38`  
		Last Modified: Wed, 30 Nov 2016 17:53:03 GMT  
		Size: 299.7 MB (299710799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8083ac61736d0064e9f5c29c270b662e2a0775edfa7193bf12d8523b09e0062`  
		Last Modified: Wed, 30 Nov 2016 17:51:39 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415acb56f3fd8a3b07fda67bb2d2f4b048e36ec588d3b7b23028b474678a1758`  
		Last Modified: Wed, 30 Nov 2016 17:51:39 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7181ca34c5e899c965d9fce3dd51200ed56481549c70c091b3bb45afbf9ab362`  
		Last Modified: Wed, 30 Nov 2016 17:51:38 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434615a1be68b1d2ec690e4167c8e238360b379bbd664181a52e833dde4aa8e`  
		Last Modified: Wed, 30 Nov 2016 17:51:37 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89638d38c00e1ac53318ff67de9236249be07c657152610fdd2a84e7312ec69`  
		Last Modified: Wed, 30 Nov 2016 17:51:36 GMT  
		Size: 467.3 KB (467263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424c4afe0d51a31078bcaa28b0f52415b18365be62d3ffe0de55b0be6d30a7c`  
		Last Modified: Wed, 30 Nov 2016 17:51:35 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cbe7d383419bcf58756ee2d7395478454d0f0a4fc66fb99694c3dfb3409844`  
		Last Modified: Wed, 30 Nov 2016 17:51:36 GMT  
		Size: 457.5 KB (457549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419914fd1cb76900248a494b559d2881ef5da61d455801f25ab8906927198ec`  
		Last Modified: Wed, 30 Nov 2016 17:51:37 GMT  
		Size: 9.8 MB (9774262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce32f1daaf0367386a1eaef496e26dfd7a4e348e31b7e428f62ff24c976128a6`  
		Last Modified: Wed, 30 Nov 2016 17:51:33 GMT  
		Size: 13.1 KB (13104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742988f9bfa7a307aab95a96a7bb48d055b00f3c654b1bd1fb9decfdddd0df71`  
		Last Modified: Wed, 30 Nov 2016 17:51:33 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178a70e049d63f53867c7d70bdc7768fd7352f5adca30315daf51be4575c9c8a`  
		Last Modified: Wed, 30 Nov 2016 17:51:32 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa86ef0dd5c20307c880a4bd7ed68a8c5f9866c795117eb3ac162c9aa69a348`  
		Last Modified: Wed, 30 Nov 2016 17:51:34 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:5041c4363251047a9929dca1e570e9ac2c7dd8d77b23e09f8154a1a92208754a
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.2 MB (376229050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63647a2fd78ba311f7022f611df119ff25f71adb80d42a2c754c5fe86a4c23c7`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Tue, 29 Nov 2016 20:04:12 GMT
ADD file:ded1872c7b5d88e55fedfb512f1c0d02f06b8235c702c984bedd589861c0cd46 in / 
# Tue, 29 Nov 2016 20:04:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 29 Nov 2016 20:04:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 20:04:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 29 Nov 2016 20:04:16 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 29 Nov 2016 20:04:16 GMT
CMD ["/bin/bash"]
# Wed, 30 Nov 2016 17:33:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Wed, 30 Nov 2016 17:41:21 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Wed, 30 Nov 2016 17:44:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Wed, 30 Nov 2016 17:44:23 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Wed, 30 Nov 2016 17:44:23 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Wed, 30 Nov 2016 17:44:24 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Wed, 30 Nov 2016 17:44:25 GMT
RUN /usr/sbin/a2enmod headers
# Wed, 30 Nov 2016 17:44:25 GMT
ENV ZS_INIT_VERSION=0.2
# Wed, 30 Nov 2016 17:44:26 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Wed, 30 Nov 2016 17:44:29 GMT
RUN apt-get install -y curl
# Wed, 30 Nov 2016 17:44:30 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Wed, 30 Nov 2016 17:44:31 GMT
WORKDIR /usr/local/zs-init
# Wed, 30 Nov 2016 17:44:37 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Wed, 30 Nov 2016 17:45:37 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Wed, 30 Nov 2016 17:45:38 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Wed, 30 Nov 2016 17:45:38 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Wed, 30 Nov 2016 17:45:39 GMT
RUN rm /var/www/html/index.html
# Wed, 30 Nov 2016 17:45:40 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Wed, 30 Nov 2016 17:45:40 GMT
EXPOSE 80/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 443/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 10081/tcp
# Wed, 30 Nov 2016 17:45:41 GMT
EXPOSE 10082/tcp
# Wed, 30 Nov 2016 17:45:42 GMT
WORKDIR /var/www/html
# Wed, 30 Nov 2016 17:45:42 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04cf3f0e25b66692b614f4c294f2855c0f1ae522e80eb07ca54acb46e8487c27`  
		Last Modified: Tue, 29 Nov 2016 20:07:09 GMT  
		Size: 65.7 MB (65699456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b45e963ba03647f19009036377b492415543fa3a79fdfa6c9ea8bef77bc3ba`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 71.6 KB (71562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c78fda4e14ffefdd419326d60773ea712471f864f81e6c50fde1c193285989`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d4969ca79a1eae056433a65e49d650e697d55f280d568f213d0eccc23ac50`  
		Last Modified: Tue, 29 Nov 2016 20:06:51 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d709551f96308ca25c1a8435f6fb8d3a37e8c53a172dd0a32c9028082c171c6f`  
		Last Modified: Tue, 29 Nov 2016 20:06:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678f1b40a761fd4f2a354d4e5048773194af832d75f82a0cf905350278c9946c`  
		Last Modified: Wed, 30 Nov 2016 17:48:01 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98be78a1292095e10db6736681c07100ec20cb7e75f939ca19a4b91877b2a80`  
		Last Modified: Wed, 30 Nov 2016 17:51:41 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def63f34eff83cf0bd92354921c3f4ea7483bbff36a693c33d1b6d126f453a38`  
		Last Modified: Wed, 30 Nov 2016 17:53:03 GMT  
		Size: 299.7 MB (299710799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8083ac61736d0064e9f5c29c270b662e2a0775edfa7193bf12d8523b09e0062`  
		Last Modified: Wed, 30 Nov 2016 17:51:39 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415acb56f3fd8a3b07fda67bb2d2f4b048e36ec588d3b7b23028b474678a1758`  
		Last Modified: Wed, 30 Nov 2016 17:51:39 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7181ca34c5e899c965d9fce3dd51200ed56481549c70c091b3bb45afbf9ab362`  
		Last Modified: Wed, 30 Nov 2016 17:51:38 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8434615a1be68b1d2ec690e4167c8e238360b379bbd664181a52e833dde4aa8e`  
		Last Modified: Wed, 30 Nov 2016 17:51:37 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89638d38c00e1ac53318ff67de9236249be07c657152610fdd2a84e7312ec69`  
		Last Modified: Wed, 30 Nov 2016 17:51:36 GMT  
		Size: 467.3 KB (467263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424c4afe0d51a31078bcaa28b0f52415b18365be62d3ffe0de55b0be6d30a7c`  
		Last Modified: Wed, 30 Nov 2016 17:51:35 GMT  
		Size: 15.6 KB (15597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97cbe7d383419bcf58756ee2d7395478454d0f0a4fc66fb99694c3dfb3409844`  
		Last Modified: Wed, 30 Nov 2016 17:51:36 GMT  
		Size: 457.5 KB (457549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1419914fd1cb76900248a494b559d2881ef5da61d455801f25ab8906927198ec`  
		Last Modified: Wed, 30 Nov 2016 17:51:37 GMT  
		Size: 9.8 MB (9774262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce32f1daaf0367386a1eaef496e26dfd7a4e348e31b7e428f62ff24c976128a6`  
		Last Modified: Wed, 30 Nov 2016 17:51:33 GMT  
		Size: 13.1 KB (13104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742988f9bfa7a307aab95a96a7bb48d055b00f3c654b1bd1fb9decfdddd0df71`  
		Last Modified: Wed, 30 Nov 2016 17:51:33 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178a70e049d63f53867c7d70bdc7768fd7352f5adca30315daf51be4575c9c8a`  
		Last Modified: Wed, 30 Nov 2016 17:51:32 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa86ef0dd5c20307c880a4bd7ed68a8c5f9866c795117eb3ac162c9aa69a348`  
		Last Modified: Wed, 30 Nov 2016 17:51:34 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
