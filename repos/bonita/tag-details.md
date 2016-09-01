<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.2.4`](#bonita724)
-	[`bonita:7.3.1`](#bonita731)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.2.4`

```console
$ docker pull bonita@sha256:84cf283c33a167c2124ec8cbb8429737b08ed8981496a8538a6d8236312a13d2
```

-	Platforms:
	-	linux; amd64

### `bonita:7.2.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207029386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:088075205f60c1168f44a78fe7d9b01b9d893cc655ec32dd9ab14f07e7e38816`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 19:56:01 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 26 Aug 2016 19:57:43 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 19:57:46 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 26 Aug 2016 19:57:49 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 26 Aug 2016 19:57:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 26 Aug 2016 19:57:59 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 26 Aug 2016 19:58:00 GMT
ENV BONITA_VERSION=7.2.4
# Fri, 26 Aug 2016 19:58:02 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 26 Aug 2016 19:58:03 GMT
ENV BONITA_SHA256=6b444fd6a681491f89a12cf801650ecbbd9b2342f6073baca0909c4bf1e36e07
# Fri, 26 Aug 2016 19:58:04 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Fri, 26 Aug 2016 19:58:05 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Fri, 26 Aug 2016 19:58:07 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Fri, 26 Aug 2016 19:58:08 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Fri, 26 Aug 2016 19:58:13 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Fri, 26 Aug 2016 19:58:31 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 26 Aug 2016 19:58:33 GMT
VOLUME [/opt/bonita]
# Fri, 26 Aug 2016 19:58:35 GMT
COPY dir:c46d790a33226426e306313e34c7d1f3c42ed57c5e8a3410a973d72aeb886df3 in /opt/files
# Fri, 26 Aug 2016 19:58:37 GMT
COPY dir:4024f665b5e26ffe45bb55870cc8577a94dfc16fda7d53f0fe54dbfe45c11977 in /opt/templates
# Fri, 26 Aug 2016 19:58:38 GMT
EXPOSE 8080/tcp
# Fri, 26 Aug 2016 19:58:40 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47365c676c3c1e6e0987b0fd2a48f31b599a6e48602357e7ba73108f3c7d23b0`  
		Last Modified: Fri, 26 Aug 2016 19:59:20 GMT  
		Size: 65.0 MB (64973660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299535f9a06de00c6b2ab0f5a0822f0d2beeee496c9010ab834f00acb197522`  
		Last Modified: Fri, 26 Aug 2016 19:59:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcad8fe009128476d34cbbc911c01aa1954ea2fb685edae09a59eb57a79e427`  
		Last Modified: Fri, 26 Aug 2016 19:59:00 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bdd804b2abede8816d2ed91992710f43c899ac234353baf1f14b7a9c7d1866`  
		Last Modified: Fri, 26 Aug 2016 19:58:59 GMT  
		Size: 123.2 KB (123209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef7214c6f36c9d0698aa08495b766b6e1947bb7996371d50d3e6f2c78e79715`  
		Last Modified: Fri, 26 Aug 2016 19:58:57 GMT  
		Size: 807.6 KB (807587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5403dba4b3fcfb6b90512a7c7e2fcb9a1a7ed460f22f1eef14cd80b3cfd80b84`  
		Last Modified: Fri, 26 Aug 2016 19:58:57 GMT  
		Size: 1.4 MB (1382493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cffa085a375b99656938fa1e47b1d4d8bb52224b8134dd371d5f1ce90d2114e`  
		Last Modified: Fri, 26 Aug 2016 19:59:08 GMT  
		Size: 74.0 MB (73958854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8341fe8d7f7f2809fbde41935af3c18681d7c14faf42e0618e655e14ca7fc451`  
		Last Modified: Fri, 26 Aug 2016 19:58:56 GMT  
		Size: 5.8 KB (5800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:443d3f8223b14e0746fdc5687ffba9c0c515ea00bade1c1492186b6685f458ef`  
		Last Modified: Fri, 26 Aug 2016 19:58:57 GMT  
		Size: 2.2 KB (2197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.3.1`

```console
$ docker pull bonita@sha256:aab01efdd331993041d2d22f2806cb7584a4b67bad7adf7ccee73db94856c1d4
```

-	Platforms:
	-	linux; amd64

### `bonita:7.3.1` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216867676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ef206e4648ca35d68e125d1de9875952598a732b3741725fdfb4a1a364bd6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 19:56:01 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 26 Aug 2016 19:57:43 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 19:57:46 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 26 Aug 2016 19:57:49 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 26 Aug 2016 19:57:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 26 Aug 2016 19:57:59 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 26 Aug 2016 19:59:29 GMT
ENV BONITA_VERSION=7.3.1
# Fri, 26 Aug 2016 19:59:30 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 26 Aug 2016 19:59:31 GMT
ENV BONITA_SHA256=34031d28f5d9be6c88ba5dda37f67f36add8891994711e265ec008962a0800ff
# Fri, 26 Aug 2016 19:59:32 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Fri, 26 Aug 2016 19:59:33 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Fri, 26 Aug 2016 19:59:34 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Fri, 26 Aug 2016 19:59:35 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Fri, 26 Aug 2016 19:59:38 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Fri, 26 Aug 2016 19:59:54 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 26 Aug 2016 19:59:55 GMT
VOLUME [/opt/bonita]
# Fri, 26 Aug 2016 19:59:56 GMT
COPY dir:fde4873241031c6b90b44319c923aea3900e89716d18d78efb0f8fd43ac375a6 in /opt/files
# Fri, 26 Aug 2016 19:59:58 GMT
COPY dir:02b08d3b2ed19a654c43e135e71e47c809262f2a015647ff3da638716f22696f in /opt/templates
# Fri, 26 Aug 2016 19:59:59 GMT
EXPOSE 8080/tcp
# Fri, 26 Aug 2016 19:59:59 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47365c676c3c1e6e0987b0fd2a48f31b599a6e48602357e7ba73108f3c7d23b0`  
		Last Modified: Fri, 26 Aug 2016 19:59:20 GMT  
		Size: 65.0 MB (64973660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299535f9a06de00c6b2ab0f5a0822f0d2beeee496c9010ab834f00acb197522`  
		Last Modified: Fri, 26 Aug 2016 19:59:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcad8fe009128476d34cbbc911c01aa1954ea2fb685edae09a59eb57a79e427`  
		Last Modified: Fri, 26 Aug 2016 19:59:00 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bdd804b2abede8816d2ed91992710f43c899ac234353baf1f14b7a9c7d1866`  
		Last Modified: Fri, 26 Aug 2016 19:58:59 GMT  
		Size: 123.2 KB (123209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef7214c6f36c9d0698aa08495b766b6e1947bb7996371d50d3e6f2c78e79715`  
		Last Modified: Fri, 26 Aug 2016 19:58:57 GMT  
		Size: 807.6 KB (807587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d443c7435ffadb5ee39a2b6133f597d24646acd3b614144e60425a0d1479d91d`  
		Last Modified: Fri, 26 Aug 2016 20:00:12 GMT  
		Size: 1.4 MB (1382494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680197ad239a2ecb84b027c2e3cb339477c96e192d1eabb96e065c372e7993c1`  
		Last Modified: Fri, 26 Aug 2016 20:00:22 GMT  
		Size: 83.8 MB (83796081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aafbec1627dccfc9bd622f45536f64b1923bf47a7700733d18ca5aeefec7cb0`  
		Last Modified: Fri, 26 Aug 2016 20:00:11 GMT  
		Size: 5.8 KB (5808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cfc116e1563b3b8a2dbc761908199c365d5ebe46750d53070728f38689dbf7`  
		Last Modified: Fri, 26 Aug 2016 20:00:11 GMT  
		Size: 3.3 KB (3251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:aab01efdd331993041d2d22f2806cb7584a4b67bad7adf7ccee73db94856c1d4
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216867676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ef206e4648ca35d68e125d1de9875952598a732b3741725fdfb4a1a364bd6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 26 Aug 2016 18:49:43 GMT
ADD file:ada91758a31d8de3c78ea0065fbc866430a71eb58bf5c4cb403d47052b1cade0 in /
# Fri, 26 Aug 2016 18:49:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Aug 2016 18:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 18:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Aug 2016 18:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Aug 2016 18:49:52 GMT
CMD ["/bin/bash"]
# Fri, 26 Aug 2016 19:56:01 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 26 Aug 2016 19:57:43 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 26 Aug 2016 19:57:46 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 26 Aug 2016 19:57:49 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 26 Aug 2016 19:57:53 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 26 Aug 2016 19:57:59 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 26 Aug 2016 19:59:29 GMT
ENV BONITA_VERSION=7.3.1
# Fri, 26 Aug 2016 19:59:30 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 26 Aug 2016 19:59:31 GMT
ENV BONITA_SHA256=34031d28f5d9be6c88ba5dda37f67f36add8891994711e265ec008962a0800ff
# Fri, 26 Aug 2016 19:59:32 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Fri, 26 Aug 2016 19:59:33 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Fri, 26 Aug 2016 19:59:34 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Fri, 26 Aug 2016 19:59:35 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Fri, 26 Aug 2016 19:59:38 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Fri, 26 Aug 2016 19:59:54 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 26 Aug 2016 19:59:55 GMT
VOLUME [/opt/bonita]
# Fri, 26 Aug 2016 19:59:56 GMT
COPY dir:fde4873241031c6b90b44319c923aea3900e89716d18d78efb0f8fd43ac375a6 in /opt/files
# Fri, 26 Aug 2016 19:59:58 GMT
COPY dir:02b08d3b2ed19a654c43e135e71e47c809262f2a015647ff3da638716f22696f in /opt/templates
# Fri, 26 Aug 2016 19:59:59 GMT
EXPOSE 8080/tcp
# Fri, 26 Aug 2016 19:59:59 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:862a3e9af0aeffe79345b790bad31baaa61e9402b6e616bff17babed6b053b54`  
		Last Modified: Fri, 26 Aug 2016 18:53:56 GMT  
		Size: 65.7 MB (65700923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6498e51874bfd453352b79b1a3f669109795134b7adcd1a02d0ce69001f4e05b`  
		Last Modified: Fri, 26 Aug 2016 18:53:28 GMT  
		Size: 71.6 KB (71552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159ebdd1959b09a7284ceb22bbb7e383049466ece0503f66197e7843aad1da47`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdbedd3771a99a8df8fe8edd26c62366a0d59496b2685330d9754680f339693`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1f7116d1e3a87e389da7767ee68f5731c05dbb1a4d4dbd45166b3a8412f1c6`  
		Last Modified: Fri, 26 Aug 2016 18:53:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47365c676c3c1e6e0987b0fd2a48f31b599a6e48602357e7ba73108f3c7d23b0`  
		Last Modified: Fri, 26 Aug 2016 19:59:20 GMT  
		Size: 65.0 MB (64973660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b299535f9a06de00c6b2ab0f5a0822f0d2beeee496c9010ab834f00acb197522`  
		Last Modified: Fri, 26 Aug 2016 19:59:00 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdcad8fe009128476d34cbbc911c01aa1954ea2fb685edae09a59eb57a79e427`  
		Last Modified: Fri, 26 Aug 2016 19:59:00 GMT  
		Size: 1.8 KB (1786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bdd804b2abede8816d2ed91992710f43c899ac234353baf1f14b7a9c7d1866`  
		Last Modified: Fri, 26 Aug 2016 19:58:59 GMT  
		Size: 123.2 KB (123209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef7214c6f36c9d0698aa08495b766b6e1947bb7996371d50d3e6f2c78e79715`  
		Last Modified: Fri, 26 Aug 2016 19:58:57 GMT  
		Size: 807.6 KB (807587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d443c7435ffadb5ee39a2b6133f597d24646acd3b614144e60425a0d1479d91d`  
		Last Modified: Fri, 26 Aug 2016 20:00:12 GMT  
		Size: 1.4 MB (1382494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680197ad239a2ecb84b027c2e3cb339477c96e192d1eabb96e065c372e7993c1`  
		Last Modified: Fri, 26 Aug 2016 20:00:22 GMT  
		Size: 83.8 MB (83796081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aafbec1627dccfc9bd622f45536f64b1923bf47a7700733d18ca5aeefec7cb0`  
		Last Modified: Fri, 26 Aug 2016 20:00:11 GMT  
		Size: 5.8 KB (5808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cfc116e1563b3b8a2dbc761908199c365d5ebe46750d53070728f38689dbf7`  
		Last Modified: Fri, 26 Aug 2016 20:00:11 GMT  
		Size: 3.3 KB (3251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
