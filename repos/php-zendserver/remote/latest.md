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
