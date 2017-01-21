<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:5.5`](#php-zendserver55)
-	[`php-zendserver:8.5-php5.5`](#php-zendserver85-php55)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:5.4`](#php-zendserver54)
-	[`php-zendserver:7.0-php5.4`](#php-zendserver70-php54)
-	[`php-zendserver:9.0.1`](#php-zendserver901)
-	[`php-zendserver:9.0.1-php7`](#php-zendserver901-php7)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:b20a9232f0728a1569f5a4553f7cd5a46c2613df2a56a506e9aa42d6bd25dabc
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.2 MB (332190600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9edcf600fceaf77a00d79c5271365dfce9d17c59c319f9e79735f6b3edb8dcc`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:41:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:44:16 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:44:17 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 21 Jan 2017 00:44:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:44:19 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:44:20 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:44:21 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:44:21 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:44:25 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:44:27 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:44:27 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:44:34 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:45:32 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:45:33 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:45:34 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:45:35 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:45:36 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:45:36 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:45:37 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:45:37 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:45:37 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:45:38 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:45:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e07a8f712efced73ac760fadb310b74cf442970929fab9c9b159568d10a01`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fae104d4fb939619146c89f553d64c42eed363237cdcaf1a5a51af820126920`  
		Last Modified: Sat, 21 Jan 2017 01:01:32 GMT  
		Size: 255.3 MB (255263244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58b5ca66619c062d5ab8c08f81407a6a02c71ebfed316197e14d4d390a5df9`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f626605e2a491f9312e9c807dff830acb50ca3fe4354f238b7ca0fa9c90598ab`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54d034569c35f98c3e0322fb2c80a511e8908a38312e61b2ab3710992185f2f`  
		Last Modified: Sat, 21 Jan 2017 01:00:24 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edba2b2e47c29aaffe474c04b56129f304f6f1652480fb96a578ba600a1af02`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f967ea0e491ef38360dac72fee1d30dd3ec2a04cca7a2d4bd7c55137c567e7`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 472.2 KB (472220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28df4fd787aa90ab99f68fb680e3c8e9b7dda651c4b3652b06e4b44695c509f6`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845b6b40ecb590c8aad88af27781f3ef66115b739bfab49b500f9ca23d6bcdb8`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 485.1 KB (485062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996dea3f82a013af36ac0ac4c9f3ded6a251f4c078691e085c8f7b8dd9fd2d4f`  
		Last Modified: Sat, 21 Jan 2017 01:00:23 GMT  
		Size: 10.2 MB (10156508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78f1f87c2a3c6996d460bf6c843026714a763720c432af24367d8aa2c30acaa`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 13.1 KB (13104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd5ff93e3e8aea259d984c9f1f9b78f5711d046481acc00c8268595083a3bdf`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca62be37678d92a807f5642fd1a1f5c9932bcff5b5cc863d22f848fbcd4409ce`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9f6778c8176d25c6244b7625998e8375d500354e61cbad5c4aa736e724c138`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:b20a9232f0728a1569f5a4553f7cd5a46c2613df2a56a506e9aa42d6bd25dabc
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.2 MB (332190600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9edcf600fceaf77a00d79c5271365dfce9d17c59c319f9e79735f6b3edb8dcc`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:41:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:44:16 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:44:17 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 21 Jan 2017 00:44:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:44:19 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:44:20 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:44:21 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:44:21 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:44:25 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:44:27 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:44:27 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:44:34 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:45:32 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:45:33 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:45:34 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:45:35 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:45:36 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:45:36 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:45:37 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:45:37 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:45:37 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:45:38 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:45:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e07a8f712efced73ac760fadb310b74cf442970929fab9c9b159568d10a01`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fae104d4fb939619146c89f553d64c42eed363237cdcaf1a5a51af820126920`  
		Last Modified: Sat, 21 Jan 2017 01:01:32 GMT  
		Size: 255.3 MB (255263244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58b5ca66619c062d5ab8c08f81407a6a02c71ebfed316197e14d4d390a5df9`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f626605e2a491f9312e9c807dff830acb50ca3fe4354f238b7ca0fa9c90598ab`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54d034569c35f98c3e0322fb2c80a511e8908a38312e61b2ab3710992185f2f`  
		Last Modified: Sat, 21 Jan 2017 01:00:24 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5edba2b2e47c29aaffe474c04b56129f304f6f1652480fb96a578ba600a1af02`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f967ea0e491ef38360dac72fee1d30dd3ec2a04cca7a2d4bd7c55137c567e7`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 472.2 KB (472220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28df4fd787aa90ab99f68fb680e3c8e9b7dda651c4b3652b06e4b44695c509f6`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:845b6b40ecb590c8aad88af27781f3ef66115b739bfab49b500f9ca23d6bcdb8`  
		Last Modified: Sat, 21 Jan 2017 01:00:22 GMT  
		Size: 485.1 KB (485062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996dea3f82a013af36ac0ac4c9f3ded6a251f4c078691e085c8f7b8dd9fd2d4f`  
		Last Modified: Sat, 21 Jan 2017 01:00:23 GMT  
		Size: 10.2 MB (10156508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78f1f87c2a3c6996d460bf6c843026714a763720c432af24367d8aa2c30acaa`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 13.1 KB (13104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd5ff93e3e8aea259d984c9f1f9b78f5711d046481acc00c8268595083a3bdf`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca62be37678d92a807f5642fd1a1f5c9932bcff5b5cc863d22f848fbcd4409ce`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9f6778c8176d25c6244b7625998e8375d500354e61cbad5c4aa736e724c138`  
		Last Modified: Sat, 21 Jan 2017 01:00:20 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:6eceb735a771f5ec07d210b32785bdb3dee8466889184229022f1928afd61223
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328737942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8c55dc5eabe2c599b8662e5be6e31b79fd6f8cf49d562b5fb037f2f4f17f45`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:41:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:47:54 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:47:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 21 Jan 2017 00:47:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:47:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:47:57 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:47:58 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:47:58 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:48:01 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:48:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:48:03 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:48:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:49:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:49:08 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:49:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:49:09 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:49:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:49:10 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:49:10 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:49:12 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e07a8f712efced73ac760fadb310b74cf442970929fab9c9b159568d10a01`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0da8a8b3a6103f554568f8def12ac413f1e7ebe20bf07df56a4d28f33e1c66`  
		Last Modified: Sat, 21 Jan 2017 01:03:19 GMT  
		Size: 251.8 MB (251800629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca5ecd65d5b7eaa61d936a21cc81d4b9812365d5523e9a21a888a82af09975d`  
		Last Modified: Sat, 21 Jan 2017 01:02:12 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b59e8f22496f354f0be4d77b239c1fd7796f56810816d78bd8ef8105dd2ef`  
		Last Modified: Sat, 21 Jan 2017 01:02:12 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b48bcebc59196fd400d67b60f438e721c3b9dbe78cb6f08c4376fd351ea840f`  
		Last Modified: Sat, 21 Jan 2017 01:02:11 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8e08445da3f2d4ed552ecf85035c918f935b647afe2952952a4f4422d7ff7e`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67afdd4dde6fe7fe577a192342a63bb2d3c79b87d5157672e70615af3cbb4632`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 474.0 KB (474024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e9bec257ca0a1afccf2d823a13384fb2b870d4829878ca918e9ac96b9c2aec`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2e0262a44eb645692b0509ed9b879725acbca84cbff76231446b4fc48a2e23`  
		Last Modified: Sat, 21 Jan 2017 01:02:10 GMT  
		Size: 485.1 KB (485052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977f074080b27ba2e12e1483bceb6629abb26a1382176d7b7206ef4be5e9212`  
		Last Modified: Sat, 21 Jan 2017 01:02:10 GMT  
		Size: 10.2 MB (10164671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d19b45d69fe047d1e4d191eeb134ad3e113deacb8a9fb0deacf95e5fb7be414`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674c48709b622b20f384316ba2e8da4632105c9ed4c447b54eaf366f588069c3`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45425c6a4fe94ec51da65b6cf87db97d6e4363837bbfc27bdf9c13123121aa2f`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483590d27f3a9997ad917ec66c308393fec184a516f21d66ff816c9656239e4`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:6eceb735a771f5ec07d210b32785bdb3dee8466889184229022f1928afd61223
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328737942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8c55dc5eabe2c599b8662e5be6e31b79fd6f8cf49d562b5fb037f2f4f17f45`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:41:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:47:54 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:47:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 21 Jan 2017 00:47:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:47:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:47:57 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:47:58 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:47:58 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:48:01 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:48:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:48:03 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:48:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:49:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:49:08 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:49:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:49:09 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:49:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:49:10 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:49:10 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:49:12 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e07a8f712efced73ac760fadb310b74cf442970929fab9c9b159568d10a01`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0da8a8b3a6103f554568f8def12ac413f1e7ebe20bf07df56a4d28f33e1c66`  
		Last Modified: Sat, 21 Jan 2017 01:03:19 GMT  
		Size: 251.8 MB (251800629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca5ecd65d5b7eaa61d936a21cc81d4b9812365d5523e9a21a888a82af09975d`  
		Last Modified: Sat, 21 Jan 2017 01:02:12 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b59e8f22496f354f0be4d77b239c1fd7796f56810816d78bd8ef8105dd2ef`  
		Last Modified: Sat, 21 Jan 2017 01:02:12 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b48bcebc59196fd400d67b60f438e721c3b9dbe78cb6f08c4376fd351ea840f`  
		Last Modified: Sat, 21 Jan 2017 01:02:11 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8e08445da3f2d4ed552ecf85035c918f935b647afe2952952a4f4422d7ff7e`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67afdd4dde6fe7fe577a192342a63bb2d3c79b87d5157672e70615af3cbb4632`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 474.0 KB (474024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e9bec257ca0a1afccf2d823a13384fb2b870d4829878ca918e9ac96b9c2aec`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2e0262a44eb645692b0509ed9b879725acbca84cbff76231446b4fc48a2e23`  
		Last Modified: Sat, 21 Jan 2017 01:02:10 GMT  
		Size: 485.1 KB (485052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977f074080b27ba2e12e1483bceb6629abb26a1382176d7b7206ef4be5e9212`  
		Last Modified: Sat, 21 Jan 2017 01:02:10 GMT  
		Size: 10.2 MB (10164671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d19b45d69fe047d1e4d191eeb134ad3e113deacb8a9fb0deacf95e5fb7be414`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674c48709b622b20f384316ba2e8da4632105c9ed4c447b54eaf366f588069c3`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45425c6a4fe94ec51da65b6cf87db97d6e4363837bbfc27bdf9c13123121aa2f`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483590d27f3a9997ad917ec66c308393fec184a516f21d66ff816c9656239e4`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:6eceb735a771f5ec07d210b32785bdb3dee8466889184229022f1928afd61223
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.7 MB (328737942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8c55dc5eabe2c599b8662e5be6e31b79fd6f8cf49d562b5fb037f2f4f17f45`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:41:46 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:47:54 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:47:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Sat, 21 Jan 2017 00:47:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:47:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:47:57 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:47:58 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:47:58 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:48:01 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:48:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:48:03 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:48:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:49:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:49:08 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:49:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:49:09 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:49:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:49:10 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:49:10 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:49:11 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:49:12 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360e07a8f712efced73ac760fadb310b74cf442970929fab9c9b159568d10a01`  
		Last Modified: Sat, 21 Jan 2017 01:00:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0da8a8b3a6103f554568f8def12ac413f1e7ebe20bf07df56a4d28f33e1c66`  
		Last Modified: Sat, 21 Jan 2017 01:03:19 GMT  
		Size: 251.8 MB (251800629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca5ecd65d5b7eaa61d936a21cc81d4b9812365d5523e9a21a888a82af09975d`  
		Last Modified: Sat, 21 Jan 2017 01:02:12 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1b59e8f22496f354f0be4d77b239c1fd7796f56810816d78bd8ef8105dd2ef`  
		Last Modified: Sat, 21 Jan 2017 01:02:12 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b48bcebc59196fd400d67b60f438e721c3b9dbe78cb6f08c4376fd351ea840f`  
		Last Modified: Sat, 21 Jan 2017 01:02:11 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8e08445da3f2d4ed552ecf85035c918f935b647afe2952952a4f4422d7ff7e`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67afdd4dde6fe7fe577a192342a63bb2d3c79b87d5157672e70615af3cbb4632`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 474.0 KB (474024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e9bec257ca0a1afccf2d823a13384fb2b870d4829878ca918e9ac96b9c2aec`  
		Last Modified: Sat, 21 Jan 2017 01:02:09 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2e0262a44eb645692b0509ed9b879725acbca84cbff76231446b4fc48a2e23`  
		Last Modified: Sat, 21 Jan 2017 01:02:10 GMT  
		Size: 485.1 KB (485052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2977f074080b27ba2e12e1483bceb6629abb26a1382176d7b7206ef4be5e9212`  
		Last Modified: Sat, 21 Jan 2017 01:02:10 GMT  
		Size: 10.2 MB (10164671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d19b45d69fe047d1e4d191eeb134ad3e113deacb8a9fb0deacf95e5fb7be414`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674c48709b622b20f384316ba2e8da4632105c9ed4c447b54eaf366f588069c3`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45425c6a4fe94ec51da65b6cf87db97d6e4363837bbfc27bdf9c13123121aa2f`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5483590d27f3a9997ad917ec66c308393fec184a516f21d66ff816c9656239e4`  
		Last Modified: Sat, 21 Jan 2017 01:02:06 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:a2d3fff8d63902744ed384a85c4fa5b8bbbd486989f2a6716c99aaad8b2c9ed1
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292679361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20306cba78c76b7b9b706319972c4e8e4d8defc673cfc29ea8881ef96f3398e4`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:39:27 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Sat, 21 Jan 2017 00:39:28 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Sat, 21 Jan 2017 00:39:28 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Sat, 21 Jan 2017 00:39:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:39:31 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:41:34 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:41:35 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:41:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:41:38 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:41:38 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:41:39 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:41:39 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:41:40 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:41:41 GMT
EXPOSE 10060/tcp
# Sat, 21 Jan 2017 00:41:41 GMT
EXPOSE 10061/tcp
# Sat, 21 Jan 2017 00:41:42 GMT
EXPOSE 10062/tcp
# Sat, 21 Jan 2017 00:41:43 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:41:43 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c482653d80172d6c7bf9e09d815897709e785268d3fb638a0c0eb6c445f0261`  
		Last Modified: Sat, 21 Jan 2017 00:58:47 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1cf3e3d0a8dc79ccf2633adab872b806b72de9ded8f1d9701e341fe8cce318`  
		Last Modified: Sat, 21 Jan 2017 00:58:46 GMT  
		Size: 11.7 KB (11697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e4580314006c2b885e3ff3dc2ed083876c20b4732c4b7478c38173b50ef8d5`  
		Last Modified: Sat, 21 Jan 2017 00:58:46 GMT  
		Size: 918.3 KB (918296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f22a1edbca0bb2f489248b83495f580daeb25e20375b85f59dac95c64a8d9c`  
		Last Modified: Sat, 21 Jan 2017 00:58:45 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d43621e24a20aebee221080a0fe359035d999ea8e0f5f87bf0b617f48ba7e`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53190a9b9f64593550ef5957a7da894c5aacc1aac86a061ba3e760193ab8e1f9`  
		Last Modified: Sat, 21 Jan 2017 00:59:43 GMT  
		Size: 226.0 MB (225967624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c280deaed2a44895656dd5a8988b967956415a791e2f04080ac3beeb3552b65f`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fd6dc3f76079e3a8aa7a1498bd569ea81e677d104d3529254b3f96bf7d313`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21e8d4490c68cf0099e23abe7805c7dbd5c7c7c5eb384588a5346847cb3f348`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:a2d3fff8d63902744ed384a85c4fa5b8bbbd486989f2a6716c99aaad8b2c9ed1
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292679361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20306cba78c76b7b9b706319972c4e8e4d8defc673cfc29ea8881ef96f3398e4`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:39:27 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Sat, 21 Jan 2017 00:39:28 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Sat, 21 Jan 2017 00:39:28 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Sat, 21 Jan 2017 00:39:30 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:39:31 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:41:34 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:41:35 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:41:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:41:38 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:41:38 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:41:39 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:41:39 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:41:40 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:41:41 GMT
EXPOSE 10060/tcp
# Sat, 21 Jan 2017 00:41:41 GMT
EXPOSE 10061/tcp
# Sat, 21 Jan 2017 00:41:42 GMT
EXPOSE 10062/tcp
# Sat, 21 Jan 2017 00:41:43 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:41:43 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c482653d80172d6c7bf9e09d815897709e785268d3fb638a0c0eb6c445f0261`  
		Last Modified: Sat, 21 Jan 2017 00:58:47 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1cf3e3d0a8dc79ccf2633adab872b806b72de9ded8f1d9701e341fe8cce318`  
		Last Modified: Sat, 21 Jan 2017 00:58:46 GMT  
		Size: 11.7 KB (11697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e4580314006c2b885e3ff3dc2ed083876c20b4732c4b7478c38173b50ef8d5`  
		Last Modified: Sat, 21 Jan 2017 00:58:46 GMT  
		Size: 918.3 KB (918296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f22a1edbca0bb2f489248b83495f580daeb25e20375b85f59dac95c64a8d9c`  
		Last Modified: Sat, 21 Jan 2017 00:58:45 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d43621e24a20aebee221080a0fe359035d999ea8e0f5f87bf0b617f48ba7e`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53190a9b9f64593550ef5957a7da894c5aacc1aac86a061ba3e760193ab8e1f9`  
		Last Modified: Sat, 21 Jan 2017 00:59:43 GMT  
		Size: 226.0 MB (225967624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c280deaed2a44895656dd5a8988b967956415a791e2f04080ac3beeb3552b65f`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fd6dc3f76079e3a8aa7a1498bd569ea81e677d104d3529254b3f96bf7d313`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21e8d4490c68cf0099e23abe7805c7dbd5c7c7c5eb384588a5346847cb3f348`  
		Last Modified: Sat, 21 Jan 2017 00:58:43 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0.1`

```console
$ docker pull php-zendserver@sha256:7c0bd0e91b05222934ab08281da3ded19640c138ba5c34548073a02c7fea5f76
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0.1` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.7 MB (376667310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d589a39ded135957b00f1592f933a71ee38dd222f72829ecff26d177442d5e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:49:13 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:53:08 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0=9.0.1+b164 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:53:09 GMT
COPY file:3455f924d7685a3527f8373990a2c1c0b168de71b4ca41bb9f41a4fe6350e45d in /etc/ 
# Sat, 21 Jan 2017 00:53:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:53:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:53:12 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:53:12 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:53:12 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:53:16 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:53:17 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:53:18 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:53:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:54:21 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:54:22 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:54:22 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:54:23 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:54:24 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:54:24 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:54:24 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:54:25 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f570b2cd4d1418be9ceddbfc090be3f9b22fffc07acdac04a9682b23a0e377ae`  
		Last Modified: Sat, 21 Jan 2017 01:04:22 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0297b5193c970271e3d0d8eb9e0f37c988694833a2f4af437b9b9bf74f906c`  
		Last Modified: Sat, 21 Jan 2017 01:05:34 GMT  
		Size: 299.7 MB (299736528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08655b01b55d9d193c498491294f57f955c306270818a57230d4e1bf0c89e70a`  
		Last Modified: Sat, 21 Jan 2017 01:04:20 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7187c42d507955cb35862529c3af667f7ea42b3351d695d927d1813ff59c97`  
		Last Modified: Sat, 21 Jan 2017 01:04:20 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb94a8a8abd9aea33284e2e6d7ed90899957f16964dbec5bf0dd7afd436e7f`  
		Last Modified: Sat, 21 Jan 2017 01:04:24 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea18617107249baae9a5a37b0789433c0a13c7bcc50b4ad763553597b8071ae`  
		Last Modified: Sat, 21 Jan 2017 01:04:18 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7d6c122168e4ca2f5409c5cc8d9baba6b2c233d4f7792f1f706c35eaa39fbe`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 467.6 KB (467573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ce87da86dec3435ddd718e8b57357e2f712176197a07aea8971b60abbdab74`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4dc58279126ffe10d93455595e50389fecf9dbd10acdb86ff1720781e2784b`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 485.1 KB (485054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b5aff1bb0454ba0230404e2641eeeefcc818ef73fdfa6c2b6145070883ebf0`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 10.2 MB (10164599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c301303001a7bdc546667f253edfeecd34d7fe0f4dcb68f0d5d6f87d37ea8d6e`  
		Last Modified: Sat, 21 Jan 2017 01:04:15 GMT  
		Size: 13.1 KB (13102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5b7abd8f1d675f88cee28a2609a09ed7671fe489fd99baf9b1afddce0987a8`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7907db82d0f5e31560d8cc1e1723e197c2e8cc4ffb838651dc97a28b2c675878`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292472af402fb13d23a6412f74aa8b62bd86cf168472d99428ca3e6a0d819e31`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0.1-php7`

```console
$ docker pull php-zendserver@sha256:7c0bd0e91b05222934ab08281da3ded19640c138ba5c34548073a02c7fea5f76
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0.1-php7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.7 MB (376667310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d589a39ded135957b00f1592f933a71ee38dd222f72829ecff26d177442d5e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:49:13 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:53:08 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0=9.0.1+b164 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:53:09 GMT
COPY file:3455f924d7685a3527f8373990a2c1c0b168de71b4ca41bb9f41a4fe6350e45d in /etc/ 
# Sat, 21 Jan 2017 00:53:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:53:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:53:12 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:53:12 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:53:12 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:53:16 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:53:17 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:53:18 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:53:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:54:21 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:54:22 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:54:22 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:54:23 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:54:24 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:54:24 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:54:24 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:54:25 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f570b2cd4d1418be9ceddbfc090be3f9b22fffc07acdac04a9682b23a0e377ae`  
		Last Modified: Sat, 21 Jan 2017 01:04:22 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0297b5193c970271e3d0d8eb9e0f37c988694833a2f4af437b9b9bf74f906c`  
		Last Modified: Sat, 21 Jan 2017 01:05:34 GMT  
		Size: 299.7 MB (299736528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08655b01b55d9d193c498491294f57f955c306270818a57230d4e1bf0c89e70a`  
		Last Modified: Sat, 21 Jan 2017 01:04:20 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7187c42d507955cb35862529c3af667f7ea42b3351d695d927d1813ff59c97`  
		Last Modified: Sat, 21 Jan 2017 01:04:20 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb94a8a8abd9aea33284e2e6d7ed90899957f16964dbec5bf0dd7afd436e7f`  
		Last Modified: Sat, 21 Jan 2017 01:04:24 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea18617107249baae9a5a37b0789433c0a13c7bcc50b4ad763553597b8071ae`  
		Last Modified: Sat, 21 Jan 2017 01:04:18 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7d6c122168e4ca2f5409c5cc8d9baba6b2c233d4f7792f1f706c35eaa39fbe`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 467.6 KB (467573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ce87da86dec3435ddd718e8b57357e2f712176197a07aea8971b60abbdab74`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4dc58279126ffe10d93455595e50389fecf9dbd10acdb86ff1720781e2784b`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 485.1 KB (485054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b5aff1bb0454ba0230404e2641eeeefcc818ef73fdfa6c2b6145070883ebf0`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 10.2 MB (10164599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c301303001a7bdc546667f253edfeecd34d7fe0f4dcb68f0d5d6f87d37ea8d6e`  
		Last Modified: Sat, 21 Jan 2017 01:04:15 GMT  
		Size: 13.1 KB (13102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5b7abd8f1d675f88cee28a2609a09ed7671fe489fd99baf9b1afddce0987a8`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7907db82d0f5e31560d8cc1e1723e197c2e8cc4ffb838651dc97a28b2c675878`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292472af402fb13d23a6412f74aa8b62bd86cf168472d99428ca3e6a0d819e31`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:7c0bd0e91b05222934ab08281da3ded19640c138ba5c34548073a02c7fea5f76
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.7 MB (376667310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60d589a39ded135957b00f1592f933a71ee38dd222f72829ecff26d177442d5e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Sat, 21 Jan 2017 00:41:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 21 Jan 2017 00:49:13 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 21 Jan 2017 00:53:08 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0=9.0.1+b164 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 21 Jan 2017 00:53:09 GMT
COPY file:3455f924d7685a3527f8373990a2c1c0b168de71b4ca41bb9f41a4fe6350e45d in /etc/ 
# Sat, 21 Jan 2017 00:53:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 21 Jan 2017 00:53:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 21 Jan 2017 00:53:12 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 21 Jan 2017 00:53:12 GMT
ENV ZS_INIT_VERSION=0.2
# Sat, 21 Jan 2017 00:53:12 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Sat, 21 Jan 2017 00:53:16 GMT
RUN apt-get install -y curl
# Sat, 21 Jan 2017 00:53:17 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 21 Jan 2017 00:53:18 GMT
WORKDIR /usr/local/zs-init
# Sat, 21 Jan 2017 00:53:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 21 Jan 2017 00:54:21 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 21 Jan 2017 00:54:22 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 21 Jan 2017 00:54:22 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 21 Jan 2017 00:54:23 GMT
RUN rm /var/www/html/index.html
# Sat, 21 Jan 2017 00:54:24 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 21 Jan 2017 00:54:24 GMT
EXPOSE 80/tcp
# Sat, 21 Jan 2017 00:54:24 GMT
EXPOSE 443/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
EXPOSE 10081/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
EXPOSE 10082/tcp
# Sat, 21 Jan 2017 00:54:25 GMT
WORKDIR /var/www/html
# Sat, 21 Jan 2017 00:54:25 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcef72fa6f8fa7d23fff4db2121faff8a735189d6eaf3de692eac86b8734209c`  
		Last Modified: Sat, 21 Jan 2017 01:00:26 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f570b2cd4d1418be9ceddbfc090be3f9b22fffc07acdac04a9682b23a0e377ae`  
		Last Modified: Sat, 21 Jan 2017 01:04:22 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0297b5193c970271e3d0d8eb9e0f37c988694833a2f4af437b9b9bf74f906c`  
		Last Modified: Sat, 21 Jan 2017 01:05:34 GMT  
		Size: 299.7 MB (299736528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08655b01b55d9d193c498491294f57f955c306270818a57230d4e1bf0c89e70a`  
		Last Modified: Sat, 21 Jan 2017 01:04:20 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7187c42d507955cb35862529c3af667f7ea42b3351d695d927d1813ff59c97`  
		Last Modified: Sat, 21 Jan 2017 01:04:20 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bb94a8a8abd9aea33284e2e6d7ed90899957f16964dbec5bf0dd7afd436e7f`  
		Last Modified: Sat, 21 Jan 2017 01:04:24 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea18617107249baae9a5a37b0789433c0a13c7bcc50b4ad763553597b8071ae`  
		Last Modified: Sat, 21 Jan 2017 01:04:18 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c7d6c122168e4ca2f5409c5cc8d9baba6b2c233d4f7792f1f706c35eaa39fbe`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 467.6 KB (467573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ce87da86dec3435ddd718e8b57357e2f712176197a07aea8971b60abbdab74`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4dc58279126ffe10d93455595e50389fecf9dbd10acdb86ff1720781e2784b`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 485.1 KB (485054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b5aff1bb0454ba0230404e2641eeeefcc818ef73fdfa6c2b6145070883ebf0`  
		Last Modified: Sat, 21 Jan 2017 01:04:16 GMT  
		Size: 10.2 MB (10164599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c301303001a7bdc546667f253edfeecd34d7fe0f4dcb68f0d5d6f87d37ea8d6e`  
		Last Modified: Sat, 21 Jan 2017 01:04:15 GMT  
		Size: 13.1 KB (13102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5b7abd8f1d675f88cee28a2609a09ed7671fe489fd99baf9b1afddce0987a8`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7907db82d0f5e31560d8cc1e1723e197c2e8cc4ffb838651dc97a28b2c675878`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292472af402fb13d23a6412f74aa8b62bd86cf168472d99428ca3e6a0d819e31`  
		Last Modified: Sat, 21 Jan 2017 01:04:13 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
