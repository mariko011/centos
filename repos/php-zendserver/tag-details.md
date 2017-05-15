<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `php-zendserver`

-	[`php-zendserver:5.5`](#php-zendserver55)
-	[`php-zendserver:8.5-php5.5`](#php-zendserver85-php55)
-	[`php-zendserver:5.6`](#php-zendserver56)
-	[`php-zendserver:8.5-php5.6`](#php-zendserver85-php56)
-	[`php-zendserver:8.5`](#php-zendserver85)
-	[`php-zendserver:5.4`](#php-zendserver54)
-	[`php-zendserver:7.0-php5.4`](#php-zendserver70-php54)
-	[`php-zendserver:9.1`](#php-zendserver91)
-	[`php-zendserver:latest`](#php-zendserverlatest)

## `php-zendserver:5.5`

```console
$ docker pull php-zendserver@sha256:097c5c95c8795a200e1a369d748d9dae88b3a4ddb3954e3100090002e578c021
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333932823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f84c693f9113b4539be9b436efcc93eb916fbf6dfc167c243964c751667f31b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:43:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:44:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:46:32 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:46:42 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 15 May 2017 22:46:44 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:46:45 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:46:47 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 22:47:06 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 15 May 2017 22:47:07 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 15 May 2017 22:47:12 GMT
RUN apt-get install -y curl
# Mon, 15 May 2017 22:47:30 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 15 May 2017 22:47:31 GMT
WORKDIR /usr/local/zs-init
# Mon, 15 May 2017 22:47:38 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 15 May 2017 22:48:27 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 15 May 2017 22:48:40 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 15 May 2017 22:48:42 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 15 May 2017 22:48:43 GMT
RUN rm /var/www/html/index.html
# Mon, 15 May 2017 22:49:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 15 May 2017 22:49:04 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 22:49:05 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 22:49:06 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 22:49:26 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 22:49:27 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 22:49:28 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e3eba11c7be500620d1335d993fcd2999223b52d167dea82a69e078cf5789`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a9811def8e1c745d96c3021771b73f03ac4f9f851cc13391c0f616a120fcb`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723db9cba21844bc4478d0c5f45882e99b2d2bcc1e5a96543e706da086eaed29`  
		Last Modified: Mon, 15 May 2017 23:06:56 GMT  
		Size: 254.9 MB (254934723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704f2d06a2045a29c06442544e87fc2aec36f098a2cbc630750c55cfb0736c79`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1339f5f2762f4a3d59add82d4d7f87aa46197560857e74f79167af2a599bf7e9`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9471393271a30859e6df68e1af4f61232b22b1e9fb49ebdd99905b1e1b5a46`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fb8e8f4e1f196f16dbfcd6aad8df0420b2818c271e0ca1fb871d44af29dcf3`  
		Last Modified: Mon, 15 May 2017 23:06:01 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d9bc835731c242ba88c0e3c1db07e79dfed5976f3d7ef64e0bc6809ec14086`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 474.3 KB (474345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6355ab435cbce5f5785a675b298c1a503d41753e0a3be8763d3c9ab9b7de5ae5`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 15.7 KB (15682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424b2776996f543232492ce638e5573e684d8d723b54e4623238b730d28ec6e`  
		Last Modified: Mon, 15 May 2017 23:06:01 GMT  
		Size: 488.8 KB (488777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8836d48898211593645604a5893c941d4d3b5c7162b165eae0ae2c6c1783ef39`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 10.8 MB (10810371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa8f9341d2ad997fc89c13941d4887f44ba4e8ed9f0985a21294708de66fae3`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb1aee98711a1449d38919bfb7d82f44a62cb400d90f31efded6f3a58029ff0`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8d43f44ec52e479a71e8ecc99dd0e8824305fb570b1631b963ada1679c651b`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a00125e66fcc9eaff0a56bcf91fb375be91f4e7ba667a62336af8a9022c09`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:097c5c95c8795a200e1a369d748d9dae88b3a4ddb3954e3100090002e578c021
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333932823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f84c693f9113b4539be9b436efcc93eb916fbf6dfc167c243964c751667f31b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:43:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:44:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:46:32 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:46:42 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 15 May 2017 22:46:44 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:46:45 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:46:47 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 22:47:06 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 15 May 2017 22:47:07 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 15 May 2017 22:47:12 GMT
RUN apt-get install -y curl
# Mon, 15 May 2017 22:47:30 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 15 May 2017 22:47:31 GMT
WORKDIR /usr/local/zs-init
# Mon, 15 May 2017 22:47:38 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 15 May 2017 22:48:27 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 15 May 2017 22:48:40 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 15 May 2017 22:48:42 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 15 May 2017 22:48:43 GMT
RUN rm /var/www/html/index.html
# Mon, 15 May 2017 22:49:04 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 15 May 2017 22:49:04 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 22:49:05 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 22:49:06 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 22:49:26 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 22:49:27 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 22:49:28 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e3eba11c7be500620d1335d993fcd2999223b52d167dea82a69e078cf5789`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a9811def8e1c745d96c3021771b73f03ac4f9f851cc13391c0f616a120fcb`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723db9cba21844bc4478d0c5f45882e99b2d2bcc1e5a96543e706da086eaed29`  
		Last Modified: Mon, 15 May 2017 23:06:56 GMT  
		Size: 254.9 MB (254934723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704f2d06a2045a29c06442544e87fc2aec36f098a2cbc630750c55cfb0736c79`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1339f5f2762f4a3d59add82d4d7f87aa46197560857e74f79167af2a599bf7e9`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9471393271a30859e6df68e1af4f61232b22b1e9fb49ebdd99905b1e1b5a46`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fb8e8f4e1f196f16dbfcd6aad8df0420b2818c271e0ca1fb871d44af29dcf3`  
		Last Modified: Mon, 15 May 2017 23:06:01 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d9bc835731c242ba88c0e3c1db07e79dfed5976f3d7ef64e0bc6809ec14086`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 474.3 KB (474345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6355ab435cbce5f5785a675b298c1a503d41753e0a3be8763d3c9ab9b7de5ae5`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 15.7 KB (15682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1424b2776996f543232492ce638e5573e684d8d723b54e4623238b730d28ec6e`  
		Last Modified: Mon, 15 May 2017 23:06:01 GMT  
		Size: 488.8 KB (488777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8836d48898211593645604a5893c941d4d3b5c7162b165eae0ae2c6c1783ef39`  
		Last Modified: Mon, 15 May 2017 23:06:02 GMT  
		Size: 10.8 MB (10810371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa8f9341d2ad997fc89c13941d4887f44ba4e8ed9f0985a21294708de66fae3`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 13.3 KB (13344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb1aee98711a1449d38919bfb7d82f44a62cb400d90f31efded6f3a58029ff0`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f8d43f44ec52e479a71e8ecc99dd0e8824305fb570b1631b963ada1679c651b`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a00125e66fcc9eaff0a56bcf91fb375be91f4e7ba667a62336af8a9022c09`  
		Last Modified: Mon, 15 May 2017 23:05:59 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:27e5484ba51001af4425fdde5ca437ea08c12df75fa2290baea3ebce95ea6057
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330732511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a99555223690a407132f83f5013816953bfbe657b7fb48745ae1f22f2a9d47`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:43:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:44:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:52:13 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:52:31 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 15 May 2017 22:52:32 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:52:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:52:54 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 22:52:55 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 15 May 2017 22:52:56 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 15 May 2017 22:53:01 GMT
RUN apt-get install -y curl
# Mon, 15 May 2017 22:53:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 15 May 2017 22:53:19 GMT
WORKDIR /usr/local/zs-init
# Mon, 15 May 2017 22:53:25 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 15 May 2017 22:54:18 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 15 May 2017 22:54:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 15 May 2017 22:54:30 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 15 May 2017 22:54:32 GMT
RUN rm /var/www/html/index.html
# Mon, 15 May 2017 22:54:33 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 15 May 2017 22:54:54 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 22:54:55 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 22:54:56 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 22:54:56 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 22:55:17 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 22:55:18 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e3eba11c7be500620d1335d993fcd2999223b52d167dea82a69e078cf5789`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a9811def8e1c745d96c3021771b73f03ac4f9f851cc13391c0f616a120fcb`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f9f614bfdb044561fe7fd3fe12ae05730afa0af3bf25b3a317fc0ca77d0799`  
		Last Modified: Mon, 15 May 2017 23:09:01 GMT  
		Size: 251.7 MB (251703429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41da4085b23da1611b732d2e6c4e04887d9016b33f0ef696d83a809ece23e5e`  
		Last Modified: Mon, 15 May 2017 23:08:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87612783e38ea4a89b488b0914a16f487ac3abbd60ef9cd644d82e5ddd8969d`  
		Last Modified: Mon, 15 May 2017 23:08:10 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb06babfc9bd20b5d4d71d47de26a855284017a98a29a432c6def6cf2a54bf5`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9661ca207ed429580f6feb98866fa3a3a4a6bdc999b43e5921040b24cc3c90`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4a7371634fad4365ac5d43aea318de4d06d7c4f52b02892b22ca7b2e074d7`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 476.1 KB (476143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6868e3b5476bc3dc9956323b3e8e2cd1bdf0d7773d7a572560b01036568c27d4`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faded539652c5e3b9286998965f8e04eef94b274cdd50276582fd40f2613f67e`  
		Last Modified: Mon, 15 May 2017 23:08:06 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f261764934638ecec8f2d351df0f8fd1172606deb3554c26636741f150259e0`  
		Last Modified: Mon, 15 May 2017 23:08:12 GMT  
		Size: 10.8 MB (10839564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24736b918f7febcf3456e1b48ebb83e50141f514f30a5ef0e020bdf2eaf1759b`  
		Last Modified: Mon, 15 May 2017 23:08:06 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39caebb682eb61f6a9eac6029f0c947eb1e5a6ddb0aa97a036aea8f69c8b14be`  
		Last Modified: Mon, 15 May 2017 23:08:07 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba1243d50bf740dff9940541fc1a6357dd9139f2c9e1c4f63d2cdfa8fdac499`  
		Last Modified: Mon, 15 May 2017 23:08:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67aae8fc03e5ee24f492fcdd1fe0e410586c6055a957abd60a4f926c6e7ddfc8`  
		Last Modified: Mon, 15 May 2017 23:08:08 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:27e5484ba51001af4425fdde5ca437ea08c12df75fa2290baea3ebce95ea6057
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330732511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a99555223690a407132f83f5013816953bfbe657b7fb48745ae1f22f2a9d47`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:43:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:44:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:52:13 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:52:31 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 15 May 2017 22:52:32 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:52:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:52:54 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 22:52:55 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 15 May 2017 22:52:56 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 15 May 2017 22:53:01 GMT
RUN apt-get install -y curl
# Mon, 15 May 2017 22:53:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 15 May 2017 22:53:19 GMT
WORKDIR /usr/local/zs-init
# Mon, 15 May 2017 22:53:25 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 15 May 2017 22:54:18 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 15 May 2017 22:54:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 15 May 2017 22:54:30 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 15 May 2017 22:54:32 GMT
RUN rm /var/www/html/index.html
# Mon, 15 May 2017 22:54:33 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 15 May 2017 22:54:54 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 22:54:55 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 22:54:56 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 22:54:56 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 22:55:17 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 22:55:18 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e3eba11c7be500620d1335d993fcd2999223b52d167dea82a69e078cf5789`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a9811def8e1c745d96c3021771b73f03ac4f9f851cc13391c0f616a120fcb`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f9f614bfdb044561fe7fd3fe12ae05730afa0af3bf25b3a317fc0ca77d0799`  
		Last Modified: Mon, 15 May 2017 23:09:01 GMT  
		Size: 251.7 MB (251703429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41da4085b23da1611b732d2e6c4e04887d9016b33f0ef696d83a809ece23e5e`  
		Last Modified: Mon, 15 May 2017 23:08:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87612783e38ea4a89b488b0914a16f487ac3abbd60ef9cd644d82e5ddd8969d`  
		Last Modified: Mon, 15 May 2017 23:08:10 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb06babfc9bd20b5d4d71d47de26a855284017a98a29a432c6def6cf2a54bf5`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9661ca207ed429580f6feb98866fa3a3a4a6bdc999b43e5921040b24cc3c90`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4a7371634fad4365ac5d43aea318de4d06d7c4f52b02892b22ca7b2e074d7`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 476.1 KB (476143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6868e3b5476bc3dc9956323b3e8e2cd1bdf0d7773d7a572560b01036568c27d4`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faded539652c5e3b9286998965f8e04eef94b274cdd50276582fd40f2613f67e`  
		Last Modified: Mon, 15 May 2017 23:08:06 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f261764934638ecec8f2d351df0f8fd1172606deb3554c26636741f150259e0`  
		Last Modified: Mon, 15 May 2017 23:08:12 GMT  
		Size: 10.8 MB (10839564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24736b918f7febcf3456e1b48ebb83e50141f514f30a5ef0e020bdf2eaf1759b`  
		Last Modified: Mon, 15 May 2017 23:08:06 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39caebb682eb61f6a9eac6029f0c947eb1e5a6ddb0aa97a036aea8f69c8b14be`  
		Last Modified: Mon, 15 May 2017 23:08:07 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba1243d50bf740dff9940541fc1a6357dd9139f2c9e1c4f63d2cdfa8fdac499`  
		Last Modified: Mon, 15 May 2017 23:08:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67aae8fc03e5ee24f492fcdd1fe0e410586c6055a957abd60a4f926c6e7ddfc8`  
		Last Modified: Mon, 15 May 2017 23:08:08 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:27e5484ba51001af4425fdde5ca437ea08c12df75fa2290baea3ebce95ea6057
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.7 MB (330732511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a99555223690a407132f83f5013816953bfbe657b7fb48745ae1f22f2a9d47`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:43:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:44:20 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:52:13 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:52:31 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Mon, 15 May 2017 22:52:32 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:52:33 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:52:54 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 22:52:55 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 15 May 2017 22:52:56 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 15 May 2017 22:53:01 GMT
RUN apt-get install -y curl
# Mon, 15 May 2017 22:53:18 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 15 May 2017 22:53:19 GMT
WORKDIR /usr/local/zs-init
# Mon, 15 May 2017 22:53:25 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 15 May 2017 22:54:18 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 15 May 2017 22:54:29 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 15 May 2017 22:54:30 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 15 May 2017 22:54:32 GMT
RUN rm /var/www/html/index.html
# Mon, 15 May 2017 22:54:33 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 15 May 2017 22:54:54 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 22:54:55 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 22:54:56 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 22:54:56 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 22:55:17 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 22:55:18 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e3eba11c7be500620d1335d993fcd2999223b52d167dea82a69e078cf5789`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3a9811def8e1c745d96c3021771b73f03ac4f9f851cc13391c0f616a120fcb`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f9f614bfdb044561fe7fd3fe12ae05730afa0af3bf25b3a317fc0ca77d0799`  
		Last Modified: Mon, 15 May 2017 23:09:01 GMT  
		Size: 251.7 MB (251703429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41da4085b23da1611b732d2e6c4e04887d9016b33f0ef696d83a809ece23e5e`  
		Last Modified: Mon, 15 May 2017 23:08:12 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87612783e38ea4a89b488b0914a16f487ac3abbd60ef9cd644d82e5ddd8969d`  
		Last Modified: Mon, 15 May 2017 23:08:10 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb06babfc9bd20b5d4d71d47de26a855284017a98a29a432c6def6cf2a54bf5`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9661ca207ed429580f6feb98866fa3a3a4a6bdc999b43e5921040b24cc3c90`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4a7371634fad4365ac5d43aea318de4d06d7c4f52b02892b22ca7b2e074d7`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 476.1 KB (476143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6868e3b5476bc3dc9956323b3e8e2cd1bdf0d7773d7a572560b01036568c27d4`  
		Last Modified: Mon, 15 May 2017 23:08:09 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faded539652c5e3b9286998965f8e04eef94b274cdd50276582fd40f2613f67e`  
		Last Modified: Mon, 15 May 2017 23:08:06 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f261764934638ecec8f2d351df0f8fd1172606deb3554c26636741f150259e0`  
		Last Modified: Mon, 15 May 2017 23:08:12 GMT  
		Size: 10.8 MB (10839564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24736b918f7febcf3456e1b48ebb83e50141f514f30a5ef0e020bdf2eaf1759b`  
		Last Modified: Mon, 15 May 2017 23:08:06 GMT  
		Size: 13.3 KB (13343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39caebb682eb61f6a9eac6029f0c947eb1e5a6ddb0aa97a036aea8f69c8b14be`  
		Last Modified: Mon, 15 May 2017 23:08:07 GMT  
		Size: 2.5 KB (2519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba1243d50bf740dff9940541fc1a6357dd9139f2c9e1c4f63d2cdfa8fdac499`  
		Last Modified: Mon, 15 May 2017 23:08:07 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67aae8fc03e5ee24f492fcdd1fe0e410586c6055a957abd60a4f926c6e7ddfc8`  
		Last Modified: Mon, 15 May 2017 23:08:08 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

```console
$ docker pull php-zendserver@sha256:f5bd4e873f28eaeb6133e3788f0124cb35c334a38fbf3ed541be54eba77ae98f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295568295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaf09be41dc3a07000c152c5ccaa285d5464af811c42d7a9aa56af4222b6e76`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:38:03 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Mon, 15 May 2017 22:38:05 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 15 May 2017 22:38:06 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 15 May 2017 22:38:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:38:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:40:18 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:42:07 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:42:09 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:42:30 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 22:42:31 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 22:42:31 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 22:42:32 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 22:42:33 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 22:42:53 GMT
EXPOSE 10060/tcp
# Mon, 15 May 2017 22:42:54 GMT
EXPOSE 10061/tcp
# Mon, 15 May 2017 22:42:55 GMT
EXPOSE 10062/tcp
# Mon, 15 May 2017 22:42:56 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 22:42:56 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43191a7288bc0f95d0c586e1c299f029e638824b68ca5d5b752cdf1820f5053d`  
		Last Modified: Mon, 15 May 2017 23:03:57 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d8512b6438da39a69587471c2ecd3d51db83f0e1430648ee0e7b2233c15e81`  
		Last Modified: Mon, 15 May 2017 23:03:56 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d644f37ecdb5b99c5305c81fc4495142d07da569e2812c044f875acf58c8d1`  
		Last Modified: Mon, 15 May 2017 23:03:56 GMT  
		Size: 938.4 KB (938368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8001e1e94ad804e1223b0b288cb4defce62b2033eb19728be24d36c9d530887c`  
		Last Modified: Mon, 15 May 2017 23:03:53 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06725076f8831300a3074725e8d81956a1048991fd639e30e454c2c0ecffa71`  
		Last Modified: Mon, 15 May 2017 23:03:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98ae8dfcf64f9bc9f7d2c1260c66b40a527824331a68a380309740bc1dd271c`  
		Last Modified: Mon, 15 May 2017 23:04:36 GMT  
		Size: 227.4 MB (227425587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4ba0d257ba8134ce2abfef396319a69cadc8a5860625e1f41d101baf298cb5`  
		Last Modified: Mon, 15 May 2017 23:03:55 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ead3aaf8c6b40ab8b1dbaac198d90a785bd51b1a9242dec7582a0cf7db25be`  
		Last Modified: Mon, 15 May 2017 23:03:55 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6141cb825843df883a9b9de67819d3d8290da234f9f98cedd56da7f2d255bd75`  
		Last Modified: Mon, 15 May 2017 23:03:54 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:f5bd4e873f28eaeb6133e3788f0124cb35c334a38fbf3ed541be54eba77ae98f
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295568295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aaf09be41dc3a07000c152c5ccaa285d5464af811c42d7a9aa56af4222b6e76`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:38:03 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Mon, 15 May 2017 22:38:05 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Mon, 15 May 2017 22:38:06 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Mon, 15 May 2017 22:38:29 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:38:30 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:40:18 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:42:07 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:42:09 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:42:30 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 22:42:31 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 22:42:31 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 22:42:32 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 22:42:33 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 22:42:53 GMT
EXPOSE 10060/tcp
# Mon, 15 May 2017 22:42:54 GMT
EXPOSE 10061/tcp
# Mon, 15 May 2017 22:42:55 GMT
EXPOSE 10062/tcp
# Mon, 15 May 2017 22:42:56 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 22:42:56 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43191a7288bc0f95d0c586e1c299f029e638824b68ca5d5b752cdf1820f5053d`  
		Last Modified: Mon, 15 May 2017 23:03:57 GMT  
		Size: 1.0 KB (1003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d8512b6438da39a69587471c2ecd3d51db83f0e1430648ee0e7b2233c15e81`  
		Last Modified: Mon, 15 May 2017 23:03:56 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d644f37ecdb5b99c5305c81fc4495142d07da569e2812c044f875acf58c8d1`  
		Last Modified: Mon, 15 May 2017 23:03:56 GMT  
		Size: 938.4 KB (938368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8001e1e94ad804e1223b0b288cb4defce62b2033eb19728be24d36c9d530887c`  
		Last Modified: Mon, 15 May 2017 23:03:53 GMT  
		Size: 13.1 KB (13057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06725076f8831300a3074725e8d81956a1048991fd639e30e454c2c0ecffa71`  
		Last Modified: Mon, 15 May 2017 23:03:53 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98ae8dfcf64f9bc9f7d2c1260c66b40a527824331a68a380309740bc1dd271c`  
		Last Modified: Mon, 15 May 2017 23:04:36 GMT  
		Size: 227.4 MB (227425587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4ba0d257ba8134ce2abfef396319a69cadc8a5860625e1f41d101baf298cb5`  
		Last Modified: Mon, 15 May 2017 23:03:55 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ead3aaf8c6b40ab8b1dbaac198d90a785bd51b1a9242dec7582a0cf7db25be`  
		Last Modified: Mon, 15 May 2017 23:03:55 GMT  
		Size: 300.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6141cb825843df883a9b9de67819d3d8290da234f9f98cedd56da7f2d255bd75`  
		Last Modified: Mon, 15 May 2017 23:03:54 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:e40a679a3f0942f4c34d9dc4a7fa7565ad099f5f6578255a0258057f73dd6065
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.9 MB (416905916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5690af1a20d3a27e686a3ee1606c6c7daf7fdb36ddbf1eabc9e84be2aeb9cd2f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:43:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:55:59 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:58:33 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:59:17 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Mon, 15 May 2017 22:59:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:59:20 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:59:22 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 23:00:26 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 15 May 2017 23:00:27 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 15 May 2017 23:00:34 GMT
RUN apt-get install -y curl
# Mon, 15 May 2017 23:00:50 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 15 May 2017 23:00:51 GMT
WORKDIR /usr/local/zs-init
# Mon, 15 May 2017 23:01:18 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 15 May 2017 23:02:04 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 15 May 2017 23:02:22 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 15 May 2017 23:02:24 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 15 May 2017 23:02:25 GMT
RUN rm /var/www/html/index.html
# Mon, 15 May 2017 23:02:45 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 15 May 2017 23:02:46 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 23:02:47 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 23:02:48 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 23:03:08 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 23:03:09 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 23:03:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e3eba11c7be500620d1335d993fcd2999223b52d167dea82a69e078cf5789`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c343c6c3f3f257134376460a13ff3803ead771bd4e6f302ec94a064e88903b0`  
		Last Modified: Mon, 15 May 2017 23:11:00 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a9097246c22fa46fd5addcd8166b41ce41ad37e7cf79b8e2a01797ceb8da8`  
		Last Modified: Mon, 15 May 2017 23:12:00 GMT  
		Size: 337.9 MB (337882734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6b49a46c57bd9961e48691fa7638b8cdb5722629b45d7b3936dfe0d7cf679c`  
		Last Modified: Mon, 15 May 2017 23:10:58 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04fe480e78b205310348147ab7f90a09e0e84a590e5cca9717edcecf6ffba78`  
		Last Modified: Mon, 15 May 2017 23:10:58 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4bb44cb08980de8019248663bdc34bb75d72cf8f0843447ae4c45de44ae574`  
		Last Modified: Mon, 15 May 2017 23:10:59 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be32f9e91e0b5724d32288d1f75b396e16daef07af64956924492578a8e33f60`  
		Last Modified: Mon, 15 May 2017 23:10:57 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7b5c18007de54658b1547d8efa47d54d49dd249268e2ffb79e3551c09a1714`  
		Last Modified: Mon, 15 May 2017 23:10:57 GMT  
		Size: 470.2 KB (470202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec800781d5464faf0cc2ee3abc744fd606ca7cbd9db701a817275cad3812901f`  
		Last Modified: Mon, 15 May 2017 23:10:56 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f78ae45e725d0191e3686d6e3cbf5bcc6a70411f657772d22c63168ae15a6`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64d35f9e8b0a831cbae3b0d3bf02878f56221ba40a18b8b5d096527cb8aa6cd`  
		Last Modified: Mon, 15 May 2017 23:10:57 GMT  
		Size: 10.8 MB (10839597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4142306e76a890559655944007d689cc84cd05b0d64ee318d538c88c2ffff0`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 13.3 KB (13347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa7740d12d9a6aee68e8a0e1b7284f9751a23d4e424f5c12c09aad7c0e3093`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736eb14540c7952de9d557d2a485fcecc064264a5d8498f632f1ea2c9366a7c5`  
		Last Modified: Mon, 15 May 2017 23:10:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520d61ef47ffcf8fab27810c6b6a4b164611ad08f287cb2d1afe70f95bfa3cba`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:e40a679a3f0942f4c34d9dc4a7fa7565ad099f5f6578255a0258057f73dd6065
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.9 MB (416905916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5690af1a20d3a27e686a3ee1606c6c7daf7fdb36ddbf1eabc9e84be2aeb9cd2f`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 15 May 2017 16:42:44 GMT
ADD file:352ee0cc1cc352d862c55cade419e2e7b64a63c663b896d8014efdf44008bce4 in / 
# Mon, 15 May 2017 16:42:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:42:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:42:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:42:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:42:51 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:43:59 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 15 May 2017 22:55:59 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Mon, 15 May 2017 22:58:33 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Mon, 15 May 2017 22:59:17 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Mon, 15 May 2017 22:59:18 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Mon, 15 May 2017 22:59:20 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Mon, 15 May 2017 22:59:22 GMT
RUN /usr/sbin/a2enmod headers
# Mon, 15 May 2017 23:00:26 GMT
ENV ZS_INIT_VERSION=0.2
# Mon, 15 May 2017 23:00:27 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Mon, 15 May 2017 23:00:34 GMT
RUN apt-get install -y curl
# Mon, 15 May 2017 23:00:50 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Mon, 15 May 2017 23:00:51 GMT
WORKDIR /usr/local/zs-init
# Mon, 15 May 2017 23:01:18 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Mon, 15 May 2017 23:02:04 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Mon, 15 May 2017 23:02:22 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Mon, 15 May 2017 23:02:24 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Mon, 15 May 2017 23:02:25 GMT
RUN rm /var/www/html/index.html
# Mon, 15 May 2017 23:02:45 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Mon, 15 May 2017 23:02:46 GMT
EXPOSE 80/tcp
# Mon, 15 May 2017 23:02:47 GMT
EXPOSE 443/tcp
# Mon, 15 May 2017 23:02:48 GMT
EXPOSE 10081/tcp
# Mon, 15 May 2017 23:03:08 GMT
EXPOSE 10082/tcp
# Mon, 15 May 2017 23:03:09 GMT
WORKDIR /var/www/html
# Mon, 15 May 2017 23:03:10 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:cf0a75889057c9255505ce5ef36a0d00ac480c945557adfb12674417a0d3efed`  
		Last Modified: Mon, 15 May 2017 16:47:33 GMT  
		Size: 67.1 MB (67103479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de9902faf0bd04893447386c8aeeb1e551b3b6622470f4eb838428359672d7`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 72.6 KB (72621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0f7711c5e6b6f9181958c18daa56809bfa45a03f3a45da4cd0d83675dd896`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6391432e12cf7305a906d4264230c98cfe04f9a96ba2d97305964ad1b709986`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624ce029a17f47b8a009a436b1190e11820261f63408a1e7e213d30845c1d0ab`  
		Last Modified: Mon, 15 May 2017 16:47:22 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2e3eba11c7be500620d1335d993fcd2999223b52d167dea82a69e078cf5789`  
		Last Modified: Mon, 15 May 2017 23:06:04 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c343c6c3f3f257134376460a13ff3803ead771bd4e6f302ec94a064e88903b0`  
		Last Modified: Mon, 15 May 2017 23:11:00 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6a9097246c22fa46fd5addcd8166b41ce41ad37e7cf79b8e2a01797ceb8da8`  
		Last Modified: Mon, 15 May 2017 23:12:00 GMT  
		Size: 337.9 MB (337882734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d6b49a46c57bd9961e48691fa7638b8cdb5722629b45d7b3936dfe0d7cf679c`  
		Last Modified: Mon, 15 May 2017 23:10:58 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04fe480e78b205310348147ab7f90a09e0e84a590e5cca9717edcecf6ffba78`  
		Last Modified: Mon, 15 May 2017 23:10:58 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4bb44cb08980de8019248663bdc34bb75d72cf8f0843447ae4c45de44ae574`  
		Last Modified: Mon, 15 May 2017 23:10:59 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be32f9e91e0b5724d32288d1f75b396e16daef07af64956924492578a8e33f60`  
		Last Modified: Mon, 15 May 2017 23:10:57 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe7b5c18007de54658b1547d8efa47d54d49dd249268e2ffb79e3551c09a1714`  
		Last Modified: Mon, 15 May 2017 23:10:57 GMT  
		Size: 470.2 KB (470202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec800781d5464faf0cc2ee3abc744fd606ca7cbd9db701a817275cad3812901f`  
		Last Modified: Mon, 15 May 2017 23:10:56 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f78ae45e725d0191e3686d6e3cbf5bcc6a70411f657772d22c63168ae15a6`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64d35f9e8b0a831cbae3b0d3bf02878f56221ba40a18b8b5d096527cb8aa6cd`  
		Last Modified: Mon, 15 May 2017 23:10:57 GMT  
		Size: 10.8 MB (10839597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4142306e76a890559655944007d689cc84cd05b0d64ee318d538c88c2ffff0`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 13.3 KB (13347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaa7740d12d9a6aee68e8a0e1b7284f9751a23d4e424f5c12c09aad7c0e3093`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736eb14540c7952de9d557d2a485fcecc064264a5d8498f632f1ea2c9366a7c5`  
		Last Modified: Mon, 15 May 2017 23:10:54 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520d61ef47ffcf8fab27810c6b6a4b164611ad08f287cb2d1afe70f95bfa3cba`  
		Last Modified: Mon, 15 May 2017 23:10:55 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
