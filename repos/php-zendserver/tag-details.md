<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:5.4`](#php-zendserver54)
-	[`php-zendserver:5.5`](#php-zendserver55)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:7.0-php5.4`](#php-zendserver70-php54)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:8.5-php5.5`](#php-zendserver85-php55)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:9.1`](#php-zendserver91)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:579e329149183bf06316a1130bed054e4c1841b6b80323e6050810cbc65f047a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a9f14aaeed73d440045dda37ba5316e0091a2df6cfb3016e5c1e2f0aa07c253e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301859530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd34838330eb93b641de36405d5aec40536c091586672724946f957e8bf4ca2e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:39:26 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Thu, 14 Dec 2017 23:39:26 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 14 Dec 2017 23:39:26 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 14 Dec 2017 23:39:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Dec 2017 23:39:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Dec 2017 23:41:26 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Dec 2017 23:41:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Dec 2017 23:41:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Dec 2017 23:41:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 443/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 10081/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 10082/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 10060/tcp
# Thu, 14 Dec 2017 23:41:30 GMT
EXPOSE 10061/tcp
# Thu, 14 Dec 2017 23:41:30 GMT
EXPOSE 10062/tcp
# Thu, 14 Dec 2017 23:41:30 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 23:41:30 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4387cd3c26937670b3afa3c28c878cf6435f0e33fe9e6dd3f15351f83a6da3`  
		Last Modified: Fri, 15 Dec 2017 00:00:51 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f51c9073a19aa192dcbe1ab11d74b9cb29a13287c2ed12b07f9073abf8eceb`  
		Last Modified: Fri, 15 Dec 2017 00:00:49 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f826892f619cad07166b39032555fb77a869b1e040645aa7295e43a9e995074`  
		Last Modified: Fri, 15 Dec 2017 00:00:50 GMT  
		Size: 938.4 KB (938416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4044034523935641a7cf6b8e13c817660fdf3cb90c6cd294825c351ad123122`  
		Last Modified: Fri, 15 Dec 2017 00:00:48 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2bff35d902ec1e9b4243077b3554c717f139146e3a79a9dff371ec8da568b2`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6c6df4d43204c0b8d743ec045393086553159b7dbea27b2bc4f3aced6885e5`  
		Last Modified: Fri, 15 Dec 2017 00:01:33 GMT  
		Size: 227.9 MB (227930975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7b7d444ad894e0ea16b83b93f5bad401ca80153abd2fdd3e1a8b4b8993a82`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81bbb55998495d226142b9ba577f9c76698137c5ea87d21344873460c7672da`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8117ae78385695775c8870bc1fdbe4fd653e482513cdd802a9b19e164eb9d33b`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:ea670310000ecd3c67169dec68aa0266bdeefafd26363025edb2733db630bdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2806aa61ea6d63bbe40818c019271a08153ccb300d05efffbcd1dd8aafba47d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338822195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1178a2998bf27e8964a48cb14adfd3cf9ba7340365143b62dbad9fb65c59614`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:24:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Dec 2017 23:24:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Dec 2017 23:26:10 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Dec 2017 23:26:10 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Dec 2017 23:26:11 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Dec 2017 23:33:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Dec 2017 23:33:11 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Dec 2017 23:33:11 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Dec 2017 23:33:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Dec 2017 23:33:17 GMT
RUN apt-get install -y curl
# Thu, 14 Dec 2017 23:33:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Dec 2017 23:33:19 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Dec 2017 23:33:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Dec 2017 23:33:51 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Dec 2017 23:33:51 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Dec 2017 23:33:52 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Dec 2017 23:33:52 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Dec 2017 23:33:53 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Dec 2017 23:33:53 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 23:33:53 GMT
EXPOSE 443/tcp
# Thu, 14 Dec 2017 23:33:53 GMT
EXPOSE 10081/tcp
# Thu, 14 Dec 2017 23:33:54 GMT
EXPOSE 10082/tcp
# Thu, 14 Dec 2017 23:33:54 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 23:33:54 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1779b7121f512774f46433a826681a234dbaf619694c33d4ebb0f246a63a9fb3`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab136cc6647e650fdd2a9b7fe19fc0cfcb65f654d348219833c12778e8716757`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0babd64cdae44c7ae4b45a8dd6133197a90f5adb8eb645fbbf113bc96a147e`  
		Last Modified: Thu, 14 Dec 2017 23:51:30 GMT  
		Size: 250.2 MB (250225899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b800e75d3553a6f95044f4a59fe99594c02bf3b8bd2c260ae82787eaaac2221`  
		Last Modified: Thu, 14 Dec 2017 23:49:47 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177d9b32c3127bf0b143595ef0fc68cb75db8c490e151934b547aad463e86930`  
		Last Modified: Thu, 14 Dec 2017 23:49:47 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670e152abed0b852f3b33dc303232423f6ee0abc3ee9416dc1db5b44df63031e`  
		Last Modified: Thu, 14 Dec 2017 23:49:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641ba8fa78e24aa04aaed0e8cce36db600b216a0fe663f312487d96a7c8343d0`  
		Last Modified: Thu, 14 Dec 2017 23:49:46 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331dd8e0a5bb31100b6ae71b1a0d174479fc3a0d97da2aedbfe344a13d4eca5b`  
		Last Modified: Thu, 14 Dec 2017 23:49:45 GMT  
		Size: 912.1 KB (912096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9385a3d776c5738ec43f7efd71b53744e51a5af3f09a2be08a3db640ac678db`  
		Last Modified: Thu, 14 Dec 2017 23:49:44 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791f0d19509648de4f664885825c06583e6463b3aee2314f457ad646b2070bbc`  
		Last Modified: Thu, 14 Dec 2017 23:49:45 GMT  
		Size: 494.5 KB (494499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ac0a37b4086e33c7eb126488da16ec19c0f9d2d436a28df162499f28bde96`  
		Last Modified: Thu, 14 Dec 2017 23:49:47 GMT  
		Size: 14.2 MB (14176100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e3ef45a0103b9735f1b48f8d803155e8b39b0a1ffe990ef1cbebe2126d3405`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f6f91fe6ce3a5f68d33e9e9bf40a76201f113dc23857646eaa212be1cbcf0a`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9930412e02ccc530fd54263adb0af61c4bd72a7af44e18ad8fbfa13c1bb4f7e`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ecf1b3fced44cf767fd52780f3d7754504cf9d28613fbb2026bc057b183832`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:966360301242ecb5a02731920412999d6fd0de672d73400826299062933a672e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:94ff06dcff1b7bfcb67d4a693b153c81e75a19393655f4dd805db04bf282247c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342521374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1714bea54d1633b9cfb1194f588c0362af704aa1d5cc3b2d96cf1ea708c9a30f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:24:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Dec 2017 23:24:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Dec 2017 23:36:14 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Dec 2017 23:36:15 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Dec 2017 23:38:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Dec 2017 23:38:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Dec 2017 23:38:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Dec 2017 23:38:30 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Dec 2017 23:38:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Dec 2017 23:38:34 GMT
RUN apt-get install -y curl
# Thu, 14 Dec 2017 23:38:35 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Dec 2017 23:38:36 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Dec 2017 23:38:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Dec 2017 23:39:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Dec 2017 23:39:08 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Dec 2017 23:39:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Dec 2017 23:39:09 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Dec 2017 23:39:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 443/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 10081/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 10082/tcp
# Thu, 14 Dec 2017 23:39:11 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 23:39:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1779b7121f512774f46433a826681a234dbaf619694c33d4ebb0f246a63a9fb3`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab136cc6647e650fdd2a9b7fe19fc0cfcb65f654d348219833c12778e8716757`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644b385f60e742d53dd2bc581188ec8f340358ca222b7eb424ad10ffcfda6155`  
		Last Modified: Fri, 15 Dec 2017 00:00:09 GMT  
		Size: 253.9 MB (253927157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fbe76b461dd6ede0232f407e19b11213625770972c8fa359d13b469d7af0cc`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38842e3338c1fe24f7276d2e934169a6fa7ad3db12aa50f6b5ff6ad6fe9fc74f`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba9a82e1581e98da9f53ace3ad9a0055fd8e7da1a37435e953a4f0fd9550c9`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9daf3d8b99c2be0b6d9eee4f0498ce3e89d5798e09678a755d877a447db355`  
		Last Modified: Thu, 14 Dec 2017 23:59:13 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55503d52fccafed09073eb88d8490b6e01c89f6eb76195719f7151a9edc00926`  
		Last Modified: Thu, 14 Dec 2017 23:59:12 GMT  
		Size: 913.8 KB (913841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b53e5292221e28669886e8ce36dd36cdeaf39bfa1c187c6afa4e7b81c1666d2`  
		Last Modified: Thu, 14 Dec 2017 23:59:11 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e527d474856ab9c2e3fc5cb0e2e5de5860896c62a4766f773c9ea33273b8406e`  
		Last Modified: Thu, 14 Dec 2017 23:59:12 GMT  
		Size: 494.5 KB (494498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ffdfdfd0383b7d13551b70124f9801b2ab2d47eef0622b363ebfa426b05cd`  
		Last Modified: Thu, 14 Dec 2017 23:59:15 GMT  
		Size: 14.2 MB (14172293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976859e6416d2393f59185f3d0520c8a3bc5a82b05006bb3642e00ca00fbe25d`  
		Last Modified: Thu, 14 Dec 2017 23:59:10 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977aef944d9e9d0ad7eec951200a7248b2f455d0c565857cb044dc2ea56b26c6`  
		Last Modified: Thu, 14 Dec 2017 23:59:09 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c0780bdab95e3fa85e724979f8c92af0e87b2570b227e8c4c534690d5cd21`  
		Last Modified: Thu, 14 Dec 2017 23:59:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a487186523414f9c46b1f52c8e9f0a6e83a665909ba09fa556574effe168e2`  
		Last Modified: Thu, 14 Dec 2017 23:59:10 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:579e329149183bf06316a1130bed054e4c1841b6b80323e6050810cbc65f047a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a9f14aaeed73d440045dda37ba5316e0091a2df6cfb3016e5c1e2f0aa07c253e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301859530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd34838330eb93b641de36405d5aec40536c091586672724946f957e8bf4ca2e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:39:26 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Thu, 14 Dec 2017 23:39:26 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 14 Dec 2017 23:39:26 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 14 Dec 2017 23:39:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Dec 2017 23:39:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Dec 2017 23:41:26 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Dec 2017 23:41:26 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Dec 2017 23:41:28 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Dec 2017 23:41:28 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 443/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 10081/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 10082/tcp
# Thu, 14 Dec 2017 23:41:29 GMT
EXPOSE 10060/tcp
# Thu, 14 Dec 2017 23:41:30 GMT
EXPOSE 10061/tcp
# Thu, 14 Dec 2017 23:41:30 GMT
EXPOSE 10062/tcp
# Thu, 14 Dec 2017 23:41:30 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 23:41:30 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4387cd3c26937670b3afa3c28c878cf6435f0e33fe9e6dd3f15351f83a6da3`  
		Last Modified: Fri, 15 Dec 2017 00:00:51 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f51c9073a19aa192dcbe1ab11d74b9cb29a13287c2ed12b07f9073abf8eceb`  
		Last Modified: Fri, 15 Dec 2017 00:00:49 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f826892f619cad07166b39032555fb77a869b1e040645aa7295e43a9e995074`  
		Last Modified: Fri, 15 Dec 2017 00:00:50 GMT  
		Size: 938.4 KB (938416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4044034523935641a7cf6b8e13c817660fdf3cb90c6cd294825c351ad123122`  
		Last Modified: Fri, 15 Dec 2017 00:00:48 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2bff35d902ec1e9b4243077b3554c717f139146e3a79a9dff371ec8da568b2`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6c6df4d43204c0b8d743ec045393086553159b7dbea27b2bc4f3aced6885e5`  
		Last Modified: Fri, 15 Dec 2017 00:01:33 GMT  
		Size: 227.9 MB (227930975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7b7d444ad894e0ea16b83b93f5bad401ca80153abd2fdd3e1a8b4b8993a82`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81bbb55998495d226142b9ba577f9c76698137c5ea87d21344873460c7672da`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8117ae78385695775c8870bc1fdbe4fd653e482513cdd802a9b19e164eb9d33b`  
		Last Modified: Fri, 15 Dec 2017 00:00:46 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:966360301242ecb5a02731920412999d6fd0de672d73400826299062933a672e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:94ff06dcff1b7bfcb67d4a693b153c81e75a19393655f4dd805db04bf282247c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342521374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1714bea54d1633b9cfb1194f588c0362af704aa1d5cc3b2d96cf1ea708c9a30f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:24:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Dec 2017 23:24:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Dec 2017 23:36:14 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Dec 2017 23:36:15 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Dec 2017 23:38:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Dec 2017 23:38:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Dec 2017 23:38:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Dec 2017 23:38:30 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Dec 2017 23:38:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Dec 2017 23:38:34 GMT
RUN apt-get install -y curl
# Thu, 14 Dec 2017 23:38:35 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Dec 2017 23:38:36 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Dec 2017 23:38:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Dec 2017 23:39:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Dec 2017 23:39:08 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Dec 2017 23:39:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Dec 2017 23:39:09 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Dec 2017 23:39:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 443/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 10081/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 10082/tcp
# Thu, 14 Dec 2017 23:39:11 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 23:39:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1779b7121f512774f46433a826681a234dbaf619694c33d4ebb0f246a63a9fb3`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab136cc6647e650fdd2a9b7fe19fc0cfcb65f654d348219833c12778e8716757`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644b385f60e742d53dd2bc581188ec8f340358ca222b7eb424ad10ffcfda6155`  
		Last Modified: Fri, 15 Dec 2017 00:00:09 GMT  
		Size: 253.9 MB (253927157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fbe76b461dd6ede0232f407e19b11213625770972c8fa359d13b469d7af0cc`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38842e3338c1fe24f7276d2e934169a6fa7ad3db12aa50f6b5ff6ad6fe9fc74f`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba9a82e1581e98da9f53ace3ad9a0055fd8e7da1a37435e953a4f0fd9550c9`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9daf3d8b99c2be0b6d9eee4f0498ce3e89d5798e09678a755d877a447db355`  
		Last Modified: Thu, 14 Dec 2017 23:59:13 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55503d52fccafed09073eb88d8490b6e01c89f6eb76195719f7151a9edc00926`  
		Last Modified: Thu, 14 Dec 2017 23:59:12 GMT  
		Size: 913.8 KB (913841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b53e5292221e28669886e8ce36dd36cdeaf39bfa1c187c6afa4e7b81c1666d2`  
		Last Modified: Thu, 14 Dec 2017 23:59:11 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e527d474856ab9c2e3fc5cb0e2e5de5860896c62a4766f773c9ea33273b8406e`  
		Last Modified: Thu, 14 Dec 2017 23:59:12 GMT  
		Size: 494.5 KB (494498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ffdfdfd0383b7d13551b70124f9801b2ab2d47eef0622b363ebfa426b05cd`  
		Last Modified: Thu, 14 Dec 2017 23:59:15 GMT  
		Size: 14.2 MB (14172293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976859e6416d2393f59185f3d0520c8a3bc5a82b05006bb3642e00ca00fbe25d`  
		Last Modified: Thu, 14 Dec 2017 23:59:10 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977aef944d9e9d0ad7eec951200a7248b2f455d0c565857cb044dc2ea56b26c6`  
		Last Modified: Thu, 14 Dec 2017 23:59:09 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c0780bdab95e3fa85e724979f8c92af0e87b2570b227e8c4c534690d5cd21`  
		Last Modified: Thu, 14 Dec 2017 23:59:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a487186523414f9c46b1f52c8e9f0a6e83a665909ba09fa556574effe168e2`  
		Last Modified: Thu, 14 Dec 2017 23:59:10 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:ea670310000ecd3c67169dec68aa0266bdeefafd26363025edb2733db630bdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2806aa61ea6d63bbe40818c019271a08153ccb300d05efffbcd1dd8aafba47d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.8 MB (338822195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1178a2998bf27e8964a48cb14adfd3cf9ba7340365143b62dbad9fb65c59614`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:24:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Dec 2017 23:24:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Dec 2017 23:26:10 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Dec 2017 23:26:10 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Dec 2017 23:26:11 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Dec 2017 23:33:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Dec 2017 23:33:11 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Dec 2017 23:33:11 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Dec 2017 23:33:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Dec 2017 23:33:17 GMT
RUN apt-get install -y curl
# Thu, 14 Dec 2017 23:33:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Dec 2017 23:33:19 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Dec 2017 23:33:24 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Dec 2017 23:33:51 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Dec 2017 23:33:51 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Dec 2017 23:33:52 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Dec 2017 23:33:52 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Dec 2017 23:33:53 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Dec 2017 23:33:53 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 23:33:53 GMT
EXPOSE 443/tcp
# Thu, 14 Dec 2017 23:33:53 GMT
EXPOSE 10081/tcp
# Thu, 14 Dec 2017 23:33:54 GMT
EXPOSE 10082/tcp
# Thu, 14 Dec 2017 23:33:54 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 23:33:54 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1779b7121f512774f46433a826681a234dbaf619694c33d4ebb0f246a63a9fb3`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab136cc6647e650fdd2a9b7fe19fc0cfcb65f654d348219833c12778e8716757`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec0babd64cdae44c7ae4b45a8dd6133197a90f5adb8eb645fbbf113bc96a147e`  
		Last Modified: Thu, 14 Dec 2017 23:51:30 GMT  
		Size: 250.2 MB (250225899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b800e75d3553a6f95044f4a59fe99594c02bf3b8bd2c260ae82787eaaac2221`  
		Last Modified: Thu, 14 Dec 2017 23:49:47 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177d9b32c3127bf0b143595ef0fc68cb75db8c490e151934b547aad463e86930`  
		Last Modified: Thu, 14 Dec 2017 23:49:47 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:670e152abed0b852f3b33dc303232423f6ee0abc3ee9416dc1db5b44df63031e`  
		Last Modified: Thu, 14 Dec 2017 23:49:46 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641ba8fa78e24aa04aaed0e8cce36db600b216a0fe663f312487d96a7c8343d0`  
		Last Modified: Thu, 14 Dec 2017 23:49:46 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:331dd8e0a5bb31100b6ae71b1a0d174479fc3a0d97da2aedbfe344a13d4eca5b`  
		Last Modified: Thu, 14 Dec 2017 23:49:45 GMT  
		Size: 912.1 KB (912096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9385a3d776c5738ec43f7efd71b53744e51a5af3f09a2be08a3db640ac678db`  
		Last Modified: Thu, 14 Dec 2017 23:49:44 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791f0d19509648de4f664885825c06583e6463b3aee2314f457ad646b2070bbc`  
		Last Modified: Thu, 14 Dec 2017 23:49:45 GMT  
		Size: 494.5 KB (494499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78ac0a37b4086e33c7eb126488da16ec19c0f9d2d436a28df162499f28bde96`  
		Last Modified: Thu, 14 Dec 2017 23:49:47 GMT  
		Size: 14.2 MB (14176100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e3ef45a0103b9735f1b48f8d803155e8b39b0a1ffe990ef1cbebe2126d3405`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f6f91fe6ce3a5f68d33e9e9bf40a76201f113dc23857646eaa212be1cbcf0a`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9930412e02ccc530fd54263adb0af61c4bd72a7af44e18ad8fbfa13c1bb4f7e`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ecf1b3fced44cf767fd52780f3d7754504cf9d28613fbb2026bc057b183832`  
		Last Modified: Thu, 14 Dec 2017 23:49:42 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:966360301242ecb5a02731920412999d6fd0de672d73400826299062933a672e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:94ff06dcff1b7bfcb67d4a693b153c81e75a19393655f4dd805db04bf282247c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.5 MB (342521374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1714bea54d1633b9cfb1194f588c0362af704aa1d5cc3b2d96cf1ea708c9a30f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:20 GMT
ADD file:1e105449468a2d88e99909d47bb68f49b2da9303f9f5289721720b3a30308f8e in / 
# Thu, 14 Dec 2017 20:59:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:23 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:23 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:24 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 23:24:11 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Dec 2017 23:24:11 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Dec 2017 23:36:14 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Dec 2017 23:36:15 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Dec 2017 23:38:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Dec 2017 23:38:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Dec 2017 23:38:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Dec 2017 23:38:30 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Dec 2017 23:38:30 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Dec 2017 23:38:34 GMT
RUN apt-get install -y curl
# Thu, 14 Dec 2017 23:38:35 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Dec 2017 23:38:36 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Dec 2017 23:38:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Dec 2017 23:39:08 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Dec 2017 23:39:08 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Dec 2017 23:39:09 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Dec 2017 23:39:09 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Dec 2017 23:39:10 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 80/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 443/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 10081/tcp
# Thu, 14 Dec 2017 23:39:10 GMT
EXPOSE 10082/tcp
# Thu, 14 Dec 2017 23:39:11 GMT
WORKDIR /var/www/html
# Thu, 14 Dec 2017 23:39:11 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:050aa9ae81a93949af7c06a5fd6b1f0f995dc8c1b082882b14b1892c74ba23f2`  
		Last Modified: Thu, 14 Dec 2017 21:01:25 GMT  
		Size: 72.9 MB (72888752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb2c989bc049f8d7234a7b25d7cef4aaa2e85370b22a1626060c5cfe59b0a95`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e83780ccda0924d2154d8aaf10fe15a413cb3fd20ffe7ee41890a53693d4e6`  
		Last Modified: Thu, 14 Dec 2017 21:01:15 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dec31d7323cfebc7ae2dcb7851fe852ba9a8f935c0012df62ade3063a1c8cea`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286f32949bdc7850bd03deeda0128f84c48a6ccac548642e88747fa025d4af76`  
		Last Modified: Thu, 14 Dec 2017 21:01:14 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1779b7121f512774f46433a826681a234dbaf619694c33d4ebb0f246a63a9fb3`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab136cc6647e650fdd2a9b7fe19fc0cfcb65f654d348219833c12778e8716757`  
		Last Modified: Thu, 14 Dec 2017 23:49:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644b385f60e742d53dd2bc581188ec8f340358ca222b7eb424ad10ffcfda6155`  
		Last Modified: Fri, 15 Dec 2017 00:00:09 GMT  
		Size: 253.9 MB (253927157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13fbe76b461dd6ede0232f407e19b11213625770972c8fa359d13b469d7af0cc`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38842e3338c1fe24f7276d2e934169a6fa7ad3db12aa50f6b5ff6ad6fe9fc74f`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ba9a82e1581e98da9f53ace3ad9a0055fd8e7da1a37435e953a4f0fd9550c9`  
		Last Modified: Thu, 14 Dec 2017 23:59:14 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9daf3d8b99c2be0b6d9eee4f0498ce3e89d5798e09678a755d877a447db355`  
		Last Modified: Thu, 14 Dec 2017 23:59:13 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55503d52fccafed09073eb88d8490b6e01c89f6eb76195719f7151a9edc00926`  
		Last Modified: Thu, 14 Dec 2017 23:59:12 GMT  
		Size: 913.8 KB (913841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b53e5292221e28669886e8ce36dd36cdeaf39bfa1c187c6afa4e7b81c1666d2`  
		Last Modified: Thu, 14 Dec 2017 23:59:11 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e527d474856ab9c2e3fc5cb0e2e5de5860896c62a4766f773c9ea33273b8406e`  
		Last Modified: Thu, 14 Dec 2017 23:59:12 GMT  
		Size: 494.5 KB (494498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86ffdfdfd0383b7d13551b70124f9801b2ab2d47eef0622b363ebfa426b05cd`  
		Last Modified: Thu, 14 Dec 2017 23:59:15 GMT  
		Size: 14.2 MB (14172293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976859e6416d2393f59185f3d0520c8a3bc5a82b05006bb3642e00ca00fbe25d`  
		Last Modified: Thu, 14 Dec 2017 23:59:10 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977aef944d9e9d0ad7eec951200a7248b2f455d0c565857cb044dc2ea56b26c6`  
		Last Modified: Thu, 14 Dec 2017 23:59:09 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c0780bdab95e3fa85e724979f8c92af0e87b2570b227e8c4c534690d5cd21`  
		Last Modified: Thu, 14 Dec 2017 23:59:09 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a487186523414f9c46b1f52c8e9f0a6e83a665909ba09fa556574effe168e2`  
		Last Modified: Thu, 14 Dec 2017 23:59:10 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:1ed65fac6f01daedf440e74411f38f7692cdea9d4ff548c57630f087013d8f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

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
