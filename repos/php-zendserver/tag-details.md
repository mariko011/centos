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
$ docker pull php-zendserver@sha256:899771ad05753dd6aba32305bc725892c926de1e8dc940c5f872f9ae257ff9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:ec4730800f62eefe1dddf08e3236d74f8095b9dd80b34271e82f2edce755c86c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (296042376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c303b6db43acd55a56a1fe259c97d29ebc33573c4d7f86e3a1cd56716cd1659`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:40:08 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Sat, 04 Nov 2017 12:40:08 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Sat, 04 Nov 2017 12:40:09 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Sat, 04 Nov 2017 12:40:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:40:14 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:42:29 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:42:30 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:42:32 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:42:33 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:42:33 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:42:34 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:42:34 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:42:34 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
EXPOSE 10060/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
EXPOSE 10061/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
EXPOSE 10062/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:42:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2943214fbb1e745d21bf68471b9a84485ccadf588497d347315a22849f4c6afc`  
		Last Modified: Sat, 04 Nov 2017 12:54:17 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc15dc3ed1aa71201f458199bc686e20f8776ba708927504c0cd64e50ef0366d`  
		Last Modified: Sat, 04 Nov 2017 12:54:16 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a091674095f7d66f061ed19036fd07255444ce565f83a04f63db8ae8ec2784d`  
		Last Modified: Sat, 04 Nov 2017 12:54:17 GMT  
		Size: 938.4 KB (938423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3e9f5f21e5741e43b720397f92559b95bc78bdc029d802a916a83466d33e9`  
		Last Modified: Sat, 04 Nov 2017 12:54:17 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b27dee75bd8bc9d97160d752815fb975cc93ea358237682eeafbbad9af7b1a`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd063eb4e7977771e37061113aad5bcea1f3f4b202d1bebc105841fc7b251299`  
		Last Modified: Sat, 04 Nov 2017 12:56:54 GMT  
		Size: 227.9 MB (227887925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee177e4d9f13829553a9737f7fa2876113c42ffd101c7448eed9d688ea3ce22c`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a030c6ad7ae4e2f0867d76fd7745981d26d5eb3acbfd9a3e0ad0561b5d411a17`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228dfabbcb26edbdad9db79f0b4339837f5f2fb77724eaa7fc1007b3490c485c`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:d3b3fd61f40e5018a14eef6906bb4c04e1f697d6ca12484518d4947fbecd2fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d2c7392b964d3f9e8e123f92e40ff496025ccf4beca75432fcdea1dfa0a5fc7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337949050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee8d216da70b275f64824e3cae6adb6d7f5617452c5b3e67567be0bfc45dc7c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:28:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:28:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:31:08 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:31:09 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Sat, 04 Nov 2017 12:31:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:31:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:31:12 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:31:12 GMT
ENV ZS_INIT_VERSION=0.3
# Sat, 04 Nov 2017 12:31:13 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sat, 04 Nov 2017 12:31:20 GMT
RUN apt-get install -y curl
# Sat, 04 Nov 2017 12:31:22 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 04 Nov 2017 12:31:22 GMT
WORKDIR /usr/local/zs-init
# Sat, 04 Nov 2017 12:31:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 04 Nov 2017 12:32:01 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 04 Nov 2017 12:32:02 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 04 Nov 2017 12:32:02 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 04 Nov 2017 12:32:03 GMT
RUN rm /var/www/html/index.html
# Sat, 04 Nov 2017 12:32:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 04 Nov 2017 12:32:04 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:32:04 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:32:04 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:32:05 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:32:05 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:32:05 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4ea7a3ab6d6bfbdf47e2f77efac8ece288f6dbd112ff65558833520aa56a16`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459c74d2fdc7c537f1fd721d449de7145ef4c4c20818383a41d3bcfc76b7f41`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ad7962e9277d40f5d6433c374587bde67cc42a7c46862c657fd82134635584`  
		Last Modified: Sat, 04 Nov 2017 12:50:41 GMT  
		Size: 255.5 MB (255513779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85d14f6655ba82e8eb386d5951e87f4303a54b0c7f76aade9154087de015637`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0beedfe08be95878aaa1d56ced29d820713180af8ac11e645681f97d825329`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad8a4341e4aa081c46b7c2a920e2c535ea23797c3ac4cb91ed84aa7f3218d40`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba622038378507005ec62f45f1f643faf2f0cd219ee54e14fb998c65131f1bf`  
		Last Modified: Sat, 04 Nov 2017 12:49:50 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b59f2f58c0d461c281000a7e022953fc85a3f59e1f90c4fac7cc9e3734b01e1`  
		Last Modified: Sat, 04 Nov 2017 12:49:51 GMT  
		Size: 911.7 KB (911692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48aba28deff60158e3544cf6e16eea7c5c6b6b4072f32cbd1c0fbd85138e602`  
		Last Modified: Sat, 04 Nov 2017 12:49:50 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48b0853de5ab2c1e9b875b42e914c4e01ae1ebdab27745b533c0eb750d0aa60`  
		Last Modified: Sat, 04 Nov 2017 12:49:51 GMT  
		Size: 494.1 KB (494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26676647a569bb044a6017b4357eb384b40a66a4a1d8e02258b23c6832475bdd`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 13.8 MB (13789995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a41f2c5dd9051925e4e10c31f99896f1a86993a97e48b1710b7a202f5372deb`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b1ec91a08e2dd2c1fb3b2701219470c4a6f7c06c88c9f30236421a67dd2cb6`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 2.5 KB (2542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5121f2977180e77246add455bd0babdd85bb6947cc2c3020d32e6c23c9391395`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35193fb0203070edc71c161eeae5643037b8d9631fad423dd83e05210211b2c8`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:8fd267e05ae71ad7a56d7bae3e430a8cb02782d1c8c5a0f91522d7d14aa3e61c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:7557d52bdaf7fa89adfbd114b704ff2f8c5041a914b29cf815d5d219bd685ba6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336311089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca2a961ee5397d1dc17eb990426e29b1af720d5e60a07e0a61604472810c8dd`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:28:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:28:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:37:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:37:24 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Sat, 04 Nov 2017 12:37:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:37:26 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:37:27 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:37:27 GMT
ENV ZS_INIT_VERSION=0.3
# Sat, 04 Nov 2017 12:37:28 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sat, 04 Nov 2017 12:37:35 GMT
RUN apt-get install -y curl
# Sat, 04 Nov 2017 12:37:37 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 04 Nov 2017 12:37:38 GMT
WORKDIR /usr/local/zs-init
# Sat, 04 Nov 2017 12:37:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 04 Nov 2017 12:38:17 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 04 Nov 2017 12:38:17 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 04 Nov 2017 12:38:18 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 04 Nov 2017 12:38:18 GMT
RUN rm /var/www/html/index.html
# Sat, 04 Nov 2017 12:38:19 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 04 Nov 2017 12:38:19 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:38:21 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4ea7a3ab6d6bfbdf47e2f77efac8ece288f6dbd112ff65558833520aa56a16`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459c74d2fdc7c537f1fd721d449de7145ef4c4c20818383a41d3bcfc76b7f41`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6097d1c44400d8b9211351752ba6b1f2b75a0d009b065aeb31d3582f1ba26`  
		Last Modified: Sat, 04 Nov 2017 12:52:07 GMT  
		Size: 253.9 MB (253876090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea01b5be54d517707f9e587600f671badb1a212dcad59a0b4ba341777161385`  
		Last Modified: Sat, 04 Nov 2017 12:51:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d88ba3d4c311beb71e571fced142f2601a1cae21956e77c53506e3516f5a278`  
		Last Modified: Sat, 04 Nov 2017 12:51:01 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1010409578d19dc2daeca694bb7fd1cdaaa2c2322d270ab85897f4e58c6301c0`  
		Last Modified: Sat, 04 Nov 2017 12:51:00 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9961c8eaf6527b4f65df10fda9a4f786a55c2ee2ec6864379e7598cf99058235`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc1974d6f43b22626fce8e4d8d759864915e11741d20c7443335170dc604fb7`  
		Last Modified: Sat, 04 Nov 2017 12:50:59 GMT  
		Size: 913.5 KB (913492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb32f1f3d2ee41de3c0e2e38d1229bdfa455b98187800d34227eae76467c2a3`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc733aa5cd259069aab97a3505a581f78c3394d64a123e2ce37b583bc947288a`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 494.1 KB (494089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff499c70af3711b4cf0168e7653e521bf7c5fb775627e97e3f7cd6ff6bd5fea`  
		Last Modified: Sat, 04 Nov 2017 12:51:00 GMT  
		Size: 13.8 MB (13787941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25ee62d6c67a7d22676800ab2bcdaaba3fc90b0ba1d6d2863be3987ec081c2f`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed05af34cc4b0ad1a4582f363dda23bc27a89349ef04d21595396440042e8b88`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04123330164551d409c2b49c7826fb5c894fd1892def36c3086b674aa9b7c6db`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d2ea8ba42eaaf54bdec4fe80821c8729ffed0f1dfe647888871a9dac53f99b`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:899771ad05753dd6aba32305bc725892c926de1e8dc940c5f872f9ae257ff9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

```console
$ docker pull php-zendserver@sha256:ec4730800f62eefe1dddf08e3236d74f8095b9dd80b34271e82f2edce755c86c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 MB (296042376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c303b6db43acd55a56a1fe259c97d29ebc33573c4d7f86e3a1cd56716cd1659`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:40:08 GMT
COPY file:8ff89bee5e81bba8ef4ec2b47592da80b6d37bab7b410dc4e79f831ec488c79c in /usr/local/bin/run 
# Sat, 04 Nov 2017 12:40:08 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Sat, 04 Nov 2017 12:40:09 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Sat, 04 Nov 2017 12:40:13 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:40:14 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:42:29 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:42:30 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:42:32 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:42:33 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:42:33 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:42:34 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:42:34 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:42:34 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
EXPOSE 10060/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
EXPOSE 10061/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
EXPOSE 10062/tcp
# Sat, 04 Nov 2017 12:42:35 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:42:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2943214fbb1e745d21bf68471b9a84485ccadf588497d347315a22849f4c6afc`  
		Last Modified: Sat, 04 Nov 2017 12:54:17 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc15dc3ed1aa71201f458199bc686e20f8776ba708927504c0cd64e50ef0366d`  
		Last Modified: Sat, 04 Nov 2017 12:54:16 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a091674095f7d66f061ed19036fd07255444ce565f83a04f63db8ae8ec2784d`  
		Last Modified: Sat, 04 Nov 2017 12:54:17 GMT  
		Size: 938.4 KB (938423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdf3e9f5f21e5741e43b720397f92559b95bc78bdc029d802a916a83466d33e9`  
		Last Modified: Sat, 04 Nov 2017 12:54:17 GMT  
		Size: 13.1 KB (13063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b27dee75bd8bc9d97160d752815fb975cc93ea358237682eeafbbad9af7b1a`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd063eb4e7977771e37061113aad5bcea1f3f4b202d1bebc105841fc7b251299`  
		Last Modified: Sat, 04 Nov 2017 12:56:54 GMT  
		Size: 227.9 MB (227887925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee177e4d9f13829553a9737f7fa2876113c42ffd101c7448eed9d688ea3ce22c`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 261.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a030c6ad7ae4e2f0867d76fd7745981d26d5eb3acbfd9a3e0ad0561b5d411a17`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228dfabbcb26edbdad9db79f0b4339837f5f2fb77724eaa7fc1007b3490c485c`  
		Last Modified: Sat, 04 Nov 2017 12:54:14 GMT  
		Size: 306.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:8fd267e05ae71ad7a56d7bae3e430a8cb02782d1c8c5a0f91522d7d14aa3e61c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:7557d52bdaf7fa89adfbd114b704ff2f8c5041a914b29cf815d5d219bd685ba6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336311089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca2a961ee5397d1dc17eb990426e29b1af720d5e60a07e0a61604472810c8dd`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:28:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:28:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:37:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:37:24 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Sat, 04 Nov 2017 12:37:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:37:26 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:37:27 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:37:27 GMT
ENV ZS_INIT_VERSION=0.3
# Sat, 04 Nov 2017 12:37:28 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sat, 04 Nov 2017 12:37:35 GMT
RUN apt-get install -y curl
# Sat, 04 Nov 2017 12:37:37 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 04 Nov 2017 12:37:38 GMT
WORKDIR /usr/local/zs-init
# Sat, 04 Nov 2017 12:37:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 04 Nov 2017 12:38:17 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 04 Nov 2017 12:38:17 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 04 Nov 2017 12:38:18 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 04 Nov 2017 12:38:18 GMT
RUN rm /var/www/html/index.html
# Sat, 04 Nov 2017 12:38:19 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 04 Nov 2017 12:38:19 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:38:21 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4ea7a3ab6d6bfbdf47e2f77efac8ece288f6dbd112ff65558833520aa56a16`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459c74d2fdc7c537f1fd721d449de7145ef4c4c20818383a41d3bcfc76b7f41`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6097d1c44400d8b9211351752ba6b1f2b75a0d009b065aeb31d3582f1ba26`  
		Last Modified: Sat, 04 Nov 2017 12:52:07 GMT  
		Size: 253.9 MB (253876090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea01b5be54d517707f9e587600f671badb1a212dcad59a0b4ba341777161385`  
		Last Modified: Sat, 04 Nov 2017 12:51:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d88ba3d4c311beb71e571fced142f2601a1cae21956e77c53506e3516f5a278`  
		Last Modified: Sat, 04 Nov 2017 12:51:01 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1010409578d19dc2daeca694bb7fd1cdaaa2c2322d270ab85897f4e58c6301c0`  
		Last Modified: Sat, 04 Nov 2017 12:51:00 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9961c8eaf6527b4f65df10fda9a4f786a55c2ee2ec6864379e7598cf99058235`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc1974d6f43b22626fce8e4d8d759864915e11741d20c7443335170dc604fb7`  
		Last Modified: Sat, 04 Nov 2017 12:50:59 GMT  
		Size: 913.5 KB (913492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb32f1f3d2ee41de3c0e2e38d1229bdfa455b98187800d34227eae76467c2a3`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc733aa5cd259069aab97a3505a581f78c3394d64a123e2ce37b583bc947288a`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 494.1 KB (494089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff499c70af3711b4cf0168e7653e521bf7c5fb775627e97e3f7cd6ff6bd5fea`  
		Last Modified: Sat, 04 Nov 2017 12:51:00 GMT  
		Size: 13.8 MB (13787941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25ee62d6c67a7d22676800ab2bcdaaba3fc90b0ba1d6d2863be3987ec081c2f`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed05af34cc4b0ad1a4582f363dda23bc27a89349ef04d21595396440042e8b88`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04123330164551d409c2b49c7826fb5c894fd1892def36c3086b674aa9b7c6db`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d2ea8ba42eaaf54bdec4fe80821c8729ffed0f1dfe647888871a9dac53f99b`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:d3b3fd61f40e5018a14eef6906bb4c04e1f697d6ca12484518d4947fbecd2fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

```console
$ docker pull php-zendserver@sha256:d2c7392b964d3f9e8e123f92e40ff496025ccf4beca75432fcdea1dfa0a5fc7d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337949050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fee8d216da70b275f64824e3cae6adb6d7f5617452c5b3e67567be0bfc45dc7c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:28:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:28:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:31:08 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:31:09 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Sat, 04 Nov 2017 12:31:10 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:31:11 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:31:12 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:31:12 GMT
ENV ZS_INIT_VERSION=0.3
# Sat, 04 Nov 2017 12:31:13 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sat, 04 Nov 2017 12:31:20 GMT
RUN apt-get install -y curl
# Sat, 04 Nov 2017 12:31:22 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 04 Nov 2017 12:31:22 GMT
WORKDIR /usr/local/zs-init
# Sat, 04 Nov 2017 12:31:28 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 04 Nov 2017 12:32:01 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 04 Nov 2017 12:32:02 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 04 Nov 2017 12:32:02 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 04 Nov 2017 12:32:03 GMT
RUN rm /var/www/html/index.html
# Sat, 04 Nov 2017 12:32:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 04 Nov 2017 12:32:04 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:32:04 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:32:04 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:32:05 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:32:05 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:32:05 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4ea7a3ab6d6bfbdf47e2f77efac8ece288f6dbd112ff65558833520aa56a16`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459c74d2fdc7c537f1fd721d449de7145ef4c4c20818383a41d3bcfc76b7f41`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ad7962e9277d40f5d6433c374587bde67cc42a7c46862c657fd82134635584`  
		Last Modified: Sat, 04 Nov 2017 12:50:41 GMT  
		Size: 255.5 MB (255513779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85d14f6655ba82e8eb386d5951e87f4303a54b0c7f76aade9154087de015637`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c0beedfe08be95878aaa1d56ced29d820713180af8ac11e645681f97d825329`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad8a4341e4aa081c46b7c2a920e2c535ea23797c3ac4cb91ed84aa7f3218d40`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba622038378507005ec62f45f1f643faf2f0cd219ee54e14fb998c65131f1bf`  
		Last Modified: Sat, 04 Nov 2017 12:49:50 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b59f2f58c0d461c281000a7e022953fc85a3f59e1f90c4fac7cc9e3734b01e1`  
		Last Modified: Sat, 04 Nov 2017 12:49:51 GMT  
		Size: 911.7 KB (911692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48aba28deff60158e3544cf6e16eea7c5c6b6b4072f32cbd1c0fbd85138e602`  
		Last Modified: Sat, 04 Nov 2017 12:49:50 GMT  
		Size: 18.8 KB (18831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48b0853de5ab2c1e9b875b42e914c4e01ae1ebdab27745b533c0eb750d0aa60`  
		Last Modified: Sat, 04 Nov 2017 12:49:51 GMT  
		Size: 494.1 KB (494092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26676647a569bb044a6017b4357eb384b40a66a4a1d8e02258b23c6832475bdd`  
		Last Modified: Sat, 04 Nov 2017 12:49:53 GMT  
		Size: 13.8 MB (13789995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a41f2c5dd9051925e4e10c31f99896f1a86993a97e48b1710b7a202f5372deb`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b1ec91a08e2dd2c1fb3b2701219470c4a6f7c06c88c9f30236421a67dd2cb6`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 2.5 KB (2542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5121f2977180e77246add455bd0babdd85bb6947cc2c3020d32e6c23c9391395`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35193fb0203070edc71c161eeae5643037b8d9631fad423dd83e05210211b2c8`  
		Last Modified: Sat, 04 Nov 2017 12:49:48 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:8fd267e05ae71ad7a56d7bae3e430a8cb02782d1c8c5a0f91522d7d14aa3e61c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

```console
$ docker pull php-zendserver@sha256:7557d52bdaf7fa89adfbd114b704ff2f8c5041a914b29cf815d5d219bd685ba6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.3 MB (336311089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ca2a961ee5397d1dc17eb990426e29b1af720d5e60a07e0a61604472810c8dd`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:28:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:28:44 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:37:22 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:37:24 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Sat, 04 Nov 2017 12:37:24 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:37:26 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:37:27 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:37:27 GMT
ENV ZS_INIT_VERSION=0.3
# Sat, 04 Nov 2017 12:37:28 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sat, 04 Nov 2017 12:37:35 GMT
RUN apt-get install -y curl
# Sat, 04 Nov 2017 12:37:37 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 04 Nov 2017 12:37:38 GMT
WORKDIR /usr/local/zs-init
# Sat, 04 Nov 2017 12:37:44 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 04 Nov 2017 12:38:17 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 04 Nov 2017 12:38:17 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 04 Nov 2017 12:38:18 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 04 Nov 2017 12:38:18 GMT
RUN rm /var/www/html/index.html
# Sat, 04 Nov 2017 12:38:19 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 04 Nov 2017 12:38:19 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:38:20 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:38:21 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4ea7a3ab6d6bfbdf47e2f77efac8ece288f6dbd112ff65558833520aa56a16`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c459c74d2fdc7c537f1fd721d449de7145ef4c4c20818383a41d3bcfc76b7f41`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6b6097d1c44400d8b9211351752ba6b1f2b75a0d009b065aeb31d3582f1ba26`  
		Last Modified: Sat, 04 Nov 2017 12:52:07 GMT  
		Size: 253.9 MB (253876090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea01b5be54d517707f9e587600f671badb1a212dcad59a0b4ba341777161385`  
		Last Modified: Sat, 04 Nov 2017 12:51:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d88ba3d4c311beb71e571fced142f2601a1cae21956e77c53506e3516f5a278`  
		Last Modified: Sat, 04 Nov 2017 12:51:01 GMT  
		Size: 260.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1010409578d19dc2daeca694bb7fd1cdaaa2c2322d270ab85897f4e58c6301c0`  
		Last Modified: Sat, 04 Nov 2017 12:51:00 GMT  
		Size: 312.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9961c8eaf6527b4f65df10fda9a4f786a55c2ee2ec6864379e7598cf99058235`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc1974d6f43b22626fce8e4d8d759864915e11741d20c7443335170dc604fb7`  
		Last Modified: Sat, 04 Nov 2017 12:50:59 GMT  
		Size: 913.5 KB (913492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb32f1f3d2ee41de3c0e2e38d1229bdfa455b98187800d34227eae76467c2a3`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc733aa5cd259069aab97a3505a581f78c3394d64a123e2ce37b583bc947288a`  
		Last Modified: Sat, 04 Nov 2017 12:50:58 GMT  
		Size: 494.1 KB (494089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ff499c70af3711b4cf0168e7653e521bf7c5fb775627e97e3f7cd6ff6bd5fea`  
		Last Modified: Sat, 04 Nov 2017 12:51:00 GMT  
		Size: 13.8 MB (13787941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b25ee62d6c67a7d22676800ab2bcdaaba3fc90b0ba1d6d2863be3987ec081c2f`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 13.4 KB (13360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed05af34cc4b0ad1a4582f363dda23bc27a89349ef04d21595396440042e8b88`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 2.5 KB (2541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04123330164551d409c2b49c7826fb5c894fd1892def36c3086b674aa9b7c6db`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d2ea8ba42eaaf54bdec4fe80821c8729ffed0f1dfe647888871a9dac53f99b`  
		Last Modified: Sat, 04 Nov 2017 12:50:56 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:49d201d896154016908e1d0502aebeb33d1287e0be12e141863c5276781c61a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

```console
$ docker pull php-zendserver@sha256:3dd7cb7007868e3c49e9167b4797d8d4feb91fc4afdcfa71f878b3d18f7d62d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.1 MB (419140199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9118725a99c10b0290e30496b25768ce3a06d3bcc8abf1322f7e303a20f3d05c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:28:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:44:26 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:46:54 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:46:56 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Sat, 04 Nov 2017 12:46:56 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:46:58 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:46:59 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:47:00 GMT
ENV ZS_INIT_VERSION=0.3
# Sat, 04 Nov 2017 12:47:00 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sat, 04 Nov 2017 12:47:08 GMT
RUN apt-get install -y curl
# Sat, 04 Nov 2017 12:47:09 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 04 Nov 2017 12:47:10 GMT
WORKDIR /usr/local/zs-init
# Sat, 04 Nov 2017 12:47:16 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 04 Nov 2017 12:47:43 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 04 Nov 2017 12:47:43 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 04 Nov 2017 12:47:44 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 04 Nov 2017 12:47:45 GMT
RUN rm /var/www/html/index.html
# Sat, 04 Nov 2017 12:47:45 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:47:47 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:47:47 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4ea7a3ab6d6bfbdf47e2f77efac8ece288f6dbd112ff65558833520aa56a16`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bec6160e27ed6ca0e6a174b2957b2535b9950c804bcb47e19704b7d885fe3d3`  
		Last Modified: Sat, 04 Nov 2017 12:57:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1500a9d7c945e722623a86b2e6ee74ceb201674bc46a6744966ceae365ea5b8b`  
		Last Modified: Sat, 04 Nov 2017 12:58:57 GMT  
		Size: 336.7 MB (336708610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fcdaac63bd0bb74b2c804338b56c63ea7a4403c5170432b223cae4479e6a2d`  
		Last Modified: Sat, 04 Nov 2017 12:57:17 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c947cecfaa0b18f0e46ca4566192435c52e854693a3519ce0115c350f4c9ee`  
		Last Modified: Sat, 04 Nov 2017 12:57:17 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fccd56ffa4bca466384679a77723e30abe9c17db0eaecfcfca4c44114a1560a`  
		Last Modified: Sat, 04 Nov 2017 12:57:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad293872ccaa9d8cce3592a79202f92fa541fa5ae8f5474855a0287ac1c7ff7`  
		Last Modified: Sat, 04 Nov 2017 12:57:15 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0068f186b99598fb991289ae1a9ae821fdbda41cc21658f8ad90e77319dc67d0`  
		Last Modified: Sat, 04 Nov 2017 12:57:14 GMT  
		Size: 907.4 KB (907399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc93af8a58b88880c003c39592b30a7fa1a58d700c3bc66b350a85d55edbb09`  
		Last Modified: Sat, 04 Nov 2017 12:57:14 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310f1085bd650107a317a3eeb587139e1270a7bf7e4f5045a9e1d16f3765ea5d`  
		Last Modified: Sat, 04 Nov 2017 12:57:14 GMT  
		Size: 495.9 KB (495871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a36b85821fed410344d6cfd4fedfcd648f79c0fa141e76aa1a3a23eb749cbc`  
		Last Modified: Sat, 04 Nov 2017 12:57:20 GMT  
		Size: 13.8 MB (13788834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eebd0917efc04225b2ab6bfc11ff459d62b619c9ee7ab5508e3996454b352e3`  
		Last Modified: Sat, 04 Nov 2017 12:57:11 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136c91e3776d6eb502ecb99ae7224ba0a2c4abd85cfb1684542fdc3895309c56`  
		Last Modified: Sat, 04 Nov 2017 12:57:12 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6490d9c1c05f175dbae6b3f38bfe5fe5551aa3ce9d6d92ebaaa620d7fc5b2392`  
		Last Modified: Sat, 04 Nov 2017 12:57:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86afdbb9d92b4113007568d773a914cac2fd4dd16653bcdd9fce4a894b7c3387`  
		Last Modified: Sat, 04 Nov 2017 12:57:12 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:49d201d896154016908e1d0502aebeb33d1287e0be12e141863c5276781c61a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:3dd7cb7007868e3c49e9167b4797d8d4feb91fc4afdcfa71f878b3d18f7d62d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.1 MB (419140199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9118725a99c10b0290e30496b25768ce3a06d3bcc8abf1322f7e303a20f3d05c`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Sat, 04 Nov 2017 09:45:18 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Sat, 04 Nov 2017 09:45:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 04 Nov 2017 09:45:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 09:45:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 04 Nov 2017 09:45:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 04 Nov 2017 09:45:21 GMT
CMD ["/bin/bash"]
# Sat, 04 Nov 2017 12:28:43 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Sat, 04 Nov 2017 12:44:26 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Sat, 04 Nov 2017 12:46:54 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.1+b119 && /usr/local/zend/bin/zendctl.sh stop
# Sat, 04 Nov 2017 12:46:56 GMT
COPY file:9067f1585f25b36ab3a81514a2f158ba0d6e0431cad7de2ea9c4b4249a6c134f in /etc/ 
# Sat, 04 Nov 2017 12:46:56 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Sat, 04 Nov 2017 12:46:58 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Sat, 04 Nov 2017 12:46:59 GMT
RUN /usr/sbin/a2enmod headers
# Sat, 04 Nov 2017 12:47:00 GMT
ENV ZS_INIT_VERSION=0.3
# Sat, 04 Nov 2017 12:47:00 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Sat, 04 Nov 2017 12:47:08 GMT
RUN apt-get install -y curl
# Sat, 04 Nov 2017 12:47:09 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Sat, 04 Nov 2017 12:47:10 GMT
WORKDIR /usr/local/zs-init
# Sat, 04 Nov 2017 12:47:16 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Sat, 04 Nov 2017 12:47:43 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Sat, 04 Nov 2017 12:47:43 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Sat, 04 Nov 2017 12:47:44 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Sat, 04 Nov 2017 12:47:45 GMT
RUN rm /var/www/html/index.html
# Sat, 04 Nov 2017 12:47:45 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 80/tcp
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 443/tcp
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 10081/tcp
# Sat, 04 Nov 2017 12:47:46 GMT
EXPOSE 10082/tcp
# Sat, 04 Nov 2017 12:47:47 GMT
WORKDIR /var/www/html
# Sat, 04 Nov 2017 12:47:47 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ddd5e846a849fff877e4d61dc1002ca5d51de8521cced522e9503312b4c4e7`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 72.7 KB (72653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90d12f864ab9d4cfe6475fc7ba508327c26d3d624344d6584a1fd860c3f0fefa`  
		Last Modified: Sat, 04 Nov 2017 09:46:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57ea72e31769e58f0c36db12d25683eba8fa14aaab0518729f28b3766b01112`  
		Last Modified: Sat, 04 Nov 2017 09:46:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783a14252520746e3f7fee937b5f14ac1a84ef248ea0b1343d8b58b96df3fa9f`  
		Last Modified: Sat, 04 Nov 2017 09:46:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4ea7a3ab6d6bfbdf47e2f77efac8ece288f6dbd112ff65558833520aa56a16`  
		Last Modified: Sat, 04 Nov 2017 12:49:55 GMT  
		Size: 13.1 KB (13064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bec6160e27ed6ca0e6a174b2957b2535b9950c804bcb47e19704b7d885fe3d3`  
		Last Modified: Sat, 04 Nov 2017 12:57:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1500a9d7c945e722623a86b2e6ee74ceb201674bc46a6744966ceae365ea5b8b`  
		Last Modified: Sat, 04 Nov 2017 12:58:57 GMT  
		Size: 336.7 MB (336708610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fcdaac63bd0bb74b2c804338b56c63ea7a4403c5170432b223cae4479e6a2d`  
		Last Modified: Sat, 04 Nov 2017 12:57:17 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c947cecfaa0b18f0e46ca4566192435c52e854693a3519ce0115c350f4c9ee`  
		Last Modified: Sat, 04 Nov 2017 12:57:17 GMT  
		Size: 259.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fccd56ffa4bca466384679a77723e30abe9c17db0eaecfcfca4c44114a1560a`  
		Last Modified: Sat, 04 Nov 2017 12:57:16 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad293872ccaa9d8cce3592a79202f92fa541fa5ae8f5474855a0287ac1c7ff7`  
		Last Modified: Sat, 04 Nov 2017 12:57:15 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0068f186b99598fb991289ae1a9ae821fdbda41cc21658f8ad90e77319dc67d0`  
		Last Modified: Sat, 04 Nov 2017 12:57:14 GMT  
		Size: 907.4 KB (907399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc93af8a58b88880c003c39592b30a7fa1a58d700c3bc66b350a85d55edbb09`  
		Last Modified: Sat, 04 Nov 2017 12:57:14 GMT  
		Size: 18.8 KB (18832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310f1085bd650107a317a3eeb587139e1270a7bf7e4f5045a9e1d16f3765ea5d`  
		Last Modified: Sat, 04 Nov 2017 12:57:14 GMT  
		Size: 495.9 KB (495871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a36b85821fed410344d6cfd4fedfcd648f79c0fa141e76aa1a3a23eb749cbc`  
		Last Modified: Sat, 04 Nov 2017 12:57:20 GMT  
		Size: 13.8 MB (13788834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eebd0917efc04225b2ab6bfc11ff459d62b619c9ee7ab5508e3996454b352e3`  
		Last Modified: Sat, 04 Nov 2017 12:57:11 GMT  
		Size: 13.4 KB (13362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136c91e3776d6eb502ecb99ae7224ba0a2c4abd85cfb1684542fdc3895309c56`  
		Last Modified: Sat, 04 Nov 2017 12:57:12 GMT  
		Size: 2.5 KB (2535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6490d9c1c05f175dbae6b3f38bfe5fe5551aa3ce9d6d92ebaaa620d7fc5b2392`  
		Last Modified: Sat, 04 Nov 2017 12:57:12 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86afdbb9d92b4113007568d773a914cac2fd4dd16653bcdd9fce4a894b7c3387`  
		Last Modified: Sat, 04 Nov 2017 12:57:12 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
