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
$ docker pull php-zendserver@sha256:76cc1f7096a9bcc1c3fa6499078fc4789f0c73431dabb904ee0497ba5cef7645
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336238332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3829b112a6883f6953b711cd91a68d560473017efc3b9230c6fa206b3bfb94`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:15:06 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 26 Sep 2016 22:23:58 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:25:38 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:25:40 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:25:40 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:25:41 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:25:42 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:25:43 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:25:43 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:25:46 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:25:47 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:25:48 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:25:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:26:46 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:26:47 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:26:47 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:26:48 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:26:49 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:26:49 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:26:51 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:26:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2847178c92e5793584108704fa0e7b306de8a65e86c5eb597fd8b133ea6179f`  
		Last Modified: Mon, 26 Sep 2016 22:18:25 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19521ca83682910b4dcefabdd59769da62021b17975aafd89da5cedfcf8f83ec`  
		Last Modified: Mon, 26 Sep 2016 22:27:07 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b4adeb5822b2e4e8af7dfc7ee1434e8d1b0bf5ea14008936ddc09c840a928`  
		Last Modified: Mon, 26 Sep 2016 22:27:58 GMT  
		Size: 260.4 MB (260418031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413b0560b0678febe067a5447a3ece139bba987f7cac6efff6bf53b5ef85bbf6`  
		Last Modified: Mon, 26 Sep 2016 22:27:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfce669938f893727e2e016af71a311ec4bb29d8fd2641f5a45c1ffda410aeb`  
		Last Modified: Mon, 26 Sep 2016 22:27:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e24f89c5ce89167af15a892475e3c42d4a9b53dc4b1e9e37954ac2d47747f88`  
		Last Modified: Mon, 26 Sep 2016 22:27:04 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badc5e389bf934bac554a5e887a4d4bfd1471b6a09fbb025e0274f9b976716c7`  
		Last Modified: Mon, 26 Sep 2016 22:27:04 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288fe862b22074d6e00fe0d8d46adf029d001a80ac8a69cbc796917a6516023a`  
		Last Modified: Mon, 26 Sep 2016 22:27:03 GMT  
		Size: 463.1 KB (463058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c0f326e1f761ee5a9c17ca0ea339db3eb78b07859c897e14c35e8d27c754d0`  
		Last Modified: Mon, 26 Sep 2016 22:27:02 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689d14c4ef4d551a3f2fc0e5fb87d187df4b0fc9d2f6e2ba20b1ff4b7c92e978`  
		Last Modified: Mon, 26 Sep 2016 22:27:02 GMT  
		Size: 457.0 KB (456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e375ec48b15c7dc0d54536090e0c555a2be62019300b3625a5217dcb0e09a4`  
		Last Modified: Mon, 26 Sep 2016 22:27:01 GMT  
		Size: 9.1 MB (9077576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1321e0621d63c45b054b367149695ff71e27b42e8cd082b422feef04410b0f`  
		Last Modified: Mon, 26 Sep 2016 22:26:59 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605a3a9a1057a358361ac73584ee8822af42411b5fe90f5b007353f00ba76af4`  
		Last Modified: Mon, 26 Sep 2016 22:26:59 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efd25e18a44c63f9a2a4813fe4a6da655015bcf42a6c4241252c345218a5c58`  
		Last Modified: Mon, 26 Sep 2016 22:27:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d112ba81f7a34e998cf61c06ab8aa353db114f03d8159e54796fa75de9dffe1b`  
		Last Modified: Mon, 26 Sep 2016 22:27:00 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:76cc1f7096a9bcc1c3fa6499078fc4789f0c73431dabb904ee0497ba5cef7645
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336238332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3829b112a6883f6953b711cd91a68d560473017efc3b9230c6fa206b3bfb94`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:15:06 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 26 Sep 2016 22:23:58 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:25:38 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:25:40 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:25:40 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:25:41 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:25:42 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:25:43 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:25:43 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:25:46 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:25:47 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:25:48 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:25:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:26:46 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:26:47 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:26:47 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:26:48 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:26:49 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:26:49 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:26:51 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:26:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2847178c92e5793584108704fa0e7b306de8a65e86c5eb597fd8b133ea6179f`  
		Last Modified: Mon, 26 Sep 2016 22:18:25 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19521ca83682910b4dcefabdd59769da62021b17975aafd89da5cedfcf8f83ec`  
		Last Modified: Mon, 26 Sep 2016 22:27:07 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b4adeb5822b2e4e8af7dfc7ee1434e8d1b0bf5ea14008936ddc09c840a928`  
		Last Modified: Mon, 26 Sep 2016 22:27:58 GMT  
		Size: 260.4 MB (260418031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413b0560b0678febe067a5447a3ece139bba987f7cac6efff6bf53b5ef85bbf6`  
		Last Modified: Mon, 26 Sep 2016 22:27:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfce669938f893727e2e016af71a311ec4bb29d8fd2641f5a45c1ffda410aeb`  
		Last Modified: Mon, 26 Sep 2016 22:27:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e24f89c5ce89167af15a892475e3c42d4a9b53dc4b1e9e37954ac2d47747f88`  
		Last Modified: Mon, 26 Sep 2016 22:27:04 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badc5e389bf934bac554a5e887a4d4bfd1471b6a09fbb025e0274f9b976716c7`  
		Last Modified: Mon, 26 Sep 2016 22:27:04 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288fe862b22074d6e00fe0d8d46adf029d001a80ac8a69cbc796917a6516023a`  
		Last Modified: Mon, 26 Sep 2016 22:27:03 GMT  
		Size: 463.1 KB (463058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c0f326e1f761ee5a9c17ca0ea339db3eb78b07859c897e14c35e8d27c754d0`  
		Last Modified: Mon, 26 Sep 2016 22:27:02 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689d14c4ef4d551a3f2fc0e5fb87d187df4b0fc9d2f6e2ba20b1ff4b7c92e978`  
		Last Modified: Mon, 26 Sep 2016 22:27:02 GMT  
		Size: 457.0 KB (456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e375ec48b15c7dc0d54536090e0c555a2be62019300b3625a5217dcb0e09a4`  
		Last Modified: Mon, 26 Sep 2016 22:27:01 GMT  
		Size: 9.1 MB (9077576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1321e0621d63c45b054b367149695ff71e27b42e8cd082b422feef04410b0f`  
		Last Modified: Mon, 26 Sep 2016 22:26:59 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605a3a9a1057a358361ac73584ee8822af42411b5fe90f5b007353f00ba76af4`  
		Last Modified: Mon, 26 Sep 2016 22:26:59 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efd25e18a44c63f9a2a4813fe4a6da655015bcf42a6c4241252c345218a5c58`  
		Last Modified: Mon, 26 Sep 2016 22:27:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d112ba81f7a34e998cf61c06ab8aa353db114f03d8159e54796fa75de9dffe1b`  
		Last Modified: Mon, 26 Sep 2016 22:27:00 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:76cc1f7096a9bcc1c3fa6499078fc4789f0c73431dabb904ee0497ba5cef7645
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.2 MB (336238332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3829b112a6883f6953b711cd91a68d560473017efc3b9230c6fa206b3bfb94`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 26 Sep 2016 21:26:04 GMT
ADD file:561625b38aa88058c3af9d99be9d8b8d07f24e9d1737869e422540deeebb4443 in / 
# Mon, 26 Sep 2016 21:26:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 26 Sep 2016 21:26:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 26 Sep 2016 21:26:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 26 Sep 2016 21:26:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 26 Sep 2016 21:26:09 GMT
CMD ["/bin/bash"]
# Mon, 26 Sep 2016 22:15:06 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 26 Sep 2016 22:23:58 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:25:38 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:25:40 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:25:40 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:25:41 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:25:42 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:25:43 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:25:43 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:25:46 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:25:47 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:25:48 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:25:54 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:26:46 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:26:47 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:26:47 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:26:48 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:26:49 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:26:49 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:26:50 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:26:51 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:26:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:04c996abc2442fb0534f018543f0352647de3a65a3b321628b8cd1ceecedc3f6`  
		Last Modified: Mon, 26 Sep 2016 21:28:04 GMT  
		Size: 65.7 MB (65702977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394d3da86fe44806b96c68b5c51bd6e38d287b2dde4ef89c011243ffc6542b9`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bac77aae22d4292624c1db7efe5c2face4a104d8967c9f63e22230aebfeceda8`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48b86b78e975768669fb7f9e20166f994ab4949a878b642927c28f3f169390d`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b3dd842bf5577e855c84e1273582a799616748c6b13ac9ecb2a49ee2477cbc`  
		Last Modified: Mon, 26 Sep 2016 21:27:45 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2847178c92e5793584108704fa0e7b306de8a65e86c5eb597fd8b133ea6179f`  
		Last Modified: Mon, 26 Sep 2016 22:18:25 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19521ca83682910b4dcefabdd59769da62021b17975aafd89da5cedfcf8f83ec`  
		Last Modified: Mon, 26 Sep 2016 22:27:07 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:258b4adeb5822b2e4e8af7dfc7ee1434e8d1b0bf5ea14008936ddc09c840a928`  
		Last Modified: Mon, 26 Sep 2016 22:27:58 GMT  
		Size: 260.4 MB (260418031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413b0560b0678febe067a5447a3ece139bba987f7cac6efff6bf53b5ef85bbf6`  
		Last Modified: Mon, 26 Sep 2016 22:27:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdfce669938f893727e2e016af71a311ec4bb29d8fd2641f5a45c1ffda410aeb`  
		Last Modified: Mon, 26 Sep 2016 22:27:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e24f89c5ce89167af15a892475e3c42d4a9b53dc4b1e9e37954ac2d47747f88`  
		Last Modified: Mon, 26 Sep 2016 22:27:04 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:badc5e389bf934bac554a5e887a4d4bfd1471b6a09fbb025e0274f9b976716c7`  
		Last Modified: Mon, 26 Sep 2016 22:27:04 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288fe862b22074d6e00fe0d8d46adf029d001a80ac8a69cbc796917a6516023a`  
		Last Modified: Mon, 26 Sep 2016 22:27:03 GMT  
		Size: 463.1 KB (463058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c0f326e1f761ee5a9c17ca0ea339db3eb78b07859c897e14c35e8d27c754d0`  
		Last Modified: Mon, 26 Sep 2016 22:27:02 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689d14c4ef4d551a3f2fc0e5fb87d187df4b0fc9d2f6e2ba20b1ff4b7c92e978`  
		Last Modified: Mon, 26 Sep 2016 22:27:02 GMT  
		Size: 457.0 KB (456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e375ec48b15c7dc0d54536090e0c555a2be62019300b3625a5217dcb0e09a4`  
		Last Modified: Mon, 26 Sep 2016 22:27:01 GMT  
		Size: 9.1 MB (9077576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1321e0621d63c45b054b367149695ff71e27b42e8cd082b422feef04410b0f`  
		Last Modified: Mon, 26 Sep 2016 22:26:59 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605a3a9a1057a358361ac73584ee8822af42411b5fe90f5b007353f00ba76af4`  
		Last Modified: Mon, 26 Sep 2016 22:26:59 GMT  
		Size: 2.5 KB (2498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8efd25e18a44c63f9a2a4813fe4a6da655015bcf42a6c4241252c345218a5c58`  
		Last Modified: Mon, 26 Sep 2016 22:27:01 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d112ba81f7a34e998cf61c06ab8aa353db114f03d8159e54796fa75de9dffe1b`  
		Last Modified: Mon, 26 Sep 2016 22:27:00 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
