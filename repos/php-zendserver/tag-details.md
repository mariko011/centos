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
$ docker pull php-zendserver@sha256:a8375c6c4b03a9c954e96c37387a09c8a57e9b0246d853caec8caff818efad10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:0a180eb1c2869d32c0f92aafdcf22d77d6055ef9a0517edb1ee61f2ad8dd4c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (296008262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:931f8f5e2c5c09998db3d0ddd2e15f6e6fe2b8c19403d8d9e357a9270df22ac4`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:27:32 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Tue, 12 Sep 2017 20:27:32 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Tue, 12 Sep 2017 20:27:32 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Tue, 12 Sep 2017 20:27:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:27:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:29:31 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:29:33 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:29:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:29:34 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:29:34 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 10060/tcp
# Tue, 12 Sep 2017 20:29:36 GMT
EXPOSE 10061/tcp
# Tue, 12 Sep 2017 20:29:36 GMT
EXPOSE 10062/tcp
# Tue, 12 Sep 2017 20:29:36 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:29:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373c5aa341329ca587d50117bb9501c12a11b36efc1694c672af6f3989b1284`  
		Last Modified: Tue, 12 Sep 2017 20:36:29 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79adb4ad721b86790fff9f33b62201d5e197608c3cd1ce6741a331346d417996`  
		Last Modified: Tue, 12 Sep 2017 20:36:27 GMT  
		Size: 11.9 KB (11918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8391c8850c03f343c17730614bb8e891636f0f3bd1abfcfc7fb5f801fcfea1`  
		Last Modified: Tue, 12 Sep 2017 20:36:27 GMT  
		Size: 938.4 KB (938407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d61c71bffc22a2529ff21a64f7e44e1025510b0abeec731b535cdabbaccb385`  
		Last Modified: Tue, 12 Sep 2017 20:36:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00996441db7ca6d8f2294825b2da681e07aaa1d3dd499e8709fa0bcd493e52ef`  
		Last Modified: Tue, 12 Sep 2017 20:36:25 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b202cccc25f79971759b3f7482252f174a5d527fb080eb117c1a9f59d1048f1`  
		Last Modified: Tue, 12 Sep 2017 20:37:28 GMT  
		Size: 227.9 MB (227853177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8dd2f3ce80223cdf70524b58d378cdf0bafec994435aabf26b1184e5c325a1`  
		Last Modified: Tue, 12 Sep 2017 20:36:24 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0b8cc9cec1190a0505a53690b1c52fbcb9573f7e6d71094df34c1865a583cf`  
		Last Modified: Tue, 12 Sep 2017 20:36:25 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438c96d066733c957e83fbdc7b9244c9d8c3cac4eec1b8fceac52503895570d2`  
		Last Modified: Tue, 12 Sep 2017 20:36:26 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:acf4a51bbdba3d4c1254aa75806ee36295ce03f9f6f4d8ac2beb87ca8abea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:3a1664f2beae1d2d503c7eae0f39b48ce487874bd450d47a1e58ac20e7e9895b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.6 MB (335635312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9641be05e17efb72ac606e68a905517567720262ede86080580fd7873653002a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:20:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:23:10 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:23:11 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:23:12 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:23:13 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:23:14 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:23:14 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:23:14 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:23:25 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:23:27 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:23:27 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:23:33 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:24:06 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:24:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:24:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:24:08 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:24:08 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:24:08 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:24:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d250de80c4ae609bf9d37a451d200b94bf14ad01edf57bc8318e6291e89941c`  
		Last Modified: Tue, 12 Sep 2017 20:33:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c45e1225a8681c96a72c0df4683d9b32c68e50f3854df27fe091130f6e773b7`  
		Last Modified: Tue, 12 Sep 2017 20:34:38 GMT  
		Size: 253.7 MB (253691179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b47ac977f979ac925023360f00a896e83b9f60be3f368f207aa3a1718dd7f1`  
		Last Modified: Tue, 12 Sep 2017 20:33:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0017ef3be6f6040c9d092a307617553c7a6c4ee19551b6cab1c8f4640468e6`  
		Last Modified: Tue, 12 Sep 2017 20:33:26 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4b5d188ac0f7fb13fcc83d1e95a45d974afbc86faeac9347cae9364b11cff5`  
		Last Modified: Tue, 12 Sep 2017 20:33:24 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a3c4410fb82ac2fc850984829d29ac368dd8527cc59d2f10a94f6e943bebb`  
		Last Modified: Tue, 12 Sep 2017 20:33:22 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84b0dfe2f0dfb6f53904aaec4ba8d868284252465ee12f12b48873114d2e68e`  
		Last Modified: Tue, 12 Sep 2017 20:33:23 GMT  
		Size: 911.7 KB (911698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f26f87f8b11b4ed5418bc298bf8366e6f4cc967c4b51d352d55745d51a9c50`  
		Last Modified: Tue, 12 Sep 2017 20:33:22 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d096f673194d00146044c16c2d885dd5ea2a07805d0b6f15fe5cb317acf23d`  
		Last Modified: Tue, 12 Sep 2017 20:33:22 GMT  
		Size: 494.1 KB (494087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce88a93115801824e750eec61ceeb151e07cecd4d5be7d9f21d5f9b5e9a713e8`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.3 MB (13298231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac14e4f27e015c4a2427c0100cbf0b55f08f110d75e1443f63f5bf32ae27deb`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7058fb943318beb34f767d2287f6bfac94e213508f64e19482f16cd2494c242`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8babcc06346db13082ba1b3bd29b0806e50f2a5e9448147b0b382512f87a2b79`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a51a00f1c524c2a389ffe26816c4c7d9cdc9d3eaf846bc4d5f433a0c323508e`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:8bab48a1aedfb115b1474e7805d81c5e0574bf10038ae190dd1952e2a5866d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:e4245a03ece201129236669b23eff2b913095eed1139879daad68571c469db88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335837990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d140daa000e187a300d4eef680dacd1a0a37cc9d7fb0cf5736e12ee9aea2a08c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:20:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:26:44 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:26:45 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:26:45 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:26:46 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:26:47 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:26:47 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:26:48 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:26:54 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:26:55 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:26:55 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:27:01 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:27:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:27:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:27:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:27:30 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:27:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:27:30 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:27:32 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d250de80c4ae609bf9d37a451d200b94bf14ad01edf57bc8318e6291e89941c`  
		Last Modified: Tue, 12 Sep 2017 20:33:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6caa363a045122939340fbb1ea57d4446faab178933fc4830c7326f6ef94f`  
		Last Modified: Tue, 12 Sep 2017 20:36:08 GMT  
		Size: 253.9 MB (253857225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfefa483ba7b6758270be93513120c6ff72af31eb72c2237874b9bbeec186a70`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b47b6c78fb6ac777892bec4a861789b0ea88a06e4547ac5dffc3535ea6dbfa`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98332b924ace1203fad84affd40e33cf7591edb8f48aaa94ef76a6a048e2c0f6`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f7b21102a9597e3242537e8157b80b4d7e4fbec2d00cde1d142458d693810`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c7743952a148a4aa205079b722463e65813b9e4c134c01e4a991a8ccb5fa9`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 913.5 KB (913532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4ba1a57c8b453f03a11b7ada73444c90eb75eedec332497c143e97b2d4111f`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c1d2abf871b3e65ca92d1c5b319e34a9d733ffd022af8e736e73c1a1fbff07`  
		Last Modified: Tue, 12 Sep 2017 20:34:52 GMT  
		Size: 494.1 KB (494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69f85ed2d7548fe7b024cf820aa8003f6a6c7ca9d7c8f57a132faa4edd17451`  
		Last Modified: Tue, 12 Sep 2017 20:34:57 GMT  
		Size: 13.3 MB (13333014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac046d06434b93c233ee7427f57ce4403ac611e8bfa1b6c616a6bba95d9817dd`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca20067906128b98f473947102e5656afd532414caa8ec35550ee0e8595d03`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1ff0c4de8a75e83d80c610f01ef3edfd575bbacb1fe9f6c154e1c42bd7bd`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d0ee6e2ab7d272214bec7e7d10822506f96b54ea5175fdcb143f792df4b0c`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:a8375c6c4b03a9c954e96c37387a09c8a57e9b0246d853caec8caff818efad10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:0a180eb1c2869d32c0f92aafdcf22d77d6055ef9a0517edb1ee61f2ad8dd4c6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (296008262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:931f8f5e2c5c09998db3d0ddd2e15f6e6fe2b8c19403d8d9e357a9270df22ac4`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:27:32 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Tue, 12 Sep 2017 20:27:32 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Tue, 12 Sep 2017 20:27:32 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Tue, 12 Sep 2017 20:27:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:27:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:29:31 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:29:33 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:29:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:29:34 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:29:34 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:29:35 GMT
EXPOSE 10060/tcp
# Tue, 12 Sep 2017 20:29:36 GMT
EXPOSE 10061/tcp
# Tue, 12 Sep 2017 20:29:36 GMT
EXPOSE 10062/tcp
# Tue, 12 Sep 2017 20:29:36 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:29:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8373c5aa341329ca587d50117bb9501c12a11b36efc1694c672af6f3989b1284`  
		Last Modified: Tue, 12 Sep 2017 20:36:29 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79adb4ad721b86790fff9f33b62201d5e197608c3cd1ce6741a331346d417996`  
		Last Modified: Tue, 12 Sep 2017 20:36:27 GMT  
		Size: 11.9 KB (11918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8391c8850c03f343c17730614bb8e891636f0f3bd1abfcfc7fb5f801fcfea1`  
		Last Modified: Tue, 12 Sep 2017 20:36:27 GMT  
		Size: 938.4 KB (938407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d61c71bffc22a2529ff21a64f7e44e1025510b0abeec731b535cdabbaccb385`  
		Last Modified: Tue, 12 Sep 2017 20:36:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00996441db7ca6d8f2294825b2da681e07aaa1d3dd499e8709fa0bcd493e52ef`  
		Last Modified: Tue, 12 Sep 2017 20:36:25 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b202cccc25f79971759b3f7482252f174a5d527fb080eb117c1a9f59d1048f1`  
		Last Modified: Tue, 12 Sep 2017 20:37:28 GMT  
		Size: 227.9 MB (227853177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8dd2f3ce80223cdf70524b58d378cdf0bafec994435aabf26b1184e5c325a1`  
		Last Modified: Tue, 12 Sep 2017 20:36:24 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0b8cc9cec1190a0505a53690b1c52fbcb9573f7e6d71094df34c1865a583cf`  
		Last Modified: Tue, 12 Sep 2017 20:36:25 GMT  
		Size: 309.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:438c96d066733c957e83fbdc7b9244c9d8c3cac4eec1b8fceac52503895570d2`  
		Last Modified: Tue, 12 Sep 2017 20:36:26 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:8bab48a1aedfb115b1474e7805d81c5e0574bf10038ae190dd1952e2a5866d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:e4245a03ece201129236669b23eff2b913095eed1139879daad68571c469db88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335837990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d140daa000e187a300d4eef680dacd1a0a37cc9d7fb0cf5736e12ee9aea2a08c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:20:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:26:44 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:26:45 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:26:45 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:26:46 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:26:47 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:26:47 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:26:48 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:26:54 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:26:55 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:26:55 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:27:01 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:27:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:27:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:27:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:27:30 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:27:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:27:30 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:27:32 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d250de80c4ae609bf9d37a451d200b94bf14ad01edf57bc8318e6291e89941c`  
		Last Modified: Tue, 12 Sep 2017 20:33:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6caa363a045122939340fbb1ea57d4446faab178933fc4830c7326f6ef94f`  
		Last Modified: Tue, 12 Sep 2017 20:36:08 GMT  
		Size: 253.9 MB (253857225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfefa483ba7b6758270be93513120c6ff72af31eb72c2237874b9bbeec186a70`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b47b6c78fb6ac777892bec4a861789b0ea88a06e4547ac5dffc3535ea6dbfa`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98332b924ace1203fad84affd40e33cf7591edb8f48aaa94ef76a6a048e2c0f6`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f7b21102a9597e3242537e8157b80b4d7e4fbec2d00cde1d142458d693810`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c7743952a148a4aa205079b722463e65813b9e4c134c01e4a991a8ccb5fa9`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 913.5 KB (913532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4ba1a57c8b453f03a11b7ada73444c90eb75eedec332497c143e97b2d4111f`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c1d2abf871b3e65ca92d1c5b319e34a9d733ffd022af8e736e73c1a1fbff07`  
		Last Modified: Tue, 12 Sep 2017 20:34:52 GMT  
		Size: 494.1 KB (494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69f85ed2d7548fe7b024cf820aa8003f6a6c7ca9d7c8f57a132faa4edd17451`  
		Last Modified: Tue, 12 Sep 2017 20:34:57 GMT  
		Size: 13.3 MB (13333014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac046d06434b93c233ee7427f57ce4403ac611e8bfa1b6c616a6bba95d9817dd`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca20067906128b98f473947102e5656afd532414caa8ec35550ee0e8595d03`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1ff0c4de8a75e83d80c610f01ef3edfd575bbacb1fe9f6c154e1c42bd7bd`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d0ee6e2ab7d272214bec7e7d10822506f96b54ea5175fdcb143f792df4b0c`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:acf4a51bbdba3d4c1254aa75806ee36295ce03f9f6f4d8ac2beb87ca8abea38b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:3a1664f2beae1d2d503c7eae0f39b48ce487874bd450d47a1e58ac20e7e9895b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.6 MB (335635312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9641be05e17efb72ac606e68a905517567720262ede86080580fd7873653002a`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:20:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:23:10 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:23:11 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:23:12 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:23:13 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:23:14 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:23:14 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:23:14 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:23:25 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:23:27 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:23:27 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:23:33 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:24:06 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:24:06 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:24:07 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:24:08 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:24:08 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:24:08 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:24:09 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:24:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d250de80c4ae609bf9d37a451d200b94bf14ad01edf57bc8318e6291e89941c`  
		Last Modified: Tue, 12 Sep 2017 20:33:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c45e1225a8681c96a72c0df4683d9b32c68e50f3854df27fe091130f6e773b7`  
		Last Modified: Tue, 12 Sep 2017 20:34:38 GMT  
		Size: 253.7 MB (253691179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b47ac977f979ac925023360f00a896e83b9f60be3f368f207aa3a1718dd7f1`  
		Last Modified: Tue, 12 Sep 2017 20:33:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0017ef3be6f6040c9d092a307617553c7a6c4ee19551b6cab1c8f4640468e6`  
		Last Modified: Tue, 12 Sep 2017 20:33:26 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4b5d188ac0f7fb13fcc83d1e95a45d974afbc86faeac9347cae9364b11cff5`  
		Last Modified: Tue, 12 Sep 2017 20:33:24 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138a3c4410fb82ac2fc850984829d29ac368dd8527cc59d2f10a94f6e943bebb`  
		Last Modified: Tue, 12 Sep 2017 20:33:22 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84b0dfe2f0dfb6f53904aaec4ba8d868284252465ee12f12b48873114d2e68e`  
		Last Modified: Tue, 12 Sep 2017 20:33:23 GMT  
		Size: 911.7 KB (911698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f26f87f8b11b4ed5418bc298bf8366e6f4cc967c4b51d352d55745d51a9c50`  
		Last Modified: Tue, 12 Sep 2017 20:33:22 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d096f673194d00146044c16c2d885dd5ea2a07805d0b6f15fe5cb317acf23d`  
		Last Modified: Tue, 12 Sep 2017 20:33:22 GMT  
		Size: 494.1 KB (494087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce88a93115801824e750eec61ceeb151e07cecd4d5be7d9f21d5f9b5e9a713e8`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.3 MB (13298231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ac14e4f27e015c4a2427c0100cbf0b55f08f110d75e1443f63f5bf32ae27deb`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7058fb943318beb34f767d2287f6bfac94e213508f64e19482f16cd2494c242`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 2.5 KB (2539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8babcc06346db13082ba1b3bd29b0806e50f2a5e9448147b0b382512f87a2b79`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a51a00f1c524c2a389ffe26816c4c7d9cdc9d3eaf846bc4d5f433a0c323508e`  
		Last Modified: Tue, 12 Sep 2017 20:33:20 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:8bab48a1aedfb115b1474e7805d81c5e0574bf10038ae190dd1952e2a5866d88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:e4245a03ece201129236669b23eff2b913095eed1139879daad68571c469db88
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335837990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d140daa000e187a300d4eef680dacd1a0a37cc9d7fb0cf5736e12ee9aea2a08c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:20:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:26:44 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:26:45 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:26:45 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:26:46 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:26:47 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:26:47 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:26:48 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:26:54 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:26:55 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:26:55 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:27:01 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:27:28 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:27:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:27:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:27:30 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:27:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:27:30 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:27:31 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:27:32 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d250de80c4ae609bf9d37a451d200b94bf14ad01edf57bc8318e6291e89941c`  
		Last Modified: Tue, 12 Sep 2017 20:33:26 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab6caa363a045122939340fbb1ea57d4446faab178933fc4830c7326f6ef94f`  
		Last Modified: Tue, 12 Sep 2017 20:36:08 GMT  
		Size: 253.9 MB (253857225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfefa483ba7b6758270be93513120c6ff72af31eb72c2237874b9bbeec186a70`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b47b6c78fb6ac777892bec4a861789b0ea88a06e4547ac5dffc3535ea6dbfa`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98332b924ace1203fad84affd40e33cf7591edb8f48aaa94ef76a6a048e2c0f6`  
		Last Modified: Tue, 12 Sep 2017 20:34:55 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569f7b21102a9597e3242537e8157b80b4d7e4fbec2d00cde1d142458d693810`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993c7743952a148a4aa205079b722463e65813b9e4c134c01e4a991a8ccb5fa9`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 913.5 KB (913532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4ba1a57c8b453f03a11b7ada73444c90eb75eedec332497c143e97b2d4111f`  
		Last Modified: Tue, 12 Sep 2017 20:34:53 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c1d2abf871b3e65ca92d1c5b319e34a9d733ffd022af8e736e73c1a1fbff07`  
		Last Modified: Tue, 12 Sep 2017 20:34:52 GMT  
		Size: 494.1 KB (494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69f85ed2d7548fe7b024cf820aa8003f6a6c7ca9d7c8f57a132faa4edd17451`  
		Last Modified: Tue, 12 Sep 2017 20:34:57 GMT  
		Size: 13.3 MB (13333014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac046d06434b93c233ee7427f57ce4403ac611e8bfa1b6c616a6bba95d9817dd`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 13.4 KB (13358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca20067906128b98f473947102e5656afd532414caa8ec35550ee0e8595d03`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0a1ff0c4de8a75e83d80c610f01ef3edfd575bbacb1fe9f6c154e1c42bd7bd`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1d0ee6e2ab7d272214bec7e7d10822506f96b54ea5175fdcb143f792df4b0c`  
		Last Modified: Tue, 12 Sep 2017 20:34:50 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:2c8e1906c1803440ea396b7265387f1b5bd66dc6e384e31249ff2e9b97c85d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f7af5736c9299fd7ae7b73c1d496f3228e02e453881cfefa33dc3bc99f664808
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.3 MB (419287678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c447efb5e6aeb4cbf56cf9a19fc4468d17d7e0d1d33500956516a96452b9050d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:29:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:32:09 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:32:10 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:32:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:32:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:32:12 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:32:12 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:32:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:32:21 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:32:22 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:32:23 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:32:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:32:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:32:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:32:59 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:33:00 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:33:01 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:33:02 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:33:02 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ee8e481f5df2cb29924d4d14f1f35582b7d70253a457e11a78c6362e8743c2`  
		Last Modified: Tue, 12 Sep 2017 20:37:50 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3a6dd2cc2363f7c4af45766575e5b5d746100aaf8f2db70381a47edcb0ddb`  
		Last Modified: Tue, 12 Sep 2017 20:39:27 GMT  
		Size: 337.3 MB (337308712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f2ce1d5f34dd5bd907d192f005ae78314bb29714c30389d41264758e4b63ad`  
		Last Modified: Tue, 12 Sep 2017 20:37:48 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e187c23b00ef3dfbdd5f2ac96e3c350633a46c171656414d068ad91ffb1d51af`  
		Last Modified: Tue, 12 Sep 2017 20:37:49 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c924ae52cd3f0154eed7c6fa221c8a23ed1d5ddc55fd672c87a5a28b782ce85`  
		Last Modified: Tue, 12 Sep 2017 20:37:47 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e090429e1c7c53f65b0893290b8f7b374c577fd97d6e3e3b40b4661b51908ee`  
		Last Modified: Tue, 12 Sep 2017 20:37:46 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cdb51d29ed2681d44eb8f841f1de571af5dd6e0ae1a534aff9e72cf94d2d42`  
		Last Modified: Tue, 12 Sep 2017 20:37:46 GMT  
		Size: 907.5 KB (907450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b587571875ba1832e54a334dc4dc81f0f80c8bb7b5325e3613ba4f14798aa1e6`  
		Last Modified: Tue, 12 Sep 2017 20:37:45 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4fb562de269470431de76cc536e2b7bed81bd135ef5dede972d2af88ce1e4a`  
		Last Modified: Tue, 12 Sep 2017 20:37:45 GMT  
		Size: 495.9 KB (495862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfc622b2830c89016a65a75e5da4109aa84e7026a8bd5af2eb7c323350c1ae9`  
		Last Modified: Tue, 12 Sep 2017 20:37:50 GMT  
		Size: 13.3 MB (13335528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22731475161dea00df424ed8103d1c3d21b71f015631c1709515ed81b5a2bde7`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c4a5499f49d94449fef61786f2a222776f81c68f730e2648f14554b925fadc`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bf2dd0b67548fbada944d0f9bb732672e456c577005441fb12c80a1a0a05ae`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126e9285cc8f693f14397b0154e8eacda4a81abca24d2170542576a818433132`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:2c8e1906c1803440ea396b7265387f1b5bd66dc6e384e31249ff2e9b97c85d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:f7af5736c9299fd7ae7b73c1d496f3228e02e453881cfefa33dc3bc99f664808
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.3 MB (419287678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c447efb5e6aeb4cbf56cf9a19fc4468d17d7e0d1d33500956516a96452b9050d`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:24 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Thu, 10 Aug 2017 20:13:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:27 GMT
CMD ["/bin/bash"]
# Tue, 12 Sep 2017 20:20:37 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Tue, 12 Sep 2017 20:29:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Tue, 12 Sep 2017 20:32:09 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Tue, 12 Sep 2017 20:32:10 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Tue, 12 Sep 2017 20:32:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Tue, 12 Sep 2017 20:32:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Tue, 12 Sep 2017 20:32:12 GMT
RUN /usr/sbin/a2enmod headers
# Tue, 12 Sep 2017 20:32:12 GMT
ENV ZS_INIT_VERSION=0.3
# Tue, 12 Sep 2017 20:32:12 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Tue, 12 Sep 2017 20:32:21 GMT
RUN apt-get install -y curl
# Tue, 12 Sep 2017 20:32:22 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Tue, 12 Sep 2017 20:32:23 GMT
WORKDIR /usr/local/zs-init
# Tue, 12 Sep 2017 20:32:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Tue, 12 Sep 2017 20:32:58 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Tue, 12 Sep 2017 20:32:59 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Tue, 12 Sep 2017 20:32:59 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Tue, 12 Sep 2017 20:33:00 GMT
RUN rm /var/www/html/index.html
# Tue, 12 Sep 2017 20:33:01 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 80/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 443/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 10081/tcp
# Tue, 12 Sep 2017 20:33:01 GMT
EXPOSE 10082/tcp
# Tue, 12 Sep 2017 20:33:02 GMT
WORKDIR /var/www/html
# Tue, 12 Sep 2017 20:33:02 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd2b2e92c5f88b4eb44ab49c76d3fa838cde05820161719f29390432c706e0a`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 72.6 KB (72623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ed1e3efabbfedf96b8b2b9fd44d3f358c9c1ea36a91a38e428d4280f5fa5b4`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a220dbf88993d74c47e69cb53f7c602e0f1b88916c5240d27f74287b08b1e14d`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c164185602768e03308a28a019a190ef4c082d63e6f8d89f20d5db6d9c5ec3`  
		Last Modified: Thu, 10 Aug 2017 20:14:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf7bdb6c51682f9168c0eef2d08df6a47728ea6a91a44cd35084866ce5114526`  
		Last Modified: Tue, 12 Sep 2017 20:33:27 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ee8e481f5df2cb29924d4d14f1f35582b7d70253a457e11a78c6362e8743c2`  
		Last Modified: Tue, 12 Sep 2017 20:37:50 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf3a6dd2cc2363f7c4af45766575e5b5d746100aaf8f2db70381a47edcb0ddb`  
		Last Modified: Tue, 12 Sep 2017 20:39:27 GMT  
		Size: 337.3 MB (337308712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f2ce1d5f34dd5bd907d192f005ae78314bb29714c30389d41264758e4b63ad`  
		Last Modified: Tue, 12 Sep 2017 20:37:48 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e187c23b00ef3dfbdd5f2ac96e3c350633a46c171656414d068ad91ffb1d51af`  
		Last Modified: Tue, 12 Sep 2017 20:37:49 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c924ae52cd3f0154eed7c6fa221c8a23ed1d5ddc55fd672c87a5a28b782ce85`  
		Last Modified: Tue, 12 Sep 2017 20:37:47 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e090429e1c7c53f65b0893290b8f7b374c577fd97d6e3e3b40b4661b51908ee`  
		Last Modified: Tue, 12 Sep 2017 20:37:46 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0cdb51d29ed2681d44eb8f841f1de571af5dd6e0ae1a534aff9e72cf94d2d42`  
		Last Modified: Tue, 12 Sep 2017 20:37:46 GMT  
		Size: 907.5 KB (907450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b587571875ba1832e54a334dc4dc81f0f80c8bb7b5325e3613ba4f14798aa1e6`  
		Last Modified: Tue, 12 Sep 2017 20:37:45 GMT  
		Size: 18.8 KB (18830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4fb562de269470431de76cc536e2b7bed81bd135ef5dede972d2af88ce1e4a`  
		Last Modified: Tue, 12 Sep 2017 20:37:45 GMT  
		Size: 495.9 KB (495862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfc622b2830c89016a65a75e5da4109aa84e7026a8bd5af2eb7c323350c1ae9`  
		Last Modified: Tue, 12 Sep 2017 20:37:50 GMT  
		Size: 13.3 MB (13335528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22731475161dea00df424ed8103d1c3d21b71f015631c1709515ed81b5a2bde7`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 13.4 KB (13361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c4a5499f49d94449fef61786f2a222776f81c68f730e2648f14554b925fadc`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bf2dd0b67548fbada944d0f9bb732672e456c577005441fb12c80a1a0a05ae`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:126e9285cc8f693f14397b0154e8eacda4a81abca24d2170542576a818433132`  
		Last Modified: Tue, 12 Sep 2017 20:37:43 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
