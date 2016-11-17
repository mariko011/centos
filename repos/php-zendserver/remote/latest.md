## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:4b463404197bbc5422e5b514ddd47b7a1131afa5602cbf44023941ef984be763
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.1 MB (376059644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a581bde75aa69cec6affc52054480418e7b95c213e9b7c0202faf652635624`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 16 Nov 2016 20:57:47 GMT
ADD file:79ae73b5e33a497a33c1664e8e7129548273ee9d6ac9336b6ec940808a22a781 in / 
# Wed, 16 Nov 2016 20:57:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:57:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:57:52 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:57:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:57:54 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:46:19 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 17 Nov 2016 00:52:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 17 Nov 2016 00:55:57 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 17 Nov 2016 00:55:58 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 17 Nov 2016 00:55:59 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 17 Nov 2016 00:56:00 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 17 Nov 2016 00:56:01 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 17 Nov 2016 00:56:01 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 17 Nov 2016 00:56:05 GMT
RUN apt-get install -y curl
# Thu, 17 Nov 2016 00:56:06 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 17 Nov 2016 00:56:06 GMT
WORKDIR /usr/local/zs-init
# Thu, 17 Nov 2016 00:56:12 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 17 Nov 2016 00:57:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 17 Nov 2016 00:57:07 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 17 Nov 2016 00:57:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 17 Nov 2016 00:57:09 GMT
RUN rm /var/www/html/index.html
# Thu, 17 Nov 2016 00:57:09 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 80/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 443/tcp
# Thu, 17 Nov 2016 00:57:10 GMT
EXPOSE 10081/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
EXPOSE 10082/tcp
# Thu, 17 Nov 2016 00:57:11 GMT
WORKDIR /var/www/html
# Thu, 17 Nov 2016 00:57:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:ba76e97bb96ceeb4c4d76ecd4940c368f968e8df3637d8ff4fd0e0e57c8896c5`  
		Last Modified: Wed, 09 Nov 2016 20:42:07 GMT  
		Size: 65.7 MB (65702665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6181e6b42361332273bca37f0d1b983e3b45375b57db2c2a28fad62cc78bed`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 71.6 KB (71557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4854897be9ac6e924eab65553a8f81ed556f855c184f379dfb584742f0f3096b`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4458f3097eefd9eae329e0c03584452127ad692ce35aa75fb64dc4308ace7e76`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9989a8de1a9ecee5a5a075078dff0a2ffa6426039b4d03949f29afcf80f85906`  
		Last Modified: Wed, 16 Nov 2016 21:00:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4284009f9a37a86277c9a49599bb188139b17680577165c6892c0c630d075de`  
		Last Modified: Thu, 17 Nov 2016 00:58:55 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91631c29792abb40da4f053f99565c93bc23cc274b5b69114a7f56f8600b4765`  
		Last Modified: Thu, 17 Nov 2016 01:02:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19e72ffecb1c7c929c6d8be08f8c7ad4ba1685d04ee08bfd97ed65586b1954b`  
		Last Modified: Thu, 17 Nov 2016 01:03:47 GMT  
		Size: 299.7 MB (299667858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb235817f787a70cb3a62d919a619a92af7fca4ac52c002bd6a0eec0d15e729f`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4820bc767d0593c4abaeeb954c5600745293685d5d563b5a99ba707675e3c8c`  
		Last Modified: Thu, 17 Nov 2016 01:02:45 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a44f1c4111400a9092de38737c4056268ab2e707bc2e69cd36c8dccd3330c73`  
		Last Modified: Thu, 17 Nov 2016 01:02:44 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc67a0c8c6a90cebfb69f163d66dcfa1b620c1bd6c198930a18ff1c9f8adb9f2`  
		Last Modified: Thu, 17 Nov 2016 01:02:43 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8994062eedac474c7e12c3bd6780cc1d711f52b7b92c82f6c4507cfd453c9a04`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 467.0 KB (466967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3314ca846047df6cb9278d9b585558978e478f740fb503b2952fa62a044213ad`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 15.6 KB (15591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce080502ee17f5a1a4e473dcac5a53c9b766f1c0d91ae573c6e9e3b2026340d`  
		Last Modified: Thu, 17 Nov 2016 01:02:42 GMT  
		Size: 457.5 KB (457546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3928b388eb8e66f142e83546177581976ad48c4eaa07cba1355152ecae8656d6`  
		Last Modified: Thu, 17 Nov 2016 01:02:41 GMT  
		Size: 9.6 MB (9644880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43fac36b45a80423d19e64a0b8142d67d0435827aafc84c638363a0eb1e7337`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd0868aa649802e50a6b2c0258213f624edb82a636f15c9aa34b6987d9d261c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 2.5 KB (2502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dc21e3fb68dd91e1b5aef75521bea9222937c433a834e49d474a9534bddde4`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9ba8fff183aa179c9bc0e4e2dd75822f7811fde9b67e57c8bc615e588ac19c`  
		Last Modified: Thu, 17 Nov 2016 01:02:39 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
