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
$ docker pull bonita@sha256:979a0d04fa6ddabb701e54427f43bf639954efa193f34993fa817a6ff06d858c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:8baa9bbe75da39ec901d8772b75184686c2fa4471b333a33db76e866d486c3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218652851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c6e0a5b48b620cf034ee488273d713a7be845f4241bee8254b6823291d459f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:23:11 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 10 Oct 2017 21:23:44 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:23:45 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 10 Oct 2017 21:23:46 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 10 Oct 2017 21:23:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 10 Oct 2017 21:23:51 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 10 Oct 2017 21:23:51 GMT
ARG BONITA_VERSION
# Tue, 10 Oct 2017 21:23:51 GMT
ARG TOMCAT_VERSION
# Tue, 10 Oct 2017 21:23:51 GMT
ARG BONITA_SHA256
# Tue, 10 Oct 2017 21:23:51 GMT
ARG BONITA_URL
# Tue, 10 Oct 2017 21:23:52 GMT
ENV BONITA_VERSION=7.5.4
# Tue, 10 Oct 2017 21:23:52 GMT
ENV TOMCAT_VERSION=7.0.76
# Tue, 10 Oct 2017 21:23:52 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Tue, 10 Oct 2017 21:23:52 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Tue, 10 Oct 2017 21:24:03 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 10 Oct 2017 21:24:05 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 10 Oct 2017 21:24:06 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 10 Oct 2017 21:24:06 GMT
VOLUME [/opt/bonita]
# Tue, 10 Oct 2017 21:24:06 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Tue, 10 Oct 2017 21:24:07 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Tue, 10 Oct 2017 21:24:07 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 21:24:07 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60b4da903b3ca6208b78a56d828f0e9705e86b911fa2384d846f1ec35d4c40c`  
		Last Modified: Tue, 10 Oct 2017 21:24:34 GMT  
		Size: 82.6 MB (82567098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae88195edd341062746edfa7b580c6d108f60cce859682bd33b15a59db728f75`  
		Last Modified: Tue, 10 Oct 2017 21:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8462fff0f6da5dc3bc90db4dd8667e5a964b36ac66eb85c82d1d129b1f107cb8`  
		Last Modified: Tue, 10 Oct 2017 21:24:21 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096a2652508ac337dbe628bf45b7eac3ba7b2df7922fa356bbbccc70e9f7bd6`  
		Last Modified: Tue, 10 Oct 2017 21:24:19 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646b7cbfd744640e8675de2cb331f5593efe479ad6ade9783b88993e267f0f3f`  
		Last Modified: Tue, 10 Oct 2017 21:24:19 GMT  
		Size: 818.9 KB (818902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d2f7b3e22fe15106d0e57f12907418d808c03aba33a85ae10d42f6f1571d7b`  
		Last Modified: Tue, 10 Oct 2017 21:24:25 GMT  
		Size: 87.5 MB (87504115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febfd6158baf19a844429b651d85f5b7d34277e14f58709674c7b03b781d866a`  
		Last Modified: Tue, 10 Oct 2017 21:24:21 GMT  
		Size: 6.2 KB (6166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955ceced63c4de82f12972d359201b8849bcc970772b1d3550f420ccf6cb981f`  
		Last Modified: Tue, 10 Oct 2017 21:24:19 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:979a0d04fa6ddabb701e54427f43bf639954efa193f34993fa817a6ff06d858c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:8baa9bbe75da39ec901d8772b75184686c2fa4471b333a33db76e866d486c3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218652851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c6e0a5b48b620cf034ee488273d713a7be845f4241bee8254b6823291d459f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Tue, 10 Oct 2017 20:59:02 GMT
ADD file:5b334adf9d9a2256add2a801b49d4b23c93b0973ec22bb798973d571c948f102 in / 
# Tue, 10 Oct 2017 20:59:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 10 Oct 2017 20:59:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 20:59:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 10 Oct 2017 20:59:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 10 Oct 2017 20:59:05 GMT
CMD ["/bin/bash"]
# Tue, 10 Oct 2017 21:23:11 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Tue, 10 Oct 2017 21:23:44 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:23:45 GMT
RUN mkdir /opt/custom-init.d/
# Tue, 10 Oct 2017 21:23:46 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Tue, 10 Oct 2017 21:23:47 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 10 Oct 2017 21:23:51 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Tue, 10 Oct 2017 21:23:51 GMT
ARG BONITA_VERSION
# Tue, 10 Oct 2017 21:23:51 GMT
ARG TOMCAT_VERSION
# Tue, 10 Oct 2017 21:23:51 GMT
ARG BONITA_SHA256
# Tue, 10 Oct 2017 21:23:51 GMT
ARG BONITA_URL
# Tue, 10 Oct 2017 21:23:52 GMT
ENV BONITA_VERSION=7.5.4
# Tue, 10 Oct 2017 21:23:52 GMT
ENV TOMCAT_VERSION=7.0.76
# Tue, 10 Oct 2017 21:23:52 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Tue, 10 Oct 2017 21:23:52 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Tue, 10 Oct 2017 21:24:03 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 10 Oct 2017 21:24:05 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Tue, 10 Oct 2017 21:24:06 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Tue, 10 Oct 2017 21:24:06 GMT
VOLUME [/opt/bonita]
# Tue, 10 Oct 2017 21:24:06 GMT
COPY dir:083f5ea1e10de5ac71a3f480d91790f34d96c6304311f41b46212553e3fb0bb2 in /opt/files 
# Tue, 10 Oct 2017 21:24:07 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Tue, 10 Oct 2017 21:24:07 GMT
EXPOSE 8080/tcp
# Tue, 10 Oct 2017 21:24:07 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:ae79f251470513c2a0ec750117a81f2d58a50727901ca416efecf297b8a03913`  
		Last Modified: Fri, 06 Oct 2017 13:04:44 GMT  
		Size: 47.6 MB (47617129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad56d5fc14905886c560200ab69f905b5c5287eaf12f8f761a7ab54f7a61c1b`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170e558760e8b2e484a022b7d7272cf284fc4e1936ba7a0a671fc586440ad272`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395460e233f5bdcd910d618a3b615e0d881e09ad27d58f3065eef53ecae6a808`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f01dc62e444044e3ce494269837ef0aedb80fef69c679416137f17812d2eb9c`  
		Last Modified: Tue, 10 Oct 2017 21:00:10 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d60b4da903b3ca6208b78a56d828f0e9705e86b911fa2384d846f1ec35d4c40c`  
		Last Modified: Tue, 10 Oct 2017 21:24:34 GMT  
		Size: 82.6 MB (82567098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae88195edd341062746edfa7b580c6d108f60cce859682bd33b15a59db728f75`  
		Last Modified: Tue, 10 Oct 2017 21:24:22 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8462fff0f6da5dc3bc90db4dd8667e5a964b36ac66eb85c82d1d129b1f107cb8`  
		Last Modified: Tue, 10 Oct 2017 21:24:21 GMT  
		Size: 2.0 KB (2044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6096a2652508ac337dbe628bf45b7eac3ba7b2df7922fa356bbbccc70e9f7bd6`  
		Last Modified: Tue, 10 Oct 2017 21:24:19 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:646b7cbfd744640e8675de2cb331f5593efe479ad6ade9783b88993e267f0f3f`  
		Last Modified: Tue, 10 Oct 2017 21:24:19 GMT  
		Size: 818.9 KB (818902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d2f7b3e22fe15106d0e57f12907418d808c03aba33a85ae10d42f6f1571d7b`  
		Last Modified: Tue, 10 Oct 2017 21:24:25 GMT  
		Size: 87.5 MB (87504115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febfd6158baf19a844429b651d85f5b7d34277e14f58709674c7b03b781d866a`  
		Last Modified: Tue, 10 Oct 2017 21:24:21 GMT  
		Size: 6.2 KB (6166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:955ceced63c4de82f12972d359201b8849bcc970772b1d3550f420ccf6cb981f`  
		Last Modified: Tue, 10 Oct 2017 21:24:19 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
