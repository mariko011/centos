## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:b83df7d314d9cf3f8c89745a88b90a3bdf8448c26f19f3e0fa2dede6cb7e50f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:1af9aa8f6b75efedfea8ba298c3a050790d632125761d9de99ddd030fcf6cee0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.9 MB (424918864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10638fded8f5a656b75b788c447b7c92bec00a3a9bfc8fb9070e4a2cbe49a33`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 Jan 2018 21:01:15 GMT
ADD file:51db35f8f987dcd57d101d19eeb2f3a16eaf3c3adcc85fc286c9c5569c51c9b2 in / 
# Mon, 15 Jan 2018 21:08:50 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:08:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:08:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:08:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:11:41 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 01:25:45 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 16 Jan 2018 02:05:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 22:05:18 GMT
RUN apt-get update &&     apt-get install -y     curl libmysqlclient18 unzip git zend-server-php-7.1=9.1.2+b144 &&     apt-get clean &&     /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 22:17:11 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Thu, 18 Jan 2018 22:17:11 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 22:17:13 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 22:17:14 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 22:17:14 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 18 Jan 2018 22:17:14 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 18 Jan 2018 22:17:16 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 18 Jan 2018 22:17:16 GMT
WORKDIR /usr/local/zs-init
# Thu, 18 Jan 2018 22:17:21 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 18 Jan 2018 22:17:45 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 18 Jan 2018 22:28:31 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 18 Jan 2018 22:28:31 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 18 Jan 2018 22:28:32 GMT
RUN rm /var/www/html/index.html
# Thu, 18 Jan 2018 22:28:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 22:28:34 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:556ab54f65806b5b518f81253c4daf5bb38dba3bf46cb6fd9b6d48e583fdd5e9`  
		Last Modified: Mon, 15 Jan 2018 14:42:55 GMT  
		Size: 72.9 MB (72936730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca8fd6ef32a03f12d804935cf709712448d23f20308927adb635f4f3e38cc50`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 72.7 KB (72657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64a7e7a2b214e0085b5f7140a96e5a3beff9912ee4718390cd48579c1da08d6`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ed7c05bfd36d5b21ca8d7a333ab91d5dcb8a8ea125b0d8b0058c82f48e7834`  
		Last Modified: Mon, 15 Jan 2018 21:15:48 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1faacd6fd9f44056cf271350bb6f119e3f7dd7244f8a9b7d7b4cc1747b677c`  
		Last Modified: Mon, 15 Jan 2018 21:15:49 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63ad3c456af1d0b405c0cb0b7a3065d3fead8a3cce68add71aeb9fbda6a5dba`  
		Last Modified: Tue, 16 Jan 2018 02:07:08 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce0c5e639d6a0e33ff262a9c8c2cbe44e8d90d1f6269111032ece5194cdb04`  
		Last Modified: Thu, 18 Jan 2018 22:49:01 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154ad496f2d00c3ea40b58b791db0816dcd67e7a481a834ccf6704609ae4af50`  
		Last Modified: Thu, 18 Jan 2018 22:50:13 GMT  
		Size: 337.5 MB (337510572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c0ecd7d0567efc020576c18b8a22caf5e5c161272363451f63afb54b8be12`  
		Last Modified: Thu, 18 Jan 2018 22:48:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bda0ae271befa1198e1d3796add783ca6f2acd8c8f0c5d9f01a98e8f008b7aa`  
		Last Modified: Thu, 18 Jan 2018 22:48:58 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c36beff5047073028a359515b740e1ca8f21ec4200d89e5d5af621f6f55c0f`  
		Last Modified: Thu, 18 Jan 2018 22:49:01 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd7d8236a37e466f80127a40b002e3c7680421e7dcd593f45b41ead4495c759`  
		Last Modified: Thu, 18 Jan 2018 22:48:57 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493536fd044ea7de09a49ecc4af0c7941e6472c9068e864c0d722a5cfdb8625e`  
		Last Modified: Thu, 18 Jan 2018 22:48:56 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f167ba13dae444d40c044fb703997118943c75598bb22174a5be9cf1b4080ee`  
		Last Modified: Thu, 18 Jan 2018 22:48:56 GMT  
		Size: 489.5 KB (489469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5354cf677b16c25ffe852730022fa7add663372a117a5e318dded235823c5f3`  
		Last Modified: Thu, 18 Jan 2018 22:48:59 GMT  
		Size: 13.9 MB (13857233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f87402c9464f2a63bcb9b6facf2a317ba0f56af0e4a3c8067149488e243dbf`  
		Last Modified: Thu, 18 Jan 2018 22:48:54 GMT  
		Size: 13.4 KB (13363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b7a0b62b992d9a9e5b9664caedb67eac6f76e77b3558014304937fe41d0ad9`  
		Last Modified: Thu, 18 Jan 2018 22:48:56 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3f9ddd20718015d8d3b408ff3ac552de726fa1379a637b988b35177fb30a3`  
		Last Modified: Thu, 18 Jan 2018 22:48:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc76567c985d64c6969148e7bdc1606826b9971d667701f1f5052edf5af6321c`  
		Last Modified: Thu, 18 Jan 2018 22:48:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
