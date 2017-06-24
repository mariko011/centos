<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.1`](#bonita751)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:a7b3cbea995c8eafd5a43c4eb1c9c4485132d001f713a964606112e27c4c4880
```

-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219058006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef6eb242d05630c539690de8f09eaf9be2efcf0cb873e8e6da56bbf2463d185`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Jun 2017 23:16:09 GMT
ADD file:8c7b62577f9147353650fd7fe54e3fc119f7f39441b3b03fbba3e97e6de4a52a in / 
# Tue, 20 Jun 2017 23:16:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:16:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:16:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:16:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:16:57 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:36:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 21 Jun 2017 00:37:22 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:37:35 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 21 Jun 2017 00:37:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 21 Jun 2017 00:37:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 21 Jun 2017 00:37:44 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 21 Jun 2017 00:37:45 GMT
ARG BONITA_VERSION
# Wed, 21 Jun 2017 00:37:45 GMT
ARG TOMCAT_VERSION
# Wed, 21 Jun 2017 00:37:47 GMT
ARG BONITA_SHA256
# Wed, 21 Jun 2017 00:38:11 GMT
ARG BONITA_URL
# Wed, 21 Jun 2017 00:38:11 GMT
ENV BONITA_VERSION=7.4.3
# Wed, 21 Jun 2017 00:38:12 GMT
ENV TOMCAT_VERSION=7.0.67
# Wed, 21 Jun 2017 00:38:13 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Wed, 21 Jun 2017 00:38:14 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Wed, 21 Jun 2017 00:38:32 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 21 Jun 2017 00:38:34 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 21 Jun 2017 00:38:36 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 21 Jun 2017 00:38:59 GMT
VOLUME [/opt/bonita]
# Wed, 21 Jun 2017 00:39:01 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Wed, 21 Jun 2017 00:39:02 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Wed, 21 Jun 2017 00:39:03 GMT
EXPOSE 8080/tcp
# Wed, 21 Jun 2017 00:39:04 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:cb56c90f0b30751153cb2c317de31d102631db364a68eefe5c4cfd9f62a8c9df`  
		Last Modified: Tue, 20 Jun 2017 23:27:36 GMT  
		Size: 67.1 MB (67114523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acc551e5716c235426294464414cbf9850455193f716fada6ef54307f7939af`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 72.6 KB (72624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8956dcd35143057f60f158c2e425e03aabd4425302a5e0ff17a927baf83e1178`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9082427212149330be15339e16f9a9130ffc7ae005974a78235fb0ee8ea45b11`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44ff14dd3bbdf87d487f60d1da9ffbde069fbfa782aa8d02997b5a013e10479`  
		Last Modified: Tue, 20 Jun 2017 23:27:14 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c50e3af1c84a38a3db9af63078c74476d9f3059b77aacc15d116f4f1bbcf8a8`  
		Last Modified: Sat, 24 Jun 2017 06:11:43 GMT  
		Size: 65.7 MB (65700568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd3876e899b19b2acf3fa69390b08bbe267a3bcc9ddd6f227f6dd72ffd4aa791`  
		Last Modified: Sat, 24 Jun 2017 06:11:31 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b4d2cb38ade0a5c0ff381e40b4b16cb66fc9b8a2518198def41e96269fa127`  
		Last Modified: Sat, 24 Jun 2017 06:11:27 GMT  
		Size: 1.8 KB (1805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f7c38d83a6a22046bb8dc36f3889a22fd0b7d3c94336414100cd1d990199f9`  
		Last Modified: Sat, 24 Jun 2017 06:11:28 GMT  
		Size: 123.2 KB (123240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efec8907858e36694c0c3b5f3a3594d48aaefa9c98e41b87658eb391d79fc1e6`  
		Last Modified: Sat, 24 Jun 2017 06:11:28 GMT  
		Size: 818.4 KB (818446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ffe2b24906a71e314be451a5f082d14430daac285a3acf6442cf992e4d84b24`  
		Last Modified: Sat, 24 Jun 2017 06:11:34 GMT  
		Size: 85.2 MB (85217834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f404d9d813d057b752967f00f3342a232a77f8f737877c5400a8b92ce00265`  
		Last Modified: Sat, 24 Jun 2017 06:11:28 GMT  
		Size: 6.0 KB (6038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f7c7401c1507df56c018e0409c54f2967a94680ded93db4afd42f07445f5a9`  
		Last Modified: Sat, 24 Jun 2017 06:11:28 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.5.1`

```console
$ docker pull bonita@sha256:5f6700fd187c890adfacca5f9a3e71089fad1099b2e7721c84ed570917a37e19
```

-	Platforms:
	-	linux; amd64

### `bonita:7.5.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218019802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a51b69d12f3502378f466d9c28f8a90c743fb2aa77e3ced67c105889d8f50d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:39:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 21 Jun 2017 00:40:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:50:03 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 21 Jun 2017 00:50:04 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 21 Jun 2017 00:50:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 21 Jun 2017 00:50:10 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 21 Jun 2017 00:50:11 GMT
ARG BONITA_VERSION
# Wed, 21 Jun 2017 00:50:12 GMT
ARG TOMCAT_VERSION
# Wed, 21 Jun 2017 00:50:13 GMT
ARG BONITA_SHA256
# Wed, 21 Jun 2017 00:50:37 GMT
ARG BONITA_URL
# Wed, 21 Jun 2017 00:50:37 GMT
ENV BONITA_VERSION=7.5.1
# Wed, 21 Jun 2017 00:50:38 GMT
ENV TOMCAT_VERSION=7.0.76
# Wed, 21 Jun 2017 00:50:39 GMT
ENV BONITA_SHA256=aecf55d99f585b2e4fb01886a9512190fe4756f4b2cc718db778e3f9ce6848df
# Wed, 21 Jun 2017 00:50:40 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.1-Tomcat-7.0.76.zip
# Wed, 21 Jun 2017 00:50:52 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 21 Jun 2017 00:50:54 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 21 Jun 2017 00:50:56 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 21 Jun 2017 00:50:57 GMT
VOLUME [/opt/bonita]
# Wed, 21 Jun 2017 00:50:58 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Wed, 21 Jun 2017 00:50:59 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Wed, 21 Jun 2017 00:51:00 GMT
EXPOSE 8080/tcp
# Wed, 21 Jun 2017 00:51:24 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b758459837fbcda561b01b32ea3e4f53f227827ca6c2d7563125f776b482f8`  
		Last Modified: Sat, 24 Jun 2017 06:12:37 GMT  
		Size: 82.6 MB (82571659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e677361d392947f14facce95ab3efe9844ef34e32ac7ecf6ddb7290f43e616dd`  
		Last Modified: Sat, 24 Jun 2017 06:12:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f3adf2c1294c78a94df438aa74d3c6b10ed12e2e4795202646f2c1b838e80f`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 2.0 KB (2008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f068c3c35f3640eb92d57e7f9b89b105233d9801679188ce5d60a175590f7b`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 123.2 KB (123239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d86946b5483782175ee135ee8dd324fdb2a6a2b981a3435a38322e449445f3`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 818.7 KB (818745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d918674604b5b3285e7104bf969db52c10f091f119137b0b3c5899305971aab`  
		Last Modified: Sat, 24 Jun 2017 06:12:22 GMT  
		Size: 87.4 MB (87390760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2ff79d53f5c085931b865f2d9a8af1b05cf5a90bcd9404f7d86194653c91a1`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 6.0 KB (6024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa772a73df6e893846d5f2920afa47e3fbc78c2a0c89c1f14e503c9f45e0f62a`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:5f6700fd187c890adfacca5f9a3e71089fad1099b2e7721c84ed570917a37e19
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218019802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a51b69d12f3502378f466d9c28f8a90c743fb2aa77e3ced67c105889d8f50d`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 20 Jun 2017 23:18:13 GMT
ADD file:c251a21fbe3a651352aff2e222db19b7b179e1640cf4e9b75f55fd6f85f40366 in / 
# Tue, 20 Jun 2017 23:18:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Jun 2017 23:18:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 23:18:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 20 Jun 2017 23:19:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Jun 2017 23:19:04 GMT
CMD ["/bin/bash"]
# Wed, 21 Jun 2017 00:39:31 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Wed, 21 Jun 2017 00:40:11 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Wed, 21 Jun 2017 00:50:03 GMT
RUN mkdir /opt/custom-init.d/
# Wed, 21 Jun 2017 00:50:04 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Wed, 21 Jun 2017 00:50:06 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 21 Jun 2017 00:50:10 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Wed, 21 Jun 2017 00:50:11 GMT
ARG BONITA_VERSION
# Wed, 21 Jun 2017 00:50:12 GMT
ARG TOMCAT_VERSION
# Wed, 21 Jun 2017 00:50:13 GMT
ARG BONITA_SHA256
# Wed, 21 Jun 2017 00:50:37 GMT
ARG BONITA_URL
# Wed, 21 Jun 2017 00:50:37 GMT
ENV BONITA_VERSION=7.5.1
# Wed, 21 Jun 2017 00:50:38 GMT
ENV TOMCAT_VERSION=7.0.76
# Wed, 21 Jun 2017 00:50:39 GMT
ENV BONITA_SHA256=aecf55d99f585b2e4fb01886a9512190fe4756f4b2cc718db778e3f9ce6848df
# Wed, 21 Jun 2017 00:50:40 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.1-Tomcat-7.0.76.zip
# Wed, 21 Jun 2017 00:50:52 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 21 Jun 2017 00:50:54 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Wed, 21 Jun 2017 00:50:56 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Wed, 21 Jun 2017 00:50:57 GMT
VOLUME [/opt/bonita]
# Wed, 21 Jun 2017 00:50:58 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Wed, 21 Jun 2017 00:50:59 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Wed, 21 Jun 2017 00:51:00 GMT
EXPOSE 8080/tcp
# Wed, 21 Jun 2017 00:51:24 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:75c416ea735c42a4a0b2c8f31946a1918adc7853373c411abbec424391fb989c`  
		Last Modified: Tue, 20 Jun 2017 23:30:15 GMT  
		Size: 47.1 MB (47103294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ff40b6d658359b7b428e76db4b9f6f921e47dda0a9a25537c09cc0f031c206`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7050fc1f338be18d965236f3bf937073e82d3846e362b4525815be483984ffb`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 513.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0ffb5cf6ba990b18c314f5758f6e68609f1e32b3d35769b74264150d317b728`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be232718519c940b04bc576366a58df53418d8e8bdb605f4e3ca66775735fdca`  
		Last Modified: Tue, 20 Jun 2017 23:30:01 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b758459837fbcda561b01b32ea3e4f53f227827ca6c2d7563125f776b482f8`  
		Last Modified: Sat, 24 Jun 2017 06:12:37 GMT  
		Size: 82.6 MB (82571659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e677361d392947f14facce95ab3efe9844ef34e32ac7ecf6ddb7290f43e616dd`  
		Last Modified: Sat, 24 Jun 2017 06:12:19 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45f3adf2c1294c78a94df438aa74d3c6b10ed12e2e4795202646f2c1b838e80f`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 2.0 KB (2008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f068c3c35f3640eb92d57e7f9b89b105233d9801679188ce5d60a175590f7b`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 123.2 KB (123239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d86946b5483782175ee135ee8dd324fdb2a6a2b981a3435a38322e449445f3`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 818.7 KB (818745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d918674604b5b3285e7104bf969db52c10f091f119137b0b3c5899305971aab`  
		Last Modified: Sat, 24 Jun 2017 06:12:22 GMT  
		Size: 87.4 MB (87390760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2ff79d53f5c085931b865f2d9a8af1b05cf5a90bcd9404f7d86194653c91a1`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 6.0 KB (6024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa772a73df6e893846d5f2920afa47e3fbc78c2a0c89c1f14e503c9f45e0f62a`  
		Last Modified: Sat, 24 Jun 2017 06:12:16 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
