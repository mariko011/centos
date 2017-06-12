<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.1`](#bonita751)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:0165f1ad167b90f42de868d8e0776299d708b343fd2474c9c24160118ce0f63b
```

-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219053164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc936a8a75cd77d19acf52a1d4bc709967e9ba862bd07a08767659a2f5d358c1`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 02 Jun 2017 16:15:37 GMT
ADD file:1ad6d6b4b456510256c9561c6472b088a99a1858d86058e11408fc96112a3cee in / 
# Fri, 02 Jun 2017 16:15:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:15:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:15:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:15:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:15:44 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:31:15 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 02 Jun 2017 17:32:01 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 17:32:03 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 02 Jun 2017 17:32:05 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 02 Jun 2017 17:32:07 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 02 Jun 2017 17:32:11 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 02 Jun 2017 17:32:12 GMT
ARG BONITA_VERSION
# Fri, 02 Jun 2017 17:32:13 GMT
ARG TOMCAT_VERSION
# Fri, 02 Jun 2017 17:32:13 GMT
ARG BONITA_SHA256
# Fri, 02 Jun 2017 17:32:14 GMT
ARG BONITA_URL
# Fri, 02 Jun 2017 17:32:15 GMT
ENV BONITA_VERSION=7.4.3
# Fri, 02 Jun 2017 17:32:16 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 02 Jun 2017 17:32:17 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Fri, 02 Jun 2017 17:32:17 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Fri, 02 Jun 2017 17:32:28 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 02 Jun 2017 17:32:30 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 02 Jun 2017 17:32:32 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 02 Jun 2017 17:32:53 GMT
VOLUME [/opt/bonita]
# Fri, 02 Jun 2017 17:32:54 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Fri, 02 Jun 2017 17:32:55 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Fri, 02 Jun 2017 17:33:17 GMT
EXPOSE 8080/tcp
# Fri, 02 Jun 2017 17:33:17 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:1d8592394ba1ae81037e16fac3382070ce1478cf7f6c68d538c62ba067e111db`  
		Last Modified: Fri, 02 Jun 2017 16:21:26 GMT  
		Size: 67.1 MB (67110196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01aa7f61ccd17f0a729b91e6ba4ae6aedb51ca43acb3244b9732dbc043814786`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 72.6 KB (72620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd2552a960ee746b6272c9a7d2b3a252e07bf8ef38a0c8df117e0d96bf44904`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbe941c5e3e55212fc2b56ef27a44b887b24bf163a3c1fbda2023265355d088`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2549ecfb14c6934eb6ff9c45f15839db6abf3bdfbc617589f53ae4f67f265629`  
		Last Modified: Fri, 02 Jun 2017 16:20:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97bdcc11fb95dbb4c85a04d75aff3ae6606e4d1826555478bf07c66e03956ef`  
		Last Modified: Fri, 02 Jun 2017 17:36:30 GMT  
		Size: 65.7 MB (65700069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98e89c6774a7e45021dfd52db66a52ee4eef61ed30a021fcfdd1c159dacdace`  
		Last Modified: Fri, 02 Jun 2017 17:36:16 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374ae7490255179013c8eed8d0e9f0102fe960d650827f38a14efa8d5c003234`  
		Last Modified: Fri, 02 Jun 2017 17:36:16 GMT  
		Size: 1.8 KB (1803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c89f9b568021598679301b3092bf5e982eb067876e33ab765bea9d24fd0b19`  
		Last Modified: Fri, 02 Jun 2017 17:36:15 GMT  
		Size: 123.2 KB (123240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f919140529e2021007050e12b3c9b588bd58608eed5f8746695208f19cce73`  
		Last Modified: Fri, 02 Jun 2017 17:36:14 GMT  
		Size: 818.4 KB (818443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb985ce039cd5dfbd4963e3791b5a3c6055e1aa468e9f3337f74b0f639fd2c7`  
		Last Modified: Fri, 02 Jun 2017 17:36:20 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3b37e22ec1c5efcb8989ba36c280a528c52085285856d0dfdd5f54a6e7f527`  
		Last Modified: Fri, 02 Jun 2017 17:36:14 GMT  
		Size: 6.0 KB (6035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3fd665a6a81140246960e634b50d4f7ef56f047871abf6350fa69f6fc9b7fe`  
		Last Modified: Fri, 02 Jun 2017 17:36:13 GMT  
		Size: 1.6 KB (1606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.5.1`

```console
$ docker pull bonita@sha256:dedf168e3777b315e1c8475862c8ed13cb07d2c9bcbde1d8ff924bcc08948f4c
```

-	Platforms:
	-	linux; amd64

### `bonita:7.5.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217850146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8690ce4fb43bc69d83fa20bc49299824d660ee70f5537ca2f658d3f5055a6ac6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:34:00 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 02 Jun 2017 17:34:31 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 17:34:33 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 02 Jun 2017 17:34:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 02 Jun 2017 17:34:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 02 Jun 2017 17:35:00 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 02 Jun 2017 17:35:01 GMT
ARG BONITA_VERSION
# Fri, 02 Jun 2017 17:35:02 GMT
ARG TOMCAT_VERSION
# Fri, 02 Jun 2017 17:35:03 GMT
ARG BONITA_SHA256
# Fri, 02 Jun 2017 17:35:04 GMT
ARG BONITA_URL
# Mon, 12 Jun 2017 16:43:56 GMT
ENV BONITA_VERSION=7.5.1
# Mon, 12 Jun 2017 16:43:57 GMT
ENV TOMCAT_VERSION=7.0.76
# Mon, 12 Jun 2017 16:43:58 GMT
ENV BONITA_SHA256=aecf55d99f585b2e4fb01886a9512190fe4756f4b2cc718db778e3f9ce6848df
# Mon, 12 Jun 2017 16:43:58 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.1-Tomcat-7.0.76.zip
# Mon, 12 Jun 2017 16:44:11 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 12 Jun 2017 16:44:13 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 12 Jun 2017 16:44:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 12 Jun 2017 16:44:15 GMT
VOLUME [/opt/bonita]
# Mon, 12 Jun 2017 16:44:16 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Mon, 12 Jun 2017 16:44:17 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Mon, 12 Jun 2017 16:44:18 GMT
EXPOSE 8080/tcp
# Mon, 12 Jun 2017 16:44:19 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7377b0deb3bbfad2c535d96d9ae1d9debe35ae23d40e02167824b48cebfe8783`  
		Last Modified: Fri, 02 Jun 2017 17:37:25 GMT  
		Size: 82.6 MB (82572086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43332da42eef618e6f2d9227178d26f165af221c7c4bbb7ff762d7d391a4623`  
		Last Modified: Fri, 02 Jun 2017 17:37:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c7d64a987f5c1f376bd1538d53529746bfef0540b1cd9ebd1e345d4cc08e5`  
		Last Modified: Fri, 02 Jun 2017 17:37:07 GMT  
		Size: 2.0 KB (2004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e6ac5ebdabb5ad46cc77c6c86e674a2f61604dbec070c6094eb48be900d2f8`  
		Last Modified: Fri, 02 Jun 2017 17:37:07 GMT  
		Size: 123.2 KB (123240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abbd83405539d414dd078b68dcd1442d853efa055f765d8cb5710fa1391d03e`  
		Last Modified: Fri, 02 Jun 2017 17:37:08 GMT  
		Size: 818.7 KB (818735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0f445deefcbf0611f2e67cc972accab690bf1d8bb6ad63db3cc2558305a5`  
		Last Modified: Mon, 12 Jun 2017 16:45:17 GMT  
		Size: 87.4 MB (87390761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb062581ab29b40ac07e9a14cb4ad7ef724a12b042687a7e01a679b85c902c`  
		Last Modified: Mon, 12 Jun 2017 16:45:11 GMT  
		Size: 6.0 KB (6020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca720e819f1db9d5713be77da39158a50dbd5134b34059ef082f17430f835df`  
		Last Modified: Mon, 12 Jun 2017 16:45:13 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:dedf168e3777b315e1c8475862c8ed13cb07d2c9bcbde1d8ff924bcc08948f4c
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.9 MB (217850146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8690ce4fb43bc69d83fa20bc49299824d660ee70f5537ca2f658d3f5055a6ac6`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 02 Jun 2017 16:16:32 GMT
ADD file:5aff8c59a70783352d1d5d5b24ddd27b77d9cdc5917992febe9d92901f78a8b3 in / 
# Fri, 02 Jun 2017 16:16:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 02 Jun 2017 16:16:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 16:16:36 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 02 Jun 2017 16:16:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 02 Jun 2017 16:16:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Jun 2017 17:34:00 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 02 Jun 2017 17:34:31 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 02 Jun 2017 17:34:33 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 02 Jun 2017 17:34:34 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 02 Jun 2017 17:34:37 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 02 Jun 2017 17:35:00 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 02 Jun 2017 17:35:01 GMT
ARG BONITA_VERSION
# Fri, 02 Jun 2017 17:35:02 GMT
ARG TOMCAT_VERSION
# Fri, 02 Jun 2017 17:35:03 GMT
ARG BONITA_SHA256
# Fri, 02 Jun 2017 17:35:04 GMT
ARG BONITA_URL
# Mon, 12 Jun 2017 16:43:56 GMT
ENV BONITA_VERSION=7.5.1
# Mon, 12 Jun 2017 16:43:57 GMT
ENV TOMCAT_VERSION=7.0.76
# Mon, 12 Jun 2017 16:43:58 GMT
ENV BONITA_SHA256=aecf55d99f585b2e4fb01886a9512190fe4756f4b2cc718db778e3f9ce6848df
# Mon, 12 Jun 2017 16:43:58 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.1-Tomcat-7.0.76.zip
# Mon, 12 Jun 2017 16:44:11 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 12 Jun 2017 16:44:13 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Mon, 12 Jun 2017 16:44:15 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Mon, 12 Jun 2017 16:44:15 GMT
VOLUME [/opt/bonita]
# Mon, 12 Jun 2017 16:44:16 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Mon, 12 Jun 2017 16:44:17 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Mon, 12 Jun 2017 16:44:18 GMT
EXPOSE 8080/tcp
# Mon, 12 Jun 2017 16:44:19 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:bd97b43c27e332fc4e00edf827bbc26369ad375187ce6eee91c616ad275884b1`  
		Last Modified: Fri, 19 May 2017 22:35:30 GMT  
		Size: 46.9 MB (46933232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6960dc1aba1816652969986284410927a5d942bf8042e077a3ebc8d1c58bb432`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 814.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61829b0db5f4033ff48cbf3495271c8410c76e6396b56f15a79c3f7b5b7845`  
		Last Modified: Fri, 02 Jun 2017 16:23:27 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f88dc826b144c661a8d1d08561e1ff3711f527042955505e9f3e563bdb2281f`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b3859b1e43f3ff32f10055951a568a9ad5ab6dc4ab61818b117b6912088f3d`  
		Last Modified: Fri, 02 Jun 2017 16:23:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7377b0deb3bbfad2c535d96d9ae1d9debe35ae23d40e02167824b48cebfe8783`  
		Last Modified: Fri, 02 Jun 2017 17:37:25 GMT  
		Size: 82.6 MB (82572086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43332da42eef618e6f2d9227178d26f165af221c7c4bbb7ff762d7d391a4623`  
		Last Modified: Fri, 02 Jun 2017 17:37:09 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286c7d64a987f5c1f376bd1538d53529746bfef0540b1cd9ebd1e345d4cc08e5`  
		Last Modified: Fri, 02 Jun 2017 17:37:07 GMT  
		Size: 2.0 KB (2004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e6ac5ebdabb5ad46cc77c6c86e674a2f61604dbec070c6094eb48be900d2f8`  
		Last Modified: Fri, 02 Jun 2017 17:37:07 GMT  
		Size: 123.2 KB (123240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abbd83405539d414dd078b68dcd1442d853efa055f765d8cb5710fa1391d03e`  
		Last Modified: Fri, 02 Jun 2017 17:37:08 GMT  
		Size: 818.7 KB (818735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185f0f445deefcbf0611f2e67cc972accab690bf1d8bb6ad63db3cc2558305a5`  
		Last Modified: Mon, 12 Jun 2017 16:45:17 GMT  
		Size: 87.4 MB (87390761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cb062581ab29b40ac07e9a14cb4ad7ef724a12b042687a7e01a679b85c902c`  
		Last Modified: Mon, 12 Jun 2017 16:45:11 GMT  
		Size: 6.0 KB (6020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca720e819f1db9d5713be77da39158a50dbd5134b34059ef082f17430f835df`  
		Last Modified: Mon, 12 Jun 2017 16:45:13 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
