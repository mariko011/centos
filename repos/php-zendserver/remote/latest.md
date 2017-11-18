## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:1ed65fac6f01daedf440e74411f38f7692cdea9d4ff548c57630f087013d8f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:0f4ac221ff348c70484cd64057333178fa35135a8da9ee56aea91a3bdefdcdec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **425.0 MB (424985701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648bdf82226948fbd54aa3ec055a1e4bb4eefa629c33737ae1d7a5bb75a8c703`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:21:35 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 17 Nov 2017 22:34:17 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:36:14 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:37:32 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Fri, 17 Nov 2017 22:37:32 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:37:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:37:34 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:37:34 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 17 Nov 2017 22:37:34 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 17 Nov 2017 22:37:39 GMT
RUN apt-get install -y curl
# Fri, 17 Nov 2017 22:37:40 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 17 Nov 2017 22:37:40 GMT
WORKDIR /usr/local/zs-init
# Fri, 17 Nov 2017 22:37:45 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 17 Nov 2017 22:38:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 17 Nov 2017 22:38:07 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 17 Nov 2017 22:38:08 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 17 Nov 2017 22:38:08 GMT
RUN rm /var/www/html/index.html
# Fri, 17 Nov 2017 22:38:09 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 17 Nov 2017 22:38:09 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:38:09 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:38:09 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:38:09 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:38:09 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:38:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019a793896af3201b8f8152cd2b8bdb2b5e0e86960e95120a12224977ed00ead`  
		Last Modified: Fri, 17 Nov 2017 22:42:06 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9502e60bb8f09c4430938212ffe6093b4995a7f8368118a160137b876901d55`  
		Last Modified: Fri, 17 Nov 2017 22:49:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47482df3eb14f76f8dc488b6377c5a795c4540ff485387e1a8bfa7ebe9d1e12a`  
		Last Modified: Fri, 17 Nov 2017 22:50:29 GMT  
		Size: 336.7 MB (336680593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdda26109ef65a2fce9b81f5cde31dc75b3ccf16f5a3db86c7b0bd831971512c`  
		Last Modified: Fri, 17 Nov 2017 22:49:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d50f5a99c6e8560698b39b8b65a2cf1475dd66ec2f2d368467719eb23429b84`  
		Last Modified: Fri, 17 Nov 2017 22:49:29 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b3b85c8800102c99f26a978354f39dc63ee9a1fe475c9625ff5c07a62b7950`  
		Last Modified: Fri, 17 Nov 2017 22:49:27 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3657aa8ec7376d01b795915774f395214586156297ce6138554f7dde3c4c89fb`  
		Last Modified: Fri, 17 Nov 2017 22:49:29 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2a155ae0622212491c0308a56e07401c8f7b8870b5c038d1dd7f750579ada3`  
		Last Modified: Fri, 17 Nov 2017 22:49:25 GMT  
		Size: 907.9 KB (907867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2812a879100eb2c00c9a386b29b16f55f4b4ebfe422f92c6df869c4e1d546a38`  
		Last Modified: Fri, 17 Nov 2017 22:49:25 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e2b44a7fd10c1423f5584530d5b95100625e8835c2f6cc5f97f3b2822910c7b`  
		Last Modified: Fri, 17 Nov 2017 22:49:25 GMT  
		Size: 495.9 KB (495853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfeb39550dc74fe83945dc2f7bb982ead3f37b0d2e16c6e447055c4672ac86b`  
		Last Modified: Fri, 17 Nov 2017 22:49:29 GMT  
		Size: 14.0 MB (13951483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc01882bd4863004a461bacf5cf39d796b3fabe29430370fff4809a911cd0a7`  
		Last Modified: Fri, 17 Nov 2017 22:49:22 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6f1e846ad090f65f07715e88a19c2654f0c9ad537a9aa4f425bf8e5a5bbd5c`  
		Last Modified: Fri, 17 Nov 2017 22:49:22 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80084a3f3fcdc3e5e4b703c1f0ed38f96053fbe4dab510a15f00f53fb3678623`  
		Last Modified: Fri, 17 Nov 2017 22:49:22 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0d5e4e2ccedfb9b6032b3473665912f1ed32439e56d8e1f7d5b13cd3213b32`  
		Last Modified: Fri, 17 Nov 2017 22:49:22 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
