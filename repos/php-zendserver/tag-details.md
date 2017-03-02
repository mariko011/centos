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
$ docker pull php-zendserver@sha256:6616e61bdee43549dc5605e8a5955ec1a202797692f4876206df1d0daf3ee3f2
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325563516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a7d3a39729ea0eeeb25e28089443183676a4508b38fa84b72e1c12469ea653`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:55:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 28 Feb 2017 15:55:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 28 Feb 2017 15:57:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 28 Feb 2017 15:57:25 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Tue, 28 Feb 2017 15:57:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 28 Feb 2017 15:57:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 28 Feb 2017 15:57:27 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 28 Feb 2017 15:57:28 GMT
ENV ZS_INIT_VERSION=0.2
# Tue, 28 Feb 2017 15:57:28 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Tue, 28 Feb 2017 15:57:32 GMT
RUN apt-get install -y curl
# Tue, 28 Feb 2017 15:57:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 28 Feb 2017 15:57:33 GMT
WORKDIR /usr/local/zs-init
# Tue, 28 Feb 2017 15:57:39 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 28 Feb 2017 15:58:46 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 28 Feb 2017 15:58:46 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 28 Feb 2017 15:58:47 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 28 Feb 2017 15:58:48 GMT
RUN rm /var/www/html/index.html
# Tue, 28 Feb 2017 15:58:48 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 28 Feb 2017 15:58:48 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 15:58:49 GMT
EXPOSE 443/tcp
# Tue, 28 Feb 2017 15:58:49 GMT
EXPOSE 10081/tcp
# Tue, 28 Feb 2017 15:58:49 GMT
EXPOSE 10082/tcp
# Tue, 28 Feb 2017 15:58:50 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 15:58:50 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8414e98242b04ac4bea8cc0e8ceee19d69882c2c9364a880eb26bcc18d3792`  
		Last Modified: Thu, 02 Mar 2017 03:08:13 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad1037239dd47a8cca4a3eb2b6471c23c639680310031177e8ed5ce47c8c95`  
		Last Modified: Thu, 02 Mar 2017 03:08:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c5cd66ea902208580f1b55a22462242a34bd3871d8e58d84b262343434ff7`  
		Last Modified: Thu, 02 Mar 2017 03:09:33 GMT  
		Size: 248.3 MB (248296393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c317e43617b5bf48228b433a37f47de08980f155e28b2584c9d9943f0c314c24`  
		Last Modified: Thu, 02 Mar 2017 03:08:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3a2175e3b1481c5fd8ca7eac23685297661c231f8f974732db0bae2b3c90fc`  
		Last Modified: Thu, 02 Mar 2017 03:08:10 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7a7a22ab636073217f5669b40850ae1f48ed55e6b63086d0da1e148d9ca895`  
		Last Modified: Thu, 02 Mar 2017 03:08:10 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5979171743e8d323c416dd2d73ec73d0b926e45c7621928f3b3616b4ed2b8f`  
		Last Modified: Thu, 02 Mar 2017 03:08:08 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4deb75699888f269485003fe7603231033ed1541d4144533768bb11304c9c`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 471.7 KB (471749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c7696d4040506f23db7fefa90377dae11d97b61a744b63b940e24029fb85d4`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 15.6 KB (15598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9178684e7b917384ab763866b7942b5e90bbba12f85f0ec2af149d89a7d4ef`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 485.2 KB (485225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3552faf87ca3a11f0a641ae07e1b88bab2e0a52a8f6497d67f307b03b4ca2fa0`  
		Last Modified: Thu, 02 Mar 2017 03:08:07 GMT  
		Size: 10.5 MB (10496802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264e79d9b1aa44446eed5c49569bf95e92a43d65fda78bffe495964f038a24c`  
		Last Modified: Thu, 02 Mar 2017 03:08:04 GMT  
		Size: 13.1 KB (13108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0175b3b66fef7230b006de3abdcaa70a17ac4d5bb41fc914195ecf617fa6fe`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c78e55065075e1b8c8fe80e381849df6e3b71b1f6f7a5ac4c02b7b55fb2fee`  
		Last Modified: Thu, 02 Mar 2017 03:08:03 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f02024d5090ebaa1cc4fa50b6d746b99fdaef94383edb82fb87676e40cbd13e`  
		Last Modified: Thu, 02 Mar 2017 03:08:03 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:6616e61bdee43549dc5605e8a5955ec1a202797692f4876206df1d0daf3ee3f2
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.6 MB (325563516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a7d3a39729ea0eeeb25e28089443183676a4508b38fa84b72e1c12469ea653`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:55:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 28 Feb 2017 15:55:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 28 Feb 2017 15:57:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 28 Feb 2017 15:57:25 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Tue, 28 Feb 2017 15:57:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 28 Feb 2017 15:57:27 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 28 Feb 2017 15:57:27 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 28 Feb 2017 15:57:28 GMT
ENV ZS_INIT_VERSION=0.2
# Tue, 28 Feb 2017 15:57:28 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Tue, 28 Feb 2017 15:57:32 GMT
RUN apt-get install -y curl
# Tue, 28 Feb 2017 15:57:33 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 28 Feb 2017 15:57:33 GMT
WORKDIR /usr/local/zs-init
# Tue, 28 Feb 2017 15:57:39 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 28 Feb 2017 15:58:46 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 28 Feb 2017 15:58:46 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 28 Feb 2017 15:58:47 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 28 Feb 2017 15:58:48 GMT
RUN rm /var/www/html/index.html
# Tue, 28 Feb 2017 15:58:48 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 28 Feb 2017 15:58:48 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 15:58:49 GMT
EXPOSE 443/tcp
# Tue, 28 Feb 2017 15:58:49 GMT
EXPOSE 10081/tcp
# Tue, 28 Feb 2017 15:58:49 GMT
EXPOSE 10082/tcp
# Tue, 28 Feb 2017 15:58:50 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 15:58:50 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8414e98242b04ac4bea8cc0e8ceee19d69882c2c9364a880eb26bcc18d3792`  
		Last Modified: Thu, 02 Mar 2017 03:08:13 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad1037239dd47a8cca4a3eb2b6471c23c639680310031177e8ed5ce47c8c95`  
		Last Modified: Thu, 02 Mar 2017 03:08:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3c5cd66ea902208580f1b55a22462242a34bd3871d8e58d84b262343434ff7`  
		Last Modified: Thu, 02 Mar 2017 03:09:33 GMT  
		Size: 248.3 MB (248296393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c317e43617b5bf48228b433a37f47de08980f155e28b2584c9d9943f0c314c24`  
		Last Modified: Thu, 02 Mar 2017 03:08:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3a2175e3b1481c5fd8ca7eac23685297661c231f8f974732db0bae2b3c90fc`  
		Last Modified: Thu, 02 Mar 2017 03:08:10 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b7a7a22ab636073217f5669b40850ae1f48ed55e6b63086d0da1e148d9ca895`  
		Last Modified: Thu, 02 Mar 2017 03:08:10 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5979171743e8d323c416dd2d73ec73d0b926e45c7621928f3b3616b4ed2b8f`  
		Last Modified: Thu, 02 Mar 2017 03:08:08 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4deb75699888f269485003fe7603231033ed1541d4144533768bb11304c9c`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 471.7 KB (471749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c7696d4040506f23db7fefa90377dae11d97b61a744b63b940e24029fb85d4`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 15.6 KB (15598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9178684e7b917384ab763866b7942b5e90bbba12f85f0ec2af149d89a7d4ef`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 485.2 KB (485225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3552faf87ca3a11f0a641ae07e1b88bab2e0a52a8f6497d67f307b03b4ca2fa0`  
		Last Modified: Thu, 02 Mar 2017 03:08:07 GMT  
		Size: 10.5 MB (10496802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264e79d9b1aa44446eed5c49569bf95e92a43d65fda78bffe495964f038a24c`  
		Last Modified: Thu, 02 Mar 2017 03:08:04 GMT  
		Size: 13.1 KB (13108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0175b3b66fef7230b006de3abdcaa70a17ac4d5bb41fc914195ecf617fa6fe`  
		Last Modified: Thu, 02 Mar 2017 03:08:06 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c78e55065075e1b8c8fe80e381849df6e3b71b1f6f7a5ac4c02b7b55fb2fee`  
		Last Modified: Thu, 02 Mar 2017 03:08:03 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f02024d5090ebaa1cc4fa50b6d746b99fdaef94383edb82fb87676e40cbd13e`  
		Last Modified: Thu, 02 Mar 2017 03:08:03 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:ca20317894c96bf5ca512ea42ae27c4e6a6d0be65a375b9e1ff6afec8fc8e866
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329153102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259d78c8b56e9c6919077fedc7e5016634122c8c6dd09c2add2f6bfe889ef259`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:55:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 28 Feb 2017 15:55:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 28 Feb 2017 16:00:42 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 28 Feb 2017 16:00:43 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Tue, 28 Feb 2017 16:00:44 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 28 Feb 2017 16:00:44 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 28 Feb 2017 16:00:45 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 28 Feb 2017 16:00:46 GMT
ENV ZS_INIT_VERSION=0.2
# Tue, 28 Feb 2017 16:00:46 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Tue, 28 Feb 2017 16:00:49 GMT
RUN apt-get install -y curl
# Tue, 28 Feb 2017 16:00:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 28 Feb 2017 16:00:51 GMT
WORKDIR /usr/local/zs-init
# Tue, 28 Feb 2017 16:01:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 28 Feb 2017 16:02:16 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 28 Feb 2017 16:02:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 28 Feb 2017 16:02:17 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 28 Feb 2017 16:02:18 GMT
RUN rm /var/www/html/index.html
# Tue, 28 Feb 2017 16:02:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 443/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 10081/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 10082/tcp
# Tue, 28 Feb 2017 16:02:20 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 16:02:20 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8414e98242b04ac4bea8cc0e8ceee19d69882c2c9364a880eb26bcc18d3792`  
		Last Modified: Thu, 02 Mar 2017 03:08:13 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad1037239dd47a8cca4a3eb2b6471c23c639680310031177e8ed5ce47c8c95`  
		Last Modified: Thu, 02 Mar 2017 03:08:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d36186ca242cb6952f8c1249ce0d2fe869694ccef227ccb039438806c9f1ebd`  
		Last Modified: Thu, 02 Mar 2017 03:11:25 GMT  
		Size: 251.9 MB (251876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea402ae696a885a762e570e76db688d59a83865962ab378c4ca5b28b41c7c415`  
		Last Modified: Thu, 02 Mar 2017 03:10:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd35dee347e06563ce1185b6e4c878e59c5d75c57d59ba356152f0f3eac225`  
		Last Modified: Thu, 02 Mar 2017 03:10:21 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe9d69635c9d00ce4f3343ef5caa7e65c9e688830e5e61611c28cb076580dd7`  
		Last Modified: Thu, 02 Mar 2017 03:10:20 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f8582677b1e33571765bf19ded11f537dcdac4984bedaf9bdb7bbbed5ea15b`  
		Last Modified: Thu, 02 Mar 2017 03:10:18 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efe182b2d21976db71b1a63eb091c54ebd099fde4dfa21484ee15797e28a589`  
		Last Modified: Thu, 02 Mar 2017 03:10:17 GMT  
		Size: 473.6 KB (473620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d6afaf29865100924d0809d1844ae36a53ca4d4aa2b45df137e8c6fb7a5e74`  
		Last Modified: Thu, 02 Mar 2017 03:10:17 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdefd18e55d10ba1b58fb4318bcb51b7d183347fa9635b640e84e4d9a8aea969`  
		Last Modified: Thu, 02 Mar 2017 03:10:18 GMT  
		Size: 485.2 KB (485221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c3b44ea859cddc22e95b893cb469f727e49546e23e819b2ea68b96667e2c5f`  
		Last Modified: Thu, 02 Mar 2017 03:10:19 GMT  
		Size: 10.5 MB (10504235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f359f000d3fe606196ac087e2a0e4e7a80c2f894bdf4efaeffc53e09bd9c32`  
		Last Modified: Thu, 02 Mar 2017 03:10:16 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a62f48736fbc345f93e0338bde960bf230663974f8c9f4542b82e0b078671d`  
		Last Modified: Thu, 02 Mar 2017 03:10:14 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5edf97c2d5d091fbcde0c09c5c32ddd422a62f3e1bc8cf17b2004495d7077d`  
		Last Modified: Thu, 02 Mar 2017 03:10:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd445e8651297c81ccb08e3c5993fdce3e97945fd415adadf16243a17f9431d0`  
		Last Modified: Thu, 02 Mar 2017 03:10:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:ca20317894c96bf5ca512ea42ae27c4e6a6d0be65a375b9e1ff6afec8fc8e866
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329153102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259d78c8b56e9c6919077fedc7e5016634122c8c6dd09c2add2f6bfe889ef259`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:55:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 28 Feb 2017 15:55:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 28 Feb 2017 16:00:42 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 28 Feb 2017 16:00:43 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Tue, 28 Feb 2017 16:00:44 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 28 Feb 2017 16:00:44 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 28 Feb 2017 16:00:45 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 28 Feb 2017 16:00:46 GMT
ENV ZS_INIT_VERSION=0.2
# Tue, 28 Feb 2017 16:00:46 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Tue, 28 Feb 2017 16:00:49 GMT
RUN apt-get install -y curl
# Tue, 28 Feb 2017 16:00:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 28 Feb 2017 16:00:51 GMT
WORKDIR /usr/local/zs-init
# Tue, 28 Feb 2017 16:01:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 28 Feb 2017 16:02:16 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 28 Feb 2017 16:02:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 28 Feb 2017 16:02:17 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 28 Feb 2017 16:02:18 GMT
RUN rm /var/www/html/index.html
# Tue, 28 Feb 2017 16:02:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 443/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 10081/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 10082/tcp
# Tue, 28 Feb 2017 16:02:20 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 16:02:20 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8414e98242b04ac4bea8cc0e8ceee19d69882c2c9364a880eb26bcc18d3792`  
		Last Modified: Thu, 02 Mar 2017 03:08:13 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad1037239dd47a8cca4a3eb2b6471c23c639680310031177e8ed5ce47c8c95`  
		Last Modified: Thu, 02 Mar 2017 03:08:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d36186ca242cb6952f8c1249ce0d2fe869694ccef227ccb039438806c9f1ebd`  
		Last Modified: Thu, 02 Mar 2017 03:11:25 GMT  
		Size: 251.9 MB (251876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea402ae696a885a762e570e76db688d59a83865962ab378c4ca5b28b41c7c415`  
		Last Modified: Thu, 02 Mar 2017 03:10:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd35dee347e06563ce1185b6e4c878e59c5d75c57d59ba356152f0f3eac225`  
		Last Modified: Thu, 02 Mar 2017 03:10:21 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe9d69635c9d00ce4f3343ef5caa7e65c9e688830e5e61611c28cb076580dd7`  
		Last Modified: Thu, 02 Mar 2017 03:10:20 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f8582677b1e33571765bf19ded11f537dcdac4984bedaf9bdb7bbbed5ea15b`  
		Last Modified: Thu, 02 Mar 2017 03:10:18 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efe182b2d21976db71b1a63eb091c54ebd099fde4dfa21484ee15797e28a589`  
		Last Modified: Thu, 02 Mar 2017 03:10:17 GMT  
		Size: 473.6 KB (473620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d6afaf29865100924d0809d1844ae36a53ca4d4aa2b45df137e8c6fb7a5e74`  
		Last Modified: Thu, 02 Mar 2017 03:10:17 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdefd18e55d10ba1b58fb4318bcb51b7d183347fa9635b640e84e4d9a8aea969`  
		Last Modified: Thu, 02 Mar 2017 03:10:18 GMT  
		Size: 485.2 KB (485221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c3b44ea859cddc22e95b893cb469f727e49546e23e819b2ea68b96667e2c5f`  
		Last Modified: Thu, 02 Mar 2017 03:10:19 GMT  
		Size: 10.5 MB (10504235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f359f000d3fe606196ac087e2a0e4e7a80c2f894bdf4efaeffc53e09bd9c32`  
		Last Modified: Thu, 02 Mar 2017 03:10:16 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a62f48736fbc345f93e0338bde960bf230663974f8c9f4542b82e0b078671d`  
		Last Modified: Thu, 02 Mar 2017 03:10:14 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5edf97c2d5d091fbcde0c09c5c32ddd422a62f3e1bc8cf17b2004495d7077d`  
		Last Modified: Thu, 02 Mar 2017 03:10:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd445e8651297c81ccb08e3c5993fdce3e97945fd415adadf16243a17f9431d0`  
		Last Modified: Thu, 02 Mar 2017 03:10:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:ca20317894c96bf5ca512ea42ae27c4e6a6d0be65a375b9e1ff6afec8fc8e866
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329153102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:259d78c8b56e9c6919077fedc7e5016634122c8c6dd09c2add2f6bfe889ef259`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:55:10 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 28 Feb 2017 15:55:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 28 Feb 2017 16:00:42 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 28 Feb 2017 16:00:43 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Tue, 28 Feb 2017 16:00:44 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 28 Feb 2017 16:00:44 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 28 Feb 2017 16:00:45 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 28 Feb 2017 16:00:46 GMT
ENV ZS_INIT_VERSION=0.2
# Tue, 28 Feb 2017 16:00:46 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Tue, 28 Feb 2017 16:00:49 GMT
RUN apt-get install -y curl
# Tue, 28 Feb 2017 16:00:51 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 28 Feb 2017 16:00:51 GMT
WORKDIR /usr/local/zs-init
# Tue, 28 Feb 2017 16:01:00 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 28 Feb 2017 16:02:16 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 28 Feb 2017 16:02:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 28 Feb 2017 16:02:17 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 28 Feb 2017 16:02:18 GMT
RUN rm /var/www/html/index.html
# Tue, 28 Feb 2017 16:02:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 443/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 10081/tcp
# Tue, 28 Feb 2017 16:02:19 GMT
EXPOSE 10082/tcp
# Tue, 28 Feb 2017 16:02:20 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 16:02:20 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8414e98242b04ac4bea8cc0e8ceee19d69882c2c9364a880eb26bcc18d3792`  
		Last Modified: Thu, 02 Mar 2017 03:08:13 GMT  
		Size: 13.1 KB (13055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dad1037239dd47a8cca4a3eb2b6471c23c639680310031177e8ed5ce47c8c95`  
		Last Modified: Thu, 02 Mar 2017 03:08:11 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d36186ca242cb6952f8c1249ce0d2fe869694ccef227ccb039438806c9f1ebd`  
		Last Modified: Thu, 02 Mar 2017 03:11:25 GMT  
		Size: 251.9 MB (251876687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea402ae696a885a762e570e76db688d59a83865962ab378c4ca5b28b41c7c415`  
		Last Modified: Thu, 02 Mar 2017 03:10:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69dd35dee347e06563ce1185b6e4c878e59c5d75c57d59ba356152f0f3eac225`  
		Last Modified: Thu, 02 Mar 2017 03:10:21 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe9d69635c9d00ce4f3343ef5caa7e65c9e688830e5e61611c28cb076580dd7`  
		Last Modified: Thu, 02 Mar 2017 03:10:20 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f8582677b1e33571765bf19ded11f537dcdac4984bedaf9bdb7bbbed5ea15b`  
		Last Modified: Thu, 02 Mar 2017 03:10:18 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efe182b2d21976db71b1a63eb091c54ebd099fde4dfa21484ee15797e28a589`  
		Last Modified: Thu, 02 Mar 2017 03:10:17 GMT  
		Size: 473.6 KB (473620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d6afaf29865100924d0809d1844ae36a53ca4d4aa2b45df137e8c6fb7a5e74`  
		Last Modified: Thu, 02 Mar 2017 03:10:17 GMT  
		Size: 15.6 KB (15594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdefd18e55d10ba1b58fb4318bcb51b7d183347fa9635b640e84e4d9a8aea969`  
		Last Modified: Thu, 02 Mar 2017 03:10:18 GMT  
		Size: 485.2 KB (485221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c3b44ea859cddc22e95b893cb469f727e49546e23e819b2ea68b96667e2c5f`  
		Last Modified: Thu, 02 Mar 2017 03:10:19 GMT  
		Size: 10.5 MB (10504235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f359f000d3fe606196ac087e2a0e4e7a80c2f894bdf4efaeffc53e09bd9c32`  
		Last Modified: Thu, 02 Mar 2017 03:10:16 GMT  
		Size: 13.1 KB (13106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a62f48736fbc345f93e0338bde960bf230663974f8c9f4542b82e0b078671d`  
		Last Modified: Thu, 02 Mar 2017 03:10:14 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5edf97c2d5d091fbcde0c09c5c32ddd422a62f3e1bc8cf17b2004495d7077d`  
		Last Modified: Thu, 02 Mar 2017 03:10:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd445e8651297c81ccb08e3c5993fdce3e97945fd415adadf16243a17f9431d0`  
		Last Modified: Thu, 02 Mar 2017 03:10:15 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:6d3178de3050b45441d61483d20792da7fd6d92033f49030ddc1ec2a7a256844
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294146795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad473fe0171b304e92c3430f632f92b7dea5e9d65b0f74705429f81e30d707e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:51:06 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Tue, 28 Feb 2017 15:51:07 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Tue, 28 Feb 2017 15:51:07 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Tue, 28 Feb 2017 15:51:09 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 28 Feb 2017 15:51:10 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 28 Feb 2017 15:55:00 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 28 Feb 2017 15:55:01 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 28 Feb 2017 15:55:02 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 28 Feb 2017 15:55:03 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 28 Feb 2017 15:55:03 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 15:55:03 GMT
EXPOSE 443/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10081/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10082/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10060/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10061/tcp
# Tue, 28 Feb 2017 15:55:05 GMT
EXPOSE 10062/tcp
# Tue, 28 Feb 2017 15:55:05 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 15:55:05 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c6ed9760390444fb2126744ab2c967a444d3a55ac0681c4e080ec9bf6bc7c`  
		Last Modified: Thu, 02 Mar 2017 03:06:26 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83b99a8715b374148004897fd7bf35edbaabd5307a71d4b564c486729094f7c`  
		Last Modified: Thu, 02 Mar 2017 03:06:26 GMT  
		Size: 11.7 KB (11700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fb8c25a63524ab1f43c285f2420c5b3a42c80a658b03e1df664b1174c43e58`  
		Last Modified: Thu, 02 Mar 2017 03:06:27 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63562fc594e451485e128aaf726ae33078b1f9e782a9aa4da04f658a964f1c5`  
		Last Modified: Thu, 02 Mar 2017 03:06:27 GMT  
		Size: 13.1 KB (13054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff3dbf3c1ae65460081071eb112d192f9a54d3c97f2d3d22476ff4034bad59`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd24d1d9c1f18dd406865b1ee9fa7fd44f3471a9512624f06482d67194dc5a9`  
		Last Modified: Thu, 02 Mar 2017 03:07:18 GMT  
		Size: 227.4 MB (227435275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30001412f7c5f0f59d8fc73488e734ac6c1b140691d1ab74ef9af60067d4b3`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94e7c23fc9de58bf2f165056d62570aaedc7fc3a1e783f50c837d15741e34c9`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf616aabecb24f1cb4eb83c0ee114a55481e324a5be3062acc08fea1468be8c8`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:6d3178de3050b45441d61483d20792da7fd6d92033f49030ddc1ec2a7a256844
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.1 MB (294146795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ad473fe0171b304e92c3430f632f92b7dea5e9d65b0f74705429f81e30d707e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 27 Feb 2017 19:40:39 GMT
ADD file:a642bdc2d8d6e4484e4419fc938e24b03454e36f389233f2ce77fc04722da900 in / 
# Mon, 27 Feb 2017 19:40:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 27 Feb 2017 19:40:49 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 19:41:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 27 Feb 2017 19:41:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 27 Feb 2017 19:41:06 GMT
CMD ["/bin/bash"]
# Tue, 28 Feb 2017 15:51:06 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Tue, 28 Feb 2017 15:51:07 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Tue, 28 Feb 2017 15:51:07 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Tue, 28 Feb 2017 15:51:09 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 28 Feb 2017 15:51:10 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 28 Feb 2017 15:55:00 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 28 Feb 2017 15:55:01 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 28 Feb 2017 15:55:02 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 28 Feb 2017 15:55:03 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 28 Feb 2017 15:55:03 GMT
EXPOSE 80/tcp
# Tue, 28 Feb 2017 15:55:03 GMT
EXPOSE 443/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10081/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10082/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10060/tcp
# Tue, 28 Feb 2017 15:55:04 GMT
EXPOSE 10061/tcp
# Tue, 28 Feb 2017 15:55:05 GMT
EXPOSE 10062/tcp
# Tue, 28 Feb 2017 15:55:05 GMT
WORKDIR /var/www/html
# Tue, 28 Feb 2017 15:55:05 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:30d541b48fc05d2a1b2b0ac6a74f3df70e928c3edc253d5bce5dc6ae1fad55d2`  
		Last Modified: Mon, 27 Feb 2017 19:46:55 GMT  
		Size: 65.7 MB (65693630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ecd7f80d390b9e9a009363abea9fb2bb53e8104b4fc2f7abe00ee254005af1c`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 71.6 KB (71555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec9927bb81d07ac2602292888b2c61213d51d1a4eeef6354fb9734246e52da`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e67a4d67b44968a2e2b40b1a22c6ad3192a9a490f1a47824f1309f8b97d30e5`  
		Last Modified: Mon, 27 Feb 2017 19:46:34 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9dd91554882183cb5d1cd512479487e10f495c22d035a62fbb3ee38d89cf48`  
		Last Modified: Mon, 27 Feb 2017 19:46:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c6ed9760390444fb2126744ab2c967a444d3a55ac0681c4e080ec9bf6bc7c`  
		Last Modified: Thu, 02 Mar 2017 03:06:26 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83b99a8715b374148004897fd7bf35edbaabd5307a71d4b564c486729094f7c`  
		Last Modified: Thu, 02 Mar 2017 03:06:26 GMT  
		Size: 11.7 KB (11700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fb8c25a63524ab1f43c285f2420c5b3a42c80a658b03e1df664b1174c43e58`  
		Last Modified: Thu, 02 Mar 2017 03:06:27 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63562fc594e451485e128aaf726ae33078b1f9e782a9aa4da04f658a964f1c5`  
		Last Modified: Thu, 02 Mar 2017 03:06:27 GMT  
		Size: 13.1 KB (13054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9ff3dbf3c1ae65460081071eb112d192f9a54d3c97f2d3d22476ff4034bad59`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd24d1d9c1f18dd406865b1ee9fa7fd44f3471a9512624f06482d67194dc5a9`  
		Last Modified: Thu, 02 Mar 2017 03:07:18 GMT  
		Size: 227.4 MB (227435275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30001412f7c5f0f59d8fc73488e734ac6c1b140691d1ab74ef9af60067d4b3`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94e7c23fc9de58bf2f165056d62570aaedc7fc3a1e783f50c837d15741e34c9`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf616aabecb24f1cb4eb83c0ee114a55481e324a5be3062acc08fea1468be8c8`  
		Last Modified: Thu, 02 Mar 2017 03:06:23 GMT  
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
