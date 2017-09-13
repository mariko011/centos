<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:b210931aed3c89629fe9789a305a030259252fbb6a254bb2d33762f408b7d57d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

```console
$ docker pull bonita@sha256:e16c0e3edc820f80cc5f73282696f0a9c9fd65657ad0b4c5ea86e7d4a22a4314
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219119370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0617db0727e3ea4e10064f09dd4d086944951ff89ab78f221ec043a79e63129`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:38 GMT
ADD file:84479dd43530d358e10fc77876bb6f83e71e1367d959e423f2471e0057c4b424 in / 
# Wed, 13 Sep 2017 03:58:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:42 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 14:53:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 13 Sep 2017 14:54:54 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:54:54 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 13 Sep 2017 14:54:55 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 13 Sep 2017 14:54:57 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 13 Sep 2017 14:55:01 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 13 Sep 2017 14:55:01 GMT
ARG BONITA_VERSION
# Wed, 13 Sep 2017 14:55:01 GMT
ARG TOMCAT_VERSION
# Wed, 13 Sep 2017 14:55:01 GMT
ARG BONITA_SHA256
# Wed, 13 Sep 2017 14:55:01 GMT
ARG BONITA_URL
# Wed, 13 Sep 2017 14:55:01 GMT
ENV BONITA_VERSION=7.4.3
# Wed, 13 Sep 2017 14:55:02 GMT
ENV TOMCAT_VERSION=7.0.67
# Wed, 13 Sep 2017 14:55:02 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Wed, 13 Sep 2017 14:55:02 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Wed, 13 Sep 2017 14:55:12 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 13 Sep 2017 14:55:13 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 13 Sep 2017 14:55:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 13 Sep 2017 14:55:15 GMT
VOLUME [/opt/bonita]
# Wed, 13 Sep 2017 14:55:15 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Wed, 13 Sep 2017 14:55:16 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Wed, 13 Sep 2017 14:55:16 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 14:55:16 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:48f0413f904d5185d4789dc65f4d451a5a4d7a96c491a5862b73c20d33396e59`  
		Last Modified: Fri, 28 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67115580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4149b423775a1b4c99abf96e6405ffbeabb464e433deb3404f64e487c4ed25`  
		Last Modified: Wed, 13 Sep 2017 03:59:23 GMT  
		Size: 72.7 KB (72655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42492a60ee7821b9d8a839a3b12556e0f4c151e9d5f1dbbee86ad866df5e0cb9`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0376373e7f6c6e580d86baafdf4eeb232e808d30c6edd76630445d052e6605d7`  
		Last Modified: Wed, 13 Sep 2017 03:59:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59f18821fd0b9442b3335094127090bbbbb77a6887e2d6e7c255a7277732a546`  
		Last Modified: Wed, 13 Sep 2017 03:59:22 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d926f319bb092993fc62ac1153b915aa1117b8ff50d2ee904001206585a1a`  
		Last Modified: Wed, 13 Sep 2017 14:58:05 GMT  
		Size: 65.8 MB (65750560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf76869b1c9010c25f8bd01582593b67f78e3f52868ecc560d0bcfee9d24aa`  
		Last Modified: Wed, 13 Sep 2017 14:57:54 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce20fd83bc031d0772881f99dca6a71bf84654310a67c80a57aade22465052bc`  
		Last Modified: Wed, 13 Sep 2017 14:57:54 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39cfff1c5de7779439b6dcb46927500713b133d4847f50f38bbb20b095eb448c`  
		Last Modified: Wed, 13 Sep 2017 14:57:52 GMT  
		Size: 133.2 KB (133175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94ad00a09df6688b89512c313c2c4c077233747266a92dab0457455c590e947`  
		Last Modified: Wed, 13 Sep 2017 14:57:52 GMT  
		Size: 818.6 KB (818573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65324c6de5eee43e050ddda1a44700fd7e9b9d75958e88d8522a15e00c970dab`  
		Last Modified: Wed, 13 Sep 2017 14:58:00 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fad0704eea920102fdcdc2bd1bc1e08cbd4b44e4a8ac0165b996bc11ae4a9f3`  
		Last Modified: Wed, 13 Sep 2017 14:57:51 GMT  
		Size: 6.0 KB (6040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b84814302344d3c5cc318c9add5f10630f0629153fb0e39cfd69fd7eaa27a62`  
		Last Modified: Wed, 13 Sep 2017 14:57:51 GMT  
		Size: 1.6 KB (1606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:39e02bfd914f98493a47547d74594e65f1ed97ea7fdf707e4788813a0f6a5681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:4a2084a364e3220d8cae578784c9d8e285aa038ef934fa1ad7b2182263421e96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.3 MB (218344355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdc3f933d97ff62ae084499721080b72e6b10250f003b95833d78efdb8e82d3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 14:55:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 13 Sep 2017 14:57:05 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:57:06 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 13 Sep 2017 14:57:07 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 13 Sep 2017 14:57:09 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 13 Sep 2017 14:57:14 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 13 Sep 2017 14:57:14 GMT
ARG BONITA_VERSION
# Wed, 13 Sep 2017 14:57:14 GMT
ARG TOMCAT_VERSION
# Wed, 13 Sep 2017 14:57:14 GMT
ARG BONITA_SHA256
# Wed, 13 Sep 2017 14:57:15 GMT
ARG BONITA_URL
# Wed, 13 Sep 2017 14:57:15 GMT
ENV BONITA_VERSION=7.5.4
# Wed, 13 Sep 2017 14:57:15 GMT
ENV TOMCAT_VERSION=7.0.76
# Wed, 13 Sep 2017 14:57:15 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Wed, 13 Sep 2017 14:57:15 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Wed, 13 Sep 2017 14:57:28 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 13 Sep 2017 14:57:30 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 13 Sep 2017 14:57:31 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 13 Sep 2017 14:57:31 GMT
VOLUME [/opt/bonita]
# Wed, 13 Sep 2017 14:57:31 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Wed, 13 Sep 2017 14:57:31 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Wed, 13 Sep 2017 14:57:32 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 14:57:32 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f75d0d5eecece2af40b839cd4aabc9c53bc5781ae4a6d6ac0e99452125f258`  
		Last Modified: Wed, 13 Sep 2017 14:58:33 GMT  
		Size: 82.6 MB (82617024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edcf3f57d1d53f0d3d365379fc148e78e87268d21e0668a8e5f167d28af54b4`  
		Last Modified: Wed, 13 Sep 2017 14:58:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80d1e3268239b92eb1190044965d63d6476416e4fadfd63710b8912cfe52728`  
		Last Modified: Wed, 13 Sep 2017 14:58:22 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05493fb82174b7202151e08ff6b39620bf6cf0868c392e4199fcbd9a7e9aa12e`  
		Last Modified: Wed, 13 Sep 2017 14:58:19 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509645f4ac59216df7aa7fbb5c1372f6fdf63880b42b9dcb28a7d46a79d71213`  
		Last Modified: Wed, 13 Sep 2017 14:58:19 GMT  
		Size: 818.9 KB (818903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119001a9564c154678e0daec73d69ee761d98850d47a1fc4407ea795e57d0ed7`  
		Last Modified: Wed, 13 Sep 2017 14:58:24 GMT  
		Size: 87.5 MB (87504115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7857c1f49a2325d0870eabe5f1af3eef92171b7e661d837eb3d33ed1c048da`  
		Last Modified: Wed, 13 Sep 2017 14:58:18 GMT  
		Size: 6.2 KB (6166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b14362b20299d9e0b823d2972ebee2ca30c014bedc18a9b87a8a605f059b29`  
		Last Modified: Wed, 13 Sep 2017 14:58:18 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:39e02bfd914f98493a47547d74594e65f1ed97ea7fdf707e4788813a0f6a5681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:4a2084a364e3220d8cae578784c9d8e285aa038ef934fa1ad7b2182263421e96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.3 MB (218344355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdc3f933d97ff62ae084499721080b72e6b10250f003b95833d78efdb8e82d3`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 13 Sep 2017 03:58:47 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Wed, 13 Sep 2017 03:58:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 03:58:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 03:58:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 03:58:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 03:58:50 GMT
CMD ["/bin/bash"]
# Wed, 13 Sep 2017 14:55:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 13 Sep 2017 14:57:05 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 14:57:06 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 13 Sep 2017 14:57:07 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 13 Sep 2017 14:57:09 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 13 Sep 2017 14:57:14 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 13 Sep 2017 14:57:14 GMT
ARG BONITA_VERSION
# Wed, 13 Sep 2017 14:57:14 GMT
ARG TOMCAT_VERSION
# Wed, 13 Sep 2017 14:57:14 GMT
ARG BONITA_SHA256
# Wed, 13 Sep 2017 14:57:15 GMT
ARG BONITA_URL
# Wed, 13 Sep 2017 14:57:15 GMT
ENV BONITA_VERSION=7.5.4
# Wed, 13 Sep 2017 14:57:15 GMT
ENV TOMCAT_VERSION=7.0.76
# Wed, 13 Sep 2017 14:57:15 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Wed, 13 Sep 2017 14:57:15 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Wed, 13 Sep 2017 14:57:28 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 13 Sep 2017 14:57:30 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 13 Sep 2017 14:57:31 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 13 Sep 2017 14:57:31 GMT
VOLUME [/opt/bonita]
# Wed, 13 Sep 2017 14:57:31 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Wed, 13 Sep 2017 14:57:31 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Wed, 13 Sep 2017 14:57:32 GMT
EXPOSE 8080/tcp
# Wed, 13 Sep 2017 14:57:32 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbbe761fcb565a007b458e09e08ecb88947f647f57be819a492a6b23694cefd8`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7afa5ede606fb1845e42f0d4816d2a7593a2b666ff9ca4722dcd2cff8a541acf`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b7253b56f434d6e4d97d259cb1007481cf670df2e04229e83cf37db33d96eb`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8db33536d447786cf57cca870fdd7d50d55fd67060c06252edc1c8db456a8f`  
		Last Modified: Wed, 13 Sep 2017 03:59:35 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f75d0d5eecece2af40b839cd4aabc9c53bc5781ae4a6d6ac0e99452125f258`  
		Last Modified: Wed, 13 Sep 2017 14:58:33 GMT  
		Size: 82.6 MB (82617024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edcf3f57d1d53f0d3d365379fc148e78e87268d21e0668a8e5f167d28af54b4`  
		Last Modified: Wed, 13 Sep 2017 14:58:21 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80d1e3268239b92eb1190044965d63d6476416e4fadfd63710b8912cfe52728`  
		Last Modified: Wed, 13 Sep 2017 14:58:22 GMT  
		Size: 2.0 KB (2046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05493fb82174b7202151e08ff6b39620bf6cf0868c392e4199fcbd9a7e9aa12e`  
		Last Modified: Wed, 13 Sep 2017 14:58:19 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509645f4ac59216df7aa7fbb5c1372f6fdf63880b42b9dcb28a7d46a79d71213`  
		Last Modified: Wed, 13 Sep 2017 14:58:19 GMT  
		Size: 818.9 KB (818903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119001a9564c154678e0daec73d69ee761d98850d47a1fc4407ea795e57d0ed7`  
		Last Modified: Wed, 13 Sep 2017 14:58:24 GMT  
		Size: 87.5 MB (87504115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7857c1f49a2325d0870eabe5f1af3eef92171b7e661d837eb3d33ed1c048da`  
		Last Modified: Wed, 13 Sep 2017 14:58:18 GMT  
		Size: 6.2 KB (6166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b14362b20299d9e0b823d2972ebee2ca30c014bedc18a9b87a8a605f059b29`  
		Last Modified: Wed, 13 Sep 2017 14:58:18 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
