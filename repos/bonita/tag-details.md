<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.0`](#bonita750)
-	[`bonita:latest`](#bonitalatest)

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

## `bonita:7.5.0`

```console
$ docker pull bonita@sha256:3d5f83740e8ef3a2d5877fe701ed5ad0a441963213c2db0f6a2b2ff333ffe44e
```

-	Platforms:
	-	linux; amd64

### `bonita:7.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217808571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a49075110b8d918e8d54aeed42a177abbec7af175c547c422c015c794f58ef`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 13:39:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 02 Jun 2017 13:39:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 13:39:37 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 02 Jun 2017 13:39:38 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 02 Jun 2017 13:39:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 02 Jun 2017 13:39:44 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 02 Jun 2017 13:39:45 GMT
ARG BONITA_VERSION
# Fri, 02 Jun 2017 13:39:46 GMT
ARG TOMCAT_VERSION
# Fri, 02 Jun 2017 13:39:47 GMT
ARG BONITA_SHA256
# Fri, 02 Jun 2017 13:39:48 GMT
ARG BONITA_URL
# Fri, 02 Jun 2017 13:39:48 GMT
ENV BONITA_VERSION=7.5.0
# Fri, 02 Jun 2017 13:39:49 GMT
ENV TOMCAT_VERSION=7.0.76
# Fri, 02 Jun 2017 13:39:50 GMT
ENV BONITA_SHA256=7784fa4febfbbe74d69ebc40a1e4848c00777bb3d8fdba5966be3bcbd5ccc0d9
# Fri, 02 Jun 2017 13:39:51 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.0-Tomcat-7.0.76.zip
# Fri, 02 Jun 2017 13:40:03 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 02 Jun 2017 13:40:05 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 02 Jun 2017 13:40:07 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 02 Jun 2017 13:40:08 GMT
VOLUME [/opt/bonita]
# Fri, 02 Jun 2017 13:40:09 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Fri, 02 Jun 2017 13:40:10 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Fri, 02 Jun 2017 13:40:11 GMT
EXPOSE 8080/tcp
# Fri, 02 Jun 2017 13:40:12 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4e1cc8dc02454d5338978a8de4c00dadd78c0e15af38e8f0ec6bb1d57a7fe3`  
		Last Modified: Fri, 02 Jun 2017 13:41:14 GMT  
		Size: 82.6 MB (82571581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b9440b96670d856627bda5d8cce9fa3105a8c7f75989fff11200a9889b0bdd`  
		Last Modified: Fri, 02 Jun 2017 13:41:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844ddb28dce5ff44069f023ab0f2c313de2e583db7cd30de55084fefd1edb933`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494810ab2db5590ce02bed4c6e817ec6a2f95e3e520cc192659d0e703de0b263`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 123.2 KB (123228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d62a0c0bdb9b760dd700d3739c2ca588b99d539f6e5546ba96a785b61b9cea5`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 818.7 KB (818737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5499a87e77113dedd427dc53e08528cb5f4197a7df366fc062ec6ed5f69705e`  
		Last Modified: Fri, 02 Jun 2017 13:41:09 GMT  
		Size: 87.4 MB (87389582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0723fdeaa42ca7e2ea9924694117b60b172f3d48b0e1585b3c924313f7ad96`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 6.0 KB (6023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05c1c4b49b0f20d431ad1a459f5ce36c4cbc24c603704c71e5f80bddcfd0d2a`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:3d5f83740e8ef3a2d5877fe701ed5ad0a441963213c2db0f6a2b2ff333ffe44e
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217808571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a49075110b8d918e8d54aeed42a177abbec7af175c547c422c015c794f58ef`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 13:39:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 02 Jun 2017 13:39:35 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 13:39:37 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 02 Jun 2017 13:39:38 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 02 Jun 2017 13:39:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 02 Jun 2017 13:39:44 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 02 Jun 2017 13:39:45 GMT
ARG BONITA_VERSION
# Fri, 02 Jun 2017 13:39:46 GMT
ARG TOMCAT_VERSION
# Fri, 02 Jun 2017 13:39:47 GMT
ARG BONITA_SHA256
# Fri, 02 Jun 2017 13:39:48 GMT
ARG BONITA_URL
# Fri, 02 Jun 2017 13:39:48 GMT
ENV BONITA_VERSION=7.5.0
# Fri, 02 Jun 2017 13:39:49 GMT
ENV TOMCAT_VERSION=7.0.76
# Fri, 02 Jun 2017 13:39:50 GMT
ENV BONITA_SHA256=7784fa4febfbbe74d69ebc40a1e4848c00777bb3d8fdba5966be3bcbd5ccc0d9
# Fri, 02 Jun 2017 13:39:51 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.0-Tomcat-7.0.76.zip
# Fri, 02 Jun 2017 13:40:03 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 02 Jun 2017 13:40:05 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 02 Jun 2017 13:40:07 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 02 Jun 2017 13:40:08 GMT
VOLUME [/opt/bonita]
# Fri, 02 Jun 2017 13:40:09 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Fri, 02 Jun 2017 13:40:10 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Fri, 02 Jun 2017 13:40:11 GMT
EXPOSE 8080/tcp
# Fri, 02 Jun 2017 13:40:12 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4e1cc8dc02454d5338978a8de4c00dadd78c0e15af38e8f0ec6bb1d57a7fe3`  
		Last Modified: Fri, 02 Jun 2017 13:41:14 GMT  
		Size: 82.6 MB (82571581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b9440b96670d856627bda5d8cce9fa3105a8c7f75989fff11200a9889b0bdd`  
		Last Modified: Fri, 02 Jun 2017 13:41:04 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844ddb28dce5ff44069f023ab0f2c313de2e583db7cd30de55084fefd1edb933`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494810ab2db5590ce02bed4c6e817ec6a2f95e3e520cc192659d0e703de0b263`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 123.2 KB (123228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d62a0c0bdb9b760dd700d3739c2ca588b99d539f6e5546ba96a785b61b9cea5`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 818.7 KB (818737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5499a87e77113dedd427dc53e08528cb5f4197a7df366fc062ec6ed5f69705e`  
		Last Modified: Fri, 02 Jun 2017 13:41:09 GMT  
		Size: 87.4 MB (87389582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0723fdeaa42ca7e2ea9924694117b60b172f3d48b0e1585b3c924313f7ad96`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 6.0 KB (6023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05c1c4b49b0f20d431ad1a459f5ce36c4cbc24c603704c71e5f80bddcfd0d2a`  
		Last Modified: Fri, 02 Jun 2017 13:41:00 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
