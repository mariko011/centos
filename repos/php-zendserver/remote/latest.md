## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:577b43f772b76a94dfd45572a032196645a47a534f464a47a8b69f1e5465f180
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.4 MB (421394150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d33bf942c8811017c208bb25c44484dcb4437a3d494d26ab95610bc43ccea53b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 20:18:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 20 Jul 2017 20:24:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 24 Jul 2017 16:53:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 24 Jul 2017 16:53:27 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Mon, 24 Jul 2017 16:53:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 24 Jul 2017 16:53:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 24 Jul 2017 16:53:30 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 24 Jul 2017 16:53:30 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 24 Jul 2017 16:53:30 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 24 Jul 2017 16:53:40 GMT
RUN apt-get install -y curl
# Mon, 24 Jul 2017 16:53:42 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 24 Jul 2017 16:53:42 GMT
WORKDIR /usr/local/zs-init
# Mon, 24 Jul 2017 16:53:47 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 24 Jul 2017 16:54:13 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 24 Jul 2017 16:54:13 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 24 Jul 2017 16:54:14 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 24 Jul 2017 16:54:14 GMT
RUN rm /var/www/html/index.html
# Mon, 24 Jul 2017 16:54:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 80/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 443/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 10081/tcp
# Mon, 24 Jul 2017 16:54:15 GMT
EXPOSE 10082/tcp
# Mon, 24 Jul 2017 16:54:16 GMT
WORKDIR /var/www/html
# Mon, 24 Jul 2017 16:54:16 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c060898f35b37b53722a819a9f65339cf9aa350ca60964c07cdbd471e0b78cf8`  
		Last Modified: Thu, 20 Jul 2017 20:28:55 GMT  
		Size: 13.1 KB (13056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e304c86e302641147238e99b8b07c098950475f8c2c7461514aa62ceb1b3df`  
		Last Modified: Thu, 20 Jul 2017 20:31:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c20b784a2e03354f7e4a72249c7305fc87964225ffbc8782bc8d233a36f65e9`  
		Last Modified: Mon, 24 Jul 2017 16:57:16 GMT  
		Size: 341.7 MB (341697414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d67848e721a00cb1d4dd23b8c5d22ba095fb1b02f1b82535e591bb9dbf469d2`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c3b4ff62feece222c9ea19cf273f092d76719569ed5b6ddbe4287f72decea`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa61a125cff65ba0a4c2a1db2867594903e321c40fd5cc9651a3a6d4cf177f14`  
		Last Modified: Mon, 24 Jul 2017 16:56:03 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1feb81d62bb74b50a93215a36cc4d9ba907a19844bc70ba97ab510208d4a3ffa`  
		Last Modified: Mon, 24 Jul 2017 16:56:02 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463dfc13eed323c991f39d5365e8a93bd1b89b0e209a850a1702c9ded88060d5`  
		Last Modified: Mon, 24 Jul 2017 16:56:02 GMT  
		Size: 470.4 KB (470379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64f51c3f49a3995eb7aeac75776f40c73ce82cd3dd468f702fa25c3016206f3`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 15.7 KB (15682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0a2cb06191e11a967b8a746e72be2aee65f75986adce89a94fc225b8771f20`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 489.4 KB (489417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc624c119ef43e49707247f4bce763d440a1d1ba24d4e9a0b71724cf4ea89f1b`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 11.5 MB (11500997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b044304545d42d455294b6d83bf1c0e4c1b875d52867eb6b41b434b02a4d18cd`  
		Last Modified: Mon, 24 Jul 2017 16:56:00 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d0b045dcab35421db178644efab718692d336a0c3ad32760436c1f7efe0424`  
		Last Modified: Mon, 24 Jul 2017 16:55:59 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88bc36b3717d5a42e20158c94cda7c7e69473fd2fcbccb7f50b470cea07e1321`  
		Last Modified: Mon, 24 Jul 2017 16:56:01 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cede77749218576b641e002f796eee5a3c2330a19daf93f397123dc8c6e73312`  
		Last Modified: Mon, 24 Jul 2017 16:56:00 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
