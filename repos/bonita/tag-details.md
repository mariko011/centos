<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.3.3`](#bonita733)
-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.3.3`

```console
$ docker pull bonita@sha256:4eef2497762a0d87befddf8051b629bf3a1c5529d4aaf2bf37235505ebffd34b
```

-	Platforms:
	-	linux; amd64

### `bonita:7.3.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218501692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1455da6a3bf4ff177738285a218eca1738ab89cc5a5245fa032e4b7104ce8eac`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
# Mon, 15 May 2017 19:41:03 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 15 May 2017 19:41:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 19:41:50 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 15 May 2017 19:42:11 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 15 May 2017 19:42:13 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 15 May 2017 19:42:36 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 15 May 2017 19:42:55 GMT
ENV BONITA_VERSION=7.3.3
# Mon, 15 May 2017 19:42:56 GMT
ENV TOMCAT_VERSION=7.0.67
# Mon, 15 May 2017 19:42:57 GMT
ENV BONITA_SHA256=128911e3b6241e135b2dbc496d8ce383d921f2f2478fc5fad4331e1fd362eb4f
# Mon, 15 May 2017 19:42:58 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Mon, 15 May 2017 19:42:59 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Mon, 15 May 2017 19:43:18 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Mon, 15 May 2017 19:43:19 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Mon, 15 May 2017 19:43:23 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Mon, 15 May 2017 19:43:34 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 15 May 2017 19:43:35 GMT
VOLUME [/opt/bonita]
# Mon, 15 May 2017 19:43:36 GMT
COPY dir:fde4873241031c6b90b44319c923aea3900e89716d18d78efb0f8fd43ac375a6 in /opt/files 
# Mon, 15 May 2017 19:43:37 GMT
COPY dir:02b08d3b2ed19a654c43e135e71e47c809262f2a015647ff3da638716f22696f in /opt/templates 
# Mon, 15 May 2017 19:43:38 GMT
EXPOSE 8080/tcp
# Mon, 15 May 2017 19:43:39 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:602e494304cf411586be3fa01f9f795cee4cc5c76f3df0bdd9d312549e9c45cc`  
		Last Modified: Mon, 15 May 2017 19:46:18 GMT  
		Size: 65.6 MB (65594885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74cbcf4cb1d4216a308c264162ce04ed8e098a042912e3ad5528dd692d02e6`  
		Last Modified: Mon, 15 May 2017 19:46:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b390b7ba0916411edf3dcc481f36fb8c87b64d1324cc37d7080987e5bfda21fe`  
		Last Modified: Mon, 15 May 2017 19:46:04 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0007e2c37e73ba87ffb7a6af3763cfcd00a707306bb884c1feba133080577`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 123.2 KB (123227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75885f9a9004c1bdc96a2c19ef7ca7aea6e9bd3759a0ebb207f717b80ed2f4c4`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 818.4 KB (818445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b7c83c611f7cc80a2bd7648105a4d3842f2f07d4e011b3de7c56a86a4c35eb`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 1.4 MB (1383043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6814f2b7690ef05a046c9572812774cda4c014a9c0f6d7ca322ccdda0a4fe8e`  
		Last Modified: Mon, 15 May 2017 19:46:11 GMT  
		Size: 83.4 MB (83393771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e832c70a0ecd9055264e6675e1c771c93824b491fbdb1d8d549a3ab8fa634f2b`  
		Last Modified: Mon, 15 May 2017 19:46:01 GMT  
		Size: 5.8 KB (5835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d26865948fa61ef944ca28f580e8ca70cf133bbfd9f8a3cdb5d47946ccfae0`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 3.3 KB (3257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:0b6a5dd6beef0e63db068afbbc0b6e65215a355269bf49347343ed8399f3f417
```

-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218941267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5f54c72734acfdbbc31631366902181827e1aac95c0f39784fa6ad2514ad41`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
# Mon, 15 May 2017 19:41:03 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 15 May 2017 19:41:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 19:41:50 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 15 May 2017 19:42:11 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 15 May 2017 19:42:13 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 15 May 2017 19:42:36 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 15 May 2017 19:44:20 GMT
ARG BONITA_VERSION
# Mon, 15 May 2017 19:44:20 GMT
ARG TOMCAT_VERSION
# Mon, 15 May 2017 19:44:21 GMT
ARG BONITA_SHA256
# Mon, 15 May 2017 19:44:22 GMT
ARG BONITA_URL
# Mon, 15 May 2017 19:44:42 GMT
ENV BONITA_VERSION=7.4.3
# Mon, 15 May 2017 19:44:43 GMT
ENV TOMCAT_VERSION=7.0.67
# Mon, 15 May 2017 19:44:44 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Mon, 15 May 2017 19:44:45 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Mon, 15 May 2017 19:45:15 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 15 May 2017 19:45:29 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 15 May 2017 19:45:32 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 15 May 2017 19:45:33 GMT
VOLUME [/opt/bonita]
# Mon, 15 May 2017 19:45:34 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Mon, 15 May 2017 19:45:35 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Mon, 15 May 2017 19:45:36 GMT
EXPOSE 8080/tcp
# Mon, 15 May 2017 19:45:37 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:602e494304cf411586be3fa01f9f795cee4cc5c76f3df0bdd9d312549e9c45cc`  
		Last Modified: Mon, 15 May 2017 19:46:18 GMT  
		Size: 65.6 MB (65594885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74cbcf4cb1d4216a308c264162ce04ed8e098a042912e3ad5528dd692d02e6`  
		Last Modified: Mon, 15 May 2017 19:46:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b390b7ba0916411edf3dcc481f36fb8c87b64d1324cc37d7080987e5bfda21fe`  
		Last Modified: Mon, 15 May 2017 19:46:04 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0007e2c37e73ba87ffb7a6af3763cfcd00a707306bb884c1feba133080577`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 123.2 KB (123227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75885f9a9004c1bdc96a2c19ef7ca7aea6e9bd3759a0ebb207f717b80ed2f4c4`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 818.4 KB (818445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041c172291c356a996179f070f2e81d139344e6f6aa1d542be85e701e38637fd`  
		Last Modified: Mon, 15 May 2017 20:03:16 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3e6d279701d01047fcf6dcc9b8e0fa10b328f1b78d86b1fb7e806de973da7`  
		Last Modified: Mon, 15 May 2017 20:03:10 GMT  
		Size: 6.0 KB (6036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e85c570c387d743a41251a9fc6238b907a7694f90d9346db2fdf34467859119`  
		Last Modified: Mon, 15 May 2017 20:03:09 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:0b6a5dd6beef0e63db068afbbc0b6e65215a355269bf49347343ed8399f3f417
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218941267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb5f54c72734acfdbbc31631366902181827e1aac95c0f39784fa6ad2514ad41`
-	Default Command: `["\/opt\/files\/startup.sh"]`

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
# Mon, 15 May 2017 19:41:03 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Mon, 15 May 2017 19:41:49 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 19:41:50 GMT
RUN mkdir /opt/custom-init.d/
# Mon, 15 May 2017 19:42:11 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Mon, 15 May 2017 19:42:13 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 15 May 2017 19:42:36 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Mon, 15 May 2017 19:44:20 GMT
ARG BONITA_VERSION
# Mon, 15 May 2017 19:44:20 GMT
ARG TOMCAT_VERSION
# Mon, 15 May 2017 19:44:21 GMT
ARG BONITA_SHA256
# Mon, 15 May 2017 19:44:22 GMT
ARG BONITA_URL
# Mon, 15 May 2017 19:44:42 GMT
ENV BONITA_VERSION=7.4.3
# Mon, 15 May 2017 19:44:43 GMT
ENV TOMCAT_VERSION=7.0.67
# Mon, 15 May 2017 19:44:44 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Mon, 15 May 2017 19:44:45 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Mon, 15 May 2017 19:45:15 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 15 May 2017 19:45:29 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 15 May 2017 19:45:32 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 15 May 2017 19:45:33 GMT
VOLUME [/opt/bonita]
# Mon, 15 May 2017 19:45:34 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Mon, 15 May 2017 19:45:35 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Mon, 15 May 2017 19:45:36 GMT
EXPOSE 8080/tcp
# Mon, 15 May 2017 19:45:37 GMT
CMD ["/opt/files/startup.sh"]
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
	-	`sha256:602e494304cf411586be3fa01f9f795cee4cc5c76f3df0bdd9d312549e9c45cc`  
		Last Modified: Mon, 15 May 2017 19:46:18 GMT  
		Size: 65.6 MB (65594885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c74cbcf4cb1d4216a308c264162ce04ed8e098a042912e3ad5528dd692d02e6`  
		Last Modified: Mon, 15 May 2017 19:46:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b390b7ba0916411edf3dcc481f36fb8c87b64d1324cc37d7080987e5bfda21fe`  
		Last Modified: Mon, 15 May 2017 19:46:04 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f0007e2c37e73ba87ffb7a6af3763cfcd00a707306bb884c1feba133080577`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 123.2 KB (123227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75885f9a9004c1bdc96a2c19ef7ca7aea6e9bd3759a0ebb207f717b80ed2f4c4`  
		Last Modified: Mon, 15 May 2017 19:46:02 GMT  
		Size: 818.4 KB (818445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041c172291c356a996179f070f2e81d139344e6f6aa1d542be85e701e38637fd`  
		Last Modified: Mon, 15 May 2017 20:03:16 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b3e6d279701d01047fcf6dcc9b8e0fa10b328f1b78d86b1fb7e806de973da7`  
		Last Modified: Mon, 15 May 2017 20:03:10 GMT  
		Size: 6.0 KB (6036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e85c570c387d743a41251a9fc6238b907a7694f90d9346db2fdf34467859119`  
		Last Modified: Mon, 15 May 2017 20:03:09 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
