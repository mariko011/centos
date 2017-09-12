## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:2c8e1906c1803440ea396b7265387f1b5bd66dc6e384e31249ff2e9b97c85d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f7af5736c9299fd7ae7b73c1d496f3228e02e453881cfefa33dc3bc99f664808
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.3 MB (419287678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c447efb5e6aeb4cbf56cf9a19fc4468d17d7e0d1d33500956516a96452b9050d`
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
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:29:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:32:09 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:32:10 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:32:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:32:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:32:12 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:32:12 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:32:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:32:21 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:32:22 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:32:23 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:32:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:32:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:32:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:32:59 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:33:00 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:33:01 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:33:02 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:33:02 GMT
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
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ee8e481f5df2cb29924d4d14f1f35582b7d70253a457e11a78c6362e8743c2`  
		Last Modified: Tue, 12 Sep 2017 20:37:50 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3a6dd2cc2363f7c4af45766575e5b5d746100aaf8f2db70381a47edcb0ddb`  
		Last Modified: Tue, 12 Sep 2017 20:39:27 GMT  
		Size: 337.3 MB (337308712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f2ce1d5f34dd5bd907d192f005ae78314bb29714c30389d41264758e4b63ad`  
		Last Modified: Tue, 12 Sep 2017 20:37:48 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e187c23b00ef3dfbdd5f2ac96e3c350633a46c171656414d068ad91ffb1d51af`  
		Last Modified: Tue, 12 Sep 2017 20:37:49 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c924ae52cd3f0154eed7c6fa221c8a23ed1d5ddc55fd672c87a5a28b782ce85`  
		Last Modified: Tue, 12 Sep 2017 20:37:47 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e090429e1c7c53f65b0893290b8f7b374c577fd97d6e3e3b40b4661b51908ee`  
		Last Modified: Tue, 12 Sep 2017 20:37:46 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cdb51d29ed2681d44eb8f841f1de571af5dd6e0ae1a534aff9e72cf94d2d42`  
		Last Modified: Tue, 12 Sep 2017 20:37:46 GMT  
		Size: 907.5 KB (907450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b587571875ba1832e54a334dc4dc81f0f80c8bb7b5325e3613ba4f14798aa1e6`  
		Last Modified: Tue, 12 Sep 2017 20:37:45 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4fb562de269470431de76cc536e2b7bed81bd135ef5dede972d2af88ce1e4a`  
		Last Modified: Tue, 12 Sep 2017 20:37:45 GMT  
		Size: 495.9 KB (495862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfc622b2830c89016a65a75e5da4109aa84e7026a8bd5af2eb7c323350c1ae9`  
		Last Modified: Tue, 12 Sep 2017 20:37:50 GMT  
		Size: 13.3 MB (13335528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22731475161dea00df424ed8103d1c3d21b71f015631c1709515ed81b5a2bde7`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c4a5499f49d94449fef61786f2a222776f81c68f730e2648f14554b925fadc`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bf2dd0b67548fbada944d0f9bb732672e456c577005441fb12c80a1a0a05ae`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126e9285cc8f693f14397b0154e8eacda4a81abca24d2170542576a818433132`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
