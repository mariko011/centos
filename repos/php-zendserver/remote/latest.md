## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:d1f02841add6f2287c33eef73f4c8b3a2153da40613754dedaf4b37ee069c4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:60e512fc51d83c99041ad81ae60016637ee1d3295d5dafcb946fb8b94aae869b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.4 MB (424431844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619b411aff56813f0e6a8d5878d3c21e719cdf0690576fff769586c929898a7c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 00:05:49 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Jan 2018 00:46:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:48:43 GMT
RUN apt-get update &&     apt-get install -y     curl libmysqlclient18 unzip git zend-server-php-7.1=9.1.2+b144 &&     apt-get clean &&     /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:52:07 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 26 Jan 2018 00:52:08 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:52:09 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:52:10 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:52:10 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 26 Jan 2018 00:52:10 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 26 Jan 2018 00:52:12 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Jan 2018 00:52:13 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Jan 2018 00:52:16 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Jan 2018 00:52:41 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Jan 2018 01:08:56 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 26 Jan 2018 01:08:56 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 26 Jan 2018 01:08:57 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Jan 2018 01:09:07 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 26 Jan 2018 01:09:08 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 01:09:08 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 01:09:08 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 01:09:19 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 01:09:19 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 01:09:19 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b4e50b27060d52f997229f1454fa7c79bb38cb892185817120f4a8d9ddde6`  
		Last Modified: Fri, 26 Jan 2018 01:09:57 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ae0f35cce69ba6ef653d9782a344d81bcf39d371d288f13e199ba6f8e1605`  
		Last Modified: Fri, 26 Jan 2018 01:15:13 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa9d3c07436bae97d6f0e396e7e9528bf27f81a99165b0535423cf2f6565f31`  
		Last Modified: Fri, 26 Jan 2018 01:16:24 GMT  
		Size: 336.9 MB (336944188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017d9a9f5586f514f6fd473217b578ea926074867eb8351047daa8a7a9fb2eff`  
		Last Modified: Fri, 26 Jan 2018 01:15:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057be09980c6468f0aa553ec43cf9d18cae3018e7a19c22df3c97c237a032ac7`  
		Last Modified: Fri, 26 Jan 2018 01:15:11 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149147a1d6b765d85ce0f28bbf20a3b6c2a9521c183fdba41b80139e637ada1d`  
		Last Modified: Fri, 26 Jan 2018 01:15:10 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fcab8c05b9a5fff628038f83b94fa653530d35d13eccecd721a893506c80050`  
		Last Modified: Fri, 26 Jan 2018 01:15:08 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13464549037e9ccfdf6c6368705604c35ff1ec372b6025a6ef9b17a2828dddee`  
		Last Modified: Fri, 26 Jan 2018 01:15:10 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee50e72a5ad714260a49e599f209325eca6484e4d87a784cb8a402af3c585766`  
		Last Modified: Fri, 26 Jan 2018 01:15:09 GMT  
		Size: 489.5 KB (489472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8310f874342180bb68bd6459035c1a9e0965515cab83e522ebe5fb6a0d9436ef`  
		Last Modified: Fri, 26 Jan 2018 01:15:14 GMT  
		Size: 13.9 MB (13920387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178658f181050a2d795a889e7ecbae1e9eaa3b8d13c345e23810e91bc1543e70`  
		Last Modified: Fri, 26 Jan 2018 01:15:06 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a14b5d7b0f3a0e4002bd59c8f60abbeb41b9cc0a18992addd2c29831b9c0821`  
		Last Modified: Fri, 26 Jan 2018 01:15:06 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2222494a575a836304948e1c32cccf27bb0da86df2de53831dc3d59c2f16462d`  
		Last Modified: Fri, 26 Jan 2018 01:15:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de82cd2d32155901ae337a98db2bdc389f9f3f72ea0ca790dc8367acf8cafd5`  
		Last Modified: Fri, 26 Jan 2018 01:15:06 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
