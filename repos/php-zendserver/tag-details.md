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
$ docker pull php-zendserver@sha256:014cc01a38d6ef1e1ffea1fd3599d0b8dda31f2055302efdedd2934dae0a3f38
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328785679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c241f99c2bc6131c78c698aaa6d54740880645e3b6006e9769379adaea14fd`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:02:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 17:02:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 17:06:04 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 17:06:08 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Apr 2017 17:06:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 17:06:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 17:06:12 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 17:06:13 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Apr 2017 17:06:13 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Apr 2017 17:06:18 GMT
RUN apt-get install -y curl
# Thu, 13 Apr 2017 17:06:21 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Apr 2017 17:06:22 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Apr 2017 17:06:32 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Apr 2017 17:07:12 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Apr 2017 17:07:13 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Apr 2017 17:07:14 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Apr 2017 17:07:16 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Apr 2017 17:07:16 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Apr 2017 17:07:17 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 17:07:17 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 17:07:18 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 17:07:19 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 17:07:20 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 17:07:21 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77565d35374d4a43d26c61bef4146553558033fa679400bf6240af2338b50571`  
		Last Modified: Thu, 13 Apr 2017 18:56:24 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfbf62c8bf73238cd78daa84e252e2b75a8c8b4bce945823a3285275236017`  
		Last Modified: Thu, 13 Apr 2017 18:56:23 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bdde2221a424fa90dedcf1fd74fd3773b459f56e2c465d2399d292528126cc`  
		Last Modified: Thu, 13 Apr 2017 18:58:00 GMT  
		Size: 251.5 MB (251461918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b026af312ffcdd69e8bf8fb4e5d4b46d1ac795132a62b830a3d0f0ab81e01581`  
		Last Modified: Thu, 13 Apr 2017 18:56:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831a1bc872744a152d6431769f49c28e0a8029b58ca7b65387c0b10a2be6f379`  
		Last Modified: Thu, 13 Apr 2017 18:56:21 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b2e72ffee760043278846a3ca0fa1c50b91574886d3f2f54e1d4fde2b05947`  
		Last Modified: Thu, 13 Apr 2017 18:56:20 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa77c2867b3fd959c88b70a7588de640f1b37b33b7e2799ac7551300ccf5e51d`  
		Last Modified: Thu, 13 Apr 2017 18:56:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad8d9b9eb27609b0db55fb3a74e5111579687e233cddb3f402c2be876e3921c`  
		Last Modified: Thu, 13 Apr 2017 18:56:19 GMT  
		Size: 474.5 KB (474454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2269a3ace9b9114f58113196754d7a12c954345fdf0f81592ed0d640bd5c20`  
		Last Modified: Thu, 13 Apr 2017 18:56:19 GMT  
		Size: 15.7 KB (15682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8d2b808a15cc9a997bbd74242f6d3d3ec908249a0ec5730a23080ead9cdc49`  
		Last Modified: Thu, 13 Apr 2017 18:56:18 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e479925372354d7c36e648918d5cc0f0e0f122c48c02b73d8d24fae31e6ab89`  
		Last Modified: Thu, 13 Apr 2017 18:56:21 GMT  
		Size: 10.5 MB (10537041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15478b8448123dfde558e119a7728a5f2bf1502f5d00d75190bddc057b270fd8`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7576891ceff4fcd92be8e0de1e544977e7702dee2e2a657b62eede1eeaae5689`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505d2eac00ee2ff1e4d38fa97e54f3f5a9c3f471b053bcc03f24564e0b96e9d`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b5973e43dc2137b75a197b8efdd4c69f480d661afac2e7ccd7160634ede14a`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.5`

```console
$ docker pull php-zendserver@sha256:014cc01a38d6ef1e1ffea1fd3599d0b8dda31f2055302efdedd2934dae0a3f38
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.8 MB (328785679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c241f99c2bc6131c78c698aaa6d54740880645e3b6006e9769379adaea14fd`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:02:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 17:02:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 17:06:04 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.5 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 17:06:08 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Apr 2017 17:06:09 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 17:06:10 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 17:06:12 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 17:06:13 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Apr 2017 17:06:13 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Apr 2017 17:06:18 GMT
RUN apt-get install -y curl
# Thu, 13 Apr 2017 17:06:21 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Apr 2017 17:06:22 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Apr 2017 17:06:32 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Apr 2017 17:07:12 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Apr 2017 17:07:13 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Apr 2017 17:07:14 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Apr 2017 17:07:16 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Apr 2017 17:07:16 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Apr 2017 17:07:17 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 17:07:17 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 17:07:18 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 17:07:19 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 17:07:20 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 17:07:21 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77565d35374d4a43d26c61bef4146553558033fa679400bf6240af2338b50571`  
		Last Modified: Thu, 13 Apr 2017 18:56:24 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfbf62c8bf73238cd78daa84e252e2b75a8c8b4bce945823a3285275236017`  
		Last Modified: Thu, 13 Apr 2017 18:56:23 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bdde2221a424fa90dedcf1fd74fd3773b459f56e2c465d2399d292528126cc`  
		Last Modified: Thu, 13 Apr 2017 18:58:00 GMT  
		Size: 251.5 MB (251461918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b026af312ffcdd69e8bf8fb4e5d4b46d1ac795132a62b830a3d0f0ab81e01581`  
		Last Modified: Thu, 13 Apr 2017 18:56:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831a1bc872744a152d6431769f49c28e0a8029b58ca7b65387c0b10a2be6f379`  
		Last Modified: Thu, 13 Apr 2017 18:56:21 GMT  
		Size: 258.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b2e72ffee760043278846a3ca0fa1c50b91574886d3f2f54e1d4fde2b05947`  
		Last Modified: Thu, 13 Apr 2017 18:56:20 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa77c2867b3fd959c88b70a7588de640f1b37b33b7e2799ac7551300ccf5e51d`  
		Last Modified: Thu, 13 Apr 2017 18:56:20 GMT  
		Size: 288.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ad8d9b9eb27609b0db55fb3a74e5111579687e233cddb3f402c2be876e3921c`  
		Last Modified: Thu, 13 Apr 2017 18:56:19 GMT  
		Size: 474.5 KB (474454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2269a3ace9b9114f58113196754d7a12c954345fdf0f81592ed0d640bd5c20`  
		Last Modified: Thu, 13 Apr 2017 18:56:19 GMT  
		Size: 15.7 KB (15682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8d2b808a15cc9a997bbd74242f6d3d3ec908249a0ec5730a23080ead9cdc49`  
		Last Modified: Thu, 13 Apr 2017 18:56:18 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e479925372354d7c36e648918d5cc0f0e0f122c48c02b73d8d24fae31e6ab89`  
		Last Modified: Thu, 13 Apr 2017 18:56:21 GMT  
		Size: 10.5 MB (10537041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15478b8448123dfde558e119a7728a5f2bf1502f5d00d75190bddc057b270fd8`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7576891ceff4fcd92be8e0de1e544977e7702dee2e2a657b62eede1eeaae5689`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 2.5 KB (2521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b505d2eac00ee2ff1e4d38fa97e54f3f5a9c3f471b053bcc03f24564e0b96e9d`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b5973e43dc2137b75a197b8efdd4c69f480d661afac2e7ccd7160634ede14a`  
		Last Modified: Thu, 13 Apr 2017 18:56:16 GMT  
		Size: 1.2 KB (1247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.6`

```console
$ docker pull php-zendserver@sha256:c7a559450c5eee8a2c380f77064e2a8af0a27ad4a6c07d92cf7f8d923619fce0
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (328971926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bfaa0875a90fcde3d12c7d769292f453a76ab8504c3390e4c33eadf33b497e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:02:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 17:02:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 17:10:47 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 17:10:49 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Apr 2017 17:10:50 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 17:10:52 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 17:10:53 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 17:10:54 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Apr 2017 17:10:54 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Apr 2017 17:10:59 GMT
RUN apt-get install -y curl
# Thu, 13 Apr 2017 17:11:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Apr 2017 17:11:03 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Apr 2017 17:11:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Apr 2017 17:11:50 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Apr 2017 17:11:51 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Apr 2017 17:11:52 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Apr 2017 17:11:54 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Apr 2017 17:11:55 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Apr 2017 17:11:55 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 17:11:56 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 17:11:56 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 17:11:57 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 17:11:58 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 17:12:01 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77565d35374d4a43d26c61bef4146553558033fa679400bf6240af2338b50571`  
		Last Modified: Thu, 13 Apr 2017 18:56:24 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfbf62c8bf73238cd78daa84e252e2b75a8c8b4bce945823a3285275236017`  
		Last Modified: Thu, 13 Apr 2017 18:56:23 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6258c89d4f17e4ffd53f42536551d1311c39cde861c824c51e227c14b441b610`  
		Last Modified: Thu, 13 Apr 2017 19:00:10 GMT  
		Size: 251.6 MB (251620937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeb6c1800dfae459dcab5eb8c19454bd1fc6a3eef1e172675cad7ef9416f45a`  
		Last Modified: Thu, 13 Apr 2017 18:58:47 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74401df48df6c30875a3992fdff4cb18ff208ad80465b4ea58aaab6570c9129f`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb1996565f3c46534ec041c7af996460b98e519303e1a389c4a68646b994dd8`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbaaa3b73c21f6208ee8f9cefbb3722fa9e137fd1bd6fdd42cf5b17d76c8101`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dc17b9548e26b0e16e4210ed7a922502a810989b34b85cec2f50e566494ba`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 476.2 KB (476217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6345bf48f6a25f44a6bc827f8c2b49ff3f133b0a695d5145b915653cc11b6d6f`  
		Last Modified: Thu, 13 Apr 2017 18:58:45 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56defacd7c71ebd93af9c262414d2b784b175c7fcb4c0c926ef00f828c6d2b2b`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 488.8 KB (488774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade831381f9e4759c3b2c1923766ad4aa7ef6618f6adc911476a6abdc75319f`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 10.6 MB (10562516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f7130e47bee90d6b05f2f415dba182df03cef2ed5caff1412028a11d1f2895`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf938e14ec1f36a3872319f02f65d7094390c62e1d433e2355586a415d9cb6`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040dff4cc3c338ac5b128ad98f4e62722eb4bd9f0176d9d52c4b97d040b6bd69`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1700daaae7bd1d72ae0ee8be4f97647106df87844d5e5a10040a58e608bb4a15`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5-php5.6`

```console
$ docker pull php-zendserver@sha256:c7a559450c5eee8a2c380f77064e2a8af0a27ad4a6c07d92cf7f8d923619fce0
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5-php5.6` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (328971926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bfaa0875a90fcde3d12c7d769292f453a76ab8504c3390e4c33eadf33b497e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:02:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 17:02:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 17:10:47 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 17:10:49 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Apr 2017 17:10:50 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 17:10:52 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 17:10:53 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 17:10:54 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Apr 2017 17:10:54 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Apr 2017 17:10:59 GMT
RUN apt-get install -y curl
# Thu, 13 Apr 2017 17:11:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Apr 2017 17:11:03 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Apr 2017 17:11:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Apr 2017 17:11:50 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Apr 2017 17:11:51 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Apr 2017 17:11:52 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Apr 2017 17:11:54 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Apr 2017 17:11:55 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Apr 2017 17:11:55 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 17:11:56 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 17:11:56 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 17:11:57 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 17:11:58 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 17:12:01 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77565d35374d4a43d26c61bef4146553558033fa679400bf6240af2338b50571`  
		Last Modified: Thu, 13 Apr 2017 18:56:24 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfbf62c8bf73238cd78daa84e252e2b75a8c8b4bce945823a3285275236017`  
		Last Modified: Thu, 13 Apr 2017 18:56:23 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6258c89d4f17e4ffd53f42536551d1311c39cde861c824c51e227c14b441b610`  
		Last Modified: Thu, 13 Apr 2017 19:00:10 GMT  
		Size: 251.6 MB (251620937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeb6c1800dfae459dcab5eb8c19454bd1fc6a3eef1e172675cad7ef9416f45a`  
		Last Modified: Thu, 13 Apr 2017 18:58:47 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74401df48df6c30875a3992fdff4cb18ff208ad80465b4ea58aaab6570c9129f`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb1996565f3c46534ec041c7af996460b98e519303e1a389c4a68646b994dd8`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbaaa3b73c21f6208ee8f9cefbb3722fa9e137fd1bd6fdd42cf5b17d76c8101`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dc17b9548e26b0e16e4210ed7a922502a810989b34b85cec2f50e566494ba`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 476.2 KB (476217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6345bf48f6a25f44a6bc827f8c2b49ff3f133b0a695d5145b915653cc11b6d6f`  
		Last Modified: Thu, 13 Apr 2017 18:58:45 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56defacd7c71ebd93af9c262414d2b784b175c7fcb4c0c926ef00f828c6d2b2b`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 488.8 KB (488774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade831381f9e4759c3b2c1923766ad4aa7ef6618f6adc911476a6abdc75319f`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 10.6 MB (10562516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f7130e47bee90d6b05f2f415dba182df03cef2ed5caff1412028a11d1f2895`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf938e14ec1f36a3872319f02f65d7094390c62e1d433e2355586a415d9cb6`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040dff4cc3c338ac5b128ad98f4e62722eb4bd9f0176d9d52c4b97d040b6bd69`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1700daaae7bd1d72ae0ee8be4f97647106df87844d5e5a10040a58e608bb4a15`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:8.5`

```console
$ docker pull php-zendserver@sha256:c7a559450c5eee8a2c380f77064e2a8af0a27ad4a6c07d92cf7f8d923619fce0
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:8.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.0 MB (328971926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bfaa0875a90fcde3d12c7d769292f453a76ab8504c3390e4c33eadf33b497e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:02:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 17:02:34 GMT
RUN echo "deb http://repos.zend.com/zend-server/8.5/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 17:10:47 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-5.6 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 17:10:49 GMT
COPY file:7ead1fa52a84d592d3f6402f7ec6a593311aac6f7d31aaed200d310d67f34d54 in /etc/ 
# Thu, 13 Apr 2017 17:10:50 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 17:10:52 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 17:10:53 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 17:10:54 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Apr 2017 17:10:54 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Apr 2017 17:10:59 GMT
RUN apt-get install -y curl
# Thu, 13 Apr 2017 17:11:02 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Apr 2017 17:11:03 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Apr 2017 17:11:09 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Apr 2017 17:11:50 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Apr 2017 17:11:51 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Apr 2017 17:11:52 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Apr 2017 17:11:54 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Apr 2017 17:11:55 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Apr 2017 17:11:55 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 17:11:56 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 17:11:56 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 17:11:57 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 17:11:58 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 17:12:01 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77565d35374d4a43d26c61bef4146553558033fa679400bf6240af2338b50571`  
		Last Modified: Thu, 13 Apr 2017 18:56:24 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cfbf62c8bf73238cd78daa84e252e2b75a8c8b4bce945823a3285275236017`  
		Last Modified: Thu, 13 Apr 2017 18:56:23 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6258c89d4f17e4ffd53f42536551d1311c39cde861c824c51e227c14b441b610`  
		Last Modified: Thu, 13 Apr 2017 19:00:10 GMT  
		Size: 251.6 MB (251620937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeb6c1800dfae459dcab5eb8c19454bd1fc6a3eef1e172675cad7ef9416f45a`  
		Last Modified: Thu, 13 Apr 2017 18:58:47 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74401df48df6c30875a3992fdff4cb18ff208ad80465b4ea58aaab6570c9129f`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb1996565f3c46534ec041c7af996460b98e519303e1a389c4a68646b994dd8`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbaaa3b73c21f6208ee8f9cefbb3722fa9e137fd1bd6fdd42cf5b17d76c8101`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 290.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac6dc17b9548e26b0e16e4210ed7a922502a810989b34b85cec2f50e566494ba`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 476.2 KB (476217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6345bf48f6a25f44a6bc827f8c2b49ff3f133b0a695d5145b915653cc11b6d6f`  
		Last Modified: Thu, 13 Apr 2017 18:58:45 GMT  
		Size: 15.7 KB (15683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56defacd7c71ebd93af9c262414d2b784b175c7fcb4c0c926ef00f828c6d2b2b`  
		Last Modified: Thu, 13 Apr 2017 18:58:43 GMT  
		Size: 488.8 KB (488774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ade831381f9e4759c3b2c1923766ad4aa7ef6618f6adc911476a6abdc75319f`  
		Last Modified: Thu, 13 Apr 2017 18:58:46 GMT  
		Size: 10.6 MB (10562516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f7130e47bee90d6b05f2f415dba182df03cef2ed5caff1412028a11d1f2895`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 13.3 KB (13346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faf938e14ec1f36a3872319f02f65d7094390c62e1d433e2355586a415d9cb6`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 2.5 KB (2518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040dff4cc3c338ac5b128ad98f4e62722eb4bd9f0176d9d52c4b97d040b6bd69`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1700daaae7bd1d72ae0ee8be4f97647106df87844d5e5a10040a58e608bb4a15`  
		Last Modified: Thu, 13 Apr 2017 18:58:41 GMT  
		Size: 1.2 KB (1245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:5.4`

**does not exist** (yet?)

## `php-zendserver:7.0-php5.4`

```console
$ docker pull php-zendserver@sha256:5c7f8982df9d135f85bb9952c7fa7508a8377032d33241d26c52cfbf0328991a
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:7.0-php5.4` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.5 MB (292543492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a467111bcc04d074e0c352ec2b573e6a499e4a67116de4348f6ad84ecab3a80b`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 16:59:38 GMT
COPY file:95d3a4794c1a0c2c89c918284582abd10fa37c5532e0ce6bd5b899d5ae9b2916 in /usr/local/bin/run 
# Thu, 13 Apr 2017 16:59:40 GMT
COPY file:912eb834561b6f3501a6e6cf6c0fb8e572ff47f775f09d60fb2bf1c9376719c6 in /usr/local/bin/nothing 
# Thu, 13 Apr 2017 16:59:41 GMT
COPY file:0b83de880883c5fe59b43b34902295d1c3d7d008c3a84b32c82285fb29414a96 in /usr/lib/x86_64-linux-gnu/ 
# Thu, 13 Apr 2017 16:59:44 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 16:59:45 GMT
RUN echo "deb http://repos.zend.com/zend-server/7.0/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 17:02:00 GMT
RUN apt-get update && apt-get install -y zend-server-php-5.4 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 17:02:02 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 17:02:05 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 17:02:07 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 17:02:08 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 17:02:08 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 17:02:09 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 17:02:10 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 17:02:10 GMT
EXPOSE 10060/tcp
# Thu, 13 Apr 2017 17:02:11 GMT
EXPOSE 10061/tcp
# Thu, 13 Apr 2017 17:02:12 GMT
EXPOSE 10062/tcp
# Thu, 13 Apr 2017 17:02:13 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 17:02:13 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2453a68b7bfad1b45cf472d9d738ef0cb49dd560b56794eef5d8a05a6e1df3`  
		Last Modified: Thu, 13 Apr 2017 19:01:36 GMT  
		Size: 1000.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0bced3392a2c3545be176b6a5aae12a961c5f4072b3e394c335e948c99b6c2`  
		Last Modified: Thu, 13 Apr 2017 19:01:37 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69619bed4f7e8231a372a6fb3a6148fbd844569a2bdc4cfd48d0abbf86312674`  
		Last Modified: Thu, 13 Apr 2017 19:01:36 GMT  
		Size: 938.4 KB (938368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d8729526b91d452a4b0a402a238ebe78515b49aaaded4c7df6b8de8d741807`  
		Last Modified: Thu, 13 Apr 2017 19:01:36 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e843a4413fa8021151d11685dc88b2d7e928838148e869e8bbd8ad20c392138`  
		Last Modified: Thu, 13 Apr 2017 19:01:33 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86b08237ade303f15830dadd56ffe6d0818b5cd9c16cbf8c4318b6538d4a31`  
		Last Modified: Thu, 13 Apr 2017 19:03:08 GMT  
		Size: 225.8 MB (225801913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fb09af2d376b4e8a3bd75d3247e0c55aad62070879f04663c0f2252be1aa4b`  
		Last Modified: Thu, 13 Apr 2017 19:01:33 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66fb4215fa7d55cb3c5edcd2bf8a7d37deee9d1d4a54085853d50678a841d6e5`  
		Last Modified: Thu, 13 Apr 2017 19:01:33 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc01aefc6d9ff428c22c499075c05972f4d9f6d0a8f5042598f240c0b83fb440`  
		Last Modified: Thu, 13 Apr 2017 19:01:34 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:9.1`

```console
$ docker pull php-zendserver@sha256:81d0e82fbd9977e792e3dbbbfecdd08b795dd5cf6ba811fb35366f8c9d0d341d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:9.1` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.4 MB (417403116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48443bc8508c75dc753434b2a7bad3b0a39a21fd5ab90dc73e6f7eaff354664e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:02:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 18:46:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 18:49:34 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 18:49:36 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Thu, 13 Apr 2017 18:49:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 18:49:39 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 18:49:40 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 18:49:41 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Apr 2017 18:49:42 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Apr 2017 18:49:47 GMT
RUN apt-get install -y curl
# Thu, 13 Apr 2017 18:49:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Apr 2017 18:49:50 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Apr 2017 18:49:56 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Apr 2017 18:50:27 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Apr 2017 18:50:28 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Apr 2017 18:50:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Apr 2017 18:50:31 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Apr 2017 18:50:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Apr 2017 18:50:32 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 18:50:33 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 18:50:33 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 18:50:34 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 18:50:35 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 18:50:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77565d35374d4a43d26c61bef4146553558033fa679400bf6240af2338b50571`  
		Last Modified: Thu, 13 Apr 2017 18:56:24 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83ee99d53d2e142f8ad22ebdc3ee5565360f285bcbb720fe0ef71c9572b8ec5`  
		Last Modified: Thu, 13 Apr 2017 19:04:20 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c12379644fde69219d38c453d3e84c2d5f2b066ca4e5e27b961bc54ef6b42ad`  
		Last Modified: Thu, 13 Apr 2017 19:05:33 GMT  
		Size: 340.1 MB (340058018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f4eb239cd908a587d13aeb3f407a5db84bd1f9374c82de1b762dfbd8062d1e`  
		Last Modified: Thu, 13 Apr 2017 19:04:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dea76a412337b8346539aa5c115d3f9728a5e166d2b99d48e11e154234e939`  
		Last Modified: Thu, 13 Apr 2017 19:04:18 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c0d787ce8fdd71d0375850524b6eb855a4a1a5166365cb58671083facbe068`  
		Last Modified: Thu, 13 Apr 2017 19:04:17 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf70b18b76a60f2efd2031f6b4431b1d78723601c66ac36ffd613b2ad1707c`  
		Last Modified: Thu, 13 Apr 2017 19:04:17 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ada6eb23b4c54fa0eff8ad16459795e5d345fe2a76773ed2f0b8ffb39cc79d`  
		Last Modified: Thu, 13 Apr 2017 19:04:17 GMT  
		Size: 470.3 KB (470289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf899ed1e1bb285f49a6cb23ed892cdf168d75d29b1140d52d59f7ac84c8f9dc`  
		Last Modified: Thu, 13 Apr 2017 19:04:16 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea728ae4e5126a3a287a3d8d768796177656199bb3eda0487f0ebdf52b29d7c7`  
		Last Modified: Thu, 13 Apr 2017 19:04:15 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f85587d4536f2a1b757d880547f8842abef70ba29eddf98e134615a85c948`  
		Last Modified: Thu, 13 Apr 2017 19:04:16 GMT  
		Size: 10.6 MB (10562561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dd91ec0ad08e15814bcc271e84aa4cd619acc117ffcb2c137ddaca24c35cdb`  
		Last Modified: Thu, 13 Apr 2017 19:04:13 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698dd39d63b7ec7bbcd5fc4b0ec05be2a0f5aef64af7c0d48911539177afc2ed`  
		Last Modified: Thu, 13 Apr 2017 19:04:13 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59961b7dd6ccde1055cc1d3343e13ba2a0338a8ed5d61a2b59750a6bce2d52b7`  
		Last Modified: Thu, 13 Apr 2017 19:04:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20decdbf266c441d6b77811b31a5415b3ea0475c19afa6b5ea011df37a5e2e52`  
		Last Modified: Thu, 13 Apr 2017 19:04:13 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:81d0e82fbd9977e792e3dbbbfecdd08b795dd5cf6ba811fb35366f8c9d0d341d
```

-	Platforms:
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.4 MB (417403116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48443bc8508c75dc753434b2a7bad3b0a39a21fd5ab90dc73e6f7eaff354664e`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Wed, 12 Apr 2017 21:05:58 GMT
ADD file:cd830d3aacc66aa750a588e56d835663908f7fbb855cb96d00aa01feb9567948 in / 
# Wed, 12 Apr 2017 21:06:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 12 Apr 2017 21:06:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 12 Apr 2017 21:06:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 12 Apr 2017 21:06:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 12 Apr 2017 21:06:08 GMT
CMD ["/bin/bash"]
# Thu, 13 Apr 2017 17:02:32 GMT
RUN apt-key adv --keyserver pgp.mit.edu --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Thu, 13 Apr 2017 18:46:38 GMT
RUN echo "deb http://repos.zend.com/zend-server/9.1/deb_apache2.4 server non-free" >> /etc/apt/sources.list.d/zend-server.list
# Thu, 13 Apr 2017 18:49:34 GMT
RUN apt-get update && apt-get install -y libmysqlclient18 unzip git zend-server-php-7.1=9.1.0+b93 && /usr/local/zend/bin/zendctl.sh stop
# Thu, 13 Apr 2017 18:49:36 GMT
COPY file:9302000aa37d879e280a25b18913689dc42f94e2ab4a489f62a9eef3a0d1b76b in /etc/ 
# Thu, 13 Apr 2017 18:49:37 GMT
COPY file:82de006e31874ac4e03685b3e87e988446f42138aaaf0fc5faad9cddb48040ba in /etc/apache2/conf-available 
# Thu, 13 Apr 2017 18:49:39 GMT
RUN /usr/sbin/a2enconf drop-http-proxy-header
# Thu, 13 Apr 2017 18:49:40 GMT
RUN /usr/sbin/a2enmod headers
# Thu, 13 Apr 2017 18:49:41 GMT
ENV ZS_INIT_VERSION=0.2
# Thu, 13 Apr 2017 18:49:42 GMT
ENV ZS_INIT_SHA256=1c5cf557daf48cf018dba1cf46208f215d3b5fab47c73ff2d39988581ebd6932
# Thu, 13 Apr 2017 18:49:47 GMT
RUN apt-get install -y curl
# Thu, 13 Apr 2017 18:49:49 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz
# Thu, 13 Apr 2017 18:49:50 GMT
WORKDIR /usr/local/zs-init
# Thu, 13 Apr 2017 18:49:56 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php
# Thu, 13 Apr 2017 18:50:27 GMT
RUN /usr/local/zend/bin/php composer.phar update
# Thu, 13 Apr 2017 18:50:28 GMT
COPY dir:6174d7fdcd8142a1b143e80efd2994e57dd5d7610a8fbfee3a7288ddf495dfdf in /usr/local/bin 
# Thu, 13 Apr 2017 18:50:29 GMT
COPY dir:b14dbc48195e4d5367d3aea2ed0fb26985bacb8d8229d24961363db2e2edf8f0 in /usr/local/zend/var/plugins/ 
# Thu, 13 Apr 2017 18:50:31 GMT
RUN rm /var/www/html/index.html
# Thu, 13 Apr 2017 18:50:32 GMT
COPY dir:9f1a7f23dfcf85f3c7148d98ae7914654fe8acfc4e4651f3a08427c09af24198 in /var/www/html 
# Thu, 13 Apr 2017 18:50:32 GMT
EXPOSE 80/tcp
# Thu, 13 Apr 2017 18:50:33 GMT
EXPOSE 443/tcp
# Thu, 13 Apr 2017 18:50:33 GMT
EXPOSE 10081/tcp
# Thu, 13 Apr 2017 18:50:34 GMT
EXPOSE 10082/tcp
# Thu, 13 Apr 2017 18:50:35 GMT
WORKDIR /var/www/html
# Thu, 13 Apr 2017 18:50:36 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:8f229c550c2e1d5736aa23d1b3b5e10a70f9db72e4246867fd73271c11284b45`  
		Last Modified: Mon, 03 Apr 2017 14:21:42 GMT  
		Size: 65.7 MB (65703403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1fb71e8df6645b62584c22e511df7717c8fcc1c111b5dea1df60eda9b22c42`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 71.6 KB (71565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75a345868568d65d520f0ca596863dc6906460eb1ce68209fc9f85bb1ccf04d`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8744e322b832a60fc910434a6cb371a45e176fc08c93604878357302b709945c`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 682.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5165bfce78f4e197b6aedf3bcae095bd466ed7f7de688cd0710fa6875a699ab`  
		Last Modified: Wed, 12 Apr 2017 21:09:42 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77565d35374d4a43d26c61bef4146553558033fa679400bf6240af2338b50571`  
		Last Modified: Thu, 13 Apr 2017 18:56:24 GMT  
		Size: 13.1 KB (13058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83ee99d53d2e142f8ad22ebdc3ee5565360f285bcbb720fe0ef71c9572b8ec5`  
		Last Modified: Thu, 13 Apr 2017 19:04:20 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c12379644fde69219d38c453d3e84c2d5f2b066ca4e5e27b961bc54ef6b42ad`  
		Last Modified: Thu, 13 Apr 2017 19:05:33 GMT  
		Size: 340.1 MB (340058018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f4eb239cd908a587d13aeb3f407a5db84bd1f9374c82de1b762dfbd8062d1e`  
		Last Modified: Thu, 13 Apr 2017 19:04:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90dea76a412337b8346539aa5c115d3f9728a5e166d2b99d48e11e154234e939`  
		Last Modified: Thu, 13 Apr 2017 19:04:18 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c0d787ce8fdd71d0375850524b6eb855a4a1a5166365cb58671083facbe068`  
		Last Modified: Thu, 13 Apr 2017 19:04:17 GMT  
		Size: 301.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf70b18b76a60f2efd2031f6b4431b1d78723601c66ac36ffd613b2ad1707c`  
		Last Modified: Thu, 13 Apr 2017 19:04:17 GMT  
		Size: 289.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ada6eb23b4c54fa0eff8ad16459795e5d345fe2a76773ed2f0b8ffb39cc79d`  
		Last Modified: Thu, 13 Apr 2017 19:04:17 GMT  
		Size: 470.3 KB (470289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf899ed1e1bb285f49a6cb23ed892cdf168d75d29b1140d52d59f7ac84c8f9dc`  
		Last Modified: Thu, 13 Apr 2017 19:04:16 GMT  
		Size: 15.7 KB (15678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea728ae4e5126a3a287a3d8d768796177656199bb3eda0487f0ebdf52b29d7c7`  
		Last Modified: Thu, 13 Apr 2017 19:04:15 GMT  
		Size: 488.8 KB (488775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f85587d4536f2a1b757d880547f8842abef70ba29eddf98e134615a85c948`  
		Last Modified: Thu, 13 Apr 2017 19:04:16 GMT  
		Size: 10.6 MB (10562561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dd91ec0ad08e15814bcc271e84aa4cd619acc117ffcb2c137ddaca24c35cdb`  
		Last Modified: Thu, 13 Apr 2017 19:04:13 GMT  
		Size: 13.3 KB (13341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698dd39d63b7ec7bbcd5fc4b0ec05be2a0f5aef64af7c0d48911539177afc2ed`  
		Last Modified: Thu, 13 Apr 2017 19:04:13 GMT  
		Size: 2.5 KB (2515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59961b7dd6ccde1055cc1d3343e13ba2a0338a8ed5d61a2b59750a6bce2d52b7`  
		Last Modified: Thu, 13 Apr 2017 19:04:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20decdbf266c441d6b77811b31a5415b3ea0475c19afa6b5ea011df37a5e2e52`  
		Last Modified: Thu, 13 Apr 2017 19:04:13 GMT  
		Size: 1.2 KB (1244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
