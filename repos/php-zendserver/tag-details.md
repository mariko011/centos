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
$ docker pull php-zendserver@sha256:7b7e183f82106b1aff7a3bc8fd5a69839c4eae88bbe74e365594fcd78bf188d9
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.5 MB (329515833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243ad87a3f7ad1aedb52ff8b366a5f3cea38eba9128bffdaa4bc27a05f9187b8`
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
# Mon, 26 Sep 2016 22:15:07 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:16:54 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:16:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:16:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:16:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:16:58 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:16:58 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:16:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:17:02 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:17:03 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:17:04 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:17:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:18:03 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:18:04 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:18:04 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:18:05 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:18:06 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:18:06 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:18:07 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:18:07 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:18:07 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:18:08 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:18:08 GMT
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
	-	`sha256:a594c422e3a327f1b86455317eb65911a8d739eb19b0fd3a239bf2bb3b6927c9`  
		Last Modified: Mon, 26 Sep 2016 22:18:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d005b07a884e6ff2bd02fee92f72182375da72f1738a323ddb90e55a4a2c61`  
		Last Modified: Mon, 26 Sep 2016 22:19:12 GMT  
		Size: 253.7 MB (253694293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb351501ed87432ce348e385e7de9f9594a83fbb8789865f6caca05c61a697`  
		Last Modified: Mon, 26 Sep 2016 22:18:22 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a14d389e647a8179a9de6bb0dcea7f220d6d649772798f16bcba64a7fff0528`  
		Last Modified: Mon, 26 Sep 2016 22:18:23 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69e354122101c123044dd5776a2bf8cd3ed5526eb4f20b0bf95fbd8933fc899`  
		Last Modified: Mon, 26 Sep 2016 22:18:22 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c4cb9376e5c8b58aaf7098ecb2fe5e6d99ed47dc233768ff74ea860141ba7d`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723c5fb8d3e1564b293ba880f9ff65cdebaa201884ee1af30a834c556088c2f3`  
		Last Modified: Mon, 26 Sep 2016 22:18:20 GMT  
		Size: 471.5 KB (471498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d588887e6fe484172f4bd66cbd5d3d1bd083ffc63c45ae69b7824c58d160a92`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80af21b2542e3237e6dc5617eefd96304f673c8c1826b6879a2c75c5408e248b`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 457.0 KB (456966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f64bcf39bbfa6c99dd3a49121d8e2e0dd80ff47516fa1609db28ceca2b6ee73`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 9.1 MB (9070373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eac8ccf0abce9d54405677fe7e06816825dd6af0d31d648caada50cf98eeafc`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 13.1 KB (13109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc25cd08e2c50ca66f35525ecb48165c3a63723840c6f5d1eddab3983009c818`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2f5ecd586886456c6202235daa25e37e4290dfcf6681eb4770920e62e52f96`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7081e32a20c12206cdfbba25907444cc8549ca6d7cd6d2f3e373136a9b0fc08`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:7b7e183f82106b1aff7a3bc8fd5a69839c4eae88bbe74e365594fcd78bf188d9
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.5 MB (329515833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:243ad87a3f7ad1aedb52ff8b366a5f3cea38eba9128bffdaa4bc27a05f9187b8`
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
# Mon, 26 Sep 2016 22:15:07 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:16:54 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:16:55 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:16:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:16:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:16:58 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:16:58 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:16:59 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:17:02 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:17:03 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:17:04 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:17:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:18:03 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:18:04 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:18:04 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:18:05 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:18:06 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:18:06 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:18:07 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:18:07 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:18:07 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:18:08 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:18:08 GMT
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
	-	`sha256:a594c422e3a327f1b86455317eb65911a8d739eb19b0fd3a239bf2bb3b6927c9`  
		Last Modified: Mon, 26 Sep 2016 22:18:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d005b07a884e6ff2bd02fee92f72182375da72f1738a323ddb90e55a4a2c61`  
		Last Modified: Mon, 26 Sep 2016 22:19:12 GMT  
		Size: 253.7 MB (253694293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fcb351501ed87432ce348e385e7de9f9594a83fbb8789865f6caca05c61a697`  
		Last Modified: Mon, 26 Sep 2016 22:18:22 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a14d389e647a8179a9de6bb0dcea7f220d6d649772798f16bcba64a7fff0528`  
		Last Modified: Mon, 26 Sep 2016 22:18:23 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69e354122101c123044dd5776a2bf8cd3ed5526eb4f20b0bf95fbd8933fc899`  
		Last Modified: Mon, 26 Sep 2016 22:18:22 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c4cb9376e5c8b58aaf7098ecb2fe5e6d99ed47dc233768ff74ea860141ba7d`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723c5fb8d3e1564b293ba880f9ff65cdebaa201884ee1af30a834c556088c2f3`  
		Last Modified: Mon, 26 Sep 2016 22:18:20 GMT  
		Size: 471.5 KB (471498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d588887e6fe484172f4bd66cbd5d3d1bd083ffc63c45ae69b7824c58d160a92`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80af21b2542e3237e6dc5617eefd96304f673c8c1826b6879a2c75c5408e248b`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 457.0 KB (456966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f64bcf39bbfa6c99dd3a49121d8e2e0dd80ff47516fa1609db28ceca2b6ee73`  
		Last Modified: Mon, 26 Sep 2016 22:18:19 GMT  
		Size: 9.1 MB (9070373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eac8ccf0abce9d54405677fe7e06816825dd6af0d31d648caada50cf98eeafc`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 13.1 KB (13109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc25cd08e2c50ca66f35525ecb48165c3a63723840c6f5d1eddab3983009c818`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2f5ecd586886456c6202235daa25e37e4290dfcf6681eb4770920e62e52f96`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7081e32a20c12206cdfbba25907444cc8549ca6d7cd6d2f3e373136a9b0fc08`  
		Last Modified: Mon, 26 Sep 2016 22:18:16 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:f96c48c2e46dbf7ed31c62fa5ed34512fe4a5a2daa0488731937fe6303364c31
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.0 MB (324021569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542bc05299b6efd72ce336321474aa2b6d61677752e7327ebe8d767bd3b50e6c`
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
# Mon, 26 Sep 2016 22:15:07 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:21:06 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:21:08 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:21:08 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:21:09 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:21:10 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:21:10 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:21:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:21:14 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:21:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:21:16 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:21:22 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:22:15 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:22:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:22:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:22:17 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:22:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:22:18 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:22:20 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:22:20 GMT
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
	-	`sha256:a594c422e3a327f1b86455317eb65911a8d739eb19b0fd3a239bf2bb3b6927c9`  
		Last Modified: Mon, 26 Sep 2016 22:18:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e391517f92fe81b23926c854256cc7c17d4389ef429df0286a6a81eba13a25e1`  
		Last Modified: Mon, 26 Sep 2016 22:23:24 GMT  
		Size: 248.2 MB (248190823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98371f5305c5e9d5f70b58b13ef80c5c35954f5d119e062932bc912e79b0e780`  
		Last Modified: Mon, 26 Sep 2016 22:22:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60e3eed7c43f0e1a958e15852265290de3c59b6848e35da4c7bd18993c3c9a0`  
		Last Modified: Mon, 26 Sep 2016 22:22:34 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804ce27295a8c722f17b614452eb5b0cf4405345e5ce98d0f05e68adfa26fa7`  
		Last Modified: Mon, 26 Sep 2016 22:22:33 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4e8d31595dc16d3790a45dc0d95c24905484e00c61749460139a69732f025e`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a2cc6adc4e6cae22f34978e2050548f83cb86c3b3bc87855ce275d122867c2`  
		Last Modified: Mon, 26 Sep 2016 22:22:32 GMT  
		Size: 473.5 KB (473460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e445f1e2b0d8862687901c52555977e8b5c8f31cbbd18ee2ae3d8adffb4b668`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5098b1a01b1e19b900f0ad76f01b57fd58fcc0a7ba8c834ba130d57bd1bfa`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 457.0 KB (456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e80cee439f6fa677848e6682f0602eae62a47c19a16c12867e3d4ab30a2a3f`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 9.1 MB (9077615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbd3f5f51a6c47938374261cf48d2b445d4811309f77f2abe87e17eabfacc22`  
		Last Modified: Mon, 26 Sep 2016 22:22:29 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3f290a707a173a11a65a656722046aa72a49eefde08da65cc30bbb65d13e7`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67d55a386f87cf2822f40f820ae76649845dc2887c0974b5e38d560d168c30b`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10573f894d136342ced52cf8fd44e7c036da63a522cebb643f32068704225723`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:f96c48c2e46dbf7ed31c62fa5ed34512fe4a5a2daa0488731937fe6303364c31
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.0 MB (324021569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542bc05299b6efd72ce336321474aa2b6d61677752e7327ebe8d767bd3b50e6c`
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
# Mon, 26 Sep 2016 22:15:07 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:21:06 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:21:08 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:21:08 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:21:09 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:21:10 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:21:10 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:21:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:21:14 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:21:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:21:16 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:21:22 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:22:15 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:22:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:22:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:22:17 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:22:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:22:18 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:22:20 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:22:20 GMT
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
	-	`sha256:a594c422e3a327f1b86455317eb65911a8d739eb19b0fd3a239bf2bb3b6927c9`  
		Last Modified: Mon, 26 Sep 2016 22:18:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e391517f92fe81b23926c854256cc7c17d4389ef429df0286a6a81eba13a25e1`  
		Last Modified: Mon, 26 Sep 2016 22:23:24 GMT  
		Size: 248.2 MB (248190823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98371f5305c5e9d5f70b58b13ef80c5c35954f5d119e062932bc912e79b0e780`  
		Last Modified: Mon, 26 Sep 2016 22:22:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60e3eed7c43f0e1a958e15852265290de3c59b6848e35da4c7bd18993c3c9a0`  
		Last Modified: Mon, 26 Sep 2016 22:22:34 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804ce27295a8c722f17b614452eb5b0cf4405345e5ce98d0f05e68adfa26fa7`  
		Last Modified: Mon, 26 Sep 2016 22:22:33 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4e8d31595dc16d3790a45dc0d95c24905484e00c61749460139a69732f025e`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a2cc6adc4e6cae22f34978e2050548f83cb86c3b3bc87855ce275d122867c2`  
		Last Modified: Mon, 26 Sep 2016 22:22:32 GMT  
		Size: 473.5 KB (473460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e445f1e2b0d8862687901c52555977e8b5c8f31cbbd18ee2ae3d8adffb4b668`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5098b1a01b1e19b900f0ad76f01b57fd58fcc0a7ba8c834ba130d57bd1bfa`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 457.0 KB (456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e80cee439f6fa677848e6682f0602eae62a47c19a16c12867e3d4ab30a2a3f`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 9.1 MB (9077615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbd3f5f51a6c47938374261cf48d2b445d4811309f77f2abe87e17eabfacc22`  
		Last Modified: Mon, 26 Sep 2016 22:22:29 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3f290a707a173a11a65a656722046aa72a49eefde08da65cc30bbb65d13e7`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67d55a386f87cf2822f40f820ae76649845dc2887c0974b5e38d560d168c30b`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10573f894d136342ced52cf8fd44e7c036da63a522cebb643f32068704225723`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:f96c48c2e46dbf7ed31c62fa5ed34512fe4a5a2daa0488731937fe6303364c31
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.0 MB (324021569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542bc05299b6efd72ce336321474aa2b6d61677752e7327ebe8d767bd3b50e6c`
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
# Mon, 26 Sep 2016 22:15:07 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:21:06 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:21:08 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 26 Sep 2016 22:21:08 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:21:09 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:21:10 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:21:10 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 26 Sep 2016 22:21:11 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 26 Sep 2016 22:21:14 GMT
RUN apt-get install -y curl
# Mon, 26 Sep 2016 22:21:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 26 Sep 2016 22:21:16 GMT
WORKDIR /usr/local/zs-init
# Mon, 26 Sep 2016 22:21:22 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 26 Sep 2016 22:22:15 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 26 Sep 2016 22:22:16 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 26 Sep 2016 22:22:16 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 26 Sep 2016 22:22:17 GMT
RUN rm /var/www/html/index.html
# Mon, 26 Sep 2016 22:22:18 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 26 Sep 2016 22:22:18 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:22:19 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:22:20 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:22:20 GMT
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
	-	`sha256:a594c422e3a327f1b86455317eb65911a8d739eb19b0fd3a239bf2bb3b6927c9`  
		Last Modified: Mon, 26 Sep 2016 22:18:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e391517f92fe81b23926c854256cc7c17d4389ef429df0286a6a81eba13a25e1`  
		Last Modified: Mon, 26 Sep 2016 22:23:24 GMT  
		Size: 248.2 MB (248190823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98371f5305c5e9d5f70b58b13ef80c5c35954f5d119e062932bc912e79b0e780`  
		Last Modified: Mon, 26 Sep 2016 22:22:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a60e3eed7c43f0e1a958e15852265290de3c59b6848e35da4c7bd18993c3c9a0`  
		Last Modified: Mon, 26 Sep 2016 22:22:34 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3804ce27295a8c722f17b614452eb5b0cf4405345e5ce98d0f05e68adfa26fa7`  
		Last Modified: Mon, 26 Sep 2016 22:22:33 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4e8d31595dc16d3790a45dc0d95c24905484e00c61749460139a69732f025e`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a2cc6adc4e6cae22f34978e2050548f83cb86c3b3bc87855ce275d122867c2`  
		Last Modified: Mon, 26 Sep 2016 22:22:32 GMT  
		Size: 473.5 KB (473460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e445f1e2b0d8862687901c52555977e8b5c8f31cbbd18ee2ae3d8adffb4b668`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 15.6 KB (15592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da5098b1a01b1e19b900f0ad76f01b57fd58fcc0a7ba8c834ba130d57bd1bfa`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 457.0 KB (456965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e80cee439f6fa677848e6682f0602eae62a47c19a16c12867e3d4ab30a2a3f`  
		Last Modified: Mon, 26 Sep 2016 22:22:31 GMT  
		Size: 9.1 MB (9077615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbd3f5f51a6c47938374261cf48d2b445d4811309f77f2abe87e17eabfacc22`  
		Last Modified: Mon, 26 Sep 2016 22:22:29 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3f290a707a173a11a65a656722046aa72a49eefde08da65cc30bbb65d13e7`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67d55a386f87cf2822f40f820ae76649845dc2887c0974b5e38d560d168c30b`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10573f894d136342ced52cf8fd44e7c036da63a522cebb643f32068704225723`  
		Last Modified: Mon, 26 Sep 2016 22:22:28 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:e467c3d1efe5eded74aeea9bf602da89f8a4247377bb9762185f7e9055c38e6c
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292483728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7a76f4e35e08895cb684b8db95e6db34c43dfd69a3e57ab3659bb2daec1db9`
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
# Mon, 26 Sep 2016 22:11:55 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Mon, 26 Sep 2016 22:11:55 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 26 Sep 2016 22:11:56 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 26 Sep 2016 22:11:57 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 26 Sep 2016 22:11:58 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:13:46 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:13:47 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:13:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:13:49 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:13:49 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:13:49 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:13:50 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:13:50 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:13:50 GMT
EXPOSE 10060/tcp
# Mon, 26 Sep 2016 22:13:51 GMT
EXPOSE 10061/tcp
# Mon, 26 Sep 2016 22:13:51 GMT
EXPOSE 10062/tcp
# Mon, 26 Sep 2016 22:13:51 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:13:51 GMT
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
	-	`sha256:929e4eb3faa6ecea34e68887392860a02c29a00ebd68445e0540d3faa8344823`  
		Last Modified: Mon, 26 Sep 2016 22:14:05 GMT  
		Size: 996.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9f4b2f93acdd2353ffe84854fa55bc6172b535dbce8645fb56f41ac1c798a6`  
		Last Modified: Mon, 26 Sep 2016 22:14:02 GMT  
		Size: 11.7 KB (11701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0190e2234040d7ae166114b43c5389d6fd502a6ba25378539aff4cce7caf522b`  
		Last Modified: Mon, 26 Sep 2016 22:14:03 GMT  
		Size: 918.3 KB (918293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c2bbfa9f819f739b06d5f2f9bb0e5626c09adc728716848f243e903c3eb15`  
		Last Modified: Mon, 26 Sep 2016 22:14:02 GMT  
		Size: 13.1 KB (13054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b33c3d5eee56df074b14b958f261fa3ac854e305660093494fc224b449d0d6`  
		Last Modified: Mon, 26 Sep 2016 22:13:59 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756064af61d7c5eef222520888e312fc8e167a38fe5af49dc4cbbf2a6e8afab3`  
		Last Modified: Mon, 26 Sep 2016 22:14:44 GMT  
		Size: 225.8 MB (225762865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff857e2dd42f104a6be636156aaa1381f9a6ae8950bf067bbe9d0d7da1786647`  
		Last Modified: Mon, 26 Sep 2016 22:13:59 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b949951ae3deb723222882aeecaea1eb6baa4aab0791de5a815e1ff2fdea236`  
		Last Modified: Mon, 26 Sep 2016 22:14:01 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6d1837fc004c806e92ad122c844def0fbda587ef674dac7f00c99783b2ef5`  
		Last Modified: Mon, 26 Sep 2016 22:13:59 GMT  
		Size: 292.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:e467c3d1efe5eded74aeea9bf602da89f8a4247377bb9762185f7e9055c38e6c
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292483728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e7a76f4e35e08895cb684b8db95e6db34c43dfd69a3e57ab3659bb2daec1db9`
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
# Mon, 26 Sep 2016 22:11:55 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Mon, 26 Sep 2016 22:11:55 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 26 Sep 2016 22:11:56 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 26 Sep 2016 22:11:57 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 26 Sep 2016 22:11:58 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 26 Sep 2016 22:13:46 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 26 Sep 2016 22:13:47 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 26 Sep 2016 22:13:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 26 Sep 2016 22:13:49 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 26 Sep 2016 22:13:49 GMT
EXPOSE 80/tcp
# Mon, 26 Sep 2016 22:13:49 GMT
EXPOSE 443/tcp
# Mon, 26 Sep 2016 22:13:50 GMT
EXPOSE 10081/tcp
# Mon, 26 Sep 2016 22:13:50 GMT
EXPOSE 10082/tcp
# Mon, 26 Sep 2016 22:13:50 GMT
EXPOSE 10060/tcp
# Mon, 26 Sep 2016 22:13:51 GMT
EXPOSE 10061/tcp
# Mon, 26 Sep 2016 22:13:51 GMT
EXPOSE 10062/tcp
# Mon, 26 Sep 2016 22:13:51 GMT
WORKDIR /var/www/html
# Mon, 26 Sep 2016 22:13:51 GMT
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
	-	`sha256:929e4eb3faa6ecea34e68887392860a02c29a00ebd68445e0540d3faa8344823`  
		Last Modified: Mon, 26 Sep 2016 22:14:05 GMT  
		Size: 996.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9f4b2f93acdd2353ffe84854fa55bc6172b535dbce8645fb56f41ac1c798a6`  
		Last Modified: Mon, 26 Sep 2016 22:14:02 GMT  
		Size: 11.7 KB (11701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0190e2234040d7ae166114b43c5389d6fd502a6ba25378539aff4cce7caf522b`  
		Last Modified: Mon, 26 Sep 2016 22:14:03 GMT  
		Size: 918.3 KB (918293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00c2bbfa9f819f739b06d5f2f9bb0e5626c09adc728716848f243e903c3eb15`  
		Last Modified: Mon, 26 Sep 2016 22:14:02 GMT  
		Size: 13.1 KB (13054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b33c3d5eee56df074b14b958f261fa3ac854e305660093494fc224b449d0d6`  
		Last Modified: Mon, 26 Sep 2016 22:13:59 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756064af61d7c5eef222520888e312fc8e167a38fe5af49dc4cbbf2a6e8afab3`  
		Last Modified: Mon, 26 Sep 2016 22:14:44 GMT  
		Size: 225.8 MB (225762865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff857e2dd42f104a6be636156aaa1381f9a6ae8950bf067bbe9d0d7da1786647`  
		Last Modified: Mon, 26 Sep 2016 22:13:59 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b949951ae3deb723222882aeecaea1eb6baa4aab0791de5a815e1ff2fdea236`  
		Last Modified: Mon, 26 Sep 2016 22:14:01 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a6d1837fc004c806e92ad122c844def0fbda587ef674dac7f00c99783b2ef5`  
		Last Modified: Mon, 26 Sep 2016 22:13:59 GMT  
		Size: 292.0 B  
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
