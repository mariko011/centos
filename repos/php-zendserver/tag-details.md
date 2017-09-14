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
$ docker pull php-zendserver@sha256:cbc49c406d5cb30b18afd04b91cf492d9ad7c77a6cd737fccfdd7fee43e205cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f7b9f48f8d19cdded45deb4f52492609a365389fcce3d81f9f5e9f19749736c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (296011321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0cbb9a17ddce4ddeba3da1423071261a105104219f2652f9ca5343f5493d6c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:22:07 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Thu, 14 Sep 2017 00:22:07 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 14 Sep 2017 00:22:07 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 14 Sep 2017 00:22:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:22:14 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:24:47 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:24:48 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:24:49 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:24:49 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:24:49 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 10060/tcp
# Thu, 14 Sep 2017 00:24:51 GMT
EXPOSE 10061/tcp
# Thu, 14 Sep 2017 00:24:51 GMT
EXPOSE 10062/tcp
# Thu, 14 Sep 2017 00:24:51 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:24:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb3e0fa125e902b68f5ded9bf62b0af53c0a47a65949be2b9eb2ee5606be745`  
		Last Modified: Thu, 14 Sep 2017 00:31:20 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087d3325a69a2230823c90aa148139c2893908f800bc461d7f96b5cc5faedcf7`  
		Last Modified: Thu, 14 Sep 2017 00:31:20 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14776644693c63fb8aa1b25826e1bb410cb790e78f3b209cd2a21b3758ef746e`  
		Last Modified: Thu, 14 Sep 2017 00:31:19 GMT  
		Size: 938.4 KB (938411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb44b966ecf23bc200f6a15972e726186375b4f67eca1b13d605b96cda13316d`  
		Last Modified: Thu, 14 Sep 2017 00:31:21 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278ba5e7aa164602976e987817c0401fdcf39c7758e8aafc9470d457bbc79b01`  
		Last Modified: Thu, 14 Sep 2017 00:31:17 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b2da59eb8148140270dfd032da6d07a13223c7d7472e1171ae21042deca61f`  
		Last Modified: Thu, 14 Sep 2017 00:32:01 GMT  
		Size: 227.9 MB (227856889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cda6f052915fc86ec66651f00949dd30217942c9c3a1d99bcc039d69ac10c1`  
		Last Modified: Thu, 14 Sep 2017 00:31:17 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d4cff64b138c00fea88c8da81edc34623fd9b2531c40e92124ddad781a403`  
		Last Modified: Thu, 14 Sep 2017 00:31:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2664905df7120cbe2a48a5524c61ceaa6584c039502ac4895832e2a02e0ea076`  
		Last Modified: Thu, 14 Sep 2017 00:31:17 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:cee2ff4ae09fb4c2e1585bf735ad5d7201079f51c01edd27be057e35379a0eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:3e8d1dbe94c31c8dea6ee62faa844e760bcb44481e5490cef065bcf6eccab3f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332118574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bb8b850810f3369bc480d7316679e24c066f424aca5df852e2c94a3cd1cff6`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:07:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:07:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:16:37 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:17:47 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Sep 2017 00:17:47 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:17:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:17:49 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:17:49 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Sep 2017 00:17:49 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Sep 2017 00:17:57 GMT
RUN apt-get install -y curl
# Thu, 14 Sep 2017 00:17:59 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Sep 2017 00:17:59 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Sep 2017 00:18:04 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Sep 2017 00:18:31 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Sep 2017 00:18:31 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Sep 2017 00:18:32 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Sep 2017 00:18:32 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Sep 2017 00:18:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:18:33 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225d0261262cc13e13f2c7200866cfa25e68576c37f03e06a97f16a14087dccd`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 13.1 KB (13065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a7cc5512377e3485f533bcd56e787cdc0985ed28c641d7a029223b733bf122`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41afdcfe4b671597de20bb987bccf46a12c6bdc7df38c70978907e271ef23691`  
		Last Modified: Thu, 14 Sep 2017 00:29:51 GMT  
		Size: 250.2 MB (250165513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f59ed508d9991ad8ec076871d25c9fb382468e23f9ce1195719b7a300750935`  
		Last Modified: Thu, 14 Sep 2017 00:29:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dc0ec9790ba71064f1be4075aac67c63e191d91d9406c9caa611b5ff46efcb`  
		Last Modified: Thu, 14 Sep 2017 00:29:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfc19d1c1fa312dfcfec0490488e659351f586ec9a168f368e06edcff465642`  
		Last Modified: Thu, 14 Sep 2017 00:29:05 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bde3ee47aa7f35df1e3c1e947bd55e3bc09ae3a27b26da5bfd6c81bafc0adb`  
		Last Modified: Thu, 14 Sep 2017 00:29:03 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4419d53cad461b5ccf899911b3ffbc981e5cab842baf350000b2110dffa1ac`  
		Last Modified: Thu, 14 Sep 2017 00:29:03 GMT  
		Size: 911.5 KB (911543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53cdf9f7e234a16560352279e6c21a3491aed31e9b6a632edf38416162c1618`  
		Last Modified: Thu, 14 Sep 2017 00:29:02 GMT  
		Size: 18.8 KB (18826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1807777e98b368225252b3a77ce228ac116eafa0de9cdcb7088e975eb1ba8583`  
		Last Modified: Thu, 14 Sep 2017 00:29:04 GMT  
		Size: 494.1 KB (494085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed22e11f0fe13860a535a5816a693b3ea75bb3c1e9d0c9c049ce66468a414e4`  
		Last Modified: Thu, 14 Sep 2017 00:29:06 GMT  
		Size: 13.3 MB (13307955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10acc1751bf34529114bcc6e3984c53f841774b9317dc2b236845f5e5a66596`  
		Last Modified: Thu, 14 Sep 2017 00:29:00 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2534a6e861e0f2866168eebd81c63ace12e0fc25b0e70297c11b3f333794e4b`  
		Last Modified: Thu, 14 Sep 2017 00:29:01 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ff3850d831bfe97a9ac5d04776178414d198fd29c287079b81d04cb700a3f9`  
		Last Modified: Thu, 14 Sep 2017 00:29:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692b633cb242473b80feaca570166a5b8a02f5f28fa174c27703201f713125fa`  
		Last Modified: Thu, 14 Sep 2017 00:29:00 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:0d9bb847339ec768dc78a96ec33aed8ea376a374d338ec9d933420cd91a5a426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a7424eb1410d1da1092017c89de6c9a3945159b4c890b3a6050331f3193bca7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.3 MB (332297160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae50dfb02c284cb81d20aaf2d7e51f6694bf1e8a0179291d6e72c0e4d266f47`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:07:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:07:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:20:45 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:21:13 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Sep 2017 00:21:13 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:21:16 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:21:18 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:21:18 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Sep 2017 00:21:20 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Sep 2017 00:21:27 GMT
RUN apt-get install -y curl
# Thu, 14 Sep 2017 00:21:28 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Sep 2017 00:21:29 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Sep 2017 00:21:35 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Sep 2017 00:22:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Sep 2017 00:22:02 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Sep 2017 00:22:03 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Sep 2017 00:22:03 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Sep 2017 00:22:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:22:05 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:22:05 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225d0261262cc13e13f2c7200866cfa25e68576c37f03e06a97f16a14087dccd`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 13.1 KB (13065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a7cc5512377e3485f533bcd56e787cdc0985ed28c641d7a029223b733bf122`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1f27810f2b4809c77cf49eabc2e9691b6ec2e5a2783ff22bc948c92aa9d1c1`  
		Last Modified: Thu, 14 Sep 2017 00:30:59 GMT  
		Size: 250.3 MB (250307099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394d16bc15765922f278eb85024414d309cb761b4fa7ec2788041c8ef61b7e77`  
		Last Modified: Thu, 14 Sep 2017 00:30:14 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7595dda1967542abd91f33309b34b007d1eb7c42b16836de5e879a2a0a0fbf9e`  
		Last Modified: Thu, 14 Sep 2017 00:30:12 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0cff163c522be09d4f755f701b019b7be46166b15543c6492fe6ba38df3bad`  
		Last Modified: Thu, 14 Sep 2017 00:30:14 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7374cae0b4ca9d9b7ee7c557ef6e8f3c10c6e9f9286bf955fe3206bddf2745`  
		Last Modified: Thu, 14 Sep 2017 00:30:11 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90f06ff9c7a2af9dc9c0d7fba73e4159a7b6254637bff58d4d35005d289bed`  
		Last Modified: Thu, 14 Sep 2017 00:30:10 GMT  
		Size: 913.4 KB (913386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6a3328073e439fe4ab2f86083f9e01f36c40d6087ea9d1d69dac1ea944348`  
		Last Modified: Thu, 14 Sep 2017 00:30:09 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d189ddb45cd8b0699ab4fadab3fd9cee2307c20fca90a0fa222dbb7f0d7be8`  
		Last Modified: Thu, 14 Sep 2017 00:30:10 GMT  
		Size: 494.1 KB (494087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4c8b04eb8ab07086aed8ccbcfdbeffc67e4ec281b5568a57942f31422990da`  
		Last Modified: Thu, 14 Sep 2017 00:30:13 GMT  
		Size: 13.3 MB (13343108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c421b6a30c9a5d7ab7c3d37b925b478d2e89100eafa11bdb73736b746e20e`  
		Last Modified: Thu, 14 Sep 2017 00:30:09 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9be4af2e7aaf80a1b6c6e76954ae02089335aa141043dcb4b346d5224f84051`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1a569593c8b1a1d9cb858835c7815ee1d4a796f3a6af7bf3f69318b8520492`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ad19a94e7ff4e3f1f0de67454e1de6081ce12b44ce48be0c7d78f80c4e7e3c`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:cbc49c406d5cb30b18afd04b91cf492d9ad7c77a6cd737fccfdd7fee43e205cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f7b9f48f8d19cdded45deb4f52492609a365389fcce3d81f9f5e9f19749736c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (296011321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e0cbb9a17ddce4ddeba3da1423071261a105104219f2652f9ca5343f5493d6c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:22:07 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Thu, 14 Sep 2017 00:22:07 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 14 Sep 2017 00:22:07 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 14 Sep 2017 00:22:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:22:14 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:24:47 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:24:48 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:24:49 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:24:49 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:24:49 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:24:50 GMT
EXPOSE 10060/tcp
# Thu, 14 Sep 2017 00:24:51 GMT
EXPOSE 10061/tcp
# Thu, 14 Sep 2017 00:24:51 GMT
EXPOSE 10062/tcp
# Thu, 14 Sep 2017 00:24:51 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:24:51 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb3e0fa125e902b68f5ded9bf62b0af53c0a47a65949be2b9eb2ee5606be745`  
		Last Modified: Thu, 14 Sep 2017 00:31:20 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087d3325a69a2230823c90aa148139c2893908f800bc461d7f96b5cc5faedcf7`  
		Last Modified: Thu, 14 Sep 2017 00:31:20 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14776644693c63fb8aa1b25826e1bb410cb790e78f3b209cd2a21b3758ef746e`  
		Last Modified: Thu, 14 Sep 2017 00:31:19 GMT  
		Size: 938.4 KB (938411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb44b966ecf23bc200f6a15972e726186375b4f67eca1b13d605b96cda13316d`  
		Last Modified: Thu, 14 Sep 2017 00:31:21 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278ba5e7aa164602976e987817c0401fdcf39c7758e8aafc9470d457bbc79b01`  
		Last Modified: Thu, 14 Sep 2017 00:31:17 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b2da59eb8148140270dfd032da6d07a13223c7d7472e1171ae21042deca61f`  
		Last Modified: Thu, 14 Sep 2017 00:32:01 GMT  
		Size: 227.9 MB (227856889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0cda6f052915fc86ec66651f00949dd30217942c9c3a1d99bcc039d69ac10c1`  
		Last Modified: Thu, 14 Sep 2017 00:31:17 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203d4cff64b138c00fea88c8da81edc34623fd9b2531c40e92124ddad781a403`  
		Last Modified: Thu, 14 Sep 2017 00:31:18 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2664905df7120cbe2a48a5524c61ceaa6584c039502ac4895832e2a02e0ea076`  
		Last Modified: Thu, 14 Sep 2017 00:31:17 GMT  
		Size: 307.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:0d9bb847339ec768dc78a96ec33aed8ea376a374d338ec9d933420cd91a5a426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a7424eb1410d1da1092017c89de6c9a3945159b4c890b3a6050331f3193bca7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.3 MB (332297160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae50dfb02c284cb81d20aaf2d7e51f6694bf1e8a0179291d6e72c0e4d266f47`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:07:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:07:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:20:45 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:21:13 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Sep 2017 00:21:13 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:21:16 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:21:18 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:21:18 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Sep 2017 00:21:20 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Sep 2017 00:21:27 GMT
RUN apt-get install -y curl
# Thu, 14 Sep 2017 00:21:28 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Sep 2017 00:21:29 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Sep 2017 00:21:35 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Sep 2017 00:22:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Sep 2017 00:22:02 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Sep 2017 00:22:03 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Sep 2017 00:22:03 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Sep 2017 00:22:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:22:05 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:22:05 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225d0261262cc13e13f2c7200866cfa25e68576c37f03e06a97f16a14087dccd`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 13.1 KB (13065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a7cc5512377e3485f533bcd56e787cdc0985ed28c641d7a029223b733bf122`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1f27810f2b4809c77cf49eabc2e9691b6ec2e5a2783ff22bc948c92aa9d1c1`  
		Last Modified: Thu, 14 Sep 2017 00:30:59 GMT  
		Size: 250.3 MB (250307099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394d16bc15765922f278eb85024414d309cb761b4fa7ec2788041c8ef61b7e77`  
		Last Modified: Thu, 14 Sep 2017 00:30:14 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7595dda1967542abd91f33309b34b007d1eb7c42b16836de5e879a2a0a0fbf9e`  
		Last Modified: Thu, 14 Sep 2017 00:30:12 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0cff163c522be09d4f755f701b019b7be46166b15543c6492fe6ba38df3bad`  
		Last Modified: Thu, 14 Sep 2017 00:30:14 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7374cae0b4ca9d9b7ee7c557ef6e8f3c10c6e9f9286bf955fe3206bddf2745`  
		Last Modified: Thu, 14 Sep 2017 00:30:11 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90f06ff9c7a2af9dc9c0d7fba73e4159a7b6254637bff58d4d35005d289bed`  
		Last Modified: Thu, 14 Sep 2017 00:30:10 GMT  
		Size: 913.4 KB (913386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6a3328073e439fe4ab2f86083f9e01f36c40d6087ea9d1d69dac1ea944348`  
		Last Modified: Thu, 14 Sep 2017 00:30:09 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d189ddb45cd8b0699ab4fadab3fd9cee2307c20fca90a0fa222dbb7f0d7be8`  
		Last Modified: Thu, 14 Sep 2017 00:30:10 GMT  
		Size: 494.1 KB (494087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4c8b04eb8ab07086aed8ccbcfdbeffc67e4ec281b5568a57942f31422990da`  
		Last Modified: Thu, 14 Sep 2017 00:30:13 GMT  
		Size: 13.3 MB (13343108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c421b6a30c9a5d7ab7c3d37b925b478d2e89100eafa11bdb73736b746e20e`  
		Last Modified: Thu, 14 Sep 2017 00:30:09 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9be4af2e7aaf80a1b6c6e76954ae02089335aa141043dcb4b346d5224f84051`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1a569593c8b1a1d9cb858835c7815ee1d4a796f3a6af7bf3f69318b8520492`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ad19a94e7ff4e3f1f0de67454e1de6081ce12b44ce48be0c7d78f80c4e7e3c`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:cee2ff4ae09fb4c2e1585bf735ad5d7201079f51c01edd27be057e35379a0eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:3e8d1dbe94c31c8dea6ee62faa844e760bcb44481e5490cef065bcf6eccab3f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.1 MB (332118574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50bb8b850810f3369bc480d7316679e24c066f424aca5df852e2c94a3cd1cff6`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:07:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:07:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:16:37 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:17:47 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Sep 2017 00:17:47 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:17:48 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:17:49 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:17:49 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Sep 2017 00:17:49 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Sep 2017 00:17:57 GMT
RUN apt-get install -y curl
# Thu, 14 Sep 2017 00:17:59 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Sep 2017 00:17:59 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Sep 2017 00:18:04 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Sep 2017 00:18:31 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Sep 2017 00:18:31 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Sep 2017 00:18:32 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Sep 2017 00:18:32 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Sep 2017 00:18:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:18:33 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:18:33 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225d0261262cc13e13f2c7200866cfa25e68576c37f03e06a97f16a14087dccd`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 13.1 KB (13065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a7cc5512377e3485f533bcd56e787cdc0985ed28c641d7a029223b733bf122`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41afdcfe4b671597de20bb987bccf46a12c6bdc7df38c70978907e271ef23691`  
		Last Modified: Thu, 14 Sep 2017 00:29:51 GMT  
		Size: 250.2 MB (250165513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f59ed508d9991ad8ec076871d25c9fb382468e23f9ce1195719b7a300750935`  
		Last Modified: Thu, 14 Sep 2017 00:29:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0dc0ec9790ba71064f1be4075aac67c63e191d91d9406c9caa611b5ff46efcb`  
		Last Modified: Thu, 14 Sep 2017 00:29:05 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfc19d1c1fa312dfcfec0490488e659351f586ec9a168f368e06edcff465642`  
		Last Modified: Thu, 14 Sep 2017 00:29:05 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39bde3ee47aa7f35df1e3c1e947bd55e3bc09ae3a27b26da5bfd6c81bafc0adb`  
		Last Modified: Thu, 14 Sep 2017 00:29:03 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4419d53cad461b5ccf899911b3ffbc981e5cab842baf350000b2110dffa1ac`  
		Last Modified: Thu, 14 Sep 2017 00:29:03 GMT  
		Size: 911.5 KB (911543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53cdf9f7e234a16560352279e6c21a3491aed31e9b6a632edf38416162c1618`  
		Last Modified: Thu, 14 Sep 2017 00:29:02 GMT  
		Size: 18.8 KB (18826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1807777e98b368225252b3a77ce228ac116eafa0de9cdcb7088e975eb1ba8583`  
		Last Modified: Thu, 14 Sep 2017 00:29:04 GMT  
		Size: 494.1 KB (494085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed22e11f0fe13860a535a5816a693b3ea75bb3c1e9d0c9c049ce66468a414e4`  
		Last Modified: Thu, 14 Sep 2017 00:29:06 GMT  
		Size: 13.3 MB (13307955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10acc1751bf34529114bcc6e3984c53f841774b9317dc2b236845f5e5a66596`  
		Last Modified: Thu, 14 Sep 2017 00:29:00 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2534a6e861e0f2866168eebd81c63ace12e0fc25b0e70297c11b3f333794e4b`  
		Last Modified: Thu, 14 Sep 2017 00:29:01 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ff3850d831bfe97a9ac5d04776178414d198fd29c287079b81d04cb700a3f9`  
		Last Modified: Thu, 14 Sep 2017 00:29:00 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:692b633cb242473b80feaca570166a5b8a02f5f28fa174c27703201f713125fa`  
		Last Modified: Thu, 14 Sep 2017 00:29:00 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:0d9bb847339ec768dc78a96ec33aed8ea376a374d338ec9d933420cd91a5a426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:a7424eb1410d1da1092017c89de6c9a3945159b4c890b3a6050331f3193bca7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.3 MB (332297160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae50dfb02c284cb81d20aaf2d7e51f6694bf1e8a0179291d6e72c0e4d266f47`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:07:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:07:05 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:20:45 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:21:13 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Sep 2017 00:21:13 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:21:16 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:21:18 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:21:18 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Sep 2017 00:21:20 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Sep 2017 00:21:27 GMT
RUN apt-get install -y curl
# Thu, 14 Sep 2017 00:21:28 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Sep 2017 00:21:29 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Sep 2017 00:21:35 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Sep 2017 00:22:02 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Sep 2017 00:22:02 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Sep 2017 00:22:03 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Sep 2017 00:22:03 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Sep 2017 00:22:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:22:04 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:22:05 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:22:05 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225d0261262cc13e13f2c7200866cfa25e68576c37f03e06a97f16a14087dccd`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 13.1 KB (13065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a7cc5512377e3485f533bcd56e787cdc0985ed28c641d7a029223b733bf122`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1f27810f2b4809c77cf49eabc2e9691b6ec2e5a2783ff22bc948c92aa9d1c1`  
		Last Modified: Thu, 14 Sep 2017 00:30:59 GMT  
		Size: 250.3 MB (250307099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394d16bc15765922f278eb85024414d309cb761b4fa7ec2788041c8ef61b7e77`  
		Last Modified: Thu, 14 Sep 2017 00:30:14 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7595dda1967542abd91f33309b34b007d1eb7c42b16836de5e879a2a0a0fbf9e`  
		Last Modified: Thu, 14 Sep 2017 00:30:12 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0cff163c522be09d4f755f701b019b7be46166b15543c6492fe6ba38df3bad`  
		Last Modified: Thu, 14 Sep 2017 00:30:14 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7374cae0b4ca9d9b7ee7c557ef6e8f3c10c6e9f9286bf955fe3206bddf2745`  
		Last Modified: Thu, 14 Sep 2017 00:30:11 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef90f06ff9c7a2af9dc9c0d7fba73e4159a7b6254637bff58d4d35005d289bed`  
		Last Modified: Thu, 14 Sep 2017 00:30:10 GMT  
		Size: 913.4 KB (913386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6a3328073e439fe4ab2f86083f9e01f36c40d6087ea9d1d69dac1ea944348`  
		Last Modified: Thu, 14 Sep 2017 00:30:09 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d189ddb45cd8b0699ab4fadab3fd9cee2307c20fca90a0fa222dbb7f0d7be8`  
		Last Modified: Thu, 14 Sep 2017 00:30:10 GMT  
		Size: 494.1 KB (494087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4c8b04eb8ab07086aed8ccbcfdbeffc67e4ec281b5568a57942f31422990da`  
		Last Modified: Thu, 14 Sep 2017 00:30:13 GMT  
		Size: 13.3 MB (13343108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5c421b6a30c9a5d7ab7c3d37b925b478d2e89100eafa11bdb73736b746e20e`  
		Last Modified: Thu, 14 Sep 2017 00:30:09 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9be4af2e7aaf80a1b6c6e76954ae02089335aa141043dcb4b346d5224f84051`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 2.5 KB (2537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1a569593c8b1a1d9cb858835c7815ee1d4a796f3a6af7bf3f69318b8520492`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ad19a94e7ff4e3f1f0de67454e1de6081ce12b44ce48be0c7d78f80c4e7e3c`  
		Last Modified: Thu, 14 Sep 2017 00:30:07 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:b367270e961a430ccf0077d153c48b4d0a31f5d85695a089fd10cc69119fe269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:72d974e5cdcd9dc95e27ef02239b3856485be250c1d94b738fe91308a2147513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.2 MB (415155750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12551dd994e1dc40b1530900861b928bb8508826c379521b0d2db75d156e6920`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:07:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:24:54 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:26:49 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:26:50 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Sep 2017 00:26:50 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:26:51 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:26:52 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:26:52 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Sep 2017 00:26:52 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Sep 2017 00:27:00 GMT
RUN apt-get install -y curl
# Thu, 14 Sep 2017 00:27:01 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Sep 2017 00:27:01 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Sep 2017 00:27:06 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Sep 2017 00:27:31 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Sep 2017 00:27:32 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Sep 2017 00:27:32 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Sep 2017 00:27:33 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Sep 2017 00:27:33 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Sep 2017 00:27:33 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:27:33 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:27:33 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:27:34 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:27:34 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:27:34 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225d0261262cc13e13f2c7200866cfa25e68576c37f03e06a97f16a14087dccd`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 13.1 KB (13065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3997f7755d0a14fa5799994230d5dff0fbc4c72af1a8820f4c2c2809f1e464`  
		Last Modified: Thu, 14 Sep 2017 00:32:25 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6984a38d49f1bb081e2cbd9cc26c84dcec114b5f43496418e49c6dd3686ab8be`  
		Last Modified: Thu, 14 Sep 2017 00:33:37 GMT  
		Size: 333.2 MB (333168182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee41d6297b9a7653d238da5d85ba283f29287a9f333cf6f33b207a043b537d59`  
		Last Modified: Thu, 14 Sep 2017 00:32:23 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ee698653216ec132fcc1d0398189d7e96eef883f343fa2bef03bf884b4c83`  
		Last Modified: Thu, 14 Sep 2017 00:32:23 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0905028422997b4566a745059bbb686a0d21fc301ccd576ce3ee7636db9cf1f`  
		Last Modified: Thu, 14 Sep 2017 00:32:22 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dc447798d0a18dd4b6c9c36288bb7c77a008286fecbd600c33124d27c0cea1`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5629decf37fc46404a4543a06d782ad151192d73b5ee58245c850936b74d5141`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 907.3 KB (907312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28870dac52a140188675e6e6bca33647bb876b11c4575a366350a4e828db8d5c`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952ccf6df1e6f0fb14387bdcee179c6a75bf79c58d6fc591bb9e70e68d6a3f3a`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 495.9 KB (495855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afb63d829be7a0da4eccb5f7e0b727445deac0d622adb61c25704bb77d60417`  
		Last Modified: Thu, 14 Sep 2017 00:32:23 GMT  
		Size: 13.3 MB (13344925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6184724be0215919d0c04dba3a529afb30c8893e089a4217355d1ee31e2a66`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cae1ba16c83187cf5530c541f196b4e9f3bec87f5a05402280c0a4c42a6f1e`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 2.5 KB (2534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf072cb80eb1275b97d0ec5c72df4eabf96f54e6fa6c1b5cd0c54aba5e23e9a`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9657bfaf62a03f87773c47a7e29c3186dff2e38a55f66357447df42ceee5976`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:b367270e961a430ccf0077d153c48b4d0a31f5d85695a089fd10cc69119fe269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:72d974e5cdcd9dc95e27ef02239b3856485be250c1d94b738fe91308a2147513
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.2 MB (415155750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12551dd994e1dc40b1530900861b928bb8508826c379521b0d2db75d156e6920`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:07:05 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 14 Sep 2017 00:24:54 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 14 Sep 2017 00:26:49 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 14 Sep 2017 00:26:50 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Thu, 14 Sep 2017 00:26:50 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 14 Sep 2017 00:26:51 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 14 Sep 2017 00:26:52 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 14 Sep 2017 00:26:52 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 14 Sep 2017 00:26:52 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 14 Sep 2017 00:27:00 GMT
RUN apt-get install -y curl
# Thu, 14 Sep 2017 00:27:01 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 14 Sep 2017 00:27:01 GMT
WORKDIR /usr/local/zs-init
# Thu, 14 Sep 2017 00:27:06 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 14 Sep 2017 00:27:31 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 14 Sep 2017 00:27:32 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 14 Sep 2017 00:27:32 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 14 Sep 2017 00:27:33 GMT
RUN rm /var/www/html/index.html
# Thu, 14 Sep 2017 00:27:33 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 14 Sep 2017 00:27:33 GMT
EXPOSE 80/tcp
# Thu, 14 Sep 2017 00:27:33 GMT
EXPOSE 443/tcp
# Thu, 14 Sep 2017 00:27:33 GMT
EXPOSE 10081/tcp
# Thu, 14 Sep 2017 00:27:34 GMT
EXPOSE 10082/tcp
# Thu, 14 Sep 2017 00:27:34 GMT
WORKDIR /var/www/html
# Thu, 14 Sep 2017 00:27:34 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225d0261262cc13e13f2c7200866cfa25e68576c37f03e06a97f16a14087dccd`  
		Last Modified: Thu, 14 Sep 2017 00:29:08 GMT  
		Size: 13.1 KB (13065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3997f7755d0a14fa5799994230d5dff0fbc4c72af1a8820f4c2c2809f1e464`  
		Last Modified: Thu, 14 Sep 2017 00:32:25 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6984a38d49f1bb081e2cbd9cc26c84dcec114b5f43496418e49c6dd3686ab8be`  
		Last Modified: Thu, 14 Sep 2017 00:33:37 GMT  
		Size: 333.2 MB (333168182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee41d6297b9a7653d238da5d85ba283f29287a9f333cf6f33b207a043b537d59`  
		Last Modified: Thu, 14 Sep 2017 00:32:23 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1ee698653216ec132fcc1d0398189d7e96eef883f343fa2bef03bf884b4c83`  
		Last Modified: Thu, 14 Sep 2017 00:32:23 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0905028422997b4566a745059bbb686a0d21fc301ccd576ce3ee7636db9cf1f`  
		Last Modified: Thu, 14 Sep 2017 00:32:22 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26dc447798d0a18dd4b6c9c36288bb7c77a008286fecbd600c33124d27c0cea1`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5629decf37fc46404a4543a06d782ad151192d73b5ee58245c850936b74d5141`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 907.3 KB (907312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28870dac52a140188675e6e6bca33647bb876b11c4575a366350a4e828db8d5c`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:952ccf6df1e6f0fb14387bdcee179c6a75bf79c58d6fc591bb9e70e68d6a3f3a`  
		Last Modified: Thu, 14 Sep 2017 00:32:20 GMT  
		Size: 495.9 KB (495855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afb63d829be7a0da4eccb5f7e0b727445deac0d622adb61c25704bb77d60417`  
		Last Modified: Thu, 14 Sep 2017 00:32:23 GMT  
		Size: 13.3 MB (13344925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6184724be0215919d0c04dba3a529afb30c8893e089a4217355d1ee31e2a66`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cae1ba16c83187cf5530c541f196b4e9f3bec87f5a05402280c0a4c42a6f1e`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 2.5 KB (2534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf072cb80eb1275b97d0ec5c72df4eabf96f54e6fa6c1b5cd0c54aba5e23e9a`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9657bfaf62a03f87773c47a7e29c3186dff2e38a55f66357447df42ceee5976`  
		Last Modified: Thu, 14 Sep 2017 00:32:18 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
