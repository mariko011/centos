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
$ docker pull php-zendserver@sha256:03d4368ca47fc52ea229b30e63dab166a3cd23a728d9c0465c9003da0c240b17
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.6 MB (327570689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7299743e7ce2005d4a4f82eeea83864ca786f9f2f3734bfbae5c0c18c7ce4c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:17:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:20:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:20:25 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:20:25 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:20:26 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:20:27 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:20:27 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:20:28 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:20:32 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:20:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:20:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:20:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:21:34 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:21:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:21:35 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:21:36 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:21:37 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:21:37 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:21:37 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:21:38 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:21:38 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:21:39 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:21:39 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d20b5874468d9eb8c1eb047f2ccc1699e158c6b8bc242b0d891da217622777`  
		Last Modified: Thu, 13 Oct 2016 23:22:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b11fa230545cc60ba669f7a2e504c22ad206a53daf9a5d4a0b5c7396b8ba9`  
		Last Modified: Thu, 13 Oct 2016 23:23:03 GMT  
		Size: 251.6 MB (251566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac483d48d1f173470931a1e1bc2dd2aa992ef1c9207a5a4bbaec45e231ed69e2`  
		Last Modified: Thu, 13 Oct 2016 23:22:10 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fef86de14cf4e1f270126131636fe2fd5b0044cc3a48c5a5e268b31b10e98f`  
		Last Modified: Thu, 13 Oct 2016 23:22:10 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a737730d35d753b669b0d5062a1c07cfbb2284159d1807ad61e0376ae4040b6d`  
		Last Modified: Thu, 13 Oct 2016 23:22:10 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3a8a0754f0c037486eb247906dfe06f1dd986f52c9073920410307936e0c40`  
		Last Modified: Thu, 13 Oct 2016 23:22:07 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7da02a4a88b367c84425521a65ddf87a616d6fa5208ce0b6c2d6f6ee2416f6`  
		Last Modified: Thu, 13 Oct 2016 23:22:07 GMT  
		Size: 471.5 KB (471521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc789fb6a79a1b162748ee8460666332f7ee0ff49c72cec9f4da73f0101a1f6`  
		Last Modified: Thu, 13 Oct 2016 23:22:07 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddc0a6e45f9bd62fc2f52da86c0ee423a69f092f1119279c8d8719b1094fefa`  
		Last Modified: Thu, 13 Oct 2016 23:22:06 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b01c8b8943796cd6c15a053d452e0c3313ba7cbd1a213fad4a0c98898d8fe85`  
		Last Modified: Thu, 13 Oct 2016 23:22:08 GMT  
		Size: 9.3 MB (9252660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ec7b282b6af06ac63256b1a7c71db7122080044cb817cfddf0eef650b51e2f`  
		Last Modified: Thu, 13 Oct 2016 23:22:03 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2685336470b18ea577b3233044b427939757adbb224bb5dc218bff9166cdd82`  
		Last Modified: Thu, 13 Oct 2016 23:22:04 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b777f165971d49b0947a996d803280d38edb7b9f336e930035767a929d8d61e1`  
		Last Modified: Thu, 13 Oct 2016 23:22:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db878a693e46b456cb32f33f528ebf9475295c3271ae8fcb68bf909be06c38f`  
		Last Modified: Thu, 13 Oct 2016 23:22:04 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:03d4368ca47fc52ea229b30e63dab166a3cd23a728d9c0465c9003da0c240b17
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.6 MB (327570689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c7299743e7ce2005d4a4f82eeea83864ca786f9f2f3734bfbae5c0c18c7ce4c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:17:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:20:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:20:25 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:20:25 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:20:26 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:20:27 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:20:27 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:20:28 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:20:32 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:20:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:20:34 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:20:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:21:34 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:21:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:21:35 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:21:36 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:21:37 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:21:37 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:21:37 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:21:38 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:21:38 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:21:39 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:21:39 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d20b5874468d9eb8c1eb047f2ccc1699e158c6b8bc242b0d891da217622777`  
		Last Modified: Thu, 13 Oct 2016 23:22:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7b11fa230545cc60ba669f7a2e504c22ad206a53daf9a5d4a0b5c7396b8ba9`  
		Last Modified: Thu, 13 Oct 2016 23:23:03 GMT  
		Size: 251.6 MB (251566834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac483d48d1f173470931a1e1bc2dd2aa992ef1c9207a5a4bbaec45e231ed69e2`  
		Last Modified: Thu, 13 Oct 2016 23:22:10 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fef86de14cf4e1f270126131636fe2fd5b0044cc3a48c5a5e268b31b10e98f`  
		Last Modified: Thu, 13 Oct 2016 23:22:10 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a737730d35d753b669b0d5062a1c07cfbb2284159d1807ad61e0376ae4040b6d`  
		Last Modified: Thu, 13 Oct 2016 23:22:10 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3a8a0754f0c037486eb247906dfe06f1dd986f52c9073920410307936e0c40`  
		Last Modified: Thu, 13 Oct 2016 23:22:07 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7da02a4a88b367c84425521a65ddf87a616d6fa5208ce0b6c2d6f6ee2416f6`  
		Last Modified: Thu, 13 Oct 2016 23:22:07 GMT  
		Size: 471.5 KB (471521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc789fb6a79a1b162748ee8460666332f7ee0ff49c72cec9f4da73f0101a1f6`  
		Last Modified: Thu, 13 Oct 2016 23:22:07 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddc0a6e45f9bd62fc2f52da86c0ee423a69f092f1119279c8d8719b1094fefa`  
		Last Modified: Thu, 13 Oct 2016 23:22:06 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b01c8b8943796cd6c15a053d452e0c3313ba7cbd1a213fad4a0c98898d8fe85`  
		Last Modified: Thu, 13 Oct 2016 23:22:08 GMT  
		Size: 9.3 MB (9252660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ec7b282b6af06ac63256b1a7c71db7122080044cb817cfddf0eef650b51e2f`  
		Last Modified: Thu, 13 Oct 2016 23:22:03 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2685336470b18ea577b3233044b427939757adbb224bb5dc218bff9166cdd82`  
		Last Modified: Thu, 13 Oct 2016 23:22:04 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b777f165971d49b0947a996d803280d38edb7b9f336e930035767a929d8d61e1`  
		Last Modified: Thu, 13 Oct 2016 23:22:04 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db878a693e46b456cb32f33f528ebf9475295c3271ae8fcb68bf909be06c38f`  
		Last Modified: Thu, 13 Oct 2016 23:22:04 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:0f1ececa7939fec1af0612a396732ae09ebe7323635375b8b8d4c78394d350eb
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.6 MB (330553831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60489e2a732e3e97305e26637980cedeacec99edaca10b3a748af9557356b39d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:17:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:25:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:25:57 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:25:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:25:59 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:26:00 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:26:00 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:26:00 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:26:04 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:26:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:26:05 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:26:11 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:27:06 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:27:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:27:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:27:08 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:27:08 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:27:10 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:27:10 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:27:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d20b5874468d9eb8c1eb047f2ccc1699e158c6b8bc242b0d891da217622777`  
		Last Modified: Thu, 13 Oct 2016 23:22:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af06dec9a1bb514724af54121c269950ed9ae2b719033e44e05bf7a317bbc08a`  
		Last Modified: Thu, 13 Oct 2016 23:28:53 GMT  
		Size: 254.5 MB (254539653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c7d575edc03f24bc3e8e9ccbff1ac7f5f72acace8cffa4f47df5150f92a94c`  
		Last Modified: Thu, 13 Oct 2016 23:28:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ae943a9d8347dff6aa8f975baafb86d4f181e5d9235100c9cbf50543541cee`  
		Last Modified: Thu, 13 Oct 2016 23:28:01 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecc02cc2c8b3ae3c2cd322207242988f220bf0d5134599910c7231b7ccc4cc5`  
		Last Modified: Thu, 13 Oct 2016 23:28:00 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990057782ff76e6b2117383fbc6adb14a4eb3f44588c62dc3fad38b2a7b8f3f7`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0c0e8bc48442eafd4a601975b07ee0311f63f68752ac305169ec39f711fad8`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 473.5 KB (473466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b389cb4396c819d0c10f5276d37d4c0af4fa64e2838ce9a8bacca5469dcde2`  
		Last Modified: Thu, 13 Oct 2016 23:27:57 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1920863c2e2ce4bbb183d9ad11766ec62f57dc38fff3d629ee84bd5bc4b67b`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0fec0e341c858ce21fa5f7d96fe972c7b08ce692b597470d4f0775deda865d`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 9.3 MB (9261039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11032b51ab10fd9e71d977128c67f93f0dd5152c1791be3edc77cb2f37379263`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecde4bc2c442a13ce03adf9486f52f87b2c769cc4b0a4f40e38b0986a4764b79`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcd3761faef56d6dac8087caece80e647f732f61905ae322abd09b0ef7fe21a`  
		Last Modified: Thu, 13 Oct 2016 23:27:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026213428d8821ed08f315d2183d60908fe3c056df21c20d667b847c70c0867d`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:0f1ececa7939fec1af0612a396732ae09ebe7323635375b8b8d4c78394d350eb
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.6 MB (330553831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60489e2a732e3e97305e26637980cedeacec99edaca10b3a748af9557356b39d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:17:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:25:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:25:57 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:25:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:25:59 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:26:00 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:26:00 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:26:00 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:26:04 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:26:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:26:05 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:26:11 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:27:06 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:27:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:27:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:27:08 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:27:08 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:27:10 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:27:10 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:27:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d20b5874468d9eb8c1eb047f2ccc1699e158c6b8bc242b0d891da217622777`  
		Last Modified: Thu, 13 Oct 2016 23:22:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af06dec9a1bb514724af54121c269950ed9ae2b719033e44e05bf7a317bbc08a`  
		Last Modified: Thu, 13 Oct 2016 23:28:53 GMT  
		Size: 254.5 MB (254539653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c7d575edc03f24bc3e8e9ccbff1ac7f5f72acace8cffa4f47df5150f92a94c`  
		Last Modified: Thu, 13 Oct 2016 23:28:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ae943a9d8347dff6aa8f975baafb86d4f181e5d9235100c9cbf50543541cee`  
		Last Modified: Thu, 13 Oct 2016 23:28:01 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecc02cc2c8b3ae3c2cd322207242988f220bf0d5134599910c7231b7ccc4cc5`  
		Last Modified: Thu, 13 Oct 2016 23:28:00 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990057782ff76e6b2117383fbc6adb14a4eb3f44588c62dc3fad38b2a7b8f3f7`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0c0e8bc48442eafd4a601975b07ee0311f63f68752ac305169ec39f711fad8`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 473.5 KB (473466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b389cb4396c819d0c10f5276d37d4c0af4fa64e2838ce9a8bacca5469dcde2`  
		Last Modified: Thu, 13 Oct 2016 23:27:57 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1920863c2e2ce4bbb183d9ad11766ec62f57dc38fff3d629ee84bd5bc4b67b`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0fec0e341c858ce21fa5f7d96fe972c7b08ce692b597470d4f0775deda865d`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 9.3 MB (9261039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11032b51ab10fd9e71d977128c67f93f0dd5152c1791be3edc77cb2f37379263`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecde4bc2c442a13ce03adf9486f52f87b2c769cc4b0a4f40e38b0986a4764b79`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcd3761faef56d6dac8087caece80e647f732f61905ae322abd09b0ef7fe21a`  
		Last Modified: Thu, 13 Oct 2016 23:27:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026213428d8821ed08f315d2183d60908fe3c056df21c20d667b847c70c0867d`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:0f1ececa7939fec1af0612a396732ae09ebe7323635375b8b8d4c78394d350eb
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.6 MB (330553831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60489e2a732e3e97305e26637980cedeacec99edaca10b3a748af9557356b39d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:17:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:25:55 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:25:57 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:25:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:25:59 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:26:00 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:26:00 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:26:00 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:26:04 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:26:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:26:05 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:26:11 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:27:06 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:27:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:27:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:27:08 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:27:08 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:27:09 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:27:10 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:27:10 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:27:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d20b5874468d9eb8c1eb047f2ccc1699e158c6b8bc242b0d891da217622777`  
		Last Modified: Thu, 13 Oct 2016 23:22:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af06dec9a1bb514724af54121c269950ed9ae2b719033e44e05bf7a317bbc08a`  
		Last Modified: Thu, 13 Oct 2016 23:28:53 GMT  
		Size: 254.5 MB (254539653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c7d575edc03f24bc3e8e9ccbff1ac7f5f72acace8cffa4f47df5150f92a94c`  
		Last Modified: Thu, 13 Oct 2016 23:28:02 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ae943a9d8347dff6aa8f975baafb86d4f181e5d9235100c9cbf50543541cee`  
		Last Modified: Thu, 13 Oct 2016 23:28:01 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecc02cc2c8b3ae3c2cd322207242988f220bf0d5134599910c7231b7ccc4cc5`  
		Last Modified: Thu, 13 Oct 2016 23:28:00 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990057782ff76e6b2117383fbc6adb14a4eb3f44588c62dc3fad38b2a7b8f3f7`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df0c0e8bc48442eafd4a601975b07ee0311f63f68752ac305169ec39f711fad8`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 473.5 KB (473466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b389cb4396c819d0c10f5276d37d4c0af4fa64e2838ce9a8bacca5469dcde2`  
		Last Modified: Thu, 13 Oct 2016 23:27:57 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1920863c2e2ce4bbb183d9ad11766ec62f57dc38fff3d629ee84bd5bc4b67b`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0fec0e341c858ce21fa5f7d96fe972c7b08ce692b597470d4f0775deda865d`  
		Last Modified: Thu, 13 Oct 2016 23:27:59 GMT  
		Size: 9.3 MB (9261039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11032b51ab10fd9e71d977128c67f93f0dd5152c1791be3edc77cb2f37379263`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecde4bc2c442a13ce03adf9486f52f87b2c769cc4b0a4f40e38b0986a4764b79`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcd3761faef56d6dac8087caece80e647f732f61905ae322abd09b0ef7fe21a`  
		Last Modified: Thu, 13 Oct 2016 23:27:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026213428d8821ed08f315d2183d60908fe3c056df21c20d667b847c70c0867d`  
		Last Modified: Thu, 13 Oct 2016 23:27:55 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:a32381d2ede95b751a34b689ea24355011b3145531872ab00b9a44692671361c
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290858183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30088dd586aa785423d34656579ee6e0b08b9c87abc5c4c03ab393fe130b09b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:14:13 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Thu, 13 Oct 2016 23:14:13 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 13 Oct 2016 23:14:14 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 13 Oct 2016 23:14:15 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:14:16 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:16:25 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:16:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:16:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:16:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:16:28 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:16:28 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10060/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10061/tcp
# Thu, 13 Oct 2016 23:16:30 GMT
EXPOSE 10062/tcp
# Thu, 13 Oct 2016 23:16:30 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:16:30 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3d827556e712fcf8321358c9cfd038ebb757f035e322952c32ae060e2ccd36`  
		Last Modified: Thu, 13 Oct 2016 23:16:44 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65c07aac3207cfe4a3da4ea8152e2f364eb2a83901a63acf97041f6dcaca16`  
		Last Modified: Thu, 13 Oct 2016 23:16:42 GMT  
		Size: 11.7 KB (11693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5828c6f617d9e8d7c7b2ee83ace4884928ac481f73ffb5e45363eb47c6eead`  
		Last Modified: Thu, 13 Oct 2016 23:16:44 GMT  
		Size: 918.3 KB (918297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5139ca7879e66abca7233fe9e53940b59e401236f0deff6099e076a97161ee0d`  
		Last Modified: Thu, 13 Oct 2016 23:16:42 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff378a357c58de3642184ce5d7d11610f7f893233ac911cadb3e832093f6c7a6`  
		Last Modified: Thu, 13 Oct 2016 23:16:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9fd7d29f6fe8d4275871b641aaa255da95f615edc3867654e0948a80ba3386`  
		Last Modified: Thu, 13 Oct 2016 23:17:25 GMT  
		Size: 224.1 MB (224137296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be074a431e389dc74d90fb28da9bae43d25dbcce7b7ede32fce256b9b10c5ee2`  
		Last Modified: Thu, 13 Oct 2016 23:16:39 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d8b3e20f6a319d063bb42bc36f71cad0bdfaec78d23648138975ed6dd87798`  
		Last Modified: Thu, 13 Oct 2016 23:16:40 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fc180d650a9d35cbd7c9b7cf2aa116b63786d9b2d9852fa65330706d21e11b`  
		Last Modified: Thu, 13 Oct 2016 23:16:39 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:a32381d2ede95b751a34b689ea24355011b3145531872ab00b9a44692671361c
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290858183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30088dd586aa785423d34656579ee6e0b08b9c87abc5c4c03ab393fe130b09b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:14:13 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Thu, 13 Oct 2016 23:14:13 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 13 Oct 2016 23:14:14 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 13 Oct 2016 23:14:15 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:14:16 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:16:25 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:16:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:16:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:16:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:16:28 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:16:28 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10060/tcp
# Thu, 13 Oct 2016 23:16:29 GMT
EXPOSE 10061/tcp
# Thu, 13 Oct 2016 23:16:30 GMT
EXPOSE 10062/tcp
# Thu, 13 Oct 2016 23:16:30 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:16:30 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3d827556e712fcf8321358c9cfd038ebb757f035e322952c32ae060e2ccd36`  
		Last Modified: Thu, 13 Oct 2016 23:16:44 GMT  
		Size: 998.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc65c07aac3207cfe4a3da4ea8152e2f364eb2a83901a63acf97041f6dcaca16`  
		Last Modified: Thu, 13 Oct 2016 23:16:42 GMT  
		Size: 11.7 KB (11693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5828c6f617d9e8d7c7b2ee83ace4884928ac481f73ffb5e45363eb47c6eead`  
		Last Modified: Thu, 13 Oct 2016 23:16:44 GMT  
		Size: 918.3 KB (918297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5139ca7879e66abca7233fe9e53940b59e401236f0deff6099e076a97161ee0d`  
		Last Modified: Thu, 13 Oct 2016 23:16:42 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff378a357c58de3642184ce5d7d11610f7f893233ac911cadb3e832093f6c7a6`  
		Last Modified: Thu, 13 Oct 2016 23:16:41 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9fd7d29f6fe8d4275871b641aaa255da95f615edc3867654e0948a80ba3386`  
		Last Modified: Thu, 13 Oct 2016 23:17:25 GMT  
		Size: 224.1 MB (224137296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be074a431e389dc74d90fb28da9bae43d25dbcce7b7ede32fce256b9b10c5ee2`  
		Last Modified: Thu, 13 Oct 2016 23:16:39 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d8b3e20f6a319d063bb42bc36f71cad0bdfaec78d23648138975ed6dd87798`  
		Last Modified: Thu, 13 Oct 2016 23:16:40 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29fc180d650a9d35cbd7c9b7cf2aa116b63786d9b2d9852fa65330706d21e11b`  
		Last Modified: Thu, 13 Oct 2016 23:16:39 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0`

```console
$ docker pull php-zendserver@sha256:b9c96440fb0d414fea26e2b784f4bc0d97c33cc4d0a626f405c456b31b7ac5fa
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.0 MB (379033307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ca4b6438bfa452bd6636511e59ba7b2c613d08c21c5b356079e05d054a0135`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:29:25 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:32:12 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:32:14 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:32:14 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:32:15 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:32:21 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:32:21 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:32:21 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:32:25 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:32:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:32:26 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:32:31 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:33:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:33:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:33:30 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:33:31 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:33:31 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:33:31 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:33:32 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:33:37 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:33:37 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:33:38 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:33:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df78834fd912bc60cec1fb25904de729e574ce1f7f06b73001114aa8bfd46ff`  
		Last Modified: Thu, 13 Oct 2016 23:33:53 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b15d2ceb50fca01be7497e7e1fdec8f2e4458957324f511868c026ce885032`  
		Last Modified: Thu, 13 Oct 2016 23:35:09 GMT  
		Size: 303.0 MB (303025537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b0bde511e13c8e012e8a077f9e8802e0830161629c25437950eef134114440`  
		Last Modified: Thu, 13 Oct 2016 23:33:53 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126f5f07b13600e599840f6fe3430e853f1be0b95b810cffe676e087b54abfb8`  
		Last Modified: Thu, 13 Oct 2016 23:33:52 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f45b10ae9cfedcc97852a32aebc17f3aed6566dedcb3aa163491f438e22496`  
		Last Modified: Thu, 13 Oct 2016 23:33:51 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f1846ed9a15d561f1e42530b7cffeae705db68aa77be7e7f587873caa5361`  
		Last Modified: Thu, 13 Oct 2016 23:33:51 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e894df8d0ee342bb3cabc217d06d4dd8c285ac5aa590f6b7a85a3d68d65426`  
		Last Modified: Thu, 13 Oct 2016 23:33:50 GMT  
		Size: 467.0 KB (467030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d845ebec75d990744af13f583500d1290a42a758a9caeac6a724d456eeaeaeed`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f558aae1403b2ab32f4722e0d744e18f7e8f8f0e803a21047cb033afe5ba7d76`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 457.0 KB (456963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2b191eae5a74b6a20436fd1441b3ad1be3e679b0e126dc5b62f891b4361f8`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 9.3 MB (9261071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5e218e226face279de34a488015ae480960c26331a033a8564265ba69c3b28`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 13.1 KB (13102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a84b323275c6fc4f3ce89ac5ed05e268424dd02da3162e5265dc9c0af25a8e9`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7134b047da7407b25a12404d292d7b035fc5dfe8d84f0503aae682abb6cf7261`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542509262a698a77b09701d6b19042675a102a0bcf41170da8c36b72e641600d`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:b9c96440fb0d414fea26e2b784f4bc0d97c33cc4d0a626f405c456b31b7ac5fa
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.0 MB (379033307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ca4b6438bfa452bd6636511e59ba7b2c613d08c21c5b356079e05d054a0135`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:29:25 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:32:12 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:32:14 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:32:14 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:32:15 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:32:21 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:32:21 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:32:21 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:32:25 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:32:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:32:26 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:32:31 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:33:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:33:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:33:30 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:33:31 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:33:31 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:33:31 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:33:32 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:33:37 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:33:37 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:33:38 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:33:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df78834fd912bc60cec1fb25904de729e574ce1f7f06b73001114aa8bfd46ff`  
		Last Modified: Thu, 13 Oct 2016 23:33:53 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b15d2ceb50fca01be7497e7e1fdec8f2e4458957324f511868c026ce885032`  
		Last Modified: Thu, 13 Oct 2016 23:35:09 GMT  
		Size: 303.0 MB (303025537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b0bde511e13c8e012e8a077f9e8802e0830161629c25437950eef134114440`  
		Last Modified: Thu, 13 Oct 2016 23:33:53 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126f5f07b13600e599840f6fe3430e853f1be0b95b810cffe676e087b54abfb8`  
		Last Modified: Thu, 13 Oct 2016 23:33:52 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f45b10ae9cfedcc97852a32aebc17f3aed6566dedcb3aa163491f438e22496`  
		Last Modified: Thu, 13 Oct 2016 23:33:51 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f1846ed9a15d561f1e42530b7cffeae705db68aa77be7e7f587873caa5361`  
		Last Modified: Thu, 13 Oct 2016 23:33:51 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e894df8d0ee342bb3cabc217d06d4dd8c285ac5aa590f6b7a85a3d68d65426`  
		Last Modified: Thu, 13 Oct 2016 23:33:50 GMT  
		Size: 467.0 KB (467030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d845ebec75d990744af13f583500d1290a42a758a9caeac6a724d456eeaeaeed`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f558aae1403b2ab32f4722e0d744e18f7e8f8f0e803a21047cb033afe5ba7d76`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 457.0 KB (456963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2b191eae5a74b6a20436fd1441b3ad1be3e679b0e126dc5b62f891b4361f8`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 9.3 MB (9261071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5e218e226face279de34a488015ae480960c26331a033a8564265ba69c3b28`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 13.1 KB (13102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a84b323275c6fc4f3ce89ac5ed05e268424dd02da3162e5265dc9c0af25a8e9`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7134b047da7407b25a12404d292d7b035fc5dfe8d84f0503aae682abb6cf7261`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542509262a698a77b09701d6b19042675a102a0bcf41170da8c36b72e641600d`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:b9c96440fb0d414fea26e2b784f4bc0d97c33cc4d0a626f405c456b31b7ac5fa
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.0 MB (379033307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ca4b6438bfa452bd6636511e59ba7b2c613d08c21c5b356079e05d054a0135`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:01 GMT
ADD file:bc2e0eb31424a88aadc42486b6762c321e3457527daa43bcad45819d38c3a2ed in / 
# Thu, 13 Oct 2016 21:13:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:05 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:06 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 23:17:48 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Oct 2016 23:29:25 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Oct 2016 23:32:12 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Oct 2016 23:32:14 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Oct 2016 23:32:14 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Oct 2016 23:32:15 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Oct 2016 23:32:21 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Oct 2016 23:32:21 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Oct 2016 23:32:21 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Oct 2016 23:32:25 GMT
RUN apt-get install -y curl
# Thu, 13 Oct 2016 23:32:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Oct 2016 23:32:26 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Oct 2016 23:32:31 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Oct 2016 23:33:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Oct 2016 23:33:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Oct 2016 23:33:30 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Oct 2016 23:33:31 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Oct 2016 23:33:31 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Oct 2016 23:33:31 GMT
EXPOSE 80/tcp
# Thu, 13 Oct 2016 23:33:32 GMT
EXPOSE 443/tcp
# Thu, 13 Oct 2016 23:33:37 GMT
EXPOSE 10081/tcp
# Thu, 13 Oct 2016 23:33:37 GMT
EXPOSE 10082/tcp
# Thu, 13 Oct 2016 23:33:38 GMT
WORKDIR /var/www/html
# Thu, 13 Oct 2016 23:33:38 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bf5d463153227eaf2c0a3d3f479bb5f2357f060fbce8088e61b2329d3d312d0c`  
		Last Modified: Thu, 13 Oct 2016 21:14:45 GMT  
		Size: 65.7 MB (65703010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f13e0ac480c2c862ae7aca8536bf2250b4d410468e6d33dc2f8ade1d368e184`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 71.5 KB (71550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8988b5b3097ba5b9f10f45cd3545adea8b70bf9779f987d5b99cca08be818c3`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40af181810e71ae2b871c81aed2bc990d2748f0e11adedda056f12cb4af08712`  
		Last Modified: Thu, 13 Oct 2016 21:14:23 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f7c7e5c03ef6687a44551a4675336e6500f5379f4cc7e5b14b20ac05f127c4`  
		Last Modified: Thu, 13 Oct 2016 21:14:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4704ff743b7b8d1fa799ccb9210eb2a9693855f627cf73cc127a71b1ba8d38e8`  
		Last Modified: Thu, 13 Oct 2016 23:22:13 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0df78834fd912bc60cec1fb25904de729e574ce1f7f06b73001114aa8bfd46ff`  
		Last Modified: Thu, 13 Oct 2016 23:33:53 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b15d2ceb50fca01be7497e7e1fdec8f2e4458957324f511868c026ce885032`  
		Last Modified: Thu, 13 Oct 2016 23:35:09 GMT  
		Size: 303.0 MB (303025537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b0bde511e13c8e012e8a077f9e8802e0830161629c25437950eef134114440`  
		Last Modified: Thu, 13 Oct 2016 23:33:53 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126f5f07b13600e599840f6fe3430e853f1be0b95b810cffe676e087b54abfb8`  
		Last Modified: Thu, 13 Oct 2016 23:33:52 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f45b10ae9cfedcc97852a32aebc17f3aed6566dedcb3aa163491f438e22496`  
		Last Modified: Thu, 13 Oct 2016 23:33:51 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f1846ed9a15d561f1e42530b7cffeae705db68aa77be7e7f587873caa5361`  
		Last Modified: Thu, 13 Oct 2016 23:33:51 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e894df8d0ee342bb3cabc217d06d4dd8c285ac5aa590f6b7a85a3d68d65426`  
		Last Modified: Thu, 13 Oct 2016 23:33:50 GMT  
		Size: 467.0 KB (467030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d845ebec75d990744af13f583500d1290a42a758a9caeac6a724d456eeaeaeed`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f558aae1403b2ab32f4722e0d744e18f7e8f8f0e803a21047cb033afe5ba7d76`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 457.0 KB (456963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7df2b191eae5a74b6a20436fd1441b3ad1be3e679b0e126dc5b62f891b4361f8`  
		Last Modified: Thu, 13 Oct 2016 23:33:49 GMT  
		Size: 9.3 MB (9261071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad5e218e226face279de34a488015ae480960c26331a033a8564265ba69c3b28`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 13.1 KB (13102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a84b323275c6fc4f3ce89ac5ed05e268424dd02da3162e5265dc9c0af25a8e9`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7134b047da7407b25a12404d292d7b035fc5dfe8d84f0503aae682abb6cf7261`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:542509262a698a77b09701d6b19042675a102a0bcf41170da8c36b72e641600d`  
		Last Modified: Thu, 13 Oct 2016 23:33:46 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
