<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:9e1d106d63ca1cfde81b13634bb5dbd239cd63e926cc8db9b46e85f01db8316e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

```console
$ docker pull bonita@sha256:47f374d4dba6bc1f865c2da5eadabad0acbf1a628fbd9412e34ec64d773b6b3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219118839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9db9aabdcec8bce94eb5b4bb8734a127bd99604feb4adc2296973993b79c018e`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Wed, 13 Sep 2017 23:26:20 GMT
ADD file:8f997234193c2f587ac17bb4a8db2657103d2924813edb281eec7ba9883a2806 in / 
# Wed, 13 Sep 2017 23:26:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 13 Sep 2017 23:26:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 13 Sep 2017 23:26:22 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 13 Sep 2017 23:26:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 13 Sep 2017 23:26:23 GMT
CMD ["/bin/bash"]
# Thu, 14 Sep 2017 00:05:12 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 14 Sep 2017 00:05:59 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 14 Sep 2017 00:06:00 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 14 Sep 2017 00:06:01 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 14 Sep 2017 00:06:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 14 Sep 2017 00:06:05 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 14 Sep 2017 00:06:06 GMT
ARG BONITA_VERSION
# Thu, 14 Sep 2017 00:06:06 GMT
ARG TOMCAT_VERSION
# Thu, 14 Sep 2017 00:06:06 GMT
ARG BONITA_SHA256
# Thu, 14 Sep 2017 00:06:06 GMT
ARG BONITA_URL
# Thu, 14 Sep 2017 00:06:06 GMT
ENV BONITA_VERSION=7.4.3
# Thu, 14 Sep 2017 00:06:06 GMT
ENV TOMCAT_VERSION=7.0.67
# Thu, 14 Sep 2017 00:06:07 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Thu, 14 Sep 2017 00:06:07 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Thu, 14 Sep 2017 00:06:17 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Sep 2017 00:06:18 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 14 Sep 2017 00:06:19 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 14 Sep 2017 00:06:19 GMT
VOLUME [/opt/bonita]
# Thu, 14 Sep 2017 00:06:19 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Thu, 14 Sep 2017 00:06:19 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Thu, 14 Sep 2017 00:06:20 GMT
EXPOSE 8080/tcp
# Thu, 14 Sep 2017 00:06:20 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:bae382666908fd87a3a3646d7eb7176fa42226027d3256cac38ee0b79bdb0491`  
		Last Modified: Wed, 13 Sep 2017 22:04:42 GMT  
		Size: 67.1 MB (67114903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ede3c02ff200fff7454ce59e1c3bb62f538847cefd5b8541e088ad22c42879`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 72.6 KB (72648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da4e69f33106a3131ce07d9ed4403593a7698be6dabd6cabd2c9c228599c8ce0`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d43e5f5d27feb983909350fa3a008ebfb66436e172337cd543db358f5a01f1c`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0de1abb17d6e07bcf1b68dc5c75acf0386405905ed735efe65a5235f29e756d`  
		Last Modified: Wed, 13 Sep 2017 23:27:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183c8056dc7e4e6b3a8ab5e32ecb2d1369e378d3b70205b3109e70bd88cf42aa`  
		Last Modified: Thu, 14 Sep 2017 00:06:39 GMT  
		Size: 65.8 MB (65750703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a549ad324bc90b7d9a6a8de8a4f0d5f361ebfe253cc322fb4e7a89969f1b853`  
		Last Modified: Thu, 14 Sep 2017 00:06:29 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbb0c84cd71e95fd6f432758918f1804d0e3fe7d354229e8e5095fe1cadc6b8e`  
		Last Modified: Thu, 14 Sep 2017 00:06:29 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853ef8c903ca01d6620e0052e89890ff0714dd403715c531b495a492e9f71d3a`  
		Last Modified: Thu, 14 Sep 2017 00:06:27 GMT  
		Size: 133.2 KB (133177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077dfe88a6664502b48f2bd982a9337301a8df3ab136020836986110c049c00`  
		Last Modified: Thu, 14 Sep 2017 00:06:29 GMT  
		Size: 818.6 KB (818579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e360479a62030df561aa2e0d0eb97e4d737c1e74d71f7f7700cf936edad7b65`  
		Last Modified: Thu, 14 Sep 2017 00:06:32 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c4db68ae2650466f907f584d258df7df44508726aa415250f44acdccf870f3`  
		Last Modified: Thu, 14 Sep 2017 00:06:26 GMT  
		Size: 6.0 KB (6041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956d176af1519ecdc036856afe0d0b073edfd6d66071e959fd0e42b10a2c540b`  
		Last Modified: Thu, 14 Sep 2017 00:06:27 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:32b392fe407be8f4e6351d384dd083d196d78d47a3c1a98de558e4179e13a19b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:ab086967e7e4a469af73c3844686dcd20135005ba8e923ada87e32680284ffeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218623643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41be03be9cb8f76b91554587a73e19a104c8279dd252202ec31822727a2dca1`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:01:03 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 19 Sep 2017 00:01:36 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:01:37 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 19 Sep 2017 00:01:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 19 Sep 2017 00:01:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 19 Sep 2017 00:01:43 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 19 Sep 2017 00:01:44 GMT
ARG BONITA_VERSION
# Tue, 19 Sep 2017 00:01:44 GMT
ARG TOMCAT_VERSION
# Tue, 19 Sep 2017 00:01:44 GMT
ARG BONITA_SHA256
# Tue, 19 Sep 2017 00:01:44 GMT
ARG BONITA_URL
# Tue, 19 Sep 2017 00:01:44 GMT
ENV BONITA_VERSION=7.5.4
# Tue, 19 Sep 2017 00:01:45 GMT
ENV TOMCAT_VERSION=7.0.76
# Tue, 19 Sep 2017 00:01:45 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Tue, 19 Sep 2017 00:01:45 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Tue, 19 Sep 2017 00:02:02 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 19 Sep 2017 00:02:03 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 19 Sep 2017 00:02:04 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 19 Sep 2017 00:02:04 GMT
VOLUME [/opt/bonita]
# Tue, 19 Sep 2017 00:02:05 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Tue, 19 Sep 2017 00:02:05 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Tue, 19 Sep 2017 00:02:05 GMT
EXPOSE 8080/tcp
# Tue, 19 Sep 2017 00:02:05 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b3c0ce5fd8f213212ed0098b157423bcfa9c4eedf35a8b6592006d2e16f2e1`  
		Last Modified: Tue, 19 Sep 2017 00:02:31 GMT  
		Size: 82.6 MB (82618760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d4b396d5ec6f69bbd4c1319fbfd216bdcc52483e92135fa809a5b633a133e9`  
		Last Modified: Tue, 19 Sep 2017 00:02:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0570b5c165fe04d576045f7a6a7eb669055cb2294b869dc9ab235e44a7884664`  
		Last Modified: Tue, 19 Sep 2017 00:02:18 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03f9c1073f26e6552d2e5db0239457921d38f9a57a8cd5292f5d297a919eba`  
		Last Modified: Tue, 19 Sep 2017 00:02:18 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beeeff80db6defaa245c7eac1387dd9cec9e10ce0743a84634626b5657f462a`  
		Last Modified: Tue, 19 Sep 2017 00:02:16 GMT  
		Size: 818.9 KB (818909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38fb89f99e53ed81c5e8ee020cbff337c3ba21a83419058aecf7d21d29588db`  
		Last Modified: Tue, 19 Sep 2017 00:02:24 GMT  
		Size: 87.5 MB (87504115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b080eaf08da1e70d5a7d856e48f0f5560a7728ee67b9f92de592fbfff4d5a816`  
		Last Modified: Tue, 19 Sep 2017 00:02:15 GMT  
		Size: 6.2 KB (6167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854d6579b66d248632aa1d1b406c66957bdfaacb8699c6a0e6f49f9a8511362d`  
		Last Modified: Tue, 19 Sep 2017 00:02:16 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:32b392fe407be8f4e6351d384dd083d196d78d47a3c1a98de558e4179e13a19b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:ab086967e7e4a469af73c3844686dcd20135005ba8e923ada87e32680284ffeb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218623643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41be03be9cb8f76b91554587a73e19a104c8279dd252202ec31822727a2dca1`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Tue, 19 Sep 2017 00:01:03 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 19 Sep 2017 00:01:36 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:01:37 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 19 Sep 2017 00:01:37 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 19 Sep 2017 00:01:40 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 19 Sep 2017 00:01:43 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 19 Sep 2017 00:01:44 GMT
ARG BONITA_VERSION
# Tue, 19 Sep 2017 00:01:44 GMT
ARG TOMCAT_VERSION
# Tue, 19 Sep 2017 00:01:44 GMT
ARG BONITA_SHA256
# Tue, 19 Sep 2017 00:01:44 GMT
ARG BONITA_URL
# Tue, 19 Sep 2017 00:01:44 GMT
ENV BONITA_VERSION=7.5.4
# Tue, 19 Sep 2017 00:01:45 GMT
ENV TOMCAT_VERSION=7.0.76
# Tue, 19 Sep 2017 00:01:45 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Tue, 19 Sep 2017 00:01:45 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Tue, 19 Sep 2017 00:02:02 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 19 Sep 2017 00:02:03 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 19 Sep 2017 00:02:04 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 19 Sep 2017 00:02:04 GMT
VOLUME [/opt/bonita]
# Tue, 19 Sep 2017 00:02:05 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Tue, 19 Sep 2017 00:02:05 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Tue, 19 Sep 2017 00:02:05 GMT
EXPOSE 8080/tcp
# Tue, 19 Sep 2017 00:02:05 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b3c0ce5fd8f213212ed0098b157423bcfa9c4eedf35a8b6592006d2e16f2e1`  
		Last Modified: Tue, 19 Sep 2017 00:02:31 GMT  
		Size: 82.6 MB (82618760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d4b396d5ec6f69bbd4c1319fbfd216bdcc52483e92135fa809a5b633a133e9`  
		Last Modified: Tue, 19 Sep 2017 00:02:18 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0570b5c165fe04d576045f7a6a7eb669055cb2294b869dc9ab235e44a7884664`  
		Last Modified: Tue, 19 Sep 2017 00:02:18 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f03f9c1073f26e6552d2e5db0239457921d38f9a57a8cd5292f5d297a919eba`  
		Last Modified: Tue, 19 Sep 2017 00:02:18 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beeeff80db6defaa245c7eac1387dd9cec9e10ce0743a84634626b5657f462a`  
		Last Modified: Tue, 19 Sep 2017 00:02:16 GMT  
		Size: 818.9 KB (818909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38fb89f99e53ed81c5e8ee020cbff337c3ba21a83419058aecf7d21d29588db`  
		Last Modified: Tue, 19 Sep 2017 00:02:24 GMT  
		Size: 87.5 MB (87504115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b080eaf08da1e70d5a7d856e48f0f5560a7728ee67b9f92de592fbfff4d5a816`  
		Last Modified: Tue, 19 Sep 2017 00:02:15 GMT  
		Size: 6.2 KB (6167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854d6579b66d248632aa1d1b406c66957bdfaacb8699c6a0e6f49f9a8511362d`  
		Last Modified: Tue, 19 Sep 2017 00:02:16 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
