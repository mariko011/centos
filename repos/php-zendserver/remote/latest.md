## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:168cf8f1dc03ad64220b51a0db07849a60fadcc271d3bc9e3caf41716ae61a60
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.2 MB (414189148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ea6b297b6752591de5005cf91203590c6e158c1c331a44acd9f3ed019e3ad1`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 23:48:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 10 Aug 2017 23:56:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 10 Aug 2017 23:58:23 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 10 Aug 2017 23:58:24 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 10 Aug 2017 23:58:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 10 Aug 2017 23:58:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 10 Aug 2017 23:58:26 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 15 Aug 2017 22:34:11 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 15 Aug 2017 22:34:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 15 Aug 2017 22:34:24 GMT
RUN apt-get install -y curl
# Tue, 15 Aug 2017 22:34:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 15 Aug 2017 22:34:26 GMT
WORKDIR /usr/local/zs-init
# Tue, 15 Aug 2017 22:34:35 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 15 Aug 2017 22:35:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 15 Aug 2017 22:39:23 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 15 Aug 2017 22:39:24 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 15 Aug 2017 22:39:24 GMT
RUN rm /var/www/html/index.html
# Tue, 15 Aug 2017 22:39:25 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 15 Aug 2017 22:39:25 GMT
EXPOSE 80/tcp
# Tue, 15 Aug 2017 22:39:25 GMT
EXPOSE 443/tcp
# Tue, 15 Aug 2017 22:39:26 GMT
EXPOSE 10081/tcp
# Tue, 15 Aug 2017 22:39:30 GMT
EXPOSE 10082/tcp
# Tue, 15 Aug 2017 22:39:30 GMT
WORKDIR /var/www/html
# Tue, 15 Aug 2017 22:39:30 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c6788b499ad359fe776642fc20d12beb52ef63f6f3fe11119cce548d3570ad`  
		Last Modified: Fri, 11 Aug 2017 00:03:50 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6effbe78276ba5ea7d07e6489e1de2148e135a53b7291fd35062104fbe7dec7`  
		Last Modified: Fri, 11 Aug 2017 00:11:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9478fb459cc8ae4da567482f3b11b4a81c265f4a2df17bc3469f5857b786233a`  
		Last Modified: Fri, 11 Aug 2017 00:12:49 GMT  
		Size: 332.9 MB (332944516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0235b22fb6eba9e16de7f97bdf7d0895df24cfae89454017a026d25c3a8ddb`  
		Last Modified: Fri, 11 Aug 2017 00:11:45 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbeb8674854e2a57348d213ec29acca9416f63a4b00caaf204719609e432fcd4`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13df1c745daf3fa89fb9dd30bb829330ea44579cf1b9855fc4c50c58c896fb3`  
		Last Modified: Fri, 11 Aug 2017 00:11:43 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6636ee7060a7814e1070ccac84f9ae51198898723ce0bfa014ace06ba54f22`  
		Last Modified: Fri, 11 Aug 2017 00:11:44 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a12f062befdc04d509b4818e4765f0a74d259befe52af77ca7c44f06751f96`  
		Last Modified: Tue, 15 Aug 2017 22:40:49 GMT  
		Size: 470.4 KB (470444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a1fefdc8a3ab53f5e88d0d80b6fd2562f03fa0d1c75cb4fb062b7d1e418c92`  
		Last Modified: Tue, 15 Aug 2017 22:40:48 GMT  
		Size: 18.8 KB (18823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d169f38fa9f92691c54685b5abad898eb60390067875ba31f49b33628da9919`  
		Last Modified: Tue, 15 Aug 2017 22:40:47 GMT  
		Size: 492.6 KB (492614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2fa6d07bed30caf887278cf69829848e09847b9f815d91ed0635ba240a74fc`  
		Last Modified: Tue, 15 Aug 2017 22:40:49 GMT  
		Size: 13.0 MB (13041551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3f1158ebdf1c533998e1d4bf623d2ba72b274070ae1b45779a4fb825a48556`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 13.3 KB (13345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40529122d9ac03b05fc5b15594d048afb7bd778887699c42cf6a8d92494d62b4`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9305a55280d13de94c96276d84d8be0d090600664d8a9867575910570970a2`  
		Last Modified: Tue, 15 Aug 2017 22:40:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eec8ffe7c03a26364865f0c10a47507904de2d314750bd9603db3eb23e6a183`  
		Last Modified: Tue, 15 Aug 2017 22:40:47 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
