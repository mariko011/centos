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
$ docker pull php-zendserver@sha256:4bbee86ab684a7ea6eba0fcff65600c6e794ac8616c1a99c180b377dba941f84
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327272473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7edb3fd81a44e4b100f9b7a3da1751f7631c5b110aa00ffddeb44994caba92`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 17:49:50 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 17:52:35 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 17:52:35 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 17:52:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 17:52:37 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 17:52:37 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 17:52:37 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 17:52:41 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 17:52:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 17:52:42 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 17:52:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 17:53:47 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 17:53:48 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 17:53:48 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 17:53:49 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 17:53:50 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 17:53:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 17:53:50 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 17:53:51 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 17:53:51 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 17:53:51 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 17:53:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c501e2efa9b908774be39befac1688b2fed444f04ab71bb91ccc7dff7720536`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58242adf807d9dd9eb4ccf00cbff94ff4c35bdbe246a7a9397af32ecc059a82e`  
		Last Modified: Mon, 19 Sep 2016 17:55:33 GMT  
		Size: 251.5 MB (251507590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadfae9a99af150692c603e73f0b801c363ec8d858f0672e362df34cc3c95cdc`  
		Last Modified: Mon, 19 Sep 2016 17:54:06 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a41f96fb5d201a753b738fdb4331d30dd1b5446756e2c3ddbfb7dfc688fdcf7`  
		Last Modified: Mon, 19 Sep 2016 17:54:06 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc4bc085d91457e44a8e3eb15da3d0d79d62f1a15f731de9459c3f5f29d9fcc`  
		Last Modified: Mon, 19 Sep 2016 17:54:09 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d86f937aa21cd37b59c3208740759a78aa8d0d5259352f982860294c262cdb`  
		Last Modified: Mon, 19 Sep 2016 17:54:04 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cf2e43b2d468b2ed6541712e4f903471ab06828573aa62bff764faf81013bc`  
		Last Modified: Mon, 19 Sep 2016 17:54:04 GMT  
		Size: 471.6 KB (471636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b587f3306c56399e3d182a91f1f6c1972adfec721d49fa11da5eba5d6ef6401`  
		Last Modified: Mon, 19 Sep 2016 17:54:03 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea6c3f730e285be1e29eb8b65d25c4fe804a0da5c40a33771ca2e7478e26ae0`  
		Last Modified: Mon, 19 Sep 2016 17:54:03 GMT  
		Size: 457.0 KB (456967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1260d32332b18269f683b933a141bfa9d535678a4e2c42e25909c10e8d7eb61`  
		Last Modified: Mon, 19 Sep 2016 17:54:02 GMT  
		Size: 9.0 MB (9015499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff98d0e9661714bf7a57808f9cf6fd92c2dc4680be803002e41c0a5ff6aa7fb2`  
		Last Modified: Mon, 19 Sep 2016 17:54:00 GMT  
		Size: 13.1 KB (13114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2256c1c82375b0d3f62ca0e5d926f1790e4fc04bac39cb6917c58891a474b6dc`  
		Last Modified: Mon, 19 Sep 2016 17:54:00 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb5f1295fa73a879b83a5a124d77bfce8196b08aba2262720a5a720874ee2a9`  
		Last Modified: Mon, 19 Sep 2016 17:53:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576a9c45972ef957094652a3dcfc5aa9583365f406002616cd673bd746848583`  
		Last Modified: Mon, 19 Sep 2016 17:53:59 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:4bbee86ab684a7ea6eba0fcff65600c6e794ac8616c1a99c180b377dba941f84
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327272473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7edb3fd81a44e4b100f9b7a3da1751f7631c5b110aa00ffddeb44994caba92`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 17:49:50 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 17:52:33 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 17:52:35 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 17:52:35 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 17:52:36 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 17:52:37 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 17:52:37 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 17:52:37 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 17:52:41 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 17:52:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 17:52:42 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 17:52:48 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 17:53:47 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 17:53:48 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 17:53:48 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 17:53:49 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 17:53:50 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 17:53:50 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 17:53:50 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 17:53:51 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 17:53:51 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 17:53:51 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 17:53:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c501e2efa9b908774be39befac1688b2fed444f04ab71bb91ccc7dff7720536`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58242adf807d9dd9eb4ccf00cbff94ff4c35bdbe246a7a9397af32ecc059a82e`  
		Last Modified: Mon, 19 Sep 2016 17:55:33 GMT  
		Size: 251.5 MB (251507590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cadfae9a99af150692c603e73f0b801c363ec8d858f0672e362df34cc3c95cdc`  
		Last Modified: Mon, 19 Sep 2016 17:54:06 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a41f96fb5d201a753b738fdb4331d30dd1b5446756e2c3ddbfb7dfc688fdcf7`  
		Last Modified: Mon, 19 Sep 2016 17:54:06 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc4bc085d91457e44a8e3eb15da3d0d79d62f1a15f731de9459c3f5f29d9fcc`  
		Last Modified: Mon, 19 Sep 2016 17:54:09 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30d86f937aa21cd37b59c3208740759a78aa8d0d5259352f982860294c262cdb`  
		Last Modified: Mon, 19 Sep 2016 17:54:04 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94cf2e43b2d468b2ed6541712e4f903471ab06828573aa62bff764faf81013bc`  
		Last Modified: Mon, 19 Sep 2016 17:54:04 GMT  
		Size: 471.6 KB (471636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b587f3306c56399e3d182a91f1f6c1972adfec721d49fa11da5eba5d6ef6401`  
		Last Modified: Mon, 19 Sep 2016 17:54:03 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ea6c3f730e285be1e29eb8b65d25c4fe804a0da5c40a33771ca2e7478e26ae0`  
		Last Modified: Mon, 19 Sep 2016 17:54:03 GMT  
		Size: 457.0 KB (456967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1260d32332b18269f683b933a141bfa9d535678a4e2c42e25909c10e8d7eb61`  
		Last Modified: Mon, 19 Sep 2016 17:54:02 GMT  
		Size: 9.0 MB (9015499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff98d0e9661714bf7a57808f9cf6fd92c2dc4680be803002e41c0a5ff6aa7fb2`  
		Last Modified: Mon, 19 Sep 2016 17:54:00 GMT  
		Size: 13.1 KB (13114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2256c1c82375b0d3f62ca0e5d926f1790e4fc04bac39cb6917c58891a474b6dc`  
		Last Modified: Mon, 19 Sep 2016 17:54:00 GMT  
		Size: 2.5 KB (2504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb5f1295fa73a879b83a5a124d77bfce8196b08aba2262720a5a720874ee2a9`  
		Last Modified: Mon, 19 Sep 2016 17:53:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:576a9c45972ef957094652a3dcfc5aa9583365f406002616cd673bd746848583`  
		Last Modified: Mon, 19 Sep 2016 17:53:59 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:a3e8be8ac275f2d01ce85660ab1a913195a94a952211e625fe37a642e2208629
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327392039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e53f832859bb62ac3ba934c325a7527d32cf3bcb4d60fa0d4c6541edb1b29b3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 17:49:50 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 17:57:52 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 17:57:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 17:57:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 17:57:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 17:57:57 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 17:57:58 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 17:57:58 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 17:58:01 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 17:58:03 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 17:58:03 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 17:58:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 17:59:05 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 17:59:05 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 17:59:05 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 17:59:06 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 17:59:07 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 17:59:08 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 17:59:08 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 17:59:08 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c501e2efa9b908774be39befac1688b2fed444f04ab71bb91ccc7dff7720536`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a56463f43710b9baac89532b7de5a7c2873bc12b64607b03e447668d277a155`  
		Last Modified: Mon, 19 Sep 2016 18:00:16 GMT  
		Size: 251.6 MB (251617140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb512cdfbe624bef37203b42e78c1c7584c902a8a97d498d5427bb45935dcc`  
		Last Modified: Mon, 19 Sep 2016 17:59:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a098500bf68a7b94f0da3827979132e5a2c82de15b05b0cd1a7581d994e500b`  
		Last Modified: Mon, 19 Sep 2016 17:59:22 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b272e262760e717199bcce8eb2c922169cfc8c6abacb2ea6637df2e7ef9d2a93`  
		Last Modified: Mon, 19 Sep 2016 17:59:21 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db88c035bd4a8d9e86f19a53739e7f92b6512ee0e3d0acc86b0d91fbb4cf1f35`  
		Last Modified: Mon, 19 Sep 2016 17:59:21 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3c53831fc499dc6b081fd400be411c5a9e9e88528dec5d635d65f341ec5a5e`  
		Last Modified: Mon, 19 Sep 2016 17:59:19 GMT  
		Size: 473.5 KB (473519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4570377d012e7087af97d137adcfe9f2ff9d79b8d04261dd72d18630dcc4c36d`  
		Last Modified: Mon, 19 Sep 2016 17:59:19 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427e9632dc422f0376f16794e428836674d77d8a1879460a284aafc861c5c20a`  
		Last Modified: Mon, 19 Sep 2016 17:59:18 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4d23d781ae3701f83c6a8ddd5ef7fcccd41a764f1403008a0fc46d0ca8a6b9`  
		Last Modified: Mon, 19 Sep 2016 17:59:20 GMT  
		Size: 9.0 MB (9023641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34ba8ae5d3988137a700572b11cb892e3f500af39bc15ea8a4cf66326a8f6e`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 13.1 KB (13109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbe62c16de4a7e4aa129a0f0846a267ecf416c4bdfc3f39f5b3949afefb5a7a`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b8cf7fe0701b014baef3cb53a9490fcb39b69b2dd35c83f1fb8b34891558f`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45095ef87c52da36ae83afbaddcf24ee9503866afe2d362807fe71d74213db87`  
		Last Modified: Mon, 19 Sep 2016 17:59:14 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:a3e8be8ac275f2d01ce85660ab1a913195a94a952211e625fe37a642e2208629
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327392039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e53f832859bb62ac3ba934c325a7527d32cf3bcb4d60fa0d4c6541edb1b29b3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 17:49:50 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 17:57:52 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 17:57:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 17:57:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 17:57:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 17:57:57 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 17:57:58 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 17:57:58 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 17:58:01 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 17:58:03 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 17:58:03 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 17:58:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 17:59:05 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 17:59:05 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 17:59:05 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 17:59:06 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 17:59:07 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 17:59:08 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 17:59:08 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 17:59:08 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c501e2efa9b908774be39befac1688b2fed444f04ab71bb91ccc7dff7720536`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a56463f43710b9baac89532b7de5a7c2873bc12b64607b03e447668d277a155`  
		Last Modified: Mon, 19 Sep 2016 18:00:16 GMT  
		Size: 251.6 MB (251617140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb512cdfbe624bef37203b42e78c1c7584c902a8a97d498d5427bb45935dcc`  
		Last Modified: Mon, 19 Sep 2016 17:59:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a098500bf68a7b94f0da3827979132e5a2c82de15b05b0cd1a7581d994e500b`  
		Last Modified: Mon, 19 Sep 2016 17:59:22 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b272e262760e717199bcce8eb2c922169cfc8c6abacb2ea6637df2e7ef9d2a93`  
		Last Modified: Mon, 19 Sep 2016 17:59:21 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db88c035bd4a8d9e86f19a53739e7f92b6512ee0e3d0acc86b0d91fbb4cf1f35`  
		Last Modified: Mon, 19 Sep 2016 17:59:21 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3c53831fc499dc6b081fd400be411c5a9e9e88528dec5d635d65f341ec5a5e`  
		Last Modified: Mon, 19 Sep 2016 17:59:19 GMT  
		Size: 473.5 KB (473519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4570377d012e7087af97d137adcfe9f2ff9d79b8d04261dd72d18630dcc4c36d`  
		Last Modified: Mon, 19 Sep 2016 17:59:19 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427e9632dc422f0376f16794e428836674d77d8a1879460a284aafc861c5c20a`  
		Last Modified: Mon, 19 Sep 2016 17:59:18 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4d23d781ae3701f83c6a8ddd5ef7fcccd41a764f1403008a0fc46d0ca8a6b9`  
		Last Modified: Mon, 19 Sep 2016 17:59:20 GMT  
		Size: 9.0 MB (9023641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34ba8ae5d3988137a700572b11cb892e3f500af39bc15ea8a4cf66326a8f6e`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 13.1 KB (13109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbe62c16de4a7e4aa129a0f0846a267ecf416c4bdfc3f39f5b3949afefb5a7a`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b8cf7fe0701b014baef3cb53a9490fcb39b69b2dd35c83f1fb8b34891558f`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45095ef87c52da36ae83afbaddcf24ee9503866afe2d362807fe71d74213db87`  
		Last Modified: Mon, 19 Sep 2016 17:59:14 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:a3e8be8ac275f2d01ce85660ab1a913195a94a952211e625fe37a642e2208629
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.4 MB (327392039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e53f832859bb62ac3ba934c325a7527d32cf3bcb4d60fa0d4c6541edb1b29b3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 17:49:50 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 17:57:52 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 17:57:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 17:57:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 17:57:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 17:57:57 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 17:57:58 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 17:57:58 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 17:58:01 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 17:58:03 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 17:58:03 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 17:58:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 17:59:05 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 17:59:05 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 17:59:05 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 17:59:06 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 17:59:07 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 17:59:07 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 17:59:08 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 17:59:08 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 17:59:08 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c501e2efa9b908774be39befac1688b2fed444f04ab71bb91ccc7dff7720536`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a56463f43710b9baac89532b7de5a7c2873bc12b64607b03e447668d277a155`  
		Last Modified: Mon, 19 Sep 2016 18:00:16 GMT  
		Size: 251.6 MB (251617140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb512cdfbe624bef37203b42e78c1c7584c902a8a97d498d5427bb45935dcc`  
		Last Modified: Mon, 19 Sep 2016 17:59:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a098500bf68a7b94f0da3827979132e5a2c82de15b05b0cd1a7581d994e500b`  
		Last Modified: Mon, 19 Sep 2016 17:59:22 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b272e262760e717199bcce8eb2c922169cfc8c6abacb2ea6637df2e7ef9d2a93`  
		Last Modified: Mon, 19 Sep 2016 17:59:21 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db88c035bd4a8d9e86f19a53739e7f92b6512ee0e3d0acc86b0d91fbb4cf1f35`  
		Last Modified: Mon, 19 Sep 2016 17:59:21 GMT  
		Size: 294.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3c53831fc499dc6b081fd400be411c5a9e9e88528dec5d635d65f341ec5a5e`  
		Last Modified: Mon, 19 Sep 2016 17:59:19 GMT  
		Size: 473.5 KB (473519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4570377d012e7087af97d137adcfe9f2ff9d79b8d04261dd72d18630dcc4c36d`  
		Last Modified: Mon, 19 Sep 2016 17:59:19 GMT  
		Size: 15.6 KB (15590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427e9632dc422f0376f16794e428836674d77d8a1879460a284aafc861c5c20a`  
		Last Modified: Mon, 19 Sep 2016 17:59:18 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4d23d781ae3701f83c6a8ddd5ef7fcccd41a764f1403008a0fc46d0ca8a6b9`  
		Last Modified: Mon, 19 Sep 2016 17:59:20 GMT  
		Size: 9.0 MB (9023641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db34ba8ae5d3988137a700572b11cb892e3f500af39bc15ea8a4cf66326a8f6e`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 13.1 KB (13109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbe62c16de4a7e4aa129a0f0846a267ecf416c4bdfc3f39f5b3949afefb5a7a`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2b8cf7fe0701b014baef3cb53a9490fcb39b69b2dd35c83f1fb8b34891558f`  
		Last Modified: Mon, 19 Sep 2016 17:59:15 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45095ef87c52da36ae83afbaddcf24ee9503866afe2d362807fe71d74213db87`  
		Last Modified: Mon, 19 Sep 2016 17:59:14 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:806b97353f028c31bec35944b6395c9bc82ea0758696b2bb8e29721c6fb09fc1
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292478410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9001f3505cbd511635131733b80cb4763eb56e942262b5e2ddba55ac6c0f0a8`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:13 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Mon, 19 Sep 2016 17:46:13 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 19 Sep 2016 17:46:14 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 19 Sep 2016 17:46:15 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 17:46:16 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 17:48:19 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 17:48:20 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 17:48:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 17:48:22 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
EXPOSE 10060/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
EXPOSE 10061/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
EXPOSE 10062/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 17:48:24 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c37f169586b98be4438ca4c38ae3c5ff65a5f84f9ca052298b40af36265042`  
		Last Modified: Mon, 19 Sep 2016 17:48:34 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ea815516dfe0b7f2fc666d2b61ef7b9fb321ebc1d6abd7767d9523dca72311`  
		Last Modified: Mon, 19 Sep 2016 17:48:33 GMT  
		Size: 11.7 KB (11700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011c4d8c88f8ea974486295402e4db9f1b6545dc24d9ed307723c5510236a979`  
		Last Modified: Mon, 19 Sep 2016 17:48:33 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357863171d527fd52b7666d9808e937af14972ed43f0f17399dcb42e6d22e142`  
		Last Modified: Mon, 19 Sep 2016 17:48:33 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde0d642546cc202700a9f6509319b02cd3077b2ed457f89ece13d4e48bea3fa`  
		Last Modified: Mon, 19 Sep 2016 17:48:30 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9a6c220819bcd01fb17e2ec98235d16955835f7795faf26a5986d737609b4`  
		Last Modified: Mon, 19 Sep 2016 17:49:26 GMT  
		Size: 225.8 MB (225759460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43f398e170e73d131d38dc4d0af17a62be7d0730c6fe6100b34eb4a52de9ad8`  
		Last Modified: Mon, 19 Sep 2016 17:48:30 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1324bedcd7012d11f706c08ee0f4846f542d2d0c1b6bb737ccf1adc9d871ea`  
		Last Modified: Mon, 19 Sep 2016 17:48:30 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb44c012a5e534d705fe1589081896a6b09717a85538644614b26c3a8f886d8`  
		Last Modified: Mon, 19 Sep 2016 17:48:29 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:806b97353f028c31bec35944b6395c9bc82ea0758696b2bb8e29721c6fb09fc1
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292478410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9001f3505cbd511635131733b80cb4763eb56e942262b5e2ddba55ac6c0f0a8`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:46:13 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Mon, 19 Sep 2016 17:46:13 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 19 Sep 2016 17:46:14 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 19 Sep 2016 17:46:15 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 17:46:16 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 17:48:19 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 17:48:20 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 17:48:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 17:48:22 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 17:48:22 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
EXPOSE 10060/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
EXPOSE 10061/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
EXPOSE 10062/tcp
# Mon, 19 Sep 2016 17:48:23 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 17:48:24 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c37f169586b98be4438ca4c38ae3c5ff65a5f84f9ca052298b40af36265042`  
		Last Modified: Mon, 19 Sep 2016 17:48:34 GMT  
		Size: 1.0 KB (1001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ea815516dfe0b7f2fc666d2b61ef7b9fb321ebc1d6abd7767d9523dca72311`  
		Last Modified: Mon, 19 Sep 2016 17:48:33 GMT  
		Size: 11.7 KB (11700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011c4d8c88f8ea974486295402e4db9f1b6545dc24d9ed307723c5510236a979`  
		Last Modified: Mon, 19 Sep 2016 17:48:33 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:357863171d527fd52b7666d9808e937af14972ed43f0f17399dcb42e6d22e142`  
		Last Modified: Mon, 19 Sep 2016 17:48:33 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde0d642546cc202700a9f6509319b02cd3077b2ed457f89ece13d4e48bea3fa`  
		Last Modified: Mon, 19 Sep 2016 17:48:30 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed9a6c220819bcd01fb17e2ec98235d16955835f7795faf26a5986d737609b4`  
		Last Modified: Mon, 19 Sep 2016 17:49:26 GMT  
		Size: 225.8 MB (225759460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43f398e170e73d131d38dc4d0af17a62be7d0730c6fe6100b34eb4a52de9ad8`  
		Last Modified: Mon, 19 Sep 2016 17:48:30 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1324bedcd7012d11f706c08ee0f4846f542d2d0c1b6bb737ccf1adc9d871ea`  
		Last Modified: Mon, 19 Sep 2016 17:48:30 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb44c012a5e534d705fe1589081896a6b09717a85538644614b26c3a8f886d8`  
		Last Modified: Mon, 19 Sep 2016 17:48:29 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0`

```console
$ docker pull php-zendserver@sha256:6503c96e14614edc8047a8968216a13245ab71f661ae3c4768292cfbc04c4823
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.6 MB (339552381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051faa73d1fea95426867972e02a436e104ef8876b200dfdbcde83192bdcccd8`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 18:00:42 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 18:02:57 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 18:02:58 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 18:02:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 18:02:59 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 18:03:01 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 18:03:02 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 18:03:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 18:03:06 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 18:03:07 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 18:03:07 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 18:03:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 18:04:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 18:04:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 18:04:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 18:04:10 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 18:04:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 18:04:10 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 18:04:10 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 18:04:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188f64a9cf21783d5962278e83f8e1f8326a855cb751e7cb36ee50bb876dee70`  
		Last Modified: Mon, 19 Sep 2016 18:04:31 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac78454fbb970bbe160c0c9035d7412da851be5e24f23d9f9fa00d221179e0a`  
		Last Modified: Mon, 19 Sep 2016 18:05:22 GMT  
		Size: 263.8 MB (263787796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c74330137539ec8d73bb5dbfccadfb078076e047c1944f08fbc797eef75581`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4b1952a571d4abf047e39b3510a9f315dff7414e362bdc6c8a95d555a4c1e5`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd21ce1b3b768cc51102aaa64d2de653acc5dcc720ff5ac7102d8d269b45084`  
		Last Modified: Mon, 19 Sep 2016 18:04:26 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82300191f37386179db2b6fe0c118c712002d1cb1bb31829ac85e61282fd6e93`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a645a806268512d301fc8d51ca6c4ffd1d47493b1272ad5f7e2ada84b29331ac`  
		Last Modified: Mon, 19 Sep 2016 18:04:26 GMT  
		Size: 463.1 KB (463145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337cae7845b61da5f7c2ebd579f63b6fe213478167c6daace31bbb96a2f1eb31`  
		Last Modified: Mon, 19 Sep 2016 18:04:23 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bc5aea4e3943291276ca9edbe75237cd8e1f54dcf98ab55f2ab667877170aa`  
		Last Modified: Mon, 19 Sep 2016 18:04:24 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6979bc37efb34c5233b25cc27a7bd4875a7d1c3ec237cd81252df82ec87feb0f`  
		Last Modified: Mon, 19 Sep 2016 18:04:23 GMT  
		Size: 9.0 MB (9023699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53235d317c1e6fa55d55de031d90df04e8327a7c2e580f658b845c483135639`  
		Last Modified: Mon, 19 Sep 2016 18:04:19 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee85a0c2fe4bc6a4fdfa4f796bc90c7954ee17fc83713c42942390c3adcccc`  
		Last Modified: Mon, 19 Sep 2016 18:04:17 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d34f31988a9fe786a82ef1c23c338bb88a4c757b00f4992a1510d9428b92d`  
		Last Modified: Mon, 19 Sep 2016 18:04:18 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a019e1cf94b05e338f6e201a3e9382a58d9fd09709dc1867feda3d5ceb99fc00`  
		Last Modified: Mon, 19 Sep 2016 18:04:18 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:6503c96e14614edc8047a8968216a13245ab71f661ae3c4768292cfbc04c4823
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.6 MB (339552381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051faa73d1fea95426867972e02a436e104ef8876b200dfdbcde83192bdcccd8`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 18:00:42 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 18:02:57 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 18:02:58 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 18:02:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 18:02:59 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 18:03:01 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 18:03:02 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 18:03:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 18:03:06 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 18:03:07 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 18:03:07 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 18:03:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 18:04:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 18:04:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 18:04:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 18:04:10 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 18:04:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 18:04:10 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 18:04:10 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 18:04:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188f64a9cf21783d5962278e83f8e1f8326a855cb751e7cb36ee50bb876dee70`  
		Last Modified: Mon, 19 Sep 2016 18:04:31 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac78454fbb970bbe160c0c9035d7412da851be5e24f23d9f9fa00d221179e0a`  
		Last Modified: Mon, 19 Sep 2016 18:05:22 GMT  
		Size: 263.8 MB (263787796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c74330137539ec8d73bb5dbfccadfb078076e047c1944f08fbc797eef75581`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4b1952a571d4abf047e39b3510a9f315dff7414e362bdc6c8a95d555a4c1e5`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd21ce1b3b768cc51102aaa64d2de653acc5dcc720ff5ac7102d8d269b45084`  
		Last Modified: Mon, 19 Sep 2016 18:04:26 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82300191f37386179db2b6fe0c118c712002d1cb1bb31829ac85e61282fd6e93`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a645a806268512d301fc8d51ca6c4ffd1d47493b1272ad5f7e2ada84b29331ac`  
		Last Modified: Mon, 19 Sep 2016 18:04:26 GMT  
		Size: 463.1 KB (463145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337cae7845b61da5f7c2ebd579f63b6fe213478167c6daace31bbb96a2f1eb31`  
		Last Modified: Mon, 19 Sep 2016 18:04:23 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bc5aea4e3943291276ca9edbe75237cd8e1f54dcf98ab55f2ab667877170aa`  
		Last Modified: Mon, 19 Sep 2016 18:04:24 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6979bc37efb34c5233b25cc27a7bd4875a7d1c3ec237cd81252df82ec87feb0f`  
		Last Modified: Mon, 19 Sep 2016 18:04:23 GMT  
		Size: 9.0 MB (9023699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53235d317c1e6fa55d55de031d90df04e8327a7c2e580f658b845c483135639`  
		Last Modified: Mon, 19 Sep 2016 18:04:19 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee85a0c2fe4bc6a4fdfa4f796bc90c7954ee17fc83713c42942390c3adcccc`  
		Last Modified: Mon, 19 Sep 2016 18:04:17 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d34f31988a9fe786a82ef1c23c338bb88a4c757b00f4992a1510d9428b92d`  
		Last Modified: Mon, 19 Sep 2016 18:04:18 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a019e1cf94b05e338f6e201a3e9382a58d9fd09709dc1867feda3d5ceb99fc00`  
		Last Modified: Mon, 19 Sep 2016 18:04:18 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:6503c96e14614edc8047a8968216a13245ab71f661ae3c4768292cfbc04c4823
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.6 MB (339552381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051faa73d1fea95426867972e02a436e104ef8876b200dfdbcde83192bdcccd8`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 19 Sep 2016 17:01:05 GMT
ADD file:84af410c096e19f2106852b7926f0d4c9f1770962b6cd42ad508600d88c8c975 in / 
# Mon, 19 Sep 2016 17:01:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Sep 2016 17:01:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Sep 2016 17:01:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 19 Sep 2016 17:01:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Sep 2016 17:01:09 GMT
CMD ["/bin/bash"]
# Mon, 19 Sep 2016 17:49:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 19 Sep 2016 18:00:42 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 19 Sep 2016 18:02:57 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 19 Sep 2016 18:02:58 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 19 Sep 2016 18:02:58 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 19 Sep 2016 18:02:59 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 19 Sep 2016 18:03:01 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 19 Sep 2016 18:03:02 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 19 Sep 2016 18:03:03 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 19 Sep 2016 18:03:06 GMT
RUN apt-get install -y curl
# Mon, 19 Sep 2016 18:03:07 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 19 Sep 2016 18:03:07 GMT
WORKDIR /usr/local/zs-init
# Mon, 19 Sep 2016 18:03:13 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 19 Sep 2016 18:04:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 19 Sep 2016 18:04:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 19 Sep 2016 18:04:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 19 Sep 2016 18:04:10 GMT
RUN rm /var/www/html/index.html
# Mon, 19 Sep 2016 18:04:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 19 Sep 2016 18:04:10 GMT
EXPOSE 80/tcp
# Mon, 19 Sep 2016 18:04:10 GMT
EXPOSE 443/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
EXPOSE 10081/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
EXPOSE 10082/tcp
# Mon, 19 Sep 2016 18:04:11 GMT
WORKDIR /var/www/html
# Mon, 19 Sep 2016 18:04:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:71a21fdea81d21aa19f00fb67e74d07e5c84019f8e2a5f81c64395db55360088`  
		Last Modified: Mon, 19 Sep 2016 17:02:49 GMT  
		Size: 65.7 MB (65701042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf68a3ea6e1d8b0bdffc8984227ff9177045bc9539d13c8f025cc1e042e1a33b`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 71.6 KB (71563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cb2a4d344ac499d302fd05f8b36fd6213188e44301442fd553166a09716c30`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341b6fcb0feba96fadaa1e47a61ae18d6662c9cb6c0900f6eab11e575e94835`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8777cc4836480facc3edbd380f790e4810c23f1f91aeda49ddd46d8681a337d`  
		Last Modified: Mon, 19 Sep 2016 17:02:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4175bb7f42331d74f512aa19baadcd261cbe454c5e3fc4bc7d705f01b0c940`  
		Last Modified: Mon, 19 Sep 2016 17:54:08 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188f64a9cf21783d5962278e83f8e1f8326a855cb751e7cb36ee50bb876dee70`  
		Last Modified: Mon, 19 Sep 2016 18:04:31 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ac78454fbb970bbe160c0c9035d7412da851be5e24f23d9f9fa00d221179e0a`  
		Last Modified: Mon, 19 Sep 2016 18:05:22 GMT  
		Size: 263.8 MB (263787796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c74330137539ec8d73bb5dbfccadfb078076e047c1944f08fbc797eef75581`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4b1952a571d4abf047e39b3510a9f315dff7414e362bdc6c8a95d555a4c1e5`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd21ce1b3b768cc51102aaa64d2de653acc5dcc720ff5ac7102d8d269b45084`  
		Last Modified: Mon, 19 Sep 2016 18:04:26 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82300191f37386179db2b6fe0c118c712002d1cb1bb31829ac85e61282fd6e93`  
		Last Modified: Mon, 19 Sep 2016 18:04:28 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a645a806268512d301fc8d51ca6c4ffd1d47493b1272ad5f7e2ada84b29331ac`  
		Last Modified: Mon, 19 Sep 2016 18:04:26 GMT  
		Size: 463.1 KB (463145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337cae7845b61da5f7c2ebd579f63b6fe213478167c6daace31bbb96a2f1eb31`  
		Last Modified: Mon, 19 Sep 2016 18:04:23 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5bc5aea4e3943291276ca9edbe75237cd8e1f54dcf98ab55f2ab667877170aa`  
		Last Modified: Mon, 19 Sep 2016 18:04:24 GMT  
		Size: 457.0 KB (456964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6979bc37efb34c5233b25cc27a7bd4875a7d1c3ec237cd81252df82ec87feb0f`  
		Last Modified: Mon, 19 Sep 2016 18:04:23 GMT  
		Size: 9.0 MB (9023699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53235d317c1e6fa55d55de031d90df04e8327a7c2e580f658b845c483135639`  
		Last Modified: Mon, 19 Sep 2016 18:04:19 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deee85a0c2fe4bc6a4fdfa4f796bc90c7954ee17fc83713c42942390c3adcccc`  
		Last Modified: Mon, 19 Sep 2016 18:04:17 GMT  
		Size: 2.5 KB (2500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494d34f31988a9fe786a82ef1c23c338bb88a4c757b00f4992a1510d9428b92d`  
		Last Modified: Mon, 19 Sep 2016 18:04:18 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a019e1cf94b05e338f6e201a3e9382a58d9fd09709dc1867feda3d5ceb99fc00`  
		Last Modified: Mon, 19 Sep 2016 18:04:18 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
