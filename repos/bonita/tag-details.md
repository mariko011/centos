<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.2.4`](#bonita724)
-	[`bonita:7.3.3`](#bonita733)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.2.4`

```console
$ docker pull bonita@sha256:4747328b20d4d2c893db6ab0517ed65776cba80c309d71e5dae3fccb3175b2f1
```

-	Platforms:
	-	linux; amd64

### `bonita:7.2.4` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.1 MB (207069308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d18ae14b517a31cbacb410e4d475dfff4d33e39472a20523b3f209f59bbb0c6b`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:55:22 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 20 Jan 2017 23:56:46 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 23:56:47 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 20 Jan 2017 23:56:48 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 20 Jan 2017 23:56:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 20 Jan 2017 23:56:54 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 20 Jan 2017 23:56:54 GMT
ENV BONITA_VERSION=7.2.4
# Fri, 20 Jan 2017 23:56:55 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 20 Jan 2017 23:56:55 GMT
ENV BONITA_SHA256=6b444fd6a681491f89a12cf801650ecbbd9b2342f6073baca0909c4bf1e36e07
# Fri, 20 Jan 2017 23:56:55 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Fri, 20 Jan 2017 23:56:56 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Fri, 20 Jan 2017 23:56:56 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Fri, 20 Jan 2017 23:56:56 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Fri, 20 Jan 2017 23:56:59 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Fri, 20 Jan 2017 23:57:10 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 20 Jan 2017 23:57:10 GMT
VOLUME [/opt/bonita]
# Fri, 20 Jan 2017 23:57:11 GMT
COPY dir:c46d790a33226426e306313e34c7d1f3c42ed57c5e8a3410a973d72aeb886df3 in /opt/files 
# Fri, 20 Jan 2017 23:57:11 GMT
COPY dir:4024f665b5e26ffe45bb55870cc8577a94dfc16fda7d53f0fe54dbfe45c11977 in /opt/templates 
# Fri, 20 Jan 2017 23:57:12 GMT
EXPOSE 8080/tcp
# Fri, 20 Jan 2017 23:57:12 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1241eecc36965d2becda8a0ef278fbb243bce2f4ccf5ad800dd19d5579b80999`  
		Last Modified: Fri, 20 Jan 2017 23:57:59 GMT  
		Size: 65.0 MB (65020665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bfc5da5887cbc2285f96bfdd369f1b2f97a44e4899b8a644cf830181ffd449`  
		Last Modified: Fri, 20 Jan 2017 23:57:47 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8831b4bb08b51aaea0f915a2e0db3f1b8122578ac220a39c4d777a7905041428`  
		Last Modified: Fri, 20 Jan 2017 23:57:46 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c2d3e5506817f4b87e1a87f2d9b7026e401c2b62b8ce2b142d3b0b56f2c278`  
		Last Modified: Fri, 20 Jan 2017 23:57:47 GMT  
		Size: 123.2 KB (123203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8d070bc4283ec64387cec0f1f288693b6701298561600314db0300dfca2297`  
		Last Modified: Fri, 20 Jan 2017 23:57:44 GMT  
		Size: 807.6 KB (807587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c5ee7110bd61228095c3641786eaa1f7a14f1c7eadbd024a40b2975e67d4933`  
		Last Modified: Fri, 20 Jan 2017 23:57:44 GMT  
		Size: 1.4 MB (1382494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e66d91483a5558643bfc319a50da9e8a6f6f1964ef11f890f51014e5598293`  
		Last Modified: Fri, 20 Jan 2017 23:57:50 GMT  
		Size: 74.0 MB (73958853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90fb099b6b013ec3373091f0eafbe7816936a6bb65f349667a01c6b34a8feff2`  
		Last Modified: Fri, 20 Jan 2017 23:57:44 GMT  
		Size: 5.8 KB (5802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00cf36790143dce3a03aa338fa49dd48f9e0016582707a6ffdb6b676982f602e`  
		Last Modified: Fri, 20 Jan 2017 23:57:44 GMT  
		Size: 2.2 KB (2196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.3.3`

```console
$ docker pull bonita@sha256:26c859232ce4798d4c69add46867fbb21dc05c0d6898896a79ee591cd9bdc357
```

-	Platforms:
	-	linux; amd64

### `bonita:7.3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216505271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f872e8c0733399ae2ce5c718b7473564ce172256a758ebea20f95452f8fc0c71`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:55:22 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 20 Jan 2017 23:56:46 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 23:56:47 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 20 Jan 2017 23:56:48 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 20 Jan 2017 23:56:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 20 Jan 2017 23:56:54 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 20 Jan 2017 23:57:12 GMT
ENV BONITA_VERSION=7.3.3
# Fri, 20 Jan 2017 23:57:13 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 20 Jan 2017 23:57:13 GMT
ENV BONITA_SHA256=128911e3b6241e135b2dbc496d8ce383d921f2f2478fc5fad4331e1fd362eb4f
# Fri, 20 Jan 2017 23:57:13 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Fri, 20 Jan 2017 23:57:14 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Fri, 20 Jan 2017 23:57:14 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Fri, 20 Jan 2017 23:57:14 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Fri, 20 Jan 2017 23:57:16 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Fri, 20 Jan 2017 23:57:26 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 20 Jan 2017 23:57:26 GMT
VOLUME [/opt/bonita]
# Fri, 20 Jan 2017 23:57:27 GMT
COPY dir:fde4873241031c6b90b44319c923aea3900e89716d18d78efb0f8fd43ac375a6 in /opt/files 
# Fri, 20 Jan 2017 23:57:27 GMT
COPY dir:02b08d3b2ed19a654c43e135e71e47c809262f2a015647ff3da638716f22696f in /opt/templates 
# Fri, 20 Jan 2017 23:57:28 GMT
EXPOSE 8080/tcp
# Fri, 20 Jan 2017 23:57:28 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1241eecc36965d2becda8a0ef278fbb243bce2f4ccf5ad800dd19d5579b80999`  
		Last Modified: Fri, 20 Jan 2017 23:57:59 GMT  
		Size: 65.0 MB (65020665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bfc5da5887cbc2285f96bfdd369f1b2f97a44e4899b8a644cf830181ffd449`  
		Last Modified: Fri, 20 Jan 2017 23:57:47 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8831b4bb08b51aaea0f915a2e0db3f1b8122578ac220a39c4d777a7905041428`  
		Last Modified: Fri, 20 Jan 2017 23:57:46 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c2d3e5506817f4b87e1a87f2d9b7026e401c2b62b8ce2b142d3b0b56f2c278`  
		Last Modified: Fri, 20 Jan 2017 23:57:47 GMT  
		Size: 123.2 KB (123203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8d070bc4283ec64387cec0f1f288693b6701298561600314db0300dfca2297`  
		Last Modified: Fri, 20 Jan 2017 23:57:44 GMT  
		Size: 807.6 KB (807587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd073dd09067a489a9f14814dcf7a3b84d91e343a55e1af3ef3e54e4791eb23`  
		Last Modified: Fri, 20 Jan 2017 23:58:21 GMT  
		Size: 1.4 MB (1382490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e864ce041d3103f3644af3ace354549dd57b8c99cd298d75a26abad03c6497dd`  
		Last Modified: Fri, 20 Jan 2017 23:58:26 GMT  
		Size: 83.4 MB (83393763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5bc3c61cf0384698e9e05cec74cd9394084fb0f5bea11fbac72e63bcefabb7`  
		Last Modified: Fri, 20 Jan 2017 23:58:20 GMT  
		Size: 5.8 KB (5805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39119dbce64494d2a2393ab11d63532782e7f948fd4f7bf5dceb444672d888f6`  
		Last Modified: Fri, 20 Jan 2017 23:58:20 GMT  
		Size: 3.2 KB (3250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:26c859232ce4798d4c69add46867fbb21dc05c0d6898896a79ee591cd9bdc357
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.5 MB (216505271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f872e8c0733399ae2ce5c718b7473564ce172256a758ebea20f95452f8fc0c71`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 20 Jan 2017 21:42:50 GMT
ADD file:c383f1cde338921411168cc34a10e3a221ae55e569768e1551274f8fddc54415 in / 
# Fri, 20 Jan 2017 21:42:52 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 20 Jan 2017 21:42:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 21:42:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 20 Jan 2017 21:42:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 20 Jan 2017 21:42:57 GMT
CMD ["/bin/bash"]
# Fri, 20 Jan 2017 23:55:22 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 20 Jan 2017 23:56:46 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 20 Jan 2017 23:56:47 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 20 Jan 2017 23:56:48 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 20 Jan 2017 23:56:50 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 20 Jan 2017 23:56:54 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 20 Jan 2017 23:57:12 GMT
ENV BONITA_VERSION=7.3.3
# Fri, 20 Jan 2017 23:57:13 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 20 Jan 2017 23:57:13 GMT
ENV BONITA_SHA256=128911e3b6241e135b2dbc496d8ce383d921f2f2478fc5fad4331e1fd362eb4f
# Fri, 20 Jan 2017 23:57:13 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Fri, 20 Jan 2017 23:57:14 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Fri, 20 Jan 2017 23:57:14 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Fri, 20 Jan 2017 23:57:14 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Fri, 20 Jan 2017 23:57:16 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Fri, 20 Jan 2017 23:57:26 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 20 Jan 2017 23:57:26 GMT
VOLUME [/opt/bonita]
# Fri, 20 Jan 2017 23:57:27 GMT
COPY dir:fde4873241031c6b90b44319c923aea3900e89716d18d78efb0f8fd43ac375a6 in /opt/files 
# Fri, 20 Jan 2017 23:57:27 GMT
COPY dir:02b08d3b2ed19a654c43e135e71e47c809262f2a015647ff3da638716f22696f in /opt/templates 
# Fri, 20 Jan 2017 23:57:28 GMT
EXPOSE 8080/tcp
# Fri, 20 Jan 2017 23:57:28 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:c60055a51d748f34ebd4a7c4872c5d727e0ef96fbf9cd9b248e931b222828c23`  
		Last Modified: Fri, 20 Jan 2017 21:48:47 GMT  
		Size: 65.7 MB (65693853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755da0cdb7d25b74b205ff1eccd26ea4eede693ec7cf2150ae4c1caafe6394b1`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 71.6 KB (71553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969d017f67e62ae323a3e8077e3ac4a5b1bf4a27c349148c1f6c28bd6ca3bbb8`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c9a911359525fa28aa16715d36954723a8924492b5216cc97d1099251a5023`  
		Last Modified: Fri, 20 Jan 2017 21:48:26 GMT  
		Size: 681.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d9f847978686a04b694253ea6c6873fb60a495dc742a92d097ccc3c2855641`  
		Last Modified: Fri, 20 Jan 2017 21:48:27 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1241eecc36965d2becda8a0ef278fbb243bce2f4ccf5ad800dd19d5579b80999`  
		Last Modified: Fri, 20 Jan 2017 23:57:59 GMT  
		Size: 65.0 MB (65020665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89bfc5da5887cbc2285f96bfdd369f1b2f97a44e4899b8a644cf830181ffd449`  
		Last Modified: Fri, 20 Jan 2017 23:57:47 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8831b4bb08b51aaea0f915a2e0db3f1b8122578ac220a39c4d777a7905041428`  
		Last Modified: Fri, 20 Jan 2017 23:57:46 GMT  
		Size: 1.8 KB (1782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c2d3e5506817f4b87e1a87f2d9b7026e401c2b62b8ce2b142d3b0b56f2c278`  
		Last Modified: Fri, 20 Jan 2017 23:57:47 GMT  
		Size: 123.2 KB (123203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8d070bc4283ec64387cec0f1f288693b6701298561600314db0300dfca2297`  
		Last Modified: Fri, 20 Jan 2017 23:57:44 GMT  
		Size: 807.6 KB (807587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd073dd09067a489a9f14814dcf7a3b84d91e343a55e1af3ef3e54e4791eb23`  
		Last Modified: Fri, 20 Jan 2017 23:58:21 GMT  
		Size: 1.4 MB (1382490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e864ce041d3103f3644af3ace354549dd57b8c99cd298d75a26abad03c6497dd`  
		Last Modified: Fri, 20 Jan 2017 23:58:26 GMT  
		Size: 83.4 MB (83393763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5bc3c61cf0384698e9e05cec74cd9394084fb0f5bea11fbac72e63bcefabb7`  
		Last Modified: Fri, 20 Jan 2017 23:58:20 GMT  
		Size: 5.8 KB (5805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39119dbce64494d2a2393ab11d63532782e7f948fd4f7bf5dceb444672d888f6`  
		Last Modified: Fri, 20 Jan 2017 23:58:20 GMT  
		Size: 3.2 KB (3250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
