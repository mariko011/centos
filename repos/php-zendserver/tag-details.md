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
$ docker pull php-zendserver@sha256:47dad22df101e2b78c4a737291e28c26855c02292e074d828362f288feae4fdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b3d6c3e6208990d772b7fa550c8ee8d75b4f6f8b81430195c5a61a55e92991ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301925915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22f952a78067d8b229c5f6a694766b24042fb4c2584b47b822d887d2e37f0cf`
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
# Thu, 18 Jan 2018 21:48:40 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Thu, 18 Jan 2018 21:48:41 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 18 Jan 2018 21:48:41 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 18 Jan 2018 21:48:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 18 Jan 2018 21:48:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 21:52:16 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 22:02:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 22:02:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 22:02:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 22:02:30 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 22:02:30 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10060/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10061/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10062/tcp
# Thu, 18 Jan 2018 22:02:32 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 22:02:32 GMT
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
	-	`sha256:5ab41cdfa6dc473021bbf776b4bf1cc9657432130fec3c28f1986f5b16860da4`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f230032be74e1ba10de4db1f07bdd6f11caba42691e6507bfb926db4c837488`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84227dfb63e8f24951e10416773a380003d4d67754baccfd915abf6d9777e1e1`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 938.4 KB (938414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2bbb2782a82f0976ffbfe3c4881f9d57c52171f9ce66393d457c313ffbf7fa`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beba698a01ed604149f8c05b851e64fe29b24ee1eac39ebf114d8be56a8f9855`  
		Last Modified: Thu, 18 Jan 2018 22:41:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874043d12eb88b033939d29a2b1ca29238499f774f5fc71a682ae48aaa511f51`  
		Last Modified: Thu, 18 Jan 2018 22:42:42 GMT  
		Size: 227.9 MB (227949368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae53582c2dc0c6c861e62a5e3f6affaf6206a51bfb8e7616e5105c1de3923f8b`  
		Last Modified: Thu, 18 Jan 2018 22:41:53 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e9735950aab7d4d253fb06d2dad5defe33725414623432b1e095ae8d049639`  
		Last Modified: Thu, 18 Jan 2018 22:41:53 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad249acbd247105e31785b2857ea80452faed202bf2fb5eeb7b8827a76d26c6`  
		Last Modified: Thu, 18 Jan 2018 22:41:54 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:b5a34aa4ac5ec5e6bec3e0b08ca638e6915c75fc89496ec4e8ee449754f829f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:04c2c0258ec2388965a8a4994f5bae50086fc6ad132e96904f90b79c400ed21c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337776828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e8090870c88a07b00a55ed0b7eea6341cef1f96330c88f24f51c22ecee9672e`
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
# Thu, 18 Jan 2018 21:18:28 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 21:20:18 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 21:32:19 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Thu, 18 Jan 2018 21:32:19 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 21:32:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 21:32:22 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 21:32:22 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 18 Jan 2018 21:32:22 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 18 Jan 2018 21:32:24 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 18 Jan 2018 21:32:24 GMT
WORKDIR /usr/local/zs-init
# Thu, 18 Jan 2018 21:32:27 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 18 Jan 2018 21:32:55 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 18 Jan 2018 21:32:55 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 18 Jan 2018 21:32:55 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 18 Jan 2018 21:32:56 GMT
RUN rm /var/www/html/index.html
# Thu, 18 Jan 2018 21:32:57 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 18 Jan 2018 21:32:57 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 21:32:57 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 21:32:57 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 21:32:58 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 21:32:58 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 21:32:58 GMT
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
	-	`sha256:527e922a0b887b1d81f2e1205dd8d15a2c40c05c02f95c94ad7b7f2b531575ae`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cf057463c904db7fa2139e652e984f959d8381479bb36c946b3c2e4be28fd3`  
		Last Modified: Thu, 18 Jan 2018 22:31:17 GMT  
		Size: 250.4 MB (250369853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c05b83e68d1d07bf3d8ce3672a8a053d50cc2f059f04a3e5ce25b3c820899e`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a6ce51ca6a077a7e6b5d524e9c905d55a4da68f66df0036b77dac522c633e6`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c7fb55d20bf629654938375fd51554fd3e845366ed9e66a989414c3cf90927`  
		Last Modified: Thu, 18 Jan 2018 22:30:24 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60203d0616d9ff8c759a086accbf03c63aea63323e4597a120ee98cbfd6908bc`  
		Last Modified: Thu, 18 Jan 2018 22:30:24 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32815473b68007d0363fa1e700b61234a507d9b068a804ae754c1d1b0956779f`  
		Last Modified: Thu, 18 Jan 2018 22:30:23 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7999f45c7356ea689de7248360f1dac3223bfe1ad393198e6be61e8db7a3410f`  
		Last Modified: Thu, 18 Jan 2018 22:30:24 GMT  
		Size: 487.8 KB (487775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c51c5939e09f26bbbf9d012426e3172b46bd668400669c8632fd2e0769136a`  
		Last Modified: Thu, 18 Jan 2018 22:30:28 GMT  
		Size: 13.9 MB (13857608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f105baa5b6116e07c53a655cdadc7a8fb37d7c4df70f7a6913cca7f0ee9a4020`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b89f3d43c525d35ba0d2e3111b3979f2cc7aba7bf618e5d818fc69f494d9e1`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf0e66de6ff2c139e160007540218821eb14b8e5cee4d4c8bfab43cd9674bbb`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfdf64a9f4aea119ce09b24dd2cd405e6944a21ab0a4b1c3dde137ce4857b01`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:a2ac71b378152c66cf6437e69584f7268820d99f5057cbd0eab6f2415e426c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:235f0a3711ce608de86a8646556942e9da6a22bbcab92bc9e96685d067f66666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341476144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5064d20b51e2c8f938584d419e00600b73460e6535e619a3477820dc4c616f52`
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
# Thu, 18 Jan 2018 21:18:28 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 21:35:41 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 21:39:23 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Thu, 18 Jan 2018 21:39:23 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 21:39:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 21:39:25 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 21:39:26 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 18 Jan 2018 21:39:26 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 18 Jan 2018 21:39:28 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 18 Jan 2018 21:39:28 GMT
WORKDIR /usr/local/zs-init
# Thu, 18 Jan 2018 21:39:31 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 18 Jan 2018 21:39:59 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 18 Jan 2018 21:39:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 18 Jan 2018 21:40:00 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 18 Jan 2018 21:40:01 GMT
RUN rm /var/www/html/index.html
# Thu, 18 Jan 2018 21:40:01 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 18 Jan 2018 21:40:01 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 21:48:24 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 21:48:25 GMT
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
	-	`sha256:527e922a0b887b1d81f2e1205dd8d15a2c40c05c02f95c94ad7b7f2b531575ae`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff92ec4a8970545559bf1e8695a2f28d691acbb8f4bc07565a4e42263a48954b`  
		Last Modified: Thu, 18 Jan 2018 22:41:01 GMT  
		Size: 254.1 MB (254072667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3d2e4ba522129d2b913c3d4ab41897eb9e84c42f386d4544aff7d813ecf13`  
		Last Modified: Thu, 18 Jan 2018 22:38:10 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad81d3d8c7791e37e89402bd8bbbef2f496f2ce058c36822e4a109331358d6ae`  
		Last Modified: Thu, 18 Jan 2018 22:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ade6aa5f42a7d9979d37dafd8d4f9fd5ad82ef062f9e50fe34032cefc76042`  
		Last Modified: Thu, 18 Jan 2018 22:38:08 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d33e6b30724d56270f5d001b688f064eb449b9035205f220da0723f1931ab4`  
		Last Modified: Thu, 18 Jan 2018 22:38:07 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419089f7520160d360408c84dc001d94ec1b99b35564cc26155d0ddbc6e287b`  
		Last Modified: Thu, 18 Jan 2018 22:38:09 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2daf0c74347fab5023c32e3962794220d0c7e9355d4ca1adacfedae89d2fcd`  
		Last Modified: Thu, 18 Jan 2018 22:38:08 GMT  
		Size: 487.8 KB (487777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19663d2eda19601d058ff2527e7f2bc3398fc7878c39446507503d47bf693d`  
		Last Modified: Thu, 18 Jan 2018 22:38:11 GMT  
		Size: 13.9 MB (13854103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59cd96be43590787fbfaa7508611bf55664ca42f1eb4e00190a90bd19fc8a383`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42878879f7916cb697a550bbc06f482d6cff8e4de52aa326dc5e5df0a7c1cb8`  
		Last Modified: Thu, 18 Jan 2018 22:38:06 GMT  
		Size: 2.5 KB (2542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd6b48396e0c247f46375ed8203f717d8221d177ca358a641bf78c7beb0d9a2`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5717325ec0e2eb58e8949a305bcbbbbe0ae6564f6ba42f423100df8456986c54`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:47dad22df101e2b78c4a737291e28c26855c02292e074d828362f288feae4fdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b3d6c3e6208990d772b7fa550c8ee8d75b4f6f8b81430195c5a61a55e92991ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.9 MB (301925915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22f952a78067d8b229c5f6a694766b24042fb4c2584b47b822d887d2e37f0cf`
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
# Thu, 18 Jan 2018 21:48:40 GMT
COPY file:1e66e38bbf391bed55bd24c1cbd2dcf1d906c2a94355c6d5b787f373b5115de6 in /usr/local/bin/run 
# Thu, 18 Jan 2018 21:48:41 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 18 Jan 2018 21:48:41 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 18 Jan 2018 21:48:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 18 Jan 2018 21:48:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 21:52:16 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 22:02:28 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 22:02:29 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 22:02:30 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 22:02:30 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 22:02:30 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10060/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10061/tcp
# Thu, 18 Jan 2018 22:02:31 GMT
EXPOSE 10062/tcp
# Thu, 18 Jan 2018 22:02:32 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 22:02:32 GMT
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
	-	`sha256:5ab41cdfa6dc473021bbf776b4bf1cc9657432130fec3c28f1986f5b16860da4`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f230032be74e1ba10de4db1f07bdd6f11caba42691e6507bfb926db4c837488`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84227dfb63e8f24951e10416773a380003d4d67754baccfd915abf6d9777e1e1`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 938.4 KB (938414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2bbb2782a82f0976ffbfe3c4881f9d57c52171f9ce66393d457c313ffbf7fa`  
		Last Modified: Thu, 18 Jan 2018 22:41:56 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beba698a01ed604149f8c05b851e64fe29b24ee1eac39ebf114d8be56a8f9855`  
		Last Modified: Thu, 18 Jan 2018 22:41:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874043d12eb88b033939d29a2b1ca29238499f774f5fc71a682ae48aaa511f51`  
		Last Modified: Thu, 18 Jan 2018 22:42:42 GMT  
		Size: 227.9 MB (227949368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae53582c2dc0c6c861e62a5e3f6affaf6206a51bfb8e7616e5105c1de3923f8b`  
		Last Modified: Thu, 18 Jan 2018 22:41:53 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e9735950aab7d4d253fb06d2dad5defe33725414623432b1e095ae8d049639`  
		Last Modified: Thu, 18 Jan 2018 22:41:53 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad249acbd247105e31785b2857ea80452faed202bf2fb5eeb7b8827a76d26c6`  
		Last Modified: Thu, 18 Jan 2018 22:41:54 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:a2ac71b378152c66cf6437e69584f7268820d99f5057cbd0eab6f2415e426c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:235f0a3711ce608de86a8646556942e9da6a22bbcab92bc9e96685d067f66666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341476144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5064d20b51e2c8f938584d419e00600b73460e6535e619a3477820dc4c616f52`
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
# Thu, 18 Jan 2018 21:18:28 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 21:35:41 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 21:39:23 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Thu, 18 Jan 2018 21:39:23 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 21:39:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 21:39:25 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 21:39:26 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 18 Jan 2018 21:39:26 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 18 Jan 2018 21:39:28 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 18 Jan 2018 21:39:28 GMT
WORKDIR /usr/local/zs-init
# Thu, 18 Jan 2018 21:39:31 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 18 Jan 2018 21:39:59 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 18 Jan 2018 21:39:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 18 Jan 2018 21:40:00 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 18 Jan 2018 21:40:01 GMT
RUN rm /var/www/html/index.html
# Thu, 18 Jan 2018 21:40:01 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 18 Jan 2018 21:40:01 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 21:48:24 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 21:48:25 GMT
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
	-	`sha256:527e922a0b887b1d81f2e1205dd8d15a2c40c05c02f95c94ad7b7f2b531575ae`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff92ec4a8970545559bf1e8695a2f28d691acbb8f4bc07565a4e42263a48954b`  
		Last Modified: Thu, 18 Jan 2018 22:41:01 GMT  
		Size: 254.1 MB (254072667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3d2e4ba522129d2b913c3d4ab41897eb9e84c42f386d4544aff7d813ecf13`  
		Last Modified: Thu, 18 Jan 2018 22:38:10 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad81d3d8c7791e37e89402bd8bbbef2f496f2ce058c36822e4a109331358d6ae`  
		Last Modified: Thu, 18 Jan 2018 22:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ade6aa5f42a7d9979d37dafd8d4f9fd5ad82ef062f9e50fe34032cefc76042`  
		Last Modified: Thu, 18 Jan 2018 22:38:08 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d33e6b30724d56270f5d001b688f064eb449b9035205f220da0723f1931ab4`  
		Last Modified: Thu, 18 Jan 2018 22:38:07 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419089f7520160d360408c84dc001d94ec1b99b35564cc26155d0ddbc6e287b`  
		Last Modified: Thu, 18 Jan 2018 22:38:09 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2daf0c74347fab5023c32e3962794220d0c7e9355d4ca1adacfedae89d2fcd`  
		Last Modified: Thu, 18 Jan 2018 22:38:08 GMT  
		Size: 487.8 KB (487777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19663d2eda19601d058ff2527e7f2bc3398fc7878c39446507503d47bf693d`  
		Last Modified: Thu, 18 Jan 2018 22:38:11 GMT  
		Size: 13.9 MB (13854103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59cd96be43590787fbfaa7508611bf55664ca42f1eb4e00190a90bd19fc8a383`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42878879f7916cb697a550bbc06f482d6cff8e4de52aa326dc5e5df0a7c1cb8`  
		Last Modified: Thu, 18 Jan 2018 22:38:06 GMT  
		Size: 2.5 KB (2542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd6b48396e0c247f46375ed8203f717d8221d177ca358a641bf78c7beb0d9a2`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5717325ec0e2eb58e8949a305bcbbbbe0ae6564f6ba42f423100df8456986c54`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:b5a34aa4ac5ec5e6bec3e0b08ca638e6915c75fc89496ec4e8ee449754f829f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:04c2c0258ec2388965a8a4994f5bae50086fc6ad132e96904f90b79c400ed21c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337776828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e8090870c88a07b00a55ed0b7eea6341cef1f96330c88f24f51c22ecee9672e`
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
# Thu, 18 Jan 2018 21:18:28 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 21:20:18 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 21:32:19 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Thu, 18 Jan 2018 21:32:19 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 21:32:21 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 21:32:22 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 21:32:22 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 18 Jan 2018 21:32:22 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 18 Jan 2018 21:32:24 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 18 Jan 2018 21:32:24 GMT
WORKDIR /usr/local/zs-init
# Thu, 18 Jan 2018 21:32:27 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 18 Jan 2018 21:32:55 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 18 Jan 2018 21:32:55 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 18 Jan 2018 21:32:55 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 18 Jan 2018 21:32:56 GMT
RUN rm /var/www/html/index.html
# Thu, 18 Jan 2018 21:32:57 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 18 Jan 2018 21:32:57 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 21:32:57 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 21:32:57 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 21:32:58 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 21:32:58 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 21:32:58 GMT
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
	-	`sha256:527e922a0b887b1d81f2e1205dd8d15a2c40c05c02f95c94ad7b7f2b531575ae`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2cf057463c904db7fa2139e652e984f959d8381479bb36c946b3c2e4be28fd3`  
		Last Modified: Thu, 18 Jan 2018 22:31:17 GMT  
		Size: 250.4 MB (250369853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c05b83e68d1d07bf3d8ce3672a8a053d50cc2f059f04a3e5ce25b3c820899e`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51a6ce51ca6a077a7e6b5d524e9c905d55a4da68f66df0036b77dac522c633e6`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c7fb55d20bf629654938375fd51554fd3e845366ed9e66a989414c3cf90927`  
		Last Modified: Thu, 18 Jan 2018 22:30:24 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60203d0616d9ff8c759a086accbf03c63aea63323e4597a120ee98cbfd6908bc`  
		Last Modified: Thu, 18 Jan 2018 22:30:24 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32815473b68007d0363fa1e700b61234a507d9b068a804ae754c1d1b0956779f`  
		Last Modified: Thu, 18 Jan 2018 22:30:23 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7999f45c7356ea689de7248360f1dac3223bfe1ad393198e6be61e8db7a3410f`  
		Last Modified: Thu, 18 Jan 2018 22:30:24 GMT  
		Size: 487.8 KB (487775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c51c5939e09f26bbbf9d012426e3172b46bd668400669c8632fd2e0769136a`  
		Last Modified: Thu, 18 Jan 2018 22:30:28 GMT  
		Size: 13.9 MB (13857608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f105baa5b6116e07c53a655cdadc7a8fb37d7c4df70f7a6913cca7f0ee9a4020`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5b89f3d43c525d35ba0d2e3111b3979f2cc7aba7bf618e5d818fc69f494d9e1`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 2.5 KB (2538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf0e66de6ff2c139e160007540218821eb14b8e5cee4d4c8bfab43cd9674bbb`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcfdf64a9f4aea119ce09b24dd2cd405e6944a21ab0a4b1c3dde137ce4857b01`  
		Last Modified: Thu, 18 Jan 2018 22:30:21 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:a2ac71b378152c66cf6437e69584f7268820d99f5057cbd0eab6f2415e426c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:235f0a3711ce608de86a8646556942e9da6a22bbcab92bc9e96685d067f66666
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.5 MB (341476144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5064d20b51e2c8f938584d419e00600b73460e6535e619a3477820dc4c616f52`
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
# Thu, 18 Jan 2018 21:18:28 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5.8/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 18 Jan 2018 21:35:41 GMT
RUN apt-get update && apt-get install -y curl libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 18 Jan 2018 21:39:23 GMT
COPY file:600eecb7e31561caebcef5617a4923b3065c52e6ae17fcce39ffdcc8ca6c41db in /etc/ 
# Thu, 18 Jan 2018 21:39:23 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 18 Jan 2018 21:39:25 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 18 Jan 2018 21:39:25 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 18 Jan 2018 21:39:26 GMT
ENV ZS_INIT_VERSION=0.3
# Thu, 18 Jan 2018 21:39:26 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Thu, 18 Jan 2018 21:39:28 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 18 Jan 2018 21:39:28 GMT
WORKDIR /usr/local/zs-init
# Thu, 18 Jan 2018 21:39:31 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 18 Jan 2018 21:39:59 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 18 Jan 2018 21:39:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 18 Jan 2018 21:40:00 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 18 Jan 2018 21:40:01 GMT
RUN rm /var/www/html/index.html
# Thu, 18 Jan 2018 21:40:01 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 18 Jan 2018 21:40:01 GMT
EXPOSE 80/tcp
# Thu, 18 Jan 2018 21:48:24 GMT
EXPOSE 443/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
EXPOSE 10081/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
EXPOSE 10082/tcp
# Thu, 18 Jan 2018 21:48:25 GMT
WORKDIR /var/www/html
# Thu, 18 Jan 2018 21:48:25 GMT
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
	-	`sha256:527e922a0b887b1d81f2e1205dd8d15a2c40c05c02f95c94ad7b7f2b531575ae`  
		Last Modified: Thu, 18 Jan 2018 22:30:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff92ec4a8970545559bf1e8695a2f28d691acbb8f4bc07565a4e42263a48954b`  
		Last Modified: Thu, 18 Jan 2018 22:41:01 GMT  
		Size: 254.1 MB (254072667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d3d2e4ba522129d2b913c3d4ab41897eb9e84c42f386d4544aff7d813ecf13`  
		Last Modified: Thu, 18 Jan 2018 22:38:10 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad81d3d8c7791e37e89402bd8bbbef2f496f2ce058c36822e4a109331358d6ae`  
		Last Modified: Thu, 18 Jan 2018 22:38:10 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ade6aa5f42a7d9979d37dafd8d4f9fd5ad82ef062f9e50fe34032cefc76042`  
		Last Modified: Thu, 18 Jan 2018 22:38:08 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d33e6b30724d56270f5d001b688f064eb449b9035205f220da0723f1931ab4`  
		Last Modified: Thu, 18 Jan 2018 22:38:07 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419089f7520160d360408c84dc001d94ec1b99b35564cc26155d0ddbc6e287b`  
		Last Modified: Thu, 18 Jan 2018 22:38:09 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2daf0c74347fab5023c32e3962794220d0c7e9355d4ca1adacfedae89d2fcd`  
		Last Modified: Thu, 18 Jan 2018 22:38:08 GMT  
		Size: 487.8 KB (487777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f19663d2eda19601d058ff2527e7f2bc3398fc7878c39446507503d47bf693d`  
		Last Modified: Thu, 18 Jan 2018 22:38:11 GMT  
		Size: 13.9 MB (13854103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59cd96be43590787fbfaa7508611bf55664ca42f1eb4e00190a90bd19fc8a383`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42878879f7916cb697a550bbc06f482d6cff8e4de52aa326dc5e5df0a7c1cb8`  
		Last Modified: Thu, 18 Jan 2018 22:38:06 GMT  
		Size: 2.5 KB (2542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd6b48396e0c247f46375ed8203f717d8221d177ca358a641bf78c7beb0d9a2`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5717325ec0e2eb58e8949a305bcbbbbe0ae6564f6ba42f423100df8456986c54`  
		Last Modified: Thu, 18 Jan 2018 22:38:05 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:b83df7d314d9cf3f8c89745a88b90a3bdf8448c26f19f3e0fa2dede6cb7e50f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

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
