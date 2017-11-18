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
$ docker pull php-zendserver@sha256:3e26a96e1a6bbbfc7781178c8b87c77d5873d6baa88c6521037054cb84cf0d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:6d6b23b1de2b13d86c5f4706acdd53a49191eff861e7c1e0f1d3893291412a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.8 MB (301758040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa89a4a7f45afde8c6c9aba386fd93b45007a3a2bacddaf62afe4c4cf8cae00`
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
# Fri, 17 Nov 2017 22:29:40 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Fri, 17 Nov 2017 22:29:40 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 17 Nov 2017 22:29:41 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 17 Nov 2017 22:29:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 17 Nov 2017 22:29:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:31:30 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:31:32 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:31:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:31:33 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 10060/tcp
# Fri, 17 Nov 2017 22:31:35 GMT
EXPOSE 10061/tcp
# Fri, 17 Nov 2017 22:31:35 GMT
EXPOSE 10062/tcp
# Fri, 17 Nov 2017 22:31:35 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:31:35 GMT
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
	-	`sha256:43e79f0502c2b6b9524684528ab033e712b815afafa3552b6a196a0890d8abdc`  
		Last Modified: Fri, 17 Nov 2017 22:48:16 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c827767ed3fb155645331b59f6829d204db61a373712113284f5614eea84d7cc`  
		Last Modified: Fri, 17 Nov 2017 22:48:16 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a48acc510eabfde2c1f5df3133a662d0dffbb71b2eb59d93c46ecc520488e22`  
		Last Modified: Fri, 17 Nov 2017 22:48:15 GMT  
		Size: 938.4 KB (938393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d243c18f0944c32cf2649231a4726ae2e0a70e5f40409755a3397af2b57d5b`  
		Last Modified: Fri, 17 Nov 2017 22:48:15 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6b0c0a3a29ff680a61327f63c0175d50cae5a2153c218e8caf594ecf815e59`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258e9eb900fe7d184d1518fd73f95f9851506c0159c26b1b9b79201f4c526f9`  
		Last Modified: Fri, 17 Nov 2017 22:48:59 GMT  
		Size: 227.9 MB (227893215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016386d8735198283870059e1ac35a25142301618b955ab558aea1414b28bdc`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d62383c09236a04ec061b3ad74f9d2558f15530f30df246521c9228073ed`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234c4a81eabbf13586b0cbe7de748728089d71c9bdf202c0f9d5f9a59d7ebbbd`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:8454f5b14bddf632b74faf315f10d6f8994331718cc2a6c97e0d852c28ea9a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:387786c5c6466ea60cc358c9f7b9fb075c795ac018a9c05a279b7039fb56d210
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341993546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2003a8db5314b94a1c3b38525751e1b8de251a579533e30a04a19fea71766b`
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
# Fri, 17 Nov 2017 22:21:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:23:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:24:59 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Fri, 17 Nov 2017 22:25:00 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:25:01 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:25:02 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:25:02 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 17 Nov 2017 22:25:02 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 17 Nov 2017 22:25:07 GMT
RUN apt-get install -y curl
# Fri, 17 Nov 2017 22:25:09 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 17 Nov 2017 22:25:09 GMT
WORKDIR /usr/local/zs-init
# Fri, 17 Nov 2017 22:25:14 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 17 Nov 2017 22:25:42 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 17 Nov 2017 22:25:42 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 17 Nov 2017 22:25:42 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 17 Nov 2017 22:25:43 GMT
RUN rm /var/www/html/index.html
# Fri, 17 Nov 2017 22:25:43 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:25:45 GMT
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
	-	`sha256:7083fd52cc37325a7410c9b440752c23eec66e1ff2909304c1b8e71997b79bfd`  
		Last Modified: Fri, 17 Nov 2017 22:42:06 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84e7ee6b3e751fe1d418745300b1141b00286719723dd93490070748b5f448f`  
		Last Modified: Fri, 17 Nov 2017 22:42:54 GMT  
		Size: 253.7 MB (253684155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3d80549a9a8a0d57130e483b2766df2f29825ede38ccea36e5564b623f1928`  
		Last Modified: Fri, 17 Nov 2017 22:42:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bafca90fe92af71f16567a089fef3164acfba7de3f89fe1280fd26329b0dda3`  
		Last Modified: Fri, 17 Nov 2017 22:42:04 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bc148ed969a661dd021ae04544c9f6c38b806e4a3f3ae86cd47d2526676839`  
		Last Modified: Fri, 17 Nov 2017 22:42:03 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c6ee3df7a353279675eb427e3939fe05f919688bd9ad701d80326f32cc5340`  
		Last Modified: Fri, 17 Nov 2017 22:42:01 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8127489ec0c2597db72c3589662347871286f35d5ce1530b8a4987b39a9e61`  
		Last Modified: Fri, 17 Nov 2017 22:42:02 GMT  
		Size: 912.2 KB (912169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3f2c22b44eadf32a753d0b19a2e579b2b5f1da6a6c6e02e559a509284057f3`  
		Last Modified: Fri, 17 Nov 2017 22:42:01 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea6cefa98cbfc676991762613c7ba1158a87f8366667311c5771825c300e31`  
		Last Modified: Fri, 17 Nov 2017 22:42:01 GMT  
		Size: 494.1 KB (494076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4595e33ceb9543b16bf151d33dbf7d50b7c9e1ff703cdf75d2b9fa4e9b029`  
		Last Modified: Fri, 17 Nov 2017 22:42:02 GMT  
		Size: 14.0 MB (13953258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d72991987058bddfe29979c7c99757a1d09c3ad8a2b99bc3a7aca7fa79d9a24`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 13.4 KB (13354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149f055feb8411911189ee93a016486f2e2eb079d8fb35f8ab4111aed751de1d`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 2.5 KB (2534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d20a320b1c6c2fb94e9ea3be43732f185d1aa685b33f4dde8c3381ce919dcc8`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d972c77d4a0e699156bb922ebdc3d32234aed24b19606629e83a60769bdc0`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:31b7855d3fdf364b66c02f0bcb0b34c63025595cf6b81c927f447513be9a3220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b8d4c8b3c63d528e269ab109659c65a79504ca63f211f2fef9fe51498c8b815f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342196633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f1c2e14a6ffcb054722cacae82b4d070edf79b484d0d08dc5e87ca719e1de4`
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
# Fri, 17 Nov 2017 22:21:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:27:41 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:27:42 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Fri, 17 Nov 2017 22:27:42 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:27:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:27:44 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:27:44 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 17 Nov 2017 22:27:44 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 17 Nov 2017 22:27:48 GMT
RUN apt-get install -y curl
# Fri, 17 Nov 2017 22:27:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 17 Nov 2017 22:27:49 GMT
WORKDIR /usr/local/zs-init
# Fri, 17 Nov 2017 22:27:55 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 17 Nov 2017 22:28:23 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 17 Nov 2017 22:29:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 17 Nov 2017 22:29:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 17 Nov 2017 22:29:30 GMT
RUN rm /var/www/html/index.html
# Fri, 17 Nov 2017 22:29:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 17 Nov 2017 22:29:30 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:29:30 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:29:31 GMT
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
	-	`sha256:7083fd52cc37325a7410c9b440752c23eec66e1ff2909304c1b8e71997b79bfd`  
		Last Modified: Fri, 17 Nov 2017 22:42:06 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba55c262dfce2ddc0bf8112d3dc1b4d94c43bf236a91f67249a086a3163f2baa`  
		Last Modified: Fri, 17 Nov 2017 22:44:28 GMT  
		Size: 253.9 MB (253888863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d7fa74d17a7ace8719e11a68a7d8a65bb0dfa50f9c7670ccc88c0b8d8500f2`  
		Last Modified: Fri, 17 Nov 2017 22:43:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db7fb92f67e9387ef742e19d357b064067a95434e8c1239b5028a8d1a8a03a3`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167ceca1e344965eba8d2995854a6339fa832d3cdb6c41f17a5606898dcd5b6`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aace44d275e2530c48dd6d3c61f418edfd20f35b5d16fad6b27cc75b634632ce`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae37b95502711bff6040e27a22436c5e5dcb057f90ebea190bae70cd635e776d`  
		Last Modified: Fri, 17 Nov 2017 22:43:25 GMT  
		Size: 914.0 KB (913967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4212d14184110fbb5302f1deecd8deaa304ce06e5005333f8d4cb77d695a4451`  
		Last Modified: Fri, 17 Nov 2017 22:43:25 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbad2753ac315a23ec029d917386dc0d353e307113ead72ea6326e9b7e78e0a`  
		Last Modified: Fri, 17 Nov 2017 22:43:24 GMT  
		Size: 494.1 KB (494076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680af2b14ef2a719451c4de7e3009ffd03541b3d0fbb5d11ff6e2b7c1bc7548`  
		Last Modified: Fri, 17 Nov 2017 22:43:28 GMT  
		Size: 13.9 MB (13949828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffb02982a3c94632d5cf90142f24de59426b049afc1ecc4c21e9ccb3281a272`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e79026f603025afcbf592d791d9577501f3b7c83ca62a205e2b0fd6b80c1638`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1684a7ab4456a9db734b3c530d6981237432e51f1306995772c15edddee0628`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b296dd34bd5a9637a51e8c6dfb621fa414bc7cece3e20ceb1ec7e54b1b5b562`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:3e26a96e1a6bbbfc7781178c8b87c77d5873d6baa88c6521037054cb84cf0d3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:6d6b23b1de2b13d86c5f4706acdd53a49191eff861e7c1e0f1d3893291412a84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.8 MB (301758040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffa89a4a7f45afde8c6c9aba386fd93b45007a3a2bacddaf62afe4c4cf8cae00`
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
# Fri, 17 Nov 2017 22:29:40 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Fri, 17 Nov 2017 22:29:40 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Fri, 17 Nov 2017 22:29:41 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Fri, 17 Nov 2017 22:29:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Fri, 17 Nov 2017 22:29:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:31:30 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:31:32 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:31:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:31:33 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:31:34 GMT
EXPOSE 10060/tcp
# Fri, 17 Nov 2017 22:31:35 GMT
EXPOSE 10061/tcp
# Fri, 17 Nov 2017 22:31:35 GMT
EXPOSE 10062/tcp
# Fri, 17 Nov 2017 22:31:35 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:31:35 GMT
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
	-	`sha256:43e79f0502c2b6b9524684528ab033e712b815afafa3552b6a196a0890d8abdc`  
		Last Modified: Fri, 17 Nov 2017 22:48:16 GMT  
		Size: 1.0 KB (1002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c827767ed3fb155645331b59f6829d204db61a373712113284f5614eea84d7cc`  
		Last Modified: Fri, 17 Nov 2017 22:48:16 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a48acc510eabfde2c1f5df3133a662d0dffbb71b2eb59d93c46ecc520488e22`  
		Last Modified: Fri, 17 Nov 2017 22:48:15 GMT  
		Size: 938.4 KB (938393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d243c18f0944c32cf2649231a4726ae2e0a70e5f40409755a3397af2b57d5b`  
		Last Modified: Fri, 17 Nov 2017 22:48:15 GMT  
		Size: 13.1 KB (13059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6b0c0a3a29ff680a61327f63c0175d50cae5a2153c218e8caf594ecf815e59`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9258e9eb900fe7d184d1518fd73f95f9851506c0159c26b1b9b79201f4c526f9`  
		Last Modified: Fri, 17 Nov 2017 22:48:59 GMT  
		Size: 227.9 MB (227893215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016386d8735198283870059e1ac35a25142301618b955ab558aea1414b28bdc`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2d7d62383c09236a04ec061b3ad74f9d2558f15530f30df246521c9228073ed`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 311.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:234c4a81eabbf13586b0cbe7de748728089d71c9bdf202c0f9d5f9a59d7ebbbd`  
		Last Modified: Fri, 17 Nov 2017 22:48:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:31b7855d3fdf364b66c02f0bcb0b34c63025595cf6b81c927f447513be9a3220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b8d4c8b3c63d528e269ab109659c65a79504ca63f211f2fef9fe51498c8b815f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342196633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f1c2e14a6ffcb054722cacae82b4d070edf79b484d0d08dc5e87ca719e1de4`
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
# Fri, 17 Nov 2017 22:21:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:27:41 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:27:42 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Fri, 17 Nov 2017 22:27:42 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:27:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:27:44 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:27:44 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 17 Nov 2017 22:27:44 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 17 Nov 2017 22:27:48 GMT
RUN apt-get install -y curl
# Fri, 17 Nov 2017 22:27:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 17 Nov 2017 22:27:49 GMT
WORKDIR /usr/local/zs-init
# Fri, 17 Nov 2017 22:27:55 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 17 Nov 2017 22:28:23 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 17 Nov 2017 22:29:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 17 Nov 2017 22:29:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 17 Nov 2017 22:29:30 GMT
RUN rm /var/www/html/index.html
# Fri, 17 Nov 2017 22:29:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 17 Nov 2017 22:29:30 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:29:30 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:29:31 GMT
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
	-	`sha256:7083fd52cc37325a7410c9b440752c23eec66e1ff2909304c1b8e71997b79bfd`  
		Last Modified: Fri, 17 Nov 2017 22:42:06 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba55c262dfce2ddc0bf8112d3dc1b4d94c43bf236a91f67249a086a3163f2baa`  
		Last Modified: Fri, 17 Nov 2017 22:44:28 GMT  
		Size: 253.9 MB (253888863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d7fa74d17a7ace8719e11a68a7d8a65bb0dfa50f9c7670ccc88c0b8d8500f2`  
		Last Modified: Fri, 17 Nov 2017 22:43:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db7fb92f67e9387ef742e19d357b064067a95434e8c1239b5028a8d1a8a03a3`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167ceca1e344965eba8d2995854a6339fa832d3cdb6c41f17a5606898dcd5b6`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aace44d275e2530c48dd6d3c61f418edfd20f35b5d16fad6b27cc75b634632ce`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae37b95502711bff6040e27a22436c5e5dcb057f90ebea190bae70cd635e776d`  
		Last Modified: Fri, 17 Nov 2017 22:43:25 GMT  
		Size: 914.0 KB (913967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4212d14184110fbb5302f1deecd8deaa304ce06e5005333f8d4cb77d695a4451`  
		Last Modified: Fri, 17 Nov 2017 22:43:25 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbad2753ac315a23ec029d917386dc0d353e307113ead72ea6326e9b7e78e0a`  
		Last Modified: Fri, 17 Nov 2017 22:43:24 GMT  
		Size: 494.1 KB (494076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680af2b14ef2a719451c4de7e3009ffd03541b3d0fbb5d11ff6e2b7c1bc7548`  
		Last Modified: Fri, 17 Nov 2017 22:43:28 GMT  
		Size: 13.9 MB (13949828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffb02982a3c94632d5cf90142f24de59426b049afc1ecc4c21e9ccb3281a272`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e79026f603025afcbf592d791d9577501f3b7c83ca62a205e2b0fd6b80c1638`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1684a7ab4456a9db734b3c530d6981237432e51f1306995772c15edddee0628`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b296dd34bd5a9637a51e8c6dfb621fa414bc7cece3e20ceb1ec7e54b1b5b562`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:8454f5b14bddf632b74faf315f10d6f8994331718cc2a6c97e0d852c28ea9a50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:387786c5c6466ea60cc358c9f7b9fb075c795ac018a9c05a279b7039fb56d210
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.0 MB (341993546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2003a8db5314b94a1c3b38525751e1b8de251a579533e30a04a19fea71766b`
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
# Fri, 17 Nov 2017 22:21:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:23:26 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:24:59 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Fri, 17 Nov 2017 22:25:00 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:25:01 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:25:02 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:25:02 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 17 Nov 2017 22:25:02 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 17 Nov 2017 22:25:07 GMT
RUN apt-get install -y curl
# Fri, 17 Nov 2017 22:25:09 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 17 Nov 2017 22:25:09 GMT
WORKDIR /usr/local/zs-init
# Fri, 17 Nov 2017 22:25:14 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 17 Nov 2017 22:25:42 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 17 Nov 2017 22:25:42 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 17 Nov 2017 22:25:42 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 17 Nov 2017 22:25:43 GMT
RUN rm /var/www/html/index.html
# Fri, 17 Nov 2017 22:25:43 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:25:44 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:25:45 GMT
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
	-	`sha256:7083fd52cc37325a7410c9b440752c23eec66e1ff2909304c1b8e71997b79bfd`  
		Last Modified: Fri, 17 Nov 2017 22:42:06 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84e7ee6b3e751fe1d418745300b1141b00286719723dd93490070748b5f448f`  
		Last Modified: Fri, 17 Nov 2017 22:42:54 GMT  
		Size: 253.7 MB (253684155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3d80549a9a8a0d57130e483b2766df2f29825ede38ccea36e5564b623f1928`  
		Last Modified: Fri, 17 Nov 2017 22:42:05 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bafca90fe92af71f16567a089fef3164acfba7de3f89fe1280fd26329b0dda3`  
		Last Modified: Fri, 17 Nov 2017 22:42:04 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bc148ed969a661dd021ae04544c9f6c38b806e4a3f3ae86cd47d2526676839`  
		Last Modified: Fri, 17 Nov 2017 22:42:03 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c6ee3df7a353279675eb427e3939fe05f919688bd9ad701d80326f32cc5340`  
		Last Modified: Fri, 17 Nov 2017 22:42:01 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8127489ec0c2597db72c3589662347871286f35d5ce1530b8a4987b39a9e61`  
		Last Modified: Fri, 17 Nov 2017 22:42:02 GMT  
		Size: 912.2 KB (912169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3f2c22b44eadf32a753d0b19a2e579b2b5f1da6a6c6e02e559a509284057f3`  
		Last Modified: Fri, 17 Nov 2017 22:42:01 GMT  
		Size: 18.8 KB (18829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ea6cefa98cbfc676991762613c7ba1158a87f8366667311c5771825c300e31`  
		Last Modified: Fri, 17 Nov 2017 22:42:01 GMT  
		Size: 494.1 KB (494076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18c4595e33ceb9543b16bf151d33dbf7d50b7c9e1ff703cdf75d2b9fa4e9b029`  
		Last Modified: Fri, 17 Nov 2017 22:42:02 GMT  
		Size: 14.0 MB (13953258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d72991987058bddfe29979c7c99757a1d09c3ad8a2b99bc3a7aca7fa79d9a24`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 13.4 KB (13354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:149f055feb8411911189ee93a016486f2e2eb079d8fb35f8ab4111aed751de1d`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 2.5 KB (2534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d20a320b1c6c2fb94e9ea3be43732f185d1aa685b33f4dde8c3381ce919dcc8`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099d972c77d4a0e699156bb922ebdc3d32234aed24b19606629e83a60769bdc0`  
		Last Modified: Fri, 17 Nov 2017 22:41:59 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:31b7855d3fdf364b66c02f0bcb0b34c63025595cf6b81c927f447513be9a3220
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:b8d4c8b3c63d528e269ab109659c65a79504ca63f211f2fef9fe51498c8b815f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342196633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f1c2e14a6ffcb054722cacae82b4d070edf79b484d0d08dc5e87ca719e1de4`
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
# Fri, 17 Nov 2017 22:21:36 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Fri, 17 Nov 2017 22:27:41 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Fri, 17 Nov 2017 22:27:42 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Fri, 17 Nov 2017 22:27:42 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Fri, 17 Nov 2017 22:27:43 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Fri, 17 Nov 2017 22:27:44 GMT
RUN /usr/sbin/a2enmod headers
# Fri, 17 Nov 2017 22:27:44 GMT
ENV ZS_INIT_VERSION=0.3
# Fri, 17 Nov 2017 22:27:44 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Fri, 17 Nov 2017 22:27:48 GMT
RUN apt-get install -y curl
# Fri, 17 Nov 2017 22:27:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Fri, 17 Nov 2017 22:27:49 GMT
WORKDIR /usr/local/zs-init
# Fri, 17 Nov 2017 22:27:55 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Fri, 17 Nov 2017 22:28:23 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Fri, 17 Nov 2017 22:29:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Fri, 17 Nov 2017 22:29:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Fri, 17 Nov 2017 22:29:30 GMT
RUN rm /var/www/html/index.html
# Fri, 17 Nov 2017 22:29:30 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Fri, 17 Nov 2017 22:29:30 GMT
EXPOSE 80/tcp
# Fri, 17 Nov 2017 22:29:30 GMT
EXPOSE 443/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
EXPOSE 10081/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
EXPOSE 10082/tcp
# Fri, 17 Nov 2017 22:29:31 GMT
WORKDIR /var/www/html
# Fri, 17 Nov 2017 22:29:31 GMT
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
	-	`sha256:7083fd52cc37325a7410c9b440752c23eec66e1ff2909304c1b8e71997b79bfd`  
		Last Modified: Fri, 17 Nov 2017 22:42:06 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba55c262dfce2ddc0bf8112d3dc1b4d94c43bf236a91f67249a086a3163f2baa`  
		Last Modified: Fri, 17 Nov 2017 22:44:28 GMT  
		Size: 253.9 MB (253888863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d7fa74d17a7ace8719e11a68a7d8a65bb0dfa50f9c7670ccc88c0b8d8500f2`  
		Last Modified: Fri, 17 Nov 2017 22:43:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db7fb92f67e9387ef742e19d357b064067a95434e8c1239b5028a8d1a8a03a3`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5167ceca1e344965eba8d2995854a6339fa832d3cdb6c41f17a5606898dcd5b6`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 317.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aace44d275e2530c48dd6d3c61f418edfd20f35b5d16fad6b27cc75b634632ce`  
		Last Modified: Fri, 17 Nov 2017 22:43:27 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae37b95502711bff6040e27a22436c5e5dcb057f90ebea190bae70cd635e776d`  
		Last Modified: Fri, 17 Nov 2017 22:43:25 GMT  
		Size: 914.0 KB (913967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4212d14184110fbb5302f1deecd8deaa304ce06e5005333f8d4cb77d695a4451`  
		Last Modified: Fri, 17 Nov 2017 22:43:25 GMT  
		Size: 18.8 KB (18828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbad2753ac315a23ec029d917386dc0d353e307113ead72ea6326e9b7e78e0a`  
		Last Modified: Fri, 17 Nov 2017 22:43:24 GMT  
		Size: 494.1 KB (494076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5680af2b14ef2a719451c4de7e3009ffd03541b3d0fbb5d11ff6e2b7c1bc7548`  
		Last Modified: Fri, 17 Nov 2017 22:43:28 GMT  
		Size: 13.9 MB (13949828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffb02982a3c94632d5cf90142f24de59426b049afc1ecc4c21e9ccb3281a272`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 13.4 KB (13357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e79026f603025afcbf592d791d9577501f3b7c83ca62a205e2b0fd6b80c1638`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 2.5 KB (2536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1684a7ab4456a9db734b3c530d6981237432e51f1306995772c15edddee0628`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b296dd34bd5a9637a51e8c6dfb621fa414bc7cece3e20ceb1ec7e54b1b5b562`  
		Last Modified: Fri, 17 Nov 2017 22:43:22 GMT  
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
