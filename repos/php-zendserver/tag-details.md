<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

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
$ docker pull php-zendserver@sha256:28d2c310775a64f2f554205a25f00529a9c035b48cdea97ab3ceef09c2dc917d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327149008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a9aed3f35353215f1ea6d4ebf1c9a809342adf7c1fe956c5354d20e6ded89f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:17:13 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:17:16 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:17:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:17:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:17:23 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:17:25 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:17:26 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:17:51 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:17:54 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:17:55 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:18:02 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:19:04 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:19:07 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:19:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:19:12 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:19:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:19:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:19:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:19:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:19:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:19:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:19:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9af0790ed9e96f5579d8cf1b8d28ac73f432afafb2c09b39d2f193f36e8ff9`  
		Last Modified: Fri, 26 Aug 2016 21:20:57 GMT  
		Size: 251.5 MB (251469499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b93eca22bc1da766f17275d74e840a79e80446b72cc1c93aa94d3e4898a62f`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b514364f0c4a1ad760c30dd27e774b78a41d122acd10331bb67dbb5170e360`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a856a0410d2b1e5aeb9403bba5f6652dae30ed8b532560d128899f2b1b7a28`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a46b7ecca78ba2e2f38d3f38ac74bbe56e59a9d7cb3501e63d492b5f825c6`  
		Last Modified: Fri, 26 Aug 2016 21:19:41 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027b18acf85a4852fb44f1dd1dbdbedcf6ea7472bf8d969933edfc6bf2cf7b5`  
		Last Modified: Fri, 26 Aug 2016 21:19:42 GMT  
		Size: 471.6 KB (471614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39216214e1a05ffa7956f2b047de85cb5372eac149717db1f20391eda6a1ddb4`  
		Last Modified: Fri, 26 Aug 2016 21:19:41 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe47a0e70765cf448af3bd4067fd79b861d9ac4864d95b4ffba25b989758487`  
		Last Modified: Fri, 26 Aug 2016 21:19:41 GMT  
		Size: 457.5 KB (457487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142148efc3da1ee8114701bf34930b5551adea33aa48768b8175ccea37bc86`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 8.9 MB (8929754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d99da97f45088ac2085efb95d1d384b769a0cdfaa5928d1327043f7636d64`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc42757be0c2182cc75be8fc440212f95ad42b74e12c26e6ac555f9acb8170c1`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0748094c651caefd7c3227d4709eb36b3e9a8a79149f5c5b79ec4ee2ccc09edd`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffa77634cb1b2f3e6651f73020188f2cf3884fe32adf2b23ba4204152590398`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:28d2c310775a64f2f554205a25f00529a9c035b48cdea97ab3ceef09c2dc917d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327149008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a9aed3f35353215f1ea6d4ebf1c9a809342adf7c1fe956c5354d20e6ded89f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:17:13 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:17:16 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:17:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:17:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:17:23 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:17:25 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:17:26 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:17:51 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:17:54 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:17:55 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:18:02 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:19:04 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:19:07 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:19:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:19:12 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:19:14 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:19:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:19:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:19:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:19:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:19:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:19:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f9af0790ed9e96f5579d8cf1b8d28ac73f432afafb2c09b39d2f193f36e8ff9`  
		Last Modified: Fri, 26 Aug 2016 21:20:57 GMT  
		Size: 251.5 MB (251469499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b93eca22bc1da766f17275d74e840a79e80446b72cc1c93aa94d3e4898a62f`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b514364f0c4a1ad760c30dd27e774b78a41d122acd10331bb67dbb5170e360`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32a856a0410d2b1e5aeb9403bba5f6652dae30ed8b532560d128899f2b1b7a28`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261a46b7ecca78ba2e2f38d3f38ac74bbe56e59a9d7cb3501e63d492b5f825c6`  
		Last Modified: Fri, 26 Aug 2016 21:19:41 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5027b18acf85a4852fb44f1dd1dbdbedcf6ea7472bf8d969933edfc6bf2cf7b5`  
		Last Modified: Fri, 26 Aug 2016 21:19:42 GMT  
		Size: 471.6 KB (471614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39216214e1a05ffa7956f2b047de85cb5372eac149717db1f20391eda6a1ddb4`  
		Last Modified: Fri, 26 Aug 2016 21:19:41 GMT  
		Size: 15.6 KB (15596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe47a0e70765cf448af3bd4067fd79b861d9ac4864d95b4ffba25b989758487`  
		Last Modified: Fri, 26 Aug 2016 21:19:41 GMT  
		Size: 457.5 KB (457487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae142148efc3da1ee8114701bf34930b5551adea33aa48768b8175ccea37bc86`  
		Last Modified: Fri, 26 Aug 2016 21:19:44 GMT  
		Size: 8.9 MB (8929754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3d99da97f45088ac2085efb95d1d384b769a0cdfaa5928d1327043f7636d64`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 13.1 KB (13111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc42757be0c2182cc75be8fc440212f95ad42b74e12c26e6ac555f9acb8170c1`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0748094c651caefd7c3227d4709eb36b3e9a8a79149f5c5b79ec4ee2ccc09edd`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffa77634cb1b2f3e6651f73020188f2cf3884fe32adf2b23ba4204152590398`  
		Last Modified: Fri, 26 Aug 2016 21:19:39 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:db3dcdb25cd5b53429bab5edbe480d8d4439e41d968f028bc00813ba7a3d9dd4
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331454747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b1f8012dac08091b0b57cff3912a2293da5a3a78a1d1533a00b5e18d28eee3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:00:20 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:00:24 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:00:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:00:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:00:32 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:00:34 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:00:35 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:00:59 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:01:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:01:03 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:01:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:02:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:02:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:02:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:02:13 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:02:15 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:02:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:02:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:02:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:02:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:02:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:02:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e945c97c6c59b21f7cab6f363c720b6ece958e12b9dea4162578b8a6829271de`  
		Last Modified: Fri, 26 Aug 2016 21:03:49 GMT  
		Size: 255.8 MB (255773325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65514eb6acad924ee4d48828cd6f4e775bbc840b194c29a3ea420853b5af8fd2`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e3bf8058c538cf85deae7c2847eeedac0ed05f4264601ea08d947b0d835f8`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d352324776e319486cbfa392d17a601a2d22b47e0d3958611aa01221f3dd8f0`  
		Last Modified: Fri, 26 Aug 2016 21:02:42 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b09e169dfbdf7482b69e28b6557e2be93910f63c7a623cf8d73e3a9e0a5f70`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead184c21ebfd31a1e9243427008ef2b1ac3fa73301182fc495b3e2f74170194`  
		Last Modified: Fri, 26 Aug 2016 21:02:39 GMT  
		Size: 473.6 KB (473568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37c504d88f5bdb64b584b62608ef15a76cff004b721ac22821583d5ff611fb4`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e07def8defe8b8df1de1e6d956b1a02bd08f8749ab8bb76aeabfba2c9c669a`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2f0999319b1df559e3c0bd3c3b99ad59af1886aa38a00f24bf0d1adb29411d`  
		Last Modified: Fri, 26 Aug 2016 21:02:41 GMT  
		Size: 8.9 MB (8929726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c44152573bd011de97af529596799cc66c236f3c81b0755e24da30eb0d63c`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1045f7cebd142c311236373c525d0c16b004d31b24fc519dd5038a1eb1aa2b`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3324970d68c0586469f1cc9bd11f1050a857ae5f9f1f2c1218cff5c0e7db5ad0`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7a7fe75c061e2cd78be4fd4a076fe934161a5a43f75bdf2cb544cf3dfe79c3`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:db3dcdb25cd5b53429bab5edbe480d8d4439e41d968f028bc00813ba7a3d9dd4
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331454747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b1f8012dac08091b0b57cff3912a2293da5a3a78a1d1533a00b5e18d28eee3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:00:20 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:00:24 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:00:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:00:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:00:32 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:00:34 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:00:35 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:00:59 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:01:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:01:03 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:01:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:02:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:02:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:02:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:02:13 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:02:15 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:02:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:02:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:02:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:02:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:02:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:02:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e945c97c6c59b21f7cab6f363c720b6ece958e12b9dea4162578b8a6829271de`  
		Last Modified: Fri, 26 Aug 2016 21:03:49 GMT  
		Size: 255.8 MB (255773325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65514eb6acad924ee4d48828cd6f4e775bbc840b194c29a3ea420853b5af8fd2`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e3bf8058c538cf85deae7c2847eeedac0ed05f4264601ea08d947b0d835f8`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d352324776e319486cbfa392d17a601a2d22b47e0d3958611aa01221f3dd8f0`  
		Last Modified: Fri, 26 Aug 2016 21:02:42 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b09e169dfbdf7482b69e28b6557e2be93910f63c7a623cf8d73e3a9e0a5f70`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead184c21ebfd31a1e9243427008ef2b1ac3fa73301182fc495b3e2f74170194`  
		Last Modified: Fri, 26 Aug 2016 21:02:39 GMT  
		Size: 473.6 KB (473568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37c504d88f5bdb64b584b62608ef15a76cff004b721ac22821583d5ff611fb4`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e07def8defe8b8df1de1e6d956b1a02bd08f8749ab8bb76aeabfba2c9c669a`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2f0999319b1df559e3c0bd3c3b99ad59af1886aa38a00f24bf0d1adb29411d`  
		Last Modified: Fri, 26 Aug 2016 21:02:41 GMT  
		Size: 8.9 MB (8929726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c44152573bd011de97af529596799cc66c236f3c81b0755e24da30eb0d63c`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1045f7cebd142c311236373c525d0c16b004d31b24fc519dd5038a1eb1aa2b`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3324970d68c0586469f1cc9bd11f1050a857ae5f9f1f2c1218cff5c0e7db5ad0`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7a7fe75c061e2cd78be4fd4a076fe934161a5a43f75bdf2cb544cf3dfe79c3`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:db3dcdb25cd5b53429bab5edbe480d8d4439e41d968f028bc00813ba7a3d9dd4
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.5 MB (331454747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9b1f8012dac08091b0b57cff3912a2293da5a3a78a1d1533a00b5e18d28eee3`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:57:04 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:00:20 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:00:24 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:00:27 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:00:30 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:00:32 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:00:34 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:00:35 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:00:59 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:01:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:01:03 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:01:10 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:02:07 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:02:09 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:02:11 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:02:13 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:02:15 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:02:16 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:02:17 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:02:19 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:02:20 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:02:22 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:02:23 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7b1dd785ae02e9d863f39d838268f317a6d83306ff6c66d7682133f2612048`  
		Last Modified: Fri, 26 Aug 2016 21:02:46 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e945c97c6c59b21f7cab6f363c720b6ece958e12b9dea4162578b8a6829271de`  
		Last Modified: Fri, 26 Aug 2016 21:03:49 GMT  
		Size: 255.8 MB (255773325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65514eb6acad924ee4d48828cd6f4e775bbc840b194c29a3ea420853b5af8fd2`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2e3bf8058c538cf85deae7c2847eeedac0ed05f4264601ea08d947b0d835f8`  
		Last Modified: Fri, 26 Aug 2016 21:02:43 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d352324776e319486cbfa392d17a601a2d22b47e0d3958611aa01221f3dd8f0`  
		Last Modified: Fri, 26 Aug 2016 21:02:42 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b09e169dfbdf7482b69e28b6557e2be93910f63c7a623cf8d73e3a9e0a5f70`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead184c21ebfd31a1e9243427008ef2b1ac3fa73301182fc495b3e2f74170194`  
		Last Modified: Fri, 26 Aug 2016 21:02:39 GMT  
		Size: 473.6 KB (473568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d37c504d88f5bdb64b584b62608ef15a76cff004b721ac22821583d5ff611fb4`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 15.6 KB (15593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e07def8defe8b8df1de1e6d956b1a02bd08f8749ab8bb76aeabfba2c9c669a`  
		Last Modified: Fri, 26 Aug 2016 21:02:40 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2f0999319b1df559e3c0bd3c3b99ad59af1886aa38a00f24bf0d1adb29411d`  
		Last Modified: Fri, 26 Aug 2016 21:02:41 GMT  
		Size: 8.9 MB (8929726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5c44152573bd011de97af529596799cc66c236f3c81b0755e24da30eb0d63c`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1045f7cebd142c311236373c525d0c16b004d31b24fc519dd5038a1eb1aa2b`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 2.5 KB (2501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3324970d68c0586469f1cc9bd11f1050a857ae5f9f1f2c1218cff5c0e7db5ad0`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7a7fe75c061e2cd78be4fd4a076fe934161a5a43f75bdf2cb544cf3dfe79c3`  
		Last Modified: Fri, 26 Aug 2016 21:02:36 GMT  
		Size: 1.2 KB (1235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:bc4d2aa9fb3e743989a7954117b0744bb715b66cf2d3f67db4a3497f359ce4d6
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292438679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36251e3867499d90c3d41d07108640035d7c9f10b5551b144117c559f7200fe`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:51:00 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run
# Fri, 26 Aug 2016 20:51:02 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing
# Fri, 26 Aug 2016 20:51:04 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/
# Fri, 26 Aug 2016 20:51:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:51:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 20:54:38 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 20:54:41 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 20:54:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 20:54:46 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 20:54:47 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 20:54:48 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 20:54:49 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 20:54:50 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 20:54:52 GMT
EXPOSE 10060/tcp
# Fri, 26 Aug 2016 20:54:53 GMT
EXPOSE 10061/tcp
# Fri, 26 Aug 2016 20:54:54 GMT
EXPOSE 10062/tcp
# Fri, 26 Aug 2016 20:54:55 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 20:54:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a9634ca24b5162be8e9bd9f9fe0427350e1188a751a48c094830bc5e9aad75`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638dc51c7525ab849fa5bbc957031bdc50aa33769172f22eb2487866370443b4`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 11.7 KB (11695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453f331ae8c658235eac64bbb8f86c707ee646b2ec4994f89c7064eef48401a1`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69a5bd906d3e902776181bad3aec38b43202d7778566766bc752ed5e474d04`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924b2762723d723aa94a43daaa02a88e24bca617b1834642063d24e29ba9ecec`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6551c7c729d5d0b1f0c31fd7975cb1894dacd30acf7f0f16f52ef249b1bbecf2`  
		Last Modified: Fri, 26 Aug 2016 20:56:15 GMT  
		Size: 225.7 MB (225719866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cea304edb5a849c90f41d6cac9f513a70781cf536d163db7734a4657af4a59`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7687c15077baaa5382da804fefbff9bdda4cbb54e68e2be2f7d31d0df0cf2945`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee150d453258d97e7176bb42a822b8122d6daf0aaaf666a6ac7345bfdfa6bd0d`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:bc4d2aa9fb3e743989a7954117b0744bb715b66cf2d3f67db4a3497f359ce4d6
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292438679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36251e3867499d90c3d41d07108640035d7c9f10b5551b144117c559f7200fe`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:51:00 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run
# Fri, 26 Aug 2016 20:51:02 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing
# Fri, 26 Aug 2016 20:51:04 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/
# Fri, 26 Aug 2016 20:51:24 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 20:51:27 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 20:54:38 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 20:54:41 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 20:54:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 20:54:46 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 20:54:47 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 20:54:48 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 20:54:49 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 20:54:50 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 20:54:52 GMT
EXPOSE 10060/tcp
# Fri, 26 Aug 2016 20:54:53 GMT
EXPOSE 10061/tcp
# Fri, 26 Aug 2016 20:54:54 GMT
EXPOSE 10062/tcp
# Fri, 26 Aug 2016 20:54:55 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 20:54:57 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a9634ca24b5162be8e9bd9f9fe0427350e1188a751a48c094830bc5e9aad75`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638dc51c7525ab849fa5bbc957031bdc50aa33769172f22eb2487866370443b4`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 11.7 KB (11695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453f331ae8c658235eac64bbb8f86c707ee646b2ec4994f89c7064eef48401a1`  
		Last Modified: Fri, 26 Aug 2016 20:55:18 GMT  
		Size: 918.3 KB (918295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb69a5bd906d3e902776181bad3aec38b43202d7778566766bc752ed5e474d04`  
		Last Modified: Fri, 26 Aug 2016 20:55:17 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924b2762723d723aa94a43daaa02a88e24bca617b1834642063d24e29ba9ecec`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6551c7c729d5d0b1f0c31fd7975cb1894dacd30acf7f0f16f52ef249b1bbecf2`  
		Last Modified: Fri, 26 Aug 2016 20:56:15 GMT  
		Size: 225.7 MB (225719866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cea304edb5a849c90f41d6cac9f513a70781cf536d163db7734a4657af4a59`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7687c15077baaa5382da804fefbff9bdda4cbb54e68e2be2f7d31d0df0cf2945`  
		Last Modified: Fri, 26 Aug 2016 20:55:15 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee150d453258d97e7176bb42a822b8122d6daf0aaaf666a6ac7345bfdfa6bd0d`  
		Last Modified: Fri, 26 Aug 2016 20:55:14 GMT  
		Size: 293.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0`

```console
$ docker pull php-zendserver@sha256:770329164e586db577eb8d4f15d77396c6089787c465ab17806debeeb52b6d6e
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339418112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6692f4ddd62d6e98e764c283543bdd1571762b0c407e15ec79c37735c8dc6261`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 21:04:32 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:07:32 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:07:35 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:07:36 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:07:41 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:07:44 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:07:46 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:07:47 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:08:12 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:08:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:08:17 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:08:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:09:18 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:09:20 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:09:22 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:09:24 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:09:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:09:27 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:09:28 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:09:29 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:09:31 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:09:32 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:09:33 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc66525b613a546f3be61829cc25c88a9f8435a4c49c1af3802a78bc4474cc7`  
		Last Modified: Fri, 26 Aug 2016 21:09:59 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f95226c83a41cc45557f7012a81c11f74e62dbc7932006cb98635dd8027862d`  
		Last Modified: Fri, 26 Aug 2016 21:13:15 GMT  
		Size: 263.7 MB (263747097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdf4c4e52eb3cecd90ffdba46c6028eca6af9b507651226581e35cd4c39cf3f`  
		Last Modified: Fri, 26 Aug 2016 21:09:56 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366bfb03967a6cf178fe64fbb8788cb7094a2384246c0806a751c427b2f158b0`  
		Last Modified: Fri, 26 Aug 2016 21:09:59 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcf081fdb78011fdef64e3071795219cd28ad42c45440037e8aec85db7529bb`  
		Last Modified: Fri, 26 Aug 2016 21:09:56 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0419966e3a344ca1493540f4cb8b046637c2453d155219f6ceb4dc06697546`  
		Last Modified: Fri, 26 Aug 2016 21:09:53 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfee51d806f3853099d08d0946b9b993b0482820a12476cc4151172163eaa7c`  
		Last Modified: Fri, 26 Aug 2016 21:09:54 GMT  
		Size: 463.1 KB (463128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938eb587768241bafb3a6884e0d6e2f2c1d00c5176bcff4116bd31a879a6cd23`  
		Last Modified: Fri, 26 Aug 2016 21:09:53 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396e26b4687c118832a93b0ab2678669655eeaa50ad61745f22bd20048ca35a5`  
		Last Modified: Fri, 26 Aug 2016 21:09:54 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4979cebc6876fd521f72cc208bb88624fe303bdf5912e2a1876a0ae43055`  
		Last Modified: Fri, 26 Aug 2016 21:09:55 GMT  
		Size: 8.9 MB (8929757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c3d756f116ac0bb2f92cf1854902a2703584e4ed827fe480dd6485bbd8209`  
		Last Modified: Fri, 26 Aug 2016 21:09:50 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a20a3f07e4baf3d184ba770b366d2fd90f70b8527ba2f3fb9f09ed66ae48a67`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35245097fdae31069d8fb57164297ca5ad4006daf2419992865f1e9a0f0cd998`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767050efaca0f813659fb334315ef04fa40b47fb66fa7978f3ce1d9951aec3a`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.0-php7`

```console
$ docker pull php-zendserver@sha256:770329164e586db577eb8d4f15d77396c6089787c465ab17806debeeb52b6d6e
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.0-php7` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339418112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6692f4ddd62d6e98e764c283543bdd1571762b0c407e15ec79c37735c8dc6261`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 21:04:32 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:07:32 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:07:35 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:07:36 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:07:41 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:07:44 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:07:46 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:07:47 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:08:12 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:08:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:08:17 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:08:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:09:18 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:09:20 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:09:22 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:09:24 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:09:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:09:27 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:09:28 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:09:29 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:09:31 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:09:32 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:09:33 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc66525b613a546f3be61829cc25c88a9f8435a4c49c1af3802a78bc4474cc7`  
		Last Modified: Fri, 26 Aug 2016 21:09:59 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f95226c83a41cc45557f7012a81c11f74e62dbc7932006cb98635dd8027862d`  
		Last Modified: Fri, 26 Aug 2016 21:13:15 GMT  
		Size: 263.7 MB (263747097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdf4c4e52eb3cecd90ffdba46c6028eca6af9b507651226581e35cd4c39cf3f`  
		Last Modified: Fri, 26 Aug 2016 21:09:56 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366bfb03967a6cf178fe64fbb8788cb7094a2384246c0806a751c427b2f158b0`  
		Last Modified: Fri, 26 Aug 2016 21:09:59 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcf081fdb78011fdef64e3071795219cd28ad42c45440037e8aec85db7529bb`  
		Last Modified: Fri, 26 Aug 2016 21:09:56 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0419966e3a344ca1493540f4cb8b046637c2453d155219f6ceb4dc06697546`  
		Last Modified: Fri, 26 Aug 2016 21:09:53 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfee51d806f3853099d08d0946b9b993b0482820a12476cc4151172163eaa7c`  
		Last Modified: Fri, 26 Aug 2016 21:09:54 GMT  
		Size: 463.1 KB (463128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938eb587768241bafb3a6884e0d6e2f2c1d00c5176bcff4116bd31a879a6cd23`  
		Last Modified: Fri, 26 Aug 2016 21:09:53 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396e26b4687c118832a93b0ab2678669655eeaa50ad61745f22bd20048ca35a5`  
		Last Modified: Fri, 26 Aug 2016 21:09:54 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4979cebc6876fd521f72cc208bb88624fe303bdf5912e2a1876a0ae43055`  
		Last Modified: Fri, 26 Aug 2016 21:09:55 GMT  
		Size: 8.9 MB (8929757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c3d756f116ac0bb2f92cf1854902a2703584e4ed827fe480dd6485bbd8209`  
		Last Modified: Fri, 26 Aug 2016 21:09:50 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a20a3f07e4baf3d184ba770b366d2fd90f70b8527ba2f3fb9f09ed66ae48a67`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35245097fdae31069d8fb57164297ca5ad4006daf2419992865f1e9a0f0cd998`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767050efaca0f813659fb334315ef04fa40b47fb66fa7978f3ce1d9951aec3a`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:770329164e586db577eb8d4f15d77396c6089787c465ab17806debeeb52b6d6e
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339418112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6692f4ddd62d6e98e764c283543bdd1571762b0c407e15ec79c37735c8dc6261`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 20:56:56 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Aug 2016 21:04:32 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Aug 2016 21:07:32 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.0 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Aug 2016 21:07:35 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/
# Fri, 26 Aug 2016 21:07:36 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available
# Fri, 26 Aug 2016 21:07:41 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Aug 2016 21:07:44 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Aug 2016 21:07:46 GMT
ENV ZS_INIT_VERSION=0.2
# Fri, 26 Aug 2016 21:07:47 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Fri, 26 Aug 2016 21:08:12 GMT
RUN apt-get install -y curl
# Fri, 26 Aug 2016 21:08:15 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Aug 2016 21:08:17 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Aug 2016 21:08:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Aug 2016 21:09:18 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Aug 2016 21:09:20 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin
# Fri, 26 Aug 2016 21:09:22 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/
# Fri, 26 Aug 2016 21:09:24 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Aug 2016 21:09:26 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html
# Fri, 26 Aug 2016 21:09:27 GMT
EXPOSE 80/tcp
# Fri, 26 Aug 2016 21:09:28 GMT
EXPOSE 443/tcp
# Fri, 26 Aug 2016 21:09:29 GMT
EXPOSE 10081/tcp
# Fri, 26 Aug 2016 21:09:31 GMT
EXPOSE 10082/tcp
# Fri, 26 Aug 2016 21:09:32 GMT
WORKDIR /var/www/html
# Fri, 26 Aug 2016 21:09:33 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e813b6e46acbfc88bbcf8452f28b24c11fc60adfe77fb2cd40dccb9af84fba8c`  
		Last Modified: Fri, 26 Aug 2016 21:02:45 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc66525b613a546f3be61829cc25c88a9f8435a4c49c1af3802a78bc4474cc7`  
		Last Modified: Fri, 26 Aug 2016 21:09:59 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f95226c83a41cc45557f7012a81c11f74e62dbc7932006cb98635dd8027862d`  
		Last Modified: Fri, 26 Aug 2016 21:13:15 GMT  
		Size: 263.7 MB (263747097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdf4c4e52eb3cecd90ffdba46c6028eca6af9b507651226581e35cd4c39cf3f`  
		Last Modified: Fri, 26 Aug 2016 21:09:56 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:366bfb03967a6cf178fe64fbb8788cb7094a2384246c0806a751c427b2f158b0`  
		Last Modified: Fri, 26 Aug 2016 21:09:59 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddcf081fdb78011fdef64e3071795219cd28ad42c45440037e8aec85db7529bb`  
		Last Modified: Fri, 26 Aug 2016 21:09:56 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0419966e3a344ca1493540f4cb8b046637c2453d155219f6ceb4dc06697546`  
		Last Modified: Fri, 26 Aug 2016 21:09:53 GMT  
		Size: 291.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adfee51d806f3853099d08d0946b9b993b0482820a12476cc4151172163eaa7c`  
		Last Modified: Fri, 26 Aug 2016 21:09:54 GMT  
		Size: 463.1 KB (463128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938eb587768241bafb3a6884e0d6e2f2c1d00c5176bcff4116bd31a879a6cd23`  
		Last Modified: Fri, 26 Aug 2016 21:09:53 GMT  
		Size: 15.6 KB (15595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396e26b4687c118832a93b0ab2678669655eeaa50ad61745f22bd20048ca35a5`  
		Last Modified: Fri, 26 Aug 2016 21:09:54 GMT  
		Size: 457.5 KB (457489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4979cebc6876fd521f72cc208bb88624fe303bdf5912e2a1876a0ae43055`  
		Last Modified: Fri, 26 Aug 2016 21:09:55 GMT  
		Size: 8.9 MB (8929757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7c3d756f116ac0bb2f92cf1854902a2703584e4ed827fe480dd6485bbd8209`  
		Last Modified: Fri, 26 Aug 2016 21:09:50 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a20a3f07e4baf3d184ba770b366d2fd90f70b8527ba2f3fb9f09ed66ae48a67`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 2.5 KB (2503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35245097fdae31069d8fb57164297ca5ad4006daf2419992865f1e9a0f0cd998`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f767050efaca0f813659fb334315ef04fa40b47fb66fa7978f3ce1d9951aec3a`  
		Last Modified: Fri, 26 Aug 2016 21:09:51 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
