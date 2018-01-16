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
$ docker pull php-zendserver@sha256:5e3fcad72fb951b26cb28ca11b54ce6e7ee36decdfa9b1518389bb8cb5d5d0e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:8a4ba4bfb6eecdf65d12d179ea6d0e0fac8e2d1d8f46d256a5e7932258961749
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.6 MB (342624191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2b13773d7fc4124cca88a368425f22f5f4ac0718ab6e6fdea3fce1a9010698`
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
# Tue, 16 Jan 2018 01:25:53 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 16 Jan 2018 01:28:02 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 16 Jan 2018 01:37:08 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 16 Jan 2018 01:37:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 16 Jan 2018 01:37:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 16 Jan 2018 01:37:10 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 16 Jan 2018 01:37:11 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 16 Jan 2018 01:37:11 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 16 Jan 2018 01:37:16 GMT
RUN apt-get install -y curl
# Tue, 16 Jan 2018 01:37:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 16 Jan 2018 01:37:18 GMT
WORKDIR /usr/local/zs-init
# Tue, 16 Jan 2018 01:37:22 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 16 Jan 2018 01:37:50 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 16 Jan 2018 01:38:10 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 16 Jan 2018 01:38:10 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 16 Jan 2018 01:38:11 GMT
RUN rm /var/www/html/index.html
# Tue, 16 Jan 2018 01:38:11 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 16 Jan 2018 01:38:11 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
EXPOSE 443/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
EXPOSE 10081/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
EXPOSE 10082/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
WORKDIR /var/www/html
# Tue, 16 Jan 2018 01:38:12 GMT
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
	-	`sha256:2970ba544014ada6e9ab698c89d48231f8f717ea6e419c9dbbe1856520a4f6cb`  
		Last Modified: Tue, 16 Jan 2018 02:07:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c10c0d80c5deaf3bd77e5ebb5f75fb9945c0780148afa8abeb895b5e999323`  
		Last Modified: Tue, 16 Jan 2018 02:07:53 GMT  
		Size: 253.8 MB (253770750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445fd4241699f1f2557785652f1a81961c85c623cd25483edbf729e43b0e3ad7`  
		Last Modified: Tue, 16 Jan 2018 02:07:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2975e6b42875d9279dada141dbd750dc581fa14174c4c9562ef5312ed300c068`  
		Last Modified: Tue, 16 Jan 2018 02:07:06 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6082eac59264903016619408e0dd0a3577c220237e0e902005e5e1e58a0acf6b`  
		Last Modified: Tue, 16 Jan 2018 02:07:06 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96752c21f72df4d122cf36587e13093c5ea0b9a6a6e6c16ae52054b1b097d93c`  
		Last Modified: Tue, 16 Jan 2018 02:07:03 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5342daeb1c8bba84d3a4f95c787cd98c3f545c219baa416a8a782ea40b1fd46`  
		Last Modified: Tue, 16 Jan 2018 02:07:04 GMT  
		Size: 911.8 KB (911813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aa3c0b220ed9290f937d543d6c50551f22700a48b1e3774a7281654cf686f`  
		Last Modified: Tue, 16 Jan 2018 02:07:04 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72210ddc02379424ada4efeb5ac0eed74a8fc4b656da52eb21ac8fcad3bfe920`  
		Last Modified: Tue, 16 Jan 2018 02:07:03 GMT  
		Size: 487.8 KB (487780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00062973ee61f6c5d643d8b7173be80d31bb1a8968345e3a96096d22367bacf4`  
		Last Modified: Tue, 16 Jan 2018 02:07:09 GMT  
		Size: 14.4 MB (14392265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dff131c921d2fe956d660da6e1b60122cc19cec2fbcf92716eff015b1a3fc4e`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1f20d1ef3aefb110b8e7dbe2f3e9051148d65263b000de0674b9ff42577672`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a293782f3493d80d54f9bf89f5f9f620c1c91e82e4162b1efe8b8cd24472ddfa`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38608387624ab53fca19255de6c25d19f946cacea17f56dd46169d60a7e3996`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:9143b486eced072196b642e05d1faf56f99e307ac91c0442459fff35cd7975ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b159644f2463efc29b98a84b1a4b0b61afd50f76c12685e3287237fc859ea86c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.8 MB (342796834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871ac204657db857c6d963b9c92ea4f3454d8975443d9bffee393a70b084d98c`
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
# Tue, 16 Jan 2018 01:25:53 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 16 Jan 2018 01:40:41 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 16 Jan 2018 01:51:15 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 16 Jan 2018 01:51:15 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 16 Jan 2018 01:51:16 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 16 Jan 2018 01:51:17 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 16 Jan 2018 01:51:17 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 16 Jan 2018 01:51:17 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 16 Jan 2018 01:51:23 GMT
RUN apt-get install -y curl
# Tue, 16 Jan 2018 01:51:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 16 Jan 2018 01:51:25 GMT
WORKDIR /usr/local/zs-init
# Tue, 16 Jan 2018 01:51:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 16 Jan 2018 01:51:56 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 16 Jan 2018 01:51:57 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 16 Jan 2018 01:51:57 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 16 Jan 2018 01:51:58 GMT
RUN rm /var/www/html/index.html
# Tue, 16 Jan 2018 01:51:59 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 443/tcp
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 10081/tcp
# Tue, 16 Jan 2018 01:52:00 GMT
EXPOSE 10082/tcp
# Tue, 16 Jan 2018 01:52:00 GMT
WORKDIR /var/www/html
# Tue, 16 Jan 2018 01:52:00 GMT
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
	-	`sha256:2970ba544014ada6e9ab698c89d48231f8f717ea6e419c9dbbe1856520a4f6cb`  
		Last Modified: Tue, 16 Jan 2018 02:07:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7f50b98f3f215234e04b4c47cdcdd6b0a6111ea346fdfb050b462a35656095`  
		Last Modified: Tue, 16 Jan 2018 02:20:29 GMT  
		Size: 253.9 MB (253945188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ffb69db1b209175bc016a1e2a801a913702fbbfbff6c0f7bf7b17bfdd88f33`  
		Last Modified: Tue, 16 Jan 2018 02:19:36 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059e91e7a9a21e7ebbc8233bba8b935a85abedb944adcf41ac0ffe3eefe10b55`  
		Last Modified: Tue, 16 Jan 2018 02:19:35 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1246b3fed20d5a8fe2aa599a6014e7dadfb59ec86b6f3b3d0a80558bc85471`  
		Last Modified: Tue, 16 Jan 2018 02:19:36 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70cb97c2211cc5973c41c09300bf634d5400390f1bf0e18cff1453c846f62a8`  
		Last Modified: Tue, 16 Jan 2018 02:19:32 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813246d93e9a9b92dd71e7766492d30569cf3a1480d913ba4e89e35e9207e80c`  
		Last Modified: Tue, 16 Jan 2018 02:19:34 GMT  
		Size: 913.6 KB (913576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8465c30d30171c7ab78f04eb882a2044c61519df323b806a2455717d4d03b6`  
		Last Modified: Tue, 16 Jan 2018 02:19:32 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a4f3061fac549bea8bc12bd6d01939e102e336ff2207b083c1e81be1a74341`  
		Last Modified: Tue, 16 Jan 2018 02:19:34 GMT  
		Size: 487.8 KB (487771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a10dd80dc1e4627b8efb46b3748f07137f542d7d0730773f2e134503ba7bc61`  
		Last Modified: Tue, 16 Jan 2018 02:19:35 GMT  
		Size: 14.4 MB (14388714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6dba23794fd3ff52369401c6d2232c5a174d357c6e1f58e322de8fd6afbc46`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 13.4 KB (13355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfef05a4d87483d907c9f173e78a53e937240dea1011b298605e6b0129d3061`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffdd9784f7e7ac92a971216bbe2ebdfd07c7b9050501bd6a3b12184fa486237`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1c3a39bf2d8f6da295d1714ad2bcd828e28a61002c6259a365a2c88c50c0a5`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 1.3 KB (1251 bytes)  
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
$ docker pull php-zendserver@sha256:9143b486eced072196b642e05d1faf56f99e307ac91c0442459fff35cd7975ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b159644f2463efc29b98a84b1a4b0b61afd50f76c12685e3287237fc859ea86c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.8 MB (342796834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871ac204657db857c6d963b9c92ea4f3454d8975443d9bffee393a70b084d98c`
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
# Tue, 16 Jan 2018 01:25:53 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 16 Jan 2018 01:40:41 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 16 Jan 2018 01:51:15 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 16 Jan 2018 01:51:15 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 16 Jan 2018 01:51:16 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 16 Jan 2018 01:51:17 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 16 Jan 2018 01:51:17 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 16 Jan 2018 01:51:17 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 16 Jan 2018 01:51:23 GMT
RUN apt-get install -y curl
# Tue, 16 Jan 2018 01:51:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 16 Jan 2018 01:51:25 GMT
WORKDIR /usr/local/zs-init
# Tue, 16 Jan 2018 01:51:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 16 Jan 2018 01:51:56 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 16 Jan 2018 01:51:57 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 16 Jan 2018 01:51:57 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 16 Jan 2018 01:51:58 GMT
RUN rm /var/www/html/index.html
# Tue, 16 Jan 2018 01:51:59 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 443/tcp
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 10081/tcp
# Tue, 16 Jan 2018 01:52:00 GMT
EXPOSE 10082/tcp
# Tue, 16 Jan 2018 01:52:00 GMT
WORKDIR /var/www/html
# Tue, 16 Jan 2018 01:52:00 GMT
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
	-	`sha256:2970ba544014ada6e9ab698c89d48231f8f717ea6e419c9dbbe1856520a4f6cb`  
		Last Modified: Tue, 16 Jan 2018 02:07:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7f50b98f3f215234e04b4c47cdcdd6b0a6111ea346fdfb050b462a35656095`  
		Last Modified: Tue, 16 Jan 2018 02:20:29 GMT  
		Size: 253.9 MB (253945188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ffb69db1b209175bc016a1e2a801a913702fbbfbff6c0f7bf7b17bfdd88f33`  
		Last Modified: Tue, 16 Jan 2018 02:19:36 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059e91e7a9a21e7ebbc8233bba8b935a85abedb944adcf41ac0ffe3eefe10b55`  
		Last Modified: Tue, 16 Jan 2018 02:19:35 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1246b3fed20d5a8fe2aa599a6014e7dadfb59ec86b6f3b3d0a80558bc85471`  
		Last Modified: Tue, 16 Jan 2018 02:19:36 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70cb97c2211cc5973c41c09300bf634d5400390f1bf0e18cff1453c846f62a8`  
		Last Modified: Tue, 16 Jan 2018 02:19:32 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813246d93e9a9b92dd71e7766492d30569cf3a1480d913ba4e89e35e9207e80c`  
		Last Modified: Tue, 16 Jan 2018 02:19:34 GMT  
		Size: 913.6 KB (913576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8465c30d30171c7ab78f04eb882a2044c61519df323b806a2455717d4d03b6`  
		Last Modified: Tue, 16 Jan 2018 02:19:32 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a4f3061fac549bea8bc12bd6d01939e102e336ff2207b083c1e81be1a74341`  
		Last Modified: Tue, 16 Jan 2018 02:19:34 GMT  
		Size: 487.8 KB (487771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a10dd80dc1e4627b8efb46b3748f07137f542d7d0730773f2e134503ba7bc61`  
		Last Modified: Tue, 16 Jan 2018 02:19:35 GMT  
		Size: 14.4 MB (14388714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6dba23794fd3ff52369401c6d2232c5a174d357c6e1f58e322de8fd6afbc46`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 13.4 KB (13355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfef05a4d87483d907c9f173e78a53e937240dea1011b298605e6b0129d3061`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffdd9784f7e7ac92a971216bbe2ebdfd07c7b9050501bd6a3b12184fa486237`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1c3a39bf2d8f6da295d1714ad2bcd828e28a61002c6259a365a2c88c50c0a5`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:5e3fcad72fb951b26cb28ca11b54ce6e7ee36decdfa9b1518389bb8cb5d5d0e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:8a4ba4bfb6eecdf65d12d179ea6d0e0fac8e2d1d8f46d256a5e7932258961749
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.6 MB (342624191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2b13773d7fc4124cca88a368425f22f5f4ac0718ab6e6fdea3fce1a9010698`
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
# Tue, 16 Jan 2018 01:25:53 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 16 Jan 2018 01:28:02 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 16 Jan 2018 01:37:08 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 16 Jan 2018 01:37:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 16 Jan 2018 01:37:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 16 Jan 2018 01:37:10 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 16 Jan 2018 01:37:11 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 16 Jan 2018 01:37:11 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 16 Jan 2018 01:37:16 GMT
RUN apt-get install -y curl
# Tue, 16 Jan 2018 01:37:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 16 Jan 2018 01:37:18 GMT
WORKDIR /usr/local/zs-init
# Tue, 16 Jan 2018 01:37:22 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 16 Jan 2018 01:37:50 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 16 Jan 2018 01:38:10 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 16 Jan 2018 01:38:10 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 16 Jan 2018 01:38:11 GMT
RUN rm /var/www/html/index.html
# Tue, 16 Jan 2018 01:38:11 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 16 Jan 2018 01:38:11 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
EXPOSE 443/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
EXPOSE 10081/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
EXPOSE 10082/tcp
# Tue, 16 Jan 2018 01:38:12 GMT
WORKDIR /var/www/html
# Tue, 16 Jan 2018 01:38:12 GMT
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
	-	`sha256:2970ba544014ada6e9ab698c89d48231f8f717ea6e419c9dbbe1856520a4f6cb`  
		Last Modified: Tue, 16 Jan 2018 02:07:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c10c0d80c5deaf3bd77e5ebb5f75fb9945c0780148afa8abeb895b5e999323`  
		Last Modified: Tue, 16 Jan 2018 02:07:53 GMT  
		Size: 253.8 MB (253770750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445fd4241699f1f2557785652f1a81961c85c623cd25483edbf729e43b0e3ad7`  
		Last Modified: Tue, 16 Jan 2018 02:07:06 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2975e6b42875d9279dada141dbd750dc581fa14174c4c9562ef5312ed300c068`  
		Last Modified: Tue, 16 Jan 2018 02:07:06 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6082eac59264903016619408e0dd0a3577c220237e0e902005e5e1e58a0acf6b`  
		Last Modified: Tue, 16 Jan 2018 02:07:06 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96752c21f72df4d122cf36587e13093c5ea0b9a6a6e6c16ae52054b1b097d93c`  
		Last Modified: Tue, 16 Jan 2018 02:07:03 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5342daeb1c8bba84d3a4f95c787cd98c3f545c219baa416a8a782ea40b1fd46`  
		Last Modified: Tue, 16 Jan 2018 02:07:04 GMT  
		Size: 911.8 KB (911813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:147aa3c0b220ed9290f937d543d6c50551f22700a48b1e3774a7281654cf686f`  
		Last Modified: Tue, 16 Jan 2018 02:07:04 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72210ddc02379424ada4efeb5ac0eed74a8fc4b656da52eb21ac8fcad3bfe920`  
		Last Modified: Tue, 16 Jan 2018 02:07:03 GMT  
		Size: 487.8 KB (487780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00062973ee61f6c5d643d8b7173be80d31bb1a8968345e3a96096d22367bacf4`  
		Last Modified: Tue, 16 Jan 2018 02:07:09 GMT  
		Size: 14.4 MB (14392265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dff131c921d2fe956d660da6e1b60122cc19cec2fbcf92716eff015b1a3fc4e`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1f20d1ef3aefb110b8e7dbe2f3e9051148d65263b000de0674b9ff42577672`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a293782f3493d80d54f9bf89f5f9f620c1c91e82e4162b1efe8b8cd24472ddfa`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e38608387624ab53fca19255de6c25d19f946cacea17f56dd46169d60a7e3996`  
		Last Modified: Tue, 16 Jan 2018 02:07:01 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:9143b486eced072196b642e05d1faf56f99e307ac91c0442459fff35cd7975ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b159644f2463efc29b98a84b1a4b0b61afd50f76c12685e3287237fc859ea86c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.8 MB (342796834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871ac204657db857c6d963b9c92ea4f3454d8975443d9bffee393a70b084d98c`
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
# Tue, 16 Jan 2018 01:25:53 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 16 Jan 2018 01:40:41 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 16 Jan 2018 01:51:15 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 16 Jan 2018 01:51:15 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 16 Jan 2018 01:51:16 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 16 Jan 2018 01:51:17 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 16 Jan 2018 01:51:17 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 16 Jan 2018 01:51:17 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 16 Jan 2018 01:51:23 GMT
RUN apt-get install -y curl
# Tue, 16 Jan 2018 01:51:25 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 16 Jan 2018 01:51:25 GMT
WORKDIR /usr/local/zs-init
# Tue, 16 Jan 2018 01:51:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 16 Jan 2018 01:51:56 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 16 Jan 2018 01:51:57 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 16 Jan 2018 01:51:57 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 16 Jan 2018 01:51:58 GMT
RUN rm /var/www/html/index.html
# Tue, 16 Jan 2018 01:51:59 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 80/tcp
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 443/tcp
# Tue, 16 Jan 2018 01:51:59 GMT
EXPOSE 10081/tcp
# Tue, 16 Jan 2018 01:52:00 GMT
EXPOSE 10082/tcp
# Tue, 16 Jan 2018 01:52:00 GMT
WORKDIR /var/www/html
# Tue, 16 Jan 2018 01:52:00 GMT
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
	-	`sha256:2970ba544014ada6e9ab698c89d48231f8f717ea6e419c9dbbe1856520a4f6cb`  
		Last Modified: Tue, 16 Jan 2018 02:07:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd7f50b98f3f215234e04b4c47cdcdd6b0a6111ea346fdfb050b462a35656095`  
		Last Modified: Tue, 16 Jan 2018 02:20:29 GMT  
		Size: 253.9 MB (253945188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ffb69db1b209175bc016a1e2a801a913702fbbfbff6c0f7bf7b17bfdd88f33`  
		Last Modified: Tue, 16 Jan 2018 02:19:36 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:059e91e7a9a21e7ebbc8233bba8b935a85abedb944adcf41ac0ffe3eefe10b55`  
		Last Modified: Tue, 16 Jan 2018 02:19:35 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1246b3fed20d5a8fe2aa599a6014e7dadfb59ec86b6f3b3d0a80558bc85471`  
		Last Modified: Tue, 16 Jan 2018 02:19:36 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70cb97c2211cc5973c41c09300bf634d5400390f1bf0e18cff1453c846f62a8`  
		Last Modified: Tue, 16 Jan 2018 02:19:32 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813246d93e9a9b92dd71e7766492d30569cf3a1480d913ba4e89e35e9207e80c`  
		Last Modified: Tue, 16 Jan 2018 02:19:34 GMT  
		Size: 913.6 KB (913576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8465c30d30171c7ab78f04eb882a2044c61519df323b806a2455717d4d03b6`  
		Last Modified: Tue, 16 Jan 2018 02:19:32 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a4f3061fac549bea8bc12bd6d01939e102e336ff2207b083c1e81be1a74341`  
		Last Modified: Tue, 16 Jan 2018 02:19:34 GMT  
		Size: 487.8 KB (487771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a10dd80dc1e4627b8efb46b3748f07137f542d7d0730773f2e134503ba7bc61`  
		Last Modified: Tue, 16 Jan 2018 02:19:35 GMT  
		Size: 14.4 MB (14388714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b6dba23794fd3ff52369401c6d2232c5a174d357c6e1f58e322de8fd6afbc46`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 13.4 KB (13355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfef05a4d87483d907c9f173e78a53e937240dea1011b298605e6b0129d3061`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffdd9784f7e7ac92a971216bbe2ebdfd07c7b9050501bd6a3b12184fa486237`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1c3a39bf2d8f6da295d1714ad2bcd828e28a61002c6259a365a2c88c50c0a5`  
		Last Modified: Tue, 16 Jan 2018 02:19:29 GMT  
		Size: 1.3 KB (1251 bytes)  
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
