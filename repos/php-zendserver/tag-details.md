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
$ docker pull php-zendserver@sha256:d94bfbe55b96784e3be97a68eeeb26e3bd3ac6b4bbfa9a68e44631cc8afff218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:9c532a8d0da473b755e53e5b686885a459219da56a218c726bad2b1c0eb0f2b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.0 MB (301951989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be76735af2c0f1db1e67640e39aa3fdc072b02be8b65282ad48e2e80c9575fe0`
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
# Fri, 26 Jan 2018 00:31:08 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Fri, 26 Jan 2018 00:31:08 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 26 Jan 2018 00:31:08 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 26 Jan 2018 00:31:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Jan 2018 00:31:12 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:32:59 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:45:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:45:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:45:57 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:45:57 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 00:45:57 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10060/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10061/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10062/tcp
# Fri, 26 Jan 2018 00:45:59 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 00:45:59 GMT
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
	-	`sha256:dce6253db26a9dc33511c54b5b4bc8407dbb98263a044c306c3398dd0e77b617`  
		Last Modified: Fri, 26 Jan 2018 01:13:35 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b122eea333cfc7452f64e05debb260d9fdc09d4089988cd29a9524c0ef16cc`  
		Last Modified: Fri, 26 Jan 2018 01:13:35 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb0eaaa89b34ccfb1bba5f31bf6d77c95d9bd4363e03e13c4911996d1ff670f`  
		Last Modified: Fri, 26 Jan 2018 01:13:36 GMT  
		Size: 938.4 KB (938411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874ad3f82e14a933ff761b3366424e8d695af931a079c5ce3c00e69f71105b77`  
		Last Modified: Fri, 26 Jan 2018 01:13:35 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f3d8875b6cefb8ac04d08b740e7e851c8d4cb618691b58bb734ecaf74f5810`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c12d668196f7b38154764189dbbf45dc477ff133431dbfe922835ed6af06d7`  
		Last Modified: Fri, 26 Jan 2018 01:14:22 GMT  
		Size: 228.0 MB (227959232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6679c03689f9fa615fb34e532e1dd20db034c644a8316bef32c3d535042e2179`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c533c382510516a80e254e357adb87933ca1635342cb26c771210f85e5a7f2c`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d64f88020c3b78b5c4c8efd4572fa2673ced38e0274d56ffd92b0dea5a15231`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:945d3d14530efd992e368990a2a1fcd923377d9c050314d0cedc3a02919ce204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d48d2dbf78a63e3d85ee82ed92d1de795b4df5b58f436742067d53b9f3121043
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.4 MB (341396378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a1890ec0922f955ba87072e5ec31589381f4246d70de29109b574efabe6901`
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
# Fri, 26 Jan 2018 00:05:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:08:10 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:08:12 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 26 Jan 2018 00:08:12 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:08:14 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:08:15 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:08:15 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 26 Jan 2018 00:08:15 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 26 Jan 2018 00:08:17 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Jan 2018 00:08:17 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Jan 2018 00:08:21 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Jan 2018 00:08:50 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Jan 2018 00:08:51 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 26 Jan 2018 00:08:51 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 26 Jan 2018 00:08:52 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Jan 2018 00:08:52 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 26 Jan 2018 00:08:53 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 00:08:53 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 00:08:53 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 00:08:54 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 00:08:54 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 00:08:54 GMT
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
	-	`sha256:1bdfa3f209aebb1c30c47aae59fcc0e098c7d9a8bf9896e2ad279d7c30073c6f`  
		Last Modified: Fri, 26 Jan 2018 01:09:54 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97434fc23b49e76054cb64cffddafa57a36e96adadc3200c69f574890926f235`  
		Last Modified: Fri, 26 Jan 2018 01:10:54 GMT  
		Size: 253.9 MB (253910280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f9933b88436c4f81651208880c9fbcc0de5d26ca340447602f84744269bf5c`  
		Last Modified: Fri, 26 Jan 2018 01:09:56 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311eeeeb68f1b649914b567925868a7bfa3443a6aa2a220b24ec5ba909689ced`  
		Last Modified: Fri, 26 Jan 2018 01:09:54 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c5500303426cfde71adeccb5916482bc0dfde4c702b0fa275f045b44bd585a`  
		Last Modified: Fri, 26 Jan 2018 01:09:52 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469ffb911e5dff6443cacd73880f1b1a538a25633dbfdf76cb1323f9e3d61c9a`  
		Last Modified: Fri, 26 Jan 2018 01:09:51 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85286f41d919204284ade15fe9d7fc0e15dfab4a0ebda8e00a6e5fb87403a37`  
		Last Modified: Fri, 26 Jan 2018 01:09:51 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e99a013b233b4bc720566f6337c1909c59fa400c61c25d21b9a1c065b869f2`  
		Last Modified: Fri, 26 Jan 2018 01:09:52 GMT  
		Size: 487.8 KB (487771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef5de4d0b71aea3440d2b93a7c9353449912bfb703c9aca6bdd3704b805b088`  
		Last Modified: Fri, 26 Jan 2018 01:09:53 GMT  
		Size: 13.9 MB (13920529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897032794443b884c89313cd710819fc6d642b3a993c7d771359f9227098318`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22932c05f028bf876ee499bebfeb9480f8c7b48436bde5268ad5f828233c941`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d50be2a9304fdf4a3a5c0bb5af05795425c0937a29e7f94e798a1e53297baa`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cd8b73934a9fc0e11cec280ab76cdbd21f1aef470b6a1fb0575c4d84ddc57a`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:58ccbc442b739fe49403dcb29c2663394c052cacaff96013ab8bfc61e7d056ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2a512b090fe43ee6887d6bc409a906e12a12e8e977bf1a39e4136d2af520c938
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338048971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cba5a666e03be08b106668a2e01aaf8a2dcb908d1df7669b2254ac812fff74`
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
# Fri, 26 Jan 2018 00:05:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:25:01 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:25:02 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 26 Jan 2018 00:25:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:25:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:25:04 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:25:04 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 26 Jan 2018 00:25:04 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 26 Jan 2018 00:25:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Jan 2018 00:25:05 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Jan 2018 00:25:08 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Jan 2018 00:25:36 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Jan 2018 00:25:37 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 26 Jan 2018 00:25:37 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 26 Jan 2018 00:25:38 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Jan 2018 00:25:38 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 26 Jan 2018 00:25:38 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 00:25:40 GMT
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
	-	`sha256:1bdfa3f209aebb1c30c47aae59fcc0e098c7d9a8bf9896e2ad279d7c30073c6f`  
		Last Modified: Fri, 26 Jan 2018 01:09:54 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ead306996be53e5480900a860a0fe46eacb4c7732ac6b7c83facd97a1399a`  
		Last Modified: Fri, 26 Jan 2018 01:12:30 GMT  
		Size: 250.6 MB (250566236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f130eed469c54a91143833d922f8eca0e46742c6578b2e39d056732aae0a87`  
		Last Modified: Fri, 26 Jan 2018 01:11:37 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902ca944af030655bb21b7f1cc5b1eaa42c78c646827a8cf1bc77903d2ca2dee`  
		Last Modified: Fri, 26 Jan 2018 01:11:36 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15e34368c3b5e42c9ebc12901ddb33f5ba4d779522b50495a4bb0bd9233c7d8`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d986ca9cc22f17206af3ac6f23330ff9d3407cfd6de1899a11ea5a57bb34fcf`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65b913a7093233346cbc80b6dd7aed359f87616349b4fae8a88286d15945eb4`  
		Last Modified: Fri, 26 Jan 2018 01:11:33 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a785f25c81e60cc7c55237060491873d7c52379547a7f75c62a2dfd7b3a1beca`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 487.8 KB (487779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c6f4e9523b74d3ae956bcb0668e184222111df332b05b7bb49de79beeb1405`  
		Last Modified: Fri, 26 Jan 2018 01:11:36 GMT  
		Size: 13.9 MB (13917160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3589a6f1cc96bca05ae942997b4002035b78680f7cdb5701dc27beaecb98c6`  
		Last Modified: Fri, 26 Jan 2018 01:11:31 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c114342556c9fe17b201d39b6980f2bfa380806dc8d83f4aa23a73869029b281`  
		Last Modified: Fri, 26 Jan 2018 01:11:31 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18865f1f5599846bf24d0403f7108d6c38ca0ba10472ee0b7c4adddcef2f5f`  
		Last Modified: Fri, 26 Jan 2018 01:11:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3628a84502efc637ea2397ff6e3bcf82d2c44e6d5f0686d468ce2059dc2296b9`  
		Last Modified: Fri, 26 Jan 2018 01:11:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:d94bfbe55b96784e3be97a68eeeb26e3bd3ac6b4bbfa9a68e44631cc8afff218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:9c532a8d0da473b755e53e5b686885a459219da56a218c726bad2b1c0eb0f2b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.0 MB (301951989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be76735af2c0f1db1e67640e39aa3fdc072b02be8b65282ad48e2e80c9575fe0`
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
# Fri, 26 Jan 2018 00:31:08 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Fri, 26 Jan 2018 00:31:08 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 26 Jan 2018 00:31:08 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 26 Jan 2018 00:31:12 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 26 Jan 2018 00:31:12 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:32:59 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:45:55 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:45:56 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:45:57 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:45:57 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 00:45:57 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10060/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10061/tcp
# Fri, 26 Jan 2018 00:45:58 GMT
EXPOSE 10062/tcp
# Fri, 26 Jan 2018 00:45:59 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 00:45:59 GMT
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
	-	`sha256:dce6253db26a9dc33511c54b5b4bc8407dbb98263a044c306c3398dd0e77b617`  
		Last Modified: Fri, 26 Jan 2018 01:13:35 GMT  
		Size: 1.0 KB (1005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b122eea333cfc7452f64e05debb260d9fdc09d4089988cd29a9524c0ef16cc`  
		Last Modified: Fri, 26 Jan 2018 01:13:35 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb0eaaa89b34ccfb1bba5f31bf6d77c95d9bd4363e03e13c4911996d1ff670f`  
		Last Modified: Fri, 26 Jan 2018 01:13:36 GMT  
		Size: 938.4 KB (938411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874ad3f82e14a933ff761b3366424e8d695af931a079c5ce3c00e69f71105b77`  
		Last Modified: Fri, 26 Jan 2018 01:13:35 GMT  
		Size: 13.1 KB (13062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f3d8875b6cefb8ac04d08b740e7e851c8d4cb618691b58bb734ecaf74f5810`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c12d668196f7b38154764189dbbf45dc477ff133431dbfe922835ed6af06d7`  
		Last Modified: Fri, 26 Jan 2018 01:14:22 GMT  
		Size: 228.0 MB (227959232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6679c03689f9fa615fb34e532e1dd20db034c644a8316bef32c3d535042e2179`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c533c382510516a80e254e357adb87933ca1635342cb26c771210f85e5a7f2c`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d64f88020c3b78b5c4c8efd4572fa2673ced38e0274d56ffd92b0dea5a15231`  
		Last Modified: Fri, 26 Jan 2018 01:13:33 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:58ccbc442b739fe49403dcb29c2663394c052cacaff96013ab8bfc61e7d056ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2a512b090fe43ee6887d6bc409a906e12a12e8e977bf1a39e4136d2af520c938
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338048971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cba5a666e03be08b106668a2e01aaf8a2dcb908d1df7669b2254ac812fff74`
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
# Fri, 26 Jan 2018 00:05:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:25:01 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:25:02 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 26 Jan 2018 00:25:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:25:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:25:04 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:25:04 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 26 Jan 2018 00:25:04 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 26 Jan 2018 00:25:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Jan 2018 00:25:05 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Jan 2018 00:25:08 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Jan 2018 00:25:36 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Jan 2018 00:25:37 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 26 Jan 2018 00:25:37 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 26 Jan 2018 00:25:38 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Jan 2018 00:25:38 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 26 Jan 2018 00:25:38 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 00:25:40 GMT
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
	-	`sha256:1bdfa3f209aebb1c30c47aae59fcc0e098c7d9a8bf9896e2ad279d7c30073c6f`  
		Last Modified: Fri, 26 Jan 2018 01:09:54 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ead306996be53e5480900a860a0fe46eacb4c7732ac6b7c83facd97a1399a`  
		Last Modified: Fri, 26 Jan 2018 01:12:30 GMT  
		Size: 250.6 MB (250566236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f130eed469c54a91143833d922f8eca0e46742c6578b2e39d056732aae0a87`  
		Last Modified: Fri, 26 Jan 2018 01:11:37 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902ca944af030655bb21b7f1cc5b1eaa42c78c646827a8cf1bc77903d2ca2dee`  
		Last Modified: Fri, 26 Jan 2018 01:11:36 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15e34368c3b5e42c9ebc12901ddb33f5ba4d779522b50495a4bb0bd9233c7d8`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d986ca9cc22f17206af3ac6f23330ff9d3407cfd6de1899a11ea5a57bb34fcf`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65b913a7093233346cbc80b6dd7aed359f87616349b4fae8a88286d15945eb4`  
		Last Modified: Fri, 26 Jan 2018 01:11:33 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a785f25c81e60cc7c55237060491873d7c52379547a7f75c62a2dfd7b3a1beca`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 487.8 KB (487779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c6f4e9523b74d3ae956bcb0668e184222111df332b05b7bb49de79beeb1405`  
		Last Modified: Fri, 26 Jan 2018 01:11:36 GMT  
		Size: 13.9 MB (13917160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3589a6f1cc96bca05ae942997b4002035b78680f7cdb5701dc27beaecb98c6`  
		Last Modified: Fri, 26 Jan 2018 01:11:31 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c114342556c9fe17b201d39b6980f2bfa380806dc8d83f4aa23a73869029b281`  
		Last Modified: Fri, 26 Jan 2018 01:11:31 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18865f1f5599846bf24d0403f7108d6c38ca0ba10472ee0b7c4adddcef2f5f`  
		Last Modified: Fri, 26 Jan 2018 01:11:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3628a84502efc637ea2397ff6e3bcf82d2c44e6d5f0686d468ce2059dc2296b9`  
		Last Modified: Fri, 26 Jan 2018 01:11:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:945d3d14530efd992e368990a2a1fcd923377d9c050314d0cedc3a02919ce204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d48d2dbf78a63e3d85ee82ed92d1de795b4df5b58f436742067d53b9f3121043
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.4 MB (341396378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38a1890ec0922f955ba87072e5ec31589381f4246d70de29109b574efabe6901`
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
# Fri, 26 Jan 2018 00:05:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:08:10 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:08:12 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 26 Jan 2018 00:08:12 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:08:14 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:08:15 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:08:15 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 26 Jan 2018 00:08:15 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 26 Jan 2018 00:08:17 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Jan 2018 00:08:17 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Jan 2018 00:08:21 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Jan 2018 00:08:50 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Jan 2018 00:08:51 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 26 Jan 2018 00:08:51 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 26 Jan 2018 00:08:52 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Jan 2018 00:08:52 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 26 Jan 2018 00:08:53 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 00:08:53 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 00:08:53 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 00:08:54 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 00:08:54 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 00:08:54 GMT
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
	-	`sha256:1bdfa3f209aebb1c30c47aae59fcc0e098c7d9a8bf9896e2ad279d7c30073c6f`  
		Last Modified: Fri, 26 Jan 2018 01:09:54 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97434fc23b49e76054cb64cffddafa57a36e96adadc3200c69f574890926f235`  
		Last Modified: Fri, 26 Jan 2018 01:10:54 GMT  
		Size: 253.9 MB (253910280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f9933b88436c4f81651208880c9fbcc0de5d26ca340447602f84744269bf5c`  
		Last Modified: Fri, 26 Jan 2018 01:09:56 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311eeeeb68f1b649914b567925868a7bfa3443a6aa2a220b24ec5ba909689ced`  
		Last Modified: Fri, 26 Jan 2018 01:09:54 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c5500303426cfde71adeccb5916482bc0dfde4c702b0fa275f045b44bd585a`  
		Last Modified: Fri, 26 Jan 2018 01:09:52 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:469ffb911e5dff6443cacd73880f1b1a538a25633dbfdf76cb1323f9e3d61c9a`  
		Last Modified: Fri, 26 Jan 2018 01:09:51 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85286f41d919204284ade15fe9d7fc0e15dfab4a0ebda8e00a6e5fb87403a37`  
		Last Modified: Fri, 26 Jan 2018 01:09:51 GMT  
		Size: 18.8 KB (18833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98e99a013b233b4bc720566f6337c1909c59fa400c61c25d21b9a1c065b869f2`  
		Last Modified: Fri, 26 Jan 2018 01:09:52 GMT  
		Size: 487.8 KB (487771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef5de4d0b71aea3440d2b93a7c9353449912bfb703c9aca6bdd3704b805b088`  
		Last Modified: Fri, 26 Jan 2018 01:09:53 GMT  
		Size: 13.9 MB (13920529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5897032794443b884c89313cd710819fc6d642b3a993c7d771359f9227098318`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22932c05f028bf876ee499bebfeb9480f8c7b48436bde5268ad5f828233c941`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d50be2a9304fdf4a3a5c0bb5af05795425c0937a29e7f94e798a1e53297baa`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cd8b73934a9fc0e11cec280ab76cdbd21f1aef470b6a1fb0575c4d84ddc57a`  
		Last Modified: Fri, 26 Jan 2018 01:09:48 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:58ccbc442b739fe49403dcb29c2663394c052cacaff96013ab8bfc61e7d056ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:2a512b090fe43ee6887d6bc409a906e12a12e8e977bf1a39e4136d2af520c938
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338048971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76cba5a666e03be08b106668a2e01aaf8a2dcb908d1df7669b2254ac812fff74`
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
# Fri, 26 Jan 2018 00:05:49 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 26 Jan 2018 00:25:01 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 26 Jan 2018 00:25:02 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Fri, 26 Jan 2018 00:25:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 26 Jan 2018 00:25:03 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 26 Jan 2018 00:25:04 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 26 Jan 2018 00:25:04 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 26 Jan 2018 00:25:04 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 26 Jan 2018 00:25:05 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 26 Jan 2018 00:25:05 GMT
WORKDIR /usr/local/zs-init
# Fri, 26 Jan 2018 00:25:08 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 26 Jan 2018 00:25:36 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 26 Jan 2018 00:25:37 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 26 Jan 2018 00:25:37 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 26 Jan 2018 00:25:38 GMT
RUN rm /var/www/html/index.html
# Fri, 26 Jan 2018 00:25:38 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 26 Jan 2018 00:25:38 GMT
EXPOSE 80/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 443/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 10081/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
EXPOSE 10082/tcp
# Fri, 26 Jan 2018 00:25:39 GMT
WORKDIR /var/www/html
# Fri, 26 Jan 2018 00:25:40 GMT
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
	-	`sha256:1bdfa3f209aebb1c30c47aae59fcc0e098c7d9a8bf9896e2ad279d7c30073c6f`  
		Last Modified: Fri, 26 Jan 2018 01:09:54 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6ead306996be53e5480900a860a0fe46eacb4c7732ac6b7c83facd97a1399a`  
		Last Modified: Fri, 26 Jan 2018 01:12:30 GMT  
		Size: 250.6 MB (250566236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f130eed469c54a91143833d922f8eca0e46742c6578b2e39d056732aae0a87`  
		Last Modified: Fri, 26 Jan 2018 01:11:37 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902ca944af030655bb21b7f1cc5b1eaa42c78c646827a8cf1bc77903d2ca2dee`  
		Last Modified: Fri, 26 Jan 2018 01:11:36 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15e34368c3b5e42c9ebc12901ddb33f5ba4d779522b50495a4bb0bd9233c7d8`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d986ca9cc22f17206af3ac6f23330ff9d3407cfd6de1899a11ea5a57bb34fcf`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65b913a7093233346cbc80b6dd7aed359f87616349b4fae8a88286d15945eb4`  
		Last Modified: Fri, 26 Jan 2018 01:11:33 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a785f25c81e60cc7c55237060491873d7c52379547a7f75c62a2dfd7b3a1beca`  
		Last Modified: Fri, 26 Jan 2018 01:11:34 GMT  
		Size: 487.8 KB (487779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c6f4e9523b74d3ae956bcb0668e184222111df332b05b7bb49de79beeb1405`  
		Last Modified: Fri, 26 Jan 2018 01:11:36 GMT  
		Size: 13.9 MB (13917160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3589a6f1cc96bca05ae942997b4002035b78680f7cdb5701dc27beaecb98c6`  
		Last Modified: Fri, 26 Jan 2018 01:11:31 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c114342556c9fe17b201d39b6980f2bfa380806dc8d83f4aa23a73869029b281`  
		Last Modified: Fri, 26 Jan 2018 01:11:31 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c18865f1f5599846bf24d0403f7108d6c38ca0ba10472ee0b7c4adddcef2f5f`  
		Last Modified: Fri, 26 Jan 2018 01:11:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3628a84502efc637ea2397ff6e3bcf82d2c44e6d5f0686d468ce2059dc2296b9`  
		Last Modified: Fri, 26 Jan 2018 01:11:32 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:d1f02841add6f2287c33eef73f4c8b3a2153da40613754dedaf4b37ee069c4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

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

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:b83df7d314d9cf3f8c89745a88b90a3bdf8448c26f19f3e0fa2dede6cb7e50f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:1af9aa8f6b75efedfea8ba298c3a050790d632125761d9de99ddd030fcf6cee0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.9 MB (424918864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10638fded8f5a656b75b788c447b7c92bec00a3a9bfc8fb9070e4a2cbe49a33`
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
# Tue, 16 Jan 2018 02:05:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 22:05:18 GMT
RUN apt-get update &&     apt-get install -y     curl libmysqlclient18 unzip git zend-server-php-7.1=9.1.2+b144 &&     apt-get clean &&     /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 22:17:11 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Thu, 18 Jan 2018 22:17:11 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 22:17:13 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 22:17:14 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 22:17:14 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 18 Jan 2018 22:17:14 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 18 Jan 2018 22:17:16 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 18 Jan 2018 22:17:16 GMT
WORKDIR /usr/local/zs-init
# Thu, 18 Jan 2018 22:17:21 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 18 Jan 2018 22:17:45 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 18 Jan 2018 22:28:31 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 18 Jan 2018 22:28:31 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 18 Jan 2018 22:28:32 GMT
RUN rm /var/www/html/index.html
# Thu, 18 Jan 2018 22:28:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 22:28:33 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 22:28:34 GMT
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
	-	`sha256:cbce0c5e639d6a0e33ff262a9c8c2cbe44e8d90d1f6269111032ece5194cdb04`  
		Last Modified: Thu, 18 Jan 2018 22:49:01 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:154ad496f2d00c3ea40b58b791db0816dcd67e7a481a834ccf6704609ae4af50`  
		Last Modified: Thu, 18 Jan 2018 22:50:13 GMT  
		Size: 337.5 MB (337510572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c0ecd7d0567efc020576c18b8a22caf5e5c161272363451f63afb54b8be12`  
		Last Modified: Thu, 18 Jan 2018 22:48:58 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bda0ae271befa1198e1d3796add783ca6f2acd8c8f0c5d9f01a98e8f008b7aa`  
		Last Modified: Thu, 18 Jan 2018 22:48:58 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c36beff5047073028a359515b740e1ca8f21ec4200d89e5d5af621f6f55c0f`  
		Last Modified: Thu, 18 Jan 2018 22:49:01 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd7d8236a37e466f80127a40b002e3c7680421e7dcd593f45b41ead4495c759`  
		Last Modified: Thu, 18 Jan 2018 22:48:57 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493536fd044ea7de09a49ecc4af0c7941e6472c9068e864c0d722a5cfdb8625e`  
		Last Modified: Thu, 18 Jan 2018 22:48:56 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f167ba13dae444d40c044fb703997118943c75598bb22174a5be9cf1b4080ee`  
		Last Modified: Thu, 18 Jan 2018 22:48:56 GMT  
		Size: 489.5 KB (489469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5354cf677b16c25ffe852730022fa7add663372a117a5e318dded235823c5f3`  
		Last Modified: Thu, 18 Jan 2018 22:48:59 GMT  
		Size: 13.9 MB (13857233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f87402c9464f2a63bcb9b6facf2a317ba0f56af0e4a3c8067149488e243dbf`  
		Last Modified: Thu, 18 Jan 2018 22:48:54 GMT  
		Size: 13.4 KB (13363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b7a0b62b992d9a9e5b9664caedb67eac6f76e77b3558014304937fe41d0ad9`  
		Last Modified: Thu, 18 Jan 2018 22:48:56 GMT  
		Size: 2.5 KB (2540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf3f9ddd20718015d8d3b408ff3ac552de726fa1379a637b988b35177fb30a3`  
		Last Modified: Thu, 18 Jan 2018 22:48:54 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc76567c985d64c6969148e7bdc1606826b9971d667701f1f5052edf5af6321c`  
		Last Modified: Thu, 18 Jan 2018 22:48:54 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
