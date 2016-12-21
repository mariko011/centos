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
$ docker pull php-zendserver@sha256:eb72fb85b5593e653003034a00dcf4354f9be2fbadaa4667b64a58d861fe872c
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330723271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9367e806e37a2bce7785fca4d358ffe56a4be437ae7cc5cc593eee07c605a721`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 02:57:08 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 02:59:08 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 02:59:09 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 02:59:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 02:59:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 02:59:11 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 02:59:11 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 02:59:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 02:59:15 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 02:59:16 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 02:59:16 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 02:59:22 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:00:19 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:00:19 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:00:20 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:00:21 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:00:21 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:00:21 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:00:22 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1c71ca2f5b56c70aacb7c4a834c4ab987495298ccedb21d15737c8db49871e`  
		Last Modified: Wed, 21 Dec 2016 18:56:40 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d33f08d2e9d789593cd7a54211c6ecd9b9c7ca00060bb3a582cdf87a842c2e`  
		Last Modified: Wed, 21 Dec 2016 18:57:42 GMT  
		Size: 253.9 MB (253918058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08eac4c77be4aee780686a09deee5270ea7324256c538dd32bcc9c9b62dcbf`  
		Last Modified: Wed, 21 Dec 2016 18:56:38 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e6a686f21f1f341717c01a9111513ba4586fb07cd8cdf6d716f1ac3ddd842`  
		Last Modified: Wed, 21 Dec 2016 18:56:38 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8728b130fc8079c021eae04e55dea87ec13b3b53ba8e002af9096a69eb2dc9`  
		Last Modified: Wed, 21 Dec 2016 18:56:37 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ffc78978109134fe1448e18ef29b1ada673bc83b1221ea69be0eb5ac18e64d`  
		Last Modified: Wed, 21 Dec 2016 18:56:36 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dedeb1d8cb36be8f2a70e8967d1e7eee184fb18eccb14e459f393327dd67b77`  
		Last Modified: Wed, 21 Dec 2016 18:56:36 GMT  
		Size: 471.7 KB (471727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544cb367d73ca75458d74b1a98e1097685dbec1136aff32bbdbe32e9b6767fd8`  
		Last Modified: Wed, 21 Dec 2016 18:56:34 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd099c4e61b0319c68189d5b7074545e0e7738b44bf692db4769774f77d87620`  
		Last Modified: Wed, 21 Dec 2016 18:56:34 GMT  
		Size: 458.1 KB (458058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb2b42111f94ea88f862566ea62b3f48d3d732f921e6683a639ce65420377da`  
		Last Modified: Wed, 21 Dec 2016 18:56:38 GMT  
		Size: 10.1 MB (10061511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5dc8ca215aef1711c754c26932f98642c4979fecef6d6e648da627c1eed00e`  
		Last Modified: Wed, 21 Dec 2016 18:56:32 GMT  
		Size: 13.1 KB (13108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2eb0f15593ff7ef48721d26a75412f97cda5f0aab48697e459027eec27ee9`  
		Last Modified: Wed, 21 Dec 2016 18:56:31 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8565ad6d33cb33537e71e0013d8bf388f7a106248382b423065650d3865c1250`  
		Last Modified: Wed, 21 Dec 2016 18:56:31 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17c8e05e67b3434524ab9d4298f784f7b4259878a8e1599197bd51263ab5d98`  
		Last Modified: Wed, 21 Dec 2016 18:56:33 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:eb72fb85b5593e653003034a00dcf4354f9be2fbadaa4667b64a58d861fe872c
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330723271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9367e806e37a2bce7785fca4d358ffe56a4be437ae7cc5cc593eee07c605a721`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 02:57:08 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 02:59:08 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 02:59:09 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 02:59:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 02:59:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 02:59:11 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 02:59:11 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 02:59:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 02:59:15 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 02:59:16 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 02:59:16 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 02:59:22 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:00:19 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:00:19 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:00:20 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:00:21 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:00:21 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:00:21 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:00:22 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:00:22 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1c71ca2f5b56c70aacb7c4a834c4ab987495298ccedb21d15737c8db49871e`  
		Last Modified: Wed, 21 Dec 2016 18:56:40 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d33f08d2e9d789593cd7a54211c6ecd9b9c7ca00060bb3a582cdf87a842c2e`  
		Last Modified: Wed, 21 Dec 2016 18:57:42 GMT  
		Size: 253.9 MB (253918058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08eac4c77be4aee780686a09deee5270ea7324256c538dd32bcc9c9b62dcbf`  
		Last Modified: Wed, 21 Dec 2016 18:56:38 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861e6a686f21f1f341717c01a9111513ba4586fb07cd8cdf6d716f1ac3ddd842`  
		Last Modified: Wed, 21 Dec 2016 18:56:38 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8728b130fc8079c021eae04e55dea87ec13b3b53ba8e002af9096a69eb2dc9`  
		Last Modified: Wed, 21 Dec 2016 18:56:37 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ffc78978109134fe1448e18ef29b1ada673bc83b1221ea69be0eb5ac18e64d`  
		Last Modified: Wed, 21 Dec 2016 18:56:36 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dedeb1d8cb36be8f2a70e8967d1e7eee184fb18eccb14e459f393327dd67b77`  
		Last Modified: Wed, 21 Dec 2016 18:56:36 GMT  
		Size: 471.7 KB (471727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544cb367d73ca75458d74b1a98e1097685dbec1136aff32bbdbe32e9b6767fd8`  
		Last Modified: Wed, 21 Dec 2016 18:56:34 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd099c4e61b0319c68189d5b7074545e0e7738b44bf692db4769774f77d87620`  
		Last Modified: Wed, 21 Dec 2016 18:56:34 GMT  
		Size: 458.1 KB (458058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb2b42111f94ea88f862566ea62b3f48d3d732f921e6683a639ce65420377da`  
		Last Modified: Wed, 21 Dec 2016 18:56:38 GMT  
		Size: 10.1 MB (10061511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5dc8ca215aef1711c754c26932f98642c4979fecef6d6e648da627c1eed00e`  
		Last Modified: Wed, 21 Dec 2016 18:56:32 GMT  
		Size: 13.1 KB (13108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f2eb0f15593ff7ef48721d26a75412f97cda5f0aab48697e459027eec27ee9`  
		Last Modified: Wed, 21 Dec 2016 18:56:31 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8565ad6d33cb33537e71e0013d8bf388f7a106248382b423065650d3865c1250`  
		Last Modified: Wed, 21 Dec 2016 18:56:31 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17c8e05e67b3434524ab9d4298f784f7b4259878a8e1599197bd51263ab5d98`  
		Last Modified: Wed, 21 Dec 2016 18:56:33 GMT  
		Size: 1.2 KB (1234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:e054824479bfa2899fda913b5add5e30b9097bdda23bf93d50af5520a47b20a7
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325189403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a104317197f035d338cfaf39643fce4bee3e5d59344b0fc12ad2ea6b2a7d1d9b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 02:57:08 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 03:01:59 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 03:02:00 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 03:02:01 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 03:02:01 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 03:02:02 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 03:02:03 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 03:02:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 03:02:06 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 03:02:07 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 03:02:08 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 03:02:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:03:10 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:03:11 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:03:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:03:12 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:03:12 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:03:12 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:03:14 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1c71ca2f5b56c70aacb7c4a834c4ab987495298ccedb21d15737c8db49871e`  
		Last Modified: Wed, 21 Dec 2016 18:56:40 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e698476bc4a08b35cd6fcd6343053c4e4018c1f0d6cab434dc4c6172aa18c19d`  
		Last Modified: Wed, 21 Dec 2016 18:59:52 GMT  
		Size: 248.4 MB (248377628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be13d05a30f2b56fcb315c05bbd07bc84336e8195c1439df9fc31df9742eee3`  
		Last Modified: Wed, 21 Dec 2016 18:58:51 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9538a7bde057abb9e9e5a8ed57ea854210eeec4541302c5d8f58bf608a2f975`  
		Last Modified: Wed, 21 Dec 2016 18:58:50 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3132670fdb5cc6c37794a5a2beccb61bb34d6f968586d3d5b5f86ca37fab73`  
		Last Modified: Wed, 21 Dec 2016 18:58:49 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6245241d4040172cf9533c95bcd3278ed2b86d042b468026f66970a5bdff00`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb0ab501ccac93d55a7125b1768f2b4f2ae42d60d630b5ac360d8433405a1e4`  
		Last Modified: Wed, 21 Dec 2016 18:58:48 GMT  
		Size: 473.5 KB (473531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbffb3a2824d5f257d8021375c701481bde6e44157ba4260d3d04854e6d8b7a`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56852471dbc2ad2ab9b4c133cfb659945cf48f5193860fb92cbcd3dcbc0e0ce1`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 458.1 KB (458057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eb9a02058263c12f603c0b25b268c1f29e875f98a89c2cb00647189a366666`  
		Last Modified: Wed, 21 Dec 2016 18:58:50 GMT  
		Size: 10.1 MB (10066267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa578f5107344e42d8e996653d5ced2fb61b76c4e96c8962cf2750fd8bd88146`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e68f95369aee0c6cae93bd8963965804509477f5fd81a2bedb9e0346c023b6`  
		Last Modified: Wed, 21 Dec 2016 18:58:45 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3be4b0dba855a96671c4a9641e5a57e27bbb69ce34a331d547fba1d84192`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bd2763d99d1e1fe2519ea9ecf601e43d48320304149ebe7fc160b0e5e18484`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:e054824479bfa2899fda913b5add5e30b9097bdda23bf93d50af5520a47b20a7
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325189403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a104317197f035d338cfaf39643fce4bee3e5d59344b0fc12ad2ea6b2a7d1d9b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 02:57:08 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 03:01:59 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 03:02:00 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 03:02:01 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 03:02:01 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 03:02:02 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 03:02:03 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 03:02:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 03:02:06 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 03:02:07 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 03:02:08 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 03:02:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:03:10 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:03:11 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:03:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:03:12 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:03:12 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:03:12 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:03:14 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1c71ca2f5b56c70aacb7c4a834c4ab987495298ccedb21d15737c8db49871e`  
		Last Modified: Wed, 21 Dec 2016 18:56:40 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e698476bc4a08b35cd6fcd6343053c4e4018c1f0d6cab434dc4c6172aa18c19d`  
		Last Modified: Wed, 21 Dec 2016 18:59:52 GMT  
		Size: 248.4 MB (248377628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be13d05a30f2b56fcb315c05bbd07bc84336e8195c1439df9fc31df9742eee3`  
		Last Modified: Wed, 21 Dec 2016 18:58:51 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9538a7bde057abb9e9e5a8ed57ea854210eeec4541302c5d8f58bf608a2f975`  
		Last Modified: Wed, 21 Dec 2016 18:58:50 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3132670fdb5cc6c37794a5a2beccb61bb34d6f968586d3d5b5f86ca37fab73`  
		Last Modified: Wed, 21 Dec 2016 18:58:49 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6245241d4040172cf9533c95bcd3278ed2b86d042b468026f66970a5bdff00`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb0ab501ccac93d55a7125b1768f2b4f2ae42d60d630b5ac360d8433405a1e4`  
		Last Modified: Wed, 21 Dec 2016 18:58:48 GMT  
		Size: 473.5 KB (473531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbffb3a2824d5f257d8021375c701481bde6e44157ba4260d3d04854e6d8b7a`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56852471dbc2ad2ab9b4c133cfb659945cf48f5193860fb92cbcd3dcbc0e0ce1`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 458.1 KB (458057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eb9a02058263c12f603c0b25b268c1f29e875f98a89c2cb00647189a366666`  
		Last Modified: Wed, 21 Dec 2016 18:58:50 GMT  
		Size: 10.1 MB (10066267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa578f5107344e42d8e996653d5ced2fb61b76c4e96c8962cf2750fd8bd88146`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e68f95369aee0c6cae93bd8963965804509477f5fd81a2bedb9e0346c023b6`  
		Last Modified: Wed, 21 Dec 2016 18:58:45 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3be4b0dba855a96671c4a9641e5a57e27bbb69ce34a331d547fba1d84192`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bd2763d99d1e1fe2519ea9ecf601e43d48320304149ebe7fc160b0e5e18484`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:e054824479bfa2899fda913b5add5e30b9097bdda23bf93d50af5520a47b20a7
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.2 MB (325189403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a104317197f035d338cfaf39643fce4bee3e5d59344b0fc12ad2ea6b2a7d1d9b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 02:57:08 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 03:01:59 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 03:02:00 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 03:02:01 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 03:02:01 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 03:02:02 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 03:02:03 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 03:02:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 03:02:06 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 03:02:07 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 03:02:08 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 03:02:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:03:10 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:03:11 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:03:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:03:12 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:03:12 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:03:12 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:03:13 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:03:14 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1c71ca2f5b56c70aacb7c4a834c4ab987495298ccedb21d15737c8db49871e`  
		Last Modified: Wed, 21 Dec 2016 18:56:40 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e698476bc4a08b35cd6fcd6343053c4e4018c1f0d6cab434dc4c6172aa18c19d`  
		Last Modified: Wed, 21 Dec 2016 18:59:52 GMT  
		Size: 248.4 MB (248377628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be13d05a30f2b56fcb315c05bbd07bc84336e8195c1439df9fc31df9742eee3`  
		Last Modified: Wed, 21 Dec 2016 18:58:51 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9538a7bde057abb9e9e5a8ed57ea854210eeec4541302c5d8f58bf608a2f975`  
		Last Modified: Wed, 21 Dec 2016 18:58:50 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3132670fdb5cc6c37794a5a2beccb61bb34d6f968586d3d5b5f86ca37fab73`  
		Last Modified: Wed, 21 Dec 2016 18:58:49 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb6245241d4040172cf9533c95bcd3278ed2b86d042b468026f66970a5bdff00`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb0ab501ccac93d55a7125b1768f2b4f2ae42d60d630b5ac360d8433405a1e4`  
		Last Modified: Wed, 21 Dec 2016 18:58:48 GMT  
		Size: 473.5 KB (473531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbffb3a2824d5f257d8021375c701481bde6e44157ba4260d3d04854e6d8b7a`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56852471dbc2ad2ab9b4c133cfb659945cf48f5193860fb92cbcd3dcbc0e0ce1`  
		Last Modified: Wed, 21 Dec 2016 18:58:47 GMT  
		Size: 458.1 KB (458057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eb9a02058263c12f603c0b25b268c1f29e875f98a89c2cb00647189a366666`  
		Last Modified: Wed, 21 Dec 2016 18:58:50 GMT  
		Size: 10.1 MB (10066267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa578f5107344e42d8e996653d5ced2fb61b76c4e96c8962cf2750fd8bd88146`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e68f95369aee0c6cae93bd8963965804509477f5fd81a2bedb9e0346c023b6`  
		Last Modified: Wed, 21 Dec 2016 18:58:45 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3be4b0dba855a96671c4a9641e5a57e27bbb69ce34a331d547fba1d84192`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bd2763d99d1e1fe2519ea9ecf601e43d48320304149ebe7fc160b0e5e18484`  
		Last Modified: Wed, 21 Dec 2016 18:58:44 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:ba8db6a50f8a2052fdbcb0a05e39d94173ebd4920f7247e6f3479622332e9747
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289322224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d4449c4d5ea3fc23feddab028444ce04ea1af3734cecc4a216314c00153b64`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:54:43 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Fri, 16 Dec 2016 02:54:44 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 16 Dec 2016 02:54:44 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 16 Dec 2016 02:54:46 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 02:54:47 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 02:57:00 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 02:57:01 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 02:57:02 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 02:57:03 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 02:57:03 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 02:57:03 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 02:57:03 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 02:57:04 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 02:57:05 GMT
EXPOSE 10060/tcp
# Fri, 16 Dec 2016 02:57:05 GMT
EXPOSE 10061/tcp
# Fri, 16 Dec 2016 02:57:06 GMT
EXPOSE 10062/tcp
# Fri, 16 Dec 2016 02:57:06 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 02:57:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ce926188a3a43324c7a4431e8169cc56af23a5038402256dc123319ee32d05`  
		Last Modified: Wed, 21 Dec 2016 18:54:59 GMT  
		Size: 997.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501747d5aa3f2707375b6d58d8658823e2f07a44c0d163f955e2eed5efd716a7`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 11.7 KB (11695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320cbd6310f8284a5e1680409547cc090741e6a998ee0f42300d9c6db73cd66d`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 918.3 KB (918294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffab98199a453a60a1b87ec960916229960858199e480c4a103374005d27445`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644f3d84ce55d84ecb426a753d8027899acf3e323a0773272b48fa36fcd63aca`  
		Last Modified: Wed, 21 Dec 2016 18:54:54 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1e73cce242fa7618c02c6a5f4133671ffe5195cb519c32d3bac6c43e4f782f`  
		Last Modified: Wed, 21 Dec 2016 18:55:49 GMT  
		Size: 222.6 MB (222610140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64858c342c91fc004f51a1f19ec834aa4e61f6ff6ec60b160699c6f1342ab590`  
		Last Modified: Wed, 21 Dec 2016 18:54:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cddda2d2a0628c440d2efda869a039a93259f7a1f6084426c65d8704030017`  
		Last Modified: Wed, 21 Dec 2016 18:54:53 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310f22fcf9293ba9037e678931453f9781a5bb7ba53fad30352841fe911ef6ad`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:ba8db6a50f8a2052fdbcb0a05e39d94173ebd4920f7247e6f3479622332e9747
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.3 MB (289322224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5d4449c4d5ea3fc23feddab028444ce04ea1af3734cecc4a216314c00153b64`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:54:43 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Fri, 16 Dec 2016 02:54:44 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 16 Dec 2016 02:54:44 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 16 Dec 2016 02:54:46 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 02:54:47 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 02:57:00 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 02:57:01 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 02:57:02 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 02:57:03 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 02:57:03 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 02:57:03 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 02:57:03 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 02:57:04 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 02:57:05 GMT
EXPOSE 10060/tcp
# Fri, 16 Dec 2016 02:57:05 GMT
EXPOSE 10061/tcp
# Fri, 16 Dec 2016 02:57:06 GMT
EXPOSE 10062/tcp
# Fri, 16 Dec 2016 02:57:06 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 02:57:06 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ce926188a3a43324c7a4431e8169cc56af23a5038402256dc123319ee32d05`  
		Last Modified: Wed, 21 Dec 2016 18:54:59 GMT  
		Size: 997.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501747d5aa3f2707375b6d58d8658823e2f07a44c0d163f955e2eed5efd716a7`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 11.7 KB (11695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320cbd6310f8284a5e1680409547cc090741e6a998ee0f42300d9c6db73cd66d`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 918.3 KB (918294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffab98199a453a60a1b87ec960916229960858199e480c4a103374005d27445`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644f3d84ce55d84ecb426a753d8027899acf3e323a0773272b48fa36fcd63aca`  
		Last Modified: Wed, 21 Dec 2016 18:54:54 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d1e73cce242fa7618c02c6a5f4133671ffe5195cb519c32d3bac6c43e4f782f`  
		Last Modified: Wed, 21 Dec 2016 18:55:49 GMT  
		Size: 222.6 MB (222610140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64858c342c91fc004f51a1f19ec834aa4e61f6ff6ec60b160699c6f1342ab590`  
		Last Modified: Wed, 21 Dec 2016 18:54:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1cddda2d2a0628c440d2efda869a039a93259f7a1f6084426c65d8704030017`  
		Last Modified: Wed, 21 Dec 2016 18:54:53 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310f22fcf9293ba9037e678931453f9781a5bb7ba53fad30352841fe911ef6ad`  
		Last Modified: Wed, 21 Dec 2016 18:54:56 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0`

```console
$ docker pull php-zendserver@sha256:d1d11862bfdd25f79f79cbeef8e9d2a9cde4521ed67037c7bafde65dc5fc32c9
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.5 MB (376534765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db11637e7e937562c066016d866231f585655e822be3f6d66e19efcaa33a152`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 03:03:15 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 03:05:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 03:05:27 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 03:05:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 03:05:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 03:05:29 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 03:05:29 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 03:05:29 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 03:05:33 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 03:05:34 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 03:05:34 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 03:05:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:06:35 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:06:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:06:36 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:06:37 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:06:37 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:06:37 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:06:39 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:06:39 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f72432a6e11aba0fbbf8c20bc56b2141a636640c9f10dca706b56af4a04eb7`  
		Last Modified: Wed, 21 Dec 2016 19:00:57 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476475b4e88947ecc33e0dad3dad9116a40857d36579508b5cf7a94625fa8754`  
		Last Modified: Wed, 21 Dec 2016 19:02:16 GMT  
		Size: 299.7 MB (299729467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd311d6c9e0ea824b1a1ca8da0c84c305f479995ca2e4845482cf0d752cf699`  
		Last Modified: Wed, 21 Dec 2016 19:00:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556828e73c2e22445ba7ec085dc006ed17833d2bb6d6ee2b28bf929816f50b9f`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2163e03f7ca0eca371b1c2ce5f98ca2940224167c95a0dfa732798b537e3e6`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa9084e4263b1685bbef418dfeea80fc4f005b887d2e86a391d03c81b6806`  
		Last Modified: Wed, 21 Dec 2016 19:00:52 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74bd65127e78e466e90f690ebb62de5d58d0cab63022b9fea8a67337cef19fc`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 467.1 KB (467063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bac2e602a04f68c8d01038d887ecde9dff299ce70c69f53b0baec23df2f03b`  
		Last Modified: Wed, 21 Dec 2016 19:00:51 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e7daac6a46daf862c3206ee5cfd8e1d21f00aac2a2502d97724e325ee76188`  
		Last Modified: Wed, 21 Dec 2016 19:00:51 GMT  
		Size: 458.1 KB (458052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9064611198edede1e62fbba357e63bbef485b86c43ca563c4ea2c8bb66bfee`  
		Last Modified: Wed, 21 Dec 2016 19:00:52 GMT  
		Size: 10.1 MB (10066270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199cd0aac6e07e5d7abecfa665ff21de4b507f61a18dd269941f556d4392a2b0`  
		Last Modified: Wed, 21 Dec 2016 19:00:48 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac309036298dddefd9bd31329899f620a9684ed0a2dec9f8f180585433626778`  
		Last Modified: Wed, 21 Dec 2016 19:00:48 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d7f3611a5d8d7f4162388b6808a26cc5a4e47f5e8f99318bb4552a3473ff78`  
		Last Modified: Wed, 21 Dec 2016 19:00:49 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef149d70fff92ec462a4cbe894ad2360037fe8b0bc01cb75c46af4b665a97d25`  
		Last Modified: Wed, 21 Dec 2016 19:00:49 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:d1d11862bfdd25f79f79cbeef8e9d2a9cde4521ed67037c7bafde65dc5fc32c9
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.5 MB (376534765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db11637e7e937562c066016d866231f585655e822be3f6d66e19efcaa33a152`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 03:03:15 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 03:05:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 03:05:27 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 03:05:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 03:05:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 03:05:29 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 03:05:29 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 03:05:29 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 03:05:33 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 03:05:34 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 03:05:34 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 03:05:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:06:35 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:06:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:06:36 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:06:37 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:06:37 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:06:37 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:06:39 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:06:39 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f72432a6e11aba0fbbf8c20bc56b2141a636640c9f10dca706b56af4a04eb7`  
		Last Modified: Wed, 21 Dec 2016 19:00:57 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476475b4e88947ecc33e0dad3dad9116a40857d36579508b5cf7a94625fa8754`  
		Last Modified: Wed, 21 Dec 2016 19:02:16 GMT  
		Size: 299.7 MB (299729467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd311d6c9e0ea824b1a1ca8da0c84c305f479995ca2e4845482cf0d752cf699`  
		Last Modified: Wed, 21 Dec 2016 19:00:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556828e73c2e22445ba7ec085dc006ed17833d2bb6d6ee2b28bf929816f50b9f`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2163e03f7ca0eca371b1c2ce5f98ca2940224167c95a0dfa732798b537e3e6`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa9084e4263b1685bbef418dfeea80fc4f005b887d2e86a391d03c81b6806`  
		Last Modified: Wed, 21 Dec 2016 19:00:52 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74bd65127e78e466e90f690ebb62de5d58d0cab63022b9fea8a67337cef19fc`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 467.1 KB (467063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bac2e602a04f68c8d01038d887ecde9dff299ce70c69f53b0baec23df2f03b`  
		Last Modified: Wed, 21 Dec 2016 19:00:51 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e7daac6a46daf862c3206ee5cfd8e1d21f00aac2a2502d97724e325ee76188`  
		Last Modified: Wed, 21 Dec 2016 19:00:51 GMT  
		Size: 458.1 KB (458052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9064611198edede1e62fbba357e63bbef485b86c43ca563c4ea2c8bb66bfee`  
		Last Modified: Wed, 21 Dec 2016 19:00:52 GMT  
		Size: 10.1 MB (10066270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199cd0aac6e07e5d7abecfa665ff21de4b507f61a18dd269941f556d4392a2b0`  
		Last Modified: Wed, 21 Dec 2016 19:00:48 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac309036298dddefd9bd31329899f620a9684ed0a2dec9f8f180585433626778`  
		Last Modified: Wed, 21 Dec 2016 19:00:48 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d7f3611a5d8d7f4162388b6808a26cc5a4e47f5e8f99318bb4552a3473ff78`  
		Last Modified: Wed, 21 Dec 2016 19:00:49 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef149d70fff92ec462a4cbe894ad2360037fe8b0bc01cb75c46af4b665a97d25`  
		Last Modified: Wed, 21 Dec 2016 19:00:49 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:d1d11862bfdd25f79f79cbeef8e9d2a9cde4521ed67037c7bafde65dc5fc32c9
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.5 MB (376534765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6db11637e7e937562c066016d866231f585655e822be3f6d66e19efcaa33a152`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Fri, 16 Dec 2016 02:57:07 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 16 Dec 2016 03:03:15 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 16 Dec 2016 03:05:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 16 Dec 2016 03:05:27 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Fri, 16 Dec 2016 03:05:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 16 Dec 2016 03:05:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 16 Dec 2016 03:05:29 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 16 Dec 2016 03:05:29 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 16 Dec 2016 03:05:29 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 16 Dec 2016 03:05:33 GMT
RUN apt-get install -y curl
# Fri, 16 Dec 2016 03:05:34 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 16 Dec 2016 03:05:34 GMT
WORKDIR /usr/local/zs-init
# Fri, 16 Dec 2016 03:05:40 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 16 Dec 2016 03:06:35 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 16 Dec 2016 03:06:35 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 16 Dec 2016 03:06:36 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 16 Dec 2016 03:06:37 GMT
RUN rm /var/www/html/index.html
# Fri, 16 Dec 2016 03:06:37 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 16 Dec 2016 03:06:37 GMT
EXPOSE 80/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 443/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 10081/tcp
# Fri, 16 Dec 2016 03:06:38 GMT
EXPOSE 10082/tcp
# Fri, 16 Dec 2016 03:06:39 GMT
WORKDIR /var/www/html
# Fri, 16 Dec 2016 03:06:39 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb46465b105f530eb2244b84f2f7827a0b0fe02baa2698ceea7a0f811299996`  
		Last Modified: Wed, 21 Dec 2016 18:56:42 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f72432a6e11aba0fbbf8c20bc56b2141a636640c9f10dca706b56af4a04eb7`  
		Last Modified: Wed, 21 Dec 2016 19:00:57 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476475b4e88947ecc33e0dad3dad9116a40857d36579508b5cf7a94625fa8754`  
		Last Modified: Wed, 21 Dec 2016 19:02:16 GMT  
		Size: 299.7 MB (299729467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd311d6c9e0ea824b1a1ca8da0c84c305f479995ca2e4845482cf0d752cf699`  
		Last Modified: Wed, 21 Dec 2016 19:00:55 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:556828e73c2e22445ba7ec085dc006ed17833d2bb6d6ee2b28bf929816f50b9f`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2163e03f7ca0eca371b1c2ce5f98ca2940224167c95a0dfa732798b537e3e6`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3baa9084e4263b1685bbef418dfeea80fc4f005b887d2e86a391d03c81b6806`  
		Last Modified: Wed, 21 Dec 2016 19:00:52 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74bd65127e78e466e90f690ebb62de5d58d0cab63022b9fea8a67337cef19fc`  
		Last Modified: Wed, 21 Dec 2016 19:00:54 GMT  
		Size: 467.1 KB (467063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bac2e602a04f68c8d01038d887ecde9dff299ce70c69f53b0baec23df2f03b`  
		Last Modified: Wed, 21 Dec 2016 19:00:51 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e7daac6a46daf862c3206ee5cfd8e1d21f00aac2a2502d97724e325ee76188`  
		Last Modified: Wed, 21 Dec 2016 19:00:51 GMT  
		Size: 458.1 KB (458052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9064611198edede1e62fbba357e63bbef485b86c43ca563c4ea2c8bb66bfee`  
		Last Modified: Wed, 21 Dec 2016 19:00:52 GMT  
		Size: 10.1 MB (10066270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199cd0aac6e07e5d7abecfa665ff21de4b507f61a18dd269941f556d4392a2b0`  
		Last Modified: Wed, 21 Dec 2016 19:00:48 GMT  
		Size: 13.1 KB (13105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac309036298dddefd9bd31329899f620a9684ed0a2dec9f8f180585433626778`  
		Last Modified: Wed, 21 Dec 2016 19:00:48 GMT  
		Size: 2.5 KB (2499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d7f3611a5d8d7f4162388b6808a26cc5a4e47f5e8f99318bb4552a3473ff78`  
		Last Modified: Wed, 21 Dec 2016 19:00:49 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef149d70fff92ec462a4cbe894ad2360037fe8b0bc01cb75c46af4b665a97d25`  
		Last Modified: Wed, 21 Dec 2016 19:00:49 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
