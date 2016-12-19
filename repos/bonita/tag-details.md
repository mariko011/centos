<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.2.4`](#bonita724)
-	[`bonita:7.3.3`](#bonita733)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.2.4`

```console
$ docker pull bonita@sha256:3284dbe270a5a9d6812d4e272d6083b4dba6d976cca700c30812d045ba4ae125
```

-	Platforms:
	-	linux; amd64

### `bonita:7.2.4` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207061090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7683623105146fcb5394df07368bd4264952b7a0f8de696036abea8ca2c17a2f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 17:55:21 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 15 Dec 2016 17:58:08 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:58:09 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 15 Dec 2016 17:58:10 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 15 Dec 2016 18:05:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Dec 2016 18:05:30 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 15 Dec 2016 18:05:30 GMT
ENV BONITA_VERSION=7.2.4
# Thu, 15 Dec 2016 18:05:31 GMT
ENV TOMCAT_VERSION=7.0.67
# Thu, 15 Dec 2016 18:05:31 GMT
ENV BONITA_SHA256=6b444fd6a681491f89a12cf801650ecbbd9b2342f6073baca0909c4bf1e36e07
# Thu, 15 Dec 2016 18:05:31 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Thu, 15 Dec 2016 18:05:32 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Thu, 15 Dec 2016 18:05:32 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Thu, 15 Dec 2016 18:05:32 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Thu, 15 Dec 2016 18:05:35 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Thu, 15 Dec 2016 18:05:46 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 15 Dec 2016 18:05:46 GMT
VOLUME [/opt/bonita]
# Thu, 15 Dec 2016 18:05:47 GMT
COPY dir:c46d790a33226426e306313e34c7d1f3c42ed57c5e8a3410a973d72aeb886df3 in /opt/files 
# Thu, 15 Dec 2016 18:05:47 GMT
COPY dir:4024f665b5e26ffe45bb55870cc8577a94dfc16fda7d53f0fe54dbfe45c11977 in /opt/templates 
# Thu, 15 Dec 2016 18:05:48 GMT
EXPOSE 8080/tcp
# Thu, 15 Dec 2016 18:05:48 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb8ea77b3ef6eda60746e087ba9f553b2c97705edad1cc5f18324477ef3953`  
		Last Modified: Mon, 19 Dec 2016 18:08:39 GMT  
		Size: 65.0 MB (65012113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf898ed759d685e445c8e3e4396407b65760788abfe0be06f3471343fc3d57`  
		Last Modified: Mon, 19 Dec 2016 18:08:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e7544b18106f2e4d07f9be7b9632fe2a11bddb24d751bfa7ff58bcdbbdb881`  
		Last Modified: Mon, 19 Dec 2016 18:08:21 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390fdeb77840ec00d18a8181af1f7ac50666d644f0785ca3128f283ce02d417a`  
		Last Modified: Mon, 19 Dec 2016 18:08:21 GMT  
		Size: 123.2 KB (123189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b6f28e5927e77b284180c8a8b72ae383d4e2ccdee99a68a4204546287c72e1`  
		Last Modified: Mon, 19 Dec 2016 18:08:20 GMT  
		Size: 807.6 KB (807586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dad8494b1b90424e95df999a5efaed3ec057fda8ef3d762767cc5c12f6ac49`  
		Last Modified: Mon, 19 Dec 2016 18:08:19 GMT  
		Size: 1.4 MB (1382492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc63e8a5d616678278a33d2ad0d5ee9c82c38dfd5aae758329356272f4a9178e`  
		Last Modified: Mon, 19 Dec 2016 18:08:26 GMT  
		Size: 74.0 MB (73958853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed1101d159a0ddc3f86feb4e707e969ebc858512eacddba8849eb7b620600d2`  
		Last Modified: Mon, 19 Dec 2016 18:08:19 GMT  
		Size: 5.8 KB (5798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b80706f73d19e8d32d72a27a293a54eb13f50cd189e91a897b9dda948270217`  
		Last Modified: Mon, 19 Dec 2016 18:08:18 GMT  
		Size: 2.2 KB (2195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.3.3`

```console
$ docker pull bonita@sha256:ec898cedb096db799ddb8ae9febeab6a30ebbcff7401392f3364a01dcea077fb
```

-	Platforms:
	-	linux; amd64

### `bonita:7.3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216497071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e396cc42db86c4f721df1e6af3efd102752943f033e120a81d20d1cc2e1cb2d9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 17:55:21 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 15 Dec 2016 17:58:08 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:58:09 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 15 Dec 2016 17:58:10 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 15 Dec 2016 18:05:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Dec 2016 18:05:30 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 15 Dec 2016 18:05:48 GMT
ENV BONITA_VERSION=7.3.3
# Thu, 15 Dec 2016 18:05:49 GMT
ENV TOMCAT_VERSION=7.0.67
# Thu, 15 Dec 2016 18:05:49 GMT
ENV BONITA_SHA256=128911e3b6241e135b2dbc496d8ce383d921f2f2478fc5fad4331e1fd362eb4f
# Thu, 15 Dec 2016 18:05:49 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Thu, 15 Dec 2016 18:05:50 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Thu, 15 Dec 2016 18:05:50 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Thu, 15 Dec 2016 18:05:50 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Thu, 15 Dec 2016 18:05:52 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Thu, 15 Dec 2016 18:06:03 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 15 Dec 2016 18:06:04 GMT
VOLUME [/opt/bonita]
# Thu, 15 Dec 2016 18:06:04 GMT
COPY dir:fde4873241031c6b90b44319c923aea3900e89716d18d78efb0f8fd43ac375a6 in /opt/files 
# Thu, 15 Dec 2016 18:06:05 GMT
COPY dir:02b08d3b2ed19a654c43e135e71e47c809262f2a015647ff3da638716f22696f in /opt/templates 
# Thu, 15 Dec 2016 18:06:05 GMT
EXPOSE 8080/tcp
# Thu, 15 Dec 2016 18:06:05 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb8ea77b3ef6eda60746e087ba9f553b2c97705edad1cc5f18324477ef3953`  
		Last Modified: Mon, 19 Dec 2016 18:08:39 GMT  
		Size: 65.0 MB (65012113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf898ed759d685e445c8e3e4396407b65760788abfe0be06f3471343fc3d57`  
		Last Modified: Mon, 19 Dec 2016 18:08:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e7544b18106f2e4d07f9be7b9632fe2a11bddb24d751bfa7ff58bcdbbdb881`  
		Last Modified: Mon, 19 Dec 2016 18:08:21 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390fdeb77840ec00d18a8181af1f7ac50666d644f0785ca3128f283ce02d417a`  
		Last Modified: Mon, 19 Dec 2016 18:08:21 GMT  
		Size: 123.2 KB (123189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b6f28e5927e77b284180c8a8b72ae383d4e2ccdee99a68a4204546287c72e1`  
		Last Modified: Mon, 19 Dec 2016 18:08:20 GMT  
		Size: 807.6 KB (807586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105e2e66f5bbf9d275bb1e37c5170c21a6c838d875044823ec64b561811b494b`  
		Last Modified: Mon, 19 Dec 2016 18:09:16 GMT  
		Size: 1.4 MB (1382495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7124213be62885b7940e12c04dea34375c3cb65ff2811c409f0b227da1d9fee8`  
		Last Modified: Mon, 19 Dec 2016 18:09:22 GMT  
		Size: 83.4 MB (83393764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12007920701e5dd04b61a3c67cd9553c013a27e0ac3c9ad29faf4ed68e5f6f2`  
		Last Modified: Mon, 19 Dec 2016 18:09:15 GMT  
		Size: 5.8 KB (5805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bde4365a839252d61b8b8300b942a3e825de191a1dea715b4bac66a52b57e8`  
		Last Modified: Mon, 19 Dec 2016 18:09:15 GMT  
		Size: 3.3 KB (3255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:ec898cedb096db799ddb8ae9febeab6a30ebbcff7401392f3364a01dcea077fb
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216497071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e396cc42db86c4f721df1e6af3efd102752943f033e120a81d20d1cc2e1cb2d9`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 15 Dec 2016 17:44:58 GMT
ADD file:b2236d49147fe14d8d4970b667155ad84bde96d183889a76a7512560a0da3f82 in / 
# Thu, 15 Dec 2016 17:44:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 15 Dec 2016 17:45:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:45:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 15 Dec 2016 17:45:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 15 Dec 2016 17:45:02 GMT
CMD ["/bin/bash"]
# Thu, 15 Dec 2016 17:55:21 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 15 Dec 2016 17:58:08 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 15 Dec 2016 17:58:09 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 15 Dec 2016 17:58:10 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 15 Dec 2016 18:05:26 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 15 Dec 2016 18:05:30 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 15 Dec 2016 18:05:48 GMT
ENV BONITA_VERSION=7.3.3
# Thu, 15 Dec 2016 18:05:49 GMT
ENV TOMCAT_VERSION=7.0.67
# Thu, 15 Dec 2016 18:05:49 GMT
ENV BONITA_SHA256=128911e3b6241e135b2dbc496d8ce383d921f2f2478fc5fad4331e1fd362eb4f
# Thu, 15 Dec 2016 18:05:49 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Thu, 15 Dec 2016 18:05:50 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Thu, 15 Dec 2016 18:05:50 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Thu, 15 Dec 2016 18:05:50 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Thu, 15 Dec 2016 18:05:52 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Thu, 15 Dec 2016 18:06:03 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 15 Dec 2016 18:06:04 GMT
VOLUME [/opt/bonita]
# Thu, 15 Dec 2016 18:06:04 GMT
COPY dir:fde4873241031c6b90b44319c923aea3900e89716d18d78efb0f8fd43ac375a6 in /opt/files 
# Thu, 15 Dec 2016 18:06:05 GMT
COPY dir:02b08d3b2ed19a654c43e135e71e47c809262f2a015647ff3da638716f22696f in /opt/templates 
# Thu, 15 Dec 2016 18:06:05 GMT
EXPOSE 8080/tcp
# Thu, 15 Dec 2016 18:06:05 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:16da43b30d897cf2826bf61806d6da79d67ff1caeaa9bab650f7d503db200561`  
		Last Modified: Thu, 15 Dec 2016 17:47:59 GMT  
		Size: 65.7 MB (65694192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1840843dafedebd856ed6d39163c298e3f8a939f78b1ec26e9b8d753a4cd493b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 71.6 KB (71558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91246eb75b7da4d6c45bc96c72180830c7146c6395069457a893ad63b84a2de7`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7faa681b41d79d2982921bf4f0ee7892690e67a338b8fb70fbd8e90950f9d2b1`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b84c64d4262ace291e55ae89ac447ccfe37a9946df127892b369a2cfb7fa5b`  
		Last Modified: Thu, 15 Dec 2016 17:47:38 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8abb8ea77b3ef6eda60746e087ba9f553b2c97705edad1cc5f18324477ef3953`  
		Last Modified: Mon, 19 Dec 2016 18:08:39 GMT  
		Size: 65.0 MB (65012113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ecf898ed759d685e445c8e3e4396407b65760788abfe0be06f3471343fc3d57`  
		Last Modified: Mon, 19 Dec 2016 18:08:22 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e7544b18106f2e4d07f9be7b9632fe2a11bddb24d751bfa7ff58bcdbbdb881`  
		Last Modified: Mon, 19 Dec 2016 18:08:21 GMT  
		Size: 1.8 KB (1787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390fdeb77840ec00d18a8181af1f7ac50666d644f0785ca3128f283ce02d417a`  
		Last Modified: Mon, 19 Dec 2016 18:08:21 GMT  
		Size: 123.2 KB (123189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b6f28e5927e77b284180c8a8b72ae383d4e2ccdee99a68a4204546287c72e1`  
		Last Modified: Mon, 19 Dec 2016 18:08:20 GMT  
		Size: 807.6 KB (807586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105e2e66f5bbf9d275bb1e37c5170c21a6c838d875044823ec64b561811b494b`  
		Last Modified: Mon, 19 Dec 2016 18:09:16 GMT  
		Size: 1.4 MB (1382495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7124213be62885b7940e12c04dea34375c3cb65ff2811c409f0b227da1d9fee8`  
		Last Modified: Mon, 19 Dec 2016 18:09:22 GMT  
		Size: 83.4 MB (83393764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12007920701e5dd04b61a3c67cd9553c013a27e0ac3c9ad29faf4ed68e5f6f2`  
		Last Modified: Mon, 19 Dec 2016 18:09:15 GMT  
		Size: 5.8 KB (5805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bde4365a839252d61b8b8300b942a3e825de191a1dea715b4bac66a52b57e8`  
		Last Modified: Mon, 19 Dec 2016 18:09:15 GMT  
		Size: 3.3 KB (3255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
