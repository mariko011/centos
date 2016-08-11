<!-- THIS FILE IS GENERATED VIA './update-tag-details.sh' -->

# Tags of `bonita`

-	[`bonita:7.0.3`](#bonita703)
-	[`bonita:7.2.4`](#bonita724)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.0.3`

```console
$ docker pull bonita@sha256:37fb61f9b0265720d4ff78243e9f20e8e6146ba4d19aeb77472b6a4d32790ba2
```

-	Platforms:
	-	linux; amd64

### `bonita:7.0.3` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.6 MB (203555225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963905c41581deff465cf384ef91f5cf552146760406945d16bded095bf5d9f6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 18:46:14 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 11 Aug 2016 18:48:22 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:48:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 11 Aug 2016 18:48:31 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 11 Aug 2016 18:48:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 11 Aug 2016 18:48:43 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 11 Aug 2016 18:48:44 GMT
ENV BONITA_VERSION=7.0.3
# Thu, 11 Aug 2016 18:48:46 GMT
ENV BONITA_SHA256=4f4a1498ce2fd8e00eb7e2e79bdaa52bd5ad7449dcff8a7ce177b989c53d53be
# Thu, 11 Aug 2016 18:48:47 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Thu, 11 Aug 2016 18:48:48 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Thu, 11 Aug 2016 18:48:50 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Thu, 11 Aug 2016 18:48:51 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Thu, 11 Aug 2016 18:48:57 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Thu, 11 Aug 2016 18:49:14 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-7.0.55.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-7.0.55.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-7.0.55.zip | sha256sum -c -
# Thu, 11 Aug 2016 18:49:19 GMT
VOLUME [/opt/bonita]
# Thu, 11 Aug 2016 18:49:21 GMT
COPY dir:c56772a9acd61d9b7fd7d01eb97f9e1ec7db496b04590e6fb457d8c7b6af95ff in /opt/files
# Thu, 11 Aug 2016 18:49:23 GMT
COPY dir:4024f665b5e26ffe45bb55870cc8577a94dfc16fda7d53f0fe54dbfe45c11977 in /opt/templates
# Thu, 11 Aug 2016 18:49:24 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 18:49:26 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B
	-	`sha256:05bda1d1805d82c599a64e4ac44c90cc84f5154306d71ecf0113b44f6f6622ef`  
		Last Modified: Thu, 11 Aug 2016 18:50:06 GMT  
		Size: 64.9 MB (64877992 bytes)
	-	`sha256:b4dac9df5a7af2d7c908e5f194d603c3f2368ccd60c846d67d177fd7458bc1db`  
		Last Modified: Thu, 11 Aug 2016 18:49:44 GMT  
		Size: 119.0 B
	-	`sha256:3b402f12c1ac62f2e620b613f542feb5c53485437ca77d92db3ac30b7f6f6e44`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 1.8 KB (1783 bytes)
	-	`sha256:cab777e902d955ec4678d95afca7ce06b370876fc332f796b28298d853d6ff93`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 114.8 KB (114791 bytes)
	-	`sha256:56437fa126bc913bb96a772f30af9becbc497569ff8056763fab2219420f540d`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 807.6 KB (807595 bytes)
	-	`sha256:967261054f444ac45c71270fab723ec877fbbefcdd9d7b8749871ea5e58491a5`  
		Last Modified: Thu, 11 Aug 2016 18:49:40 GMT  
		Size: 1.4 MB (1382494 bytes)
	-	`sha256:40ae8a548c8e076ac26adb8ccbef1a86e6ea35c6dda9f5c6f4e0f4032561574d`  
		Last Modified: Thu, 11 Aug 2016 18:49:47 GMT  
		Size: 70.6 MB (70589933 bytes)
	-	`sha256:3cc599650c1b9445336400f084af71ed0e43cd12256ec4c6b4da8eacfc798ce1`  
		Last Modified: Thu, 11 Aug 2016 18:49:39 GMT  
		Size: 5.8 KB (5776 bytes)
	-	`sha256:e7d6a7fc1b3bf86c7efcb010038cfdd2a301aad717fb04b081911df3317fc4d7`  
		Last Modified: Thu, 11 Aug 2016 18:49:39 GMT  
		Size: 2.2 KB (2198 bytes)

## `bonita:7.2.4`

```console
$ docker pull bonita@sha256:4feafbca7e17f7ec5a313af5e2345ad8364ce96094894840b10a7ab5bdc9dbbb
```

-	Platforms:
	-	linux; amd64

### `bonita:7.2.4` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206924172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699e8b9f267c4ba8b21d70a33c0a70b9261fe30f3f7d16ab30a5f61f79de6d75`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 18:46:14 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 11 Aug 2016 18:48:22 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:48:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 11 Aug 2016 18:48:31 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 11 Aug 2016 18:48:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 11 Aug 2016 18:48:43 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 11 Aug 2016 18:50:20 GMT
ENV BONITA_VERSION=7.2.4
# Thu, 11 Aug 2016 18:50:22 GMT
ENV TOMCAT_VERSION=7.0.67
# Thu, 11 Aug 2016 18:50:24 GMT
ENV BONITA_SHA256=6b444fd6a681491f89a12cf801650ecbbd9b2342f6073baca0909c4bf1e36e07
# Thu, 11 Aug 2016 18:50:25 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Thu, 11 Aug 2016 18:50:36 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Thu, 11 Aug 2016 18:50:37 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Thu, 11 Aug 2016 18:50:39 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Thu, 11 Aug 2016 18:50:43 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Thu, 11 Aug 2016 18:51:04 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 11 Aug 2016 18:51:06 GMT
VOLUME [/opt/bonita]
# Thu, 11 Aug 2016 18:51:08 GMT
COPY dir:c46d790a33226426e306313e34c7d1f3c42ed57c5e8a3410a973d72aeb886df3 in /opt/files
# Thu, 11 Aug 2016 18:51:12 GMT
COPY dir:4024f665b5e26ffe45bb55870cc8577a94dfc16fda7d53f0fe54dbfe45c11977 in /opt/templates
# Thu, 11 Aug 2016 18:51:13 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 18:51:14 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B
	-	`sha256:05bda1d1805d82c599a64e4ac44c90cc84f5154306d71ecf0113b44f6f6622ef`  
		Last Modified: Thu, 11 Aug 2016 18:50:06 GMT  
		Size: 64.9 MB (64877992 bytes)
	-	`sha256:b4dac9df5a7af2d7c908e5f194d603c3f2368ccd60c846d67d177fd7458bc1db`  
		Last Modified: Thu, 11 Aug 2016 18:49:44 GMT  
		Size: 119.0 B
	-	`sha256:3b402f12c1ac62f2e620b613f542feb5c53485437ca77d92db3ac30b7f6f6e44`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 1.8 KB (1783 bytes)
	-	`sha256:cab777e902d955ec4678d95afca7ce06b370876fc332f796b28298d853d6ff93`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 114.8 KB (114791 bytes)
	-	`sha256:56437fa126bc913bb96a772f30af9becbc497569ff8056763fab2219420f540d`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 807.6 KB (807595 bytes)
	-	`sha256:cde4c8bcb1d6c34a6c7edda49238ac8b03420375c7d54585e1d40901922bded0`  
		Last Modified: Thu, 11 Aug 2016 18:51:29 GMT  
		Size: 1.4 MB (1382494 bytes)
	-	`sha256:58dfd6bad2b125e166a8af79455bc434d6b1513cb155206c982135c2d7bd0c99`  
		Last Modified: Thu, 11 Aug 2016 18:51:45 GMT  
		Size: 74.0 MB (73958851 bytes)
	-	`sha256:cf0fab189fab73693a9b3106461416a2695d2d595cbf01de8c9259f99e2fe20f`  
		Last Modified: Thu, 11 Aug 2016 18:51:28 GMT  
		Size: 5.8 KB (5801 bytes)
	-	`sha256:77db488134feec94d4b7919785185ce1ee9651698bd3a0689db9f5ec4de06b2f`  
		Last Modified: Thu, 11 Aug 2016 18:51:29 GMT  
		Size: 2.2 KB (2202 bytes)

## `bonita:latest`

```console
$ docker pull bonita@sha256:4feafbca7e17f7ec5a313af5e2345ad8364ce96094894840b10a7ab5bdc9dbbb
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 1.10.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206924172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699e8b9f267c4ba8b21d70a33c0a70b9261fe30f3f7d16ab30a5f61f79de6d75`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 11 Aug 2016 17:45:54 GMT
ADD file:4f5a660d3f5141588daa0e87c9c8b924c5ec31e9350710371cf454c862a78c50 in /
# Thu, 11 Aug 2016 17:45:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 11 Aug 2016 17:46:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 17:46:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 11 Aug 2016 17:46:03 GMT
CMD ["/bin/bash"]
# Thu, 11 Aug 2016 18:46:14 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 11 Aug 2016 18:48:22 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 11 Aug 2016 18:48:25 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 11 Aug 2016 18:48:31 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 11 Aug 2016 18:48:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 11 Aug 2016 18:48:43 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 11 Aug 2016 18:50:20 GMT
ENV BONITA_VERSION=7.2.4
# Thu, 11 Aug 2016 18:50:22 GMT
ENV TOMCAT_VERSION=7.0.67
# Thu, 11 Aug 2016 18:50:24 GMT
ENV BONITA_SHA256=6b444fd6a681491f89a12cf801650ecbbd9b2342f6073baca0909c4bf1e36e07
# Thu, 11 Aug 2016 18:50:25 GMT
ENV POSTGRES_JDBC_DRIVER=postgresql-9.3-1102.jdbc41.jar
# Thu, 11 Aug 2016 18:50:36 GMT
ENV POSTGRES_SHA256=b78749d536da75c382d0a71c717cde6850df64e16594676fc7cacb5a74541d66
# Thu, 11 Aug 2016 18:50:37 GMT
ENV MYSQL_JDBC_DRIVER=mysql-connector-java-5.1.26
# Thu, 11 Aug 2016 18:50:39 GMT
ENV MYSQL_SHA256=40b2d49f6f2551cc7fa54552af806e8026bf8405f03342205852e57a3205a868
# Thu, 11 Aug 2016 18:50:43 GMT
RUN mkdir /opt/files   && wget -q https://jdbc.postgresql.org/download/${POSTGRES_JDBC_DRIVER} -O /opt/files/${POSTGRES_JDBC_DRIVER}   && echo "$POSTGRES_SHA256" /opt/files/${POSTGRES_JDBC_DRIVER} | sha256sum -c -   && wget -q http://dev.mysql.com/get/Downloads/Connector-J/${MYSQL_JDBC_DRIVER}.zip -O /opt/files/${MYSQL_JDBC_DRIVER}.zip   && echo "$MYSQL_SHA256" /opt/files/${MYSQL_JDBC_DRIVER}.zip | sha256sum -c -   && unzip -q /opt/files/${MYSQL_JDBC_DRIVER}.zip -d /opt/files/   && mv /opt/files/${MYSQL_JDBC_DRIVER}/${MYSQL_JDBC_DRIVER}-bin.jar /opt/files/   && rm -r /opt/files/${MYSQL_JDBC_DRIVER}   && rm /opt/files/${MYSQL_JDBC_DRIVER}.zip
# Thu, 11 Aug 2016 18:51:04 GMT
RUN wget -q http://download.forge.ow2.org/bonita/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip   && echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 11 Aug 2016 18:51:06 GMT
VOLUME [/opt/bonita]
# Thu, 11 Aug 2016 18:51:08 GMT
COPY dir:c46d790a33226426e306313e34c7d1f3c42ed57c5e8a3410a973d72aeb886df3 in /opt/files
# Thu, 11 Aug 2016 18:51:12 GMT
COPY dir:4024f665b5e26ffe45bb55870cc8577a94dfc16fda7d53f0fe54dbfe45c11977 in /opt/templates
# Thu, 11 Aug 2016 18:51:13 GMT
EXPOSE 8080/tcp
# Thu, 11 Aug 2016 18:51:14 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:064f9af025390d8da3dfab763fac261dd67f8807343613239d66304cda8f5d16`  
		Last Modified: Thu, 04 Aug 2016 12:39:27 GMT  
		Size: 65.7 MB (65699939 bytes)
	-	`sha256:390957b2f4f0cd72b8577795cd8076cdc21d45c7823bbb5c895a494ae6038267`  
		Last Modified: Thu, 11 Aug 2016 17:47:59 GMT  
		Size: 71.6 KB (71563 bytes)
	-	`sha256:cee0974db2b868f0408f7e3eaba93c11fce3a38f612674477653b04c10369da0`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 362.0 B
	-	`sha256:c8144262002cd241e607d7d3ecda450ce4ae8edf7dac8dbf46897d498ac667d8`  
		Last Modified: Thu, 11 Aug 2016 17:47:58 GMT  
		Size: 680.0 B
	-	`sha256:05bda1d1805d82c599a64e4ac44c90cc84f5154306d71ecf0113b44f6f6622ef`  
		Last Modified: Thu, 11 Aug 2016 18:50:06 GMT  
		Size: 64.9 MB (64877992 bytes)
	-	`sha256:b4dac9df5a7af2d7c908e5f194d603c3f2368ccd60c846d67d177fd7458bc1db`  
		Last Modified: Thu, 11 Aug 2016 18:49:44 GMT  
		Size: 119.0 B
	-	`sha256:3b402f12c1ac62f2e620b613f542feb5c53485437ca77d92db3ac30b7f6f6e44`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 1.8 KB (1783 bytes)
	-	`sha256:cab777e902d955ec4678d95afca7ce06b370876fc332f796b28298d853d6ff93`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 114.8 KB (114791 bytes)
	-	`sha256:56437fa126bc913bb96a772f30af9becbc497569ff8056763fab2219420f540d`  
		Last Modified: Thu, 11 Aug 2016 18:49:42 GMT  
		Size: 807.6 KB (807595 bytes)
	-	`sha256:cde4c8bcb1d6c34a6c7edda49238ac8b03420375c7d54585e1d40901922bded0`  
		Last Modified: Thu, 11 Aug 2016 18:51:29 GMT  
		Size: 1.4 MB (1382494 bytes)
	-	`sha256:58dfd6bad2b125e166a8af79455bc434d6b1513cb155206c982135c2d7bd0c99`  
		Last Modified: Thu, 11 Aug 2016 18:51:45 GMT  
		Size: 74.0 MB (73958851 bytes)
	-	`sha256:cf0fab189fab73693a9b3106461416a2695d2d595cbf01de8c9259f99e2fe20f`  
		Last Modified: Thu, 11 Aug 2016 18:51:28 GMT  
		Size: 5.8 KB (5801 bytes)
	-	`sha256:77db488134feec94d4b7919785185ce1ee9651698bd3a0689db9f5ec4de06b2f`  
		Last Modified: Thu, 11 Aug 2016 18:51:29 GMT  
		Size: 2.2 KB (2202 bytes)
