## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:0aa80f20f976c2fa4ddc1045cdca390642e23b6c7c4a6cabc390bd27a28a7ae1
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.7 MB (417658745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f8cb7ac721d7f85ca0f8316b4a777a9c1db21a91ac5196080208e40749ac658`
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
# Thu, 20 Jul 2017 20:26:24 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 20 Jul 2017 20:26:27 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Thu, 20 Jul 2017 20:26:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 20 Jul 2017 20:26:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 20 Jul 2017 20:26:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 20 Jul 2017 20:26:31 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 20 Jul 2017 20:26:31 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 20 Jul 2017 20:26:36 GMT
RUN apt-get install -y curl
# Thu, 20 Jul 2017 20:26:38 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 20 Jul 2017 20:26:38 GMT
WORKDIR /usr/local/zs-init
# Thu, 20 Jul 2017 20:26:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 20 Jul 2017 20:27:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 20 Jul 2017 20:27:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 20 Jul 2017 20:27:10 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 20 Jul 2017 20:27:11 GMT
RUN rm /var/www/html/index.html
# Thu, 20 Jul 2017 20:27:11 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 20 Jul 2017 20:27:12 GMT
EXPOSE 80/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 443/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 10081/tcp
# Thu, 20 Jul 2017 20:27:13 GMT
EXPOSE 10082/tcp
# Thu, 20 Jul 2017 20:27:14 GMT
WORKDIR /var/www/html
# Thu, 20 Jul 2017 20:27:15 GMT
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
	-	`sha256:c2b621541d09bf48876eadd87dd3ccd79d8772cb556181eb9917f3d1c7e51daf`  
		Last Modified: Thu, 20 Jul 2017 20:31:55 GMT  
		Size: 338.0 MB (337989578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bb331f6466e664a75628a75fe24f19dab2cdba3adf4b97386c2bbb78c91b3e`  
		Last Modified: Thu, 20 Jul 2017 20:31:14 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc4e5289ee213cb79f48f593caa114759d7bb300e6cdc5aed4b26ec3509d89f`  
		Last Modified: Thu, 20 Jul 2017 20:31:13 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c48c98b291fcc5e7525e9c5e9531e99f51ef1e0a11d00eae366428381feceb5`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0fcb3187a0e9442d21001d6697970b090bd03313e5cfaa2d70d47decbbcf38`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bab60d96c94c510e2624f448bedb90e1286d99c7fd6de2515e3aae714b88a1`  
		Last Modified: Thu, 20 Jul 2017 20:31:12 GMT  
		Size: 470.2 KB (470201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f0d2beca98dca0430386d2cd8c1df2de8600c08b5406ab3e925f0a7fb4bc17`  
		Last Modified: Thu, 20 Jul 2017 20:31:13 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:574bd1c7fc521d24f1503896afa82e5ed0cf294275519ec392b13a43348b3346`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 489.4 KB (489414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e680a59d7f36c52ba4796b8decb71efb3ca3e0543c14da0170883446505ede`  
		Last Modified: Thu, 20 Jul 2017 20:31:11 GMT  
		Size: 11.5 MB (11473614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407891f14c3630dce7ed840c2b520886dc5e5c06757d102b5562d912e64025cc`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d8e4c31d5ef303ed2fc56b52d20dbc0b76fdfdc59e1a0922136c22e66c40cf`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3c7ddeeb50cdde8a7fc60ea708dde8e2ec8a5014a0c374062e0692794371dd`  
		Last Modified: Thu, 20 Jul 2017 20:31:09 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f59ff0acb7f5a245c81b7ad7becbab2f2270dbf1e0df1f74a71043fc0411dd9`  
		Last Modified: Thu, 20 Jul 2017 20:31:10 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
