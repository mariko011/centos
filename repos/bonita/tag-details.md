<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.1`](#bonita751)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:c6e052ae3db8d7d783f2912b2aaa2ec53b34739bdf78c008da93f77e8e595da8
```

-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219082800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78544d046eef5a8ce9f0e890d4aff09fccd93ac75693bd29888e2b1a9c006da7`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:16 GMT
ADD file:345f29394c5b1859890c04148f0b936d15612befbb412bd09db87d4020b80ed7 in / 
# Thu, 20 Jul 2017 17:14:19 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:14:20 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:14:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:14:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:14:29 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 18:38:18 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 20 Jul 2017 18:39:04 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:39:05 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 20 Jul 2017 18:39:06 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 20 Jul 2017 18:39:08 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 20 Jul 2017 18:39:13 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 20 Jul 2017 18:39:13 GMT
ARG BONITA_VERSION
# Thu, 20 Jul 2017 18:39:14 GMT
ARG TOMCAT_VERSION
# Thu, 20 Jul 2017 18:39:14 GMT
ARG BONITA_SHA256
# Thu, 20 Jul 2017 18:39:15 GMT
ARG BONITA_URL
# Thu, 20 Jul 2017 18:39:15 GMT
ENV BONITA_VERSION=7.4.3
# Thu, 20 Jul 2017 18:39:16 GMT
ENV TOMCAT_VERSION=7.0.67
# Thu, 20 Jul 2017 18:39:16 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Thu, 20 Jul 2017 18:39:17 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Thu, 20 Jul 2017 18:39:28 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 20 Jul 2017 18:39:29 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 20 Jul 2017 18:39:31 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 20 Jul 2017 18:39:31 GMT
VOLUME [/opt/bonita]
# Thu, 20 Jul 2017 18:39:32 GMT
COPY dir:9a4e5e16ecaf38cc54b83e4c92a5f49851cda4f8d38d0cfe3c6a1849e3765b28 in /opt/files 
# Thu, 20 Jul 2017 18:39:33 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Thu, 20 Jul 2017 18:39:33 GMT
EXPOSE 8080/tcp
# Thu, 20 Jul 2017 18:39:34 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:7ee37f18131817cc7cf143cf1efe11db9f06306aa7f2c5a5b8f7af2ce71e852d`  
		Last Modified: Thu, 20 Jul 2017 11:56:09 GMT  
		Size: 67.1 MB (67114823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5ffabe5e97a3594ebcdf78b5fcb20452b46a89068d7a771f96d15f8ced9e73`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 72.6 KB (72622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2040ed51a16afd9e12e007d9034fd405c6f500033f9e465232d45cd171a0e3`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce7010d244b7d77247234ca2eabb2ae29829976c81651e85a7daf0fa60f4bbc`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2538b201d2a69851a91852923a2eb6306a55d0b7919c6167858ff9eaf931922b`  
		Last Modified: Thu, 20 Jul 2017 17:17:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bbfb2990ed1cf2be363b4ad913bf564ed51d183e4d4881a852e24ec84aa13c6`  
		Last Modified: Thu, 20 Jul 2017 18:41:04 GMT  
		Size: 65.7 MB (65715127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0956a5c28eead983cf31c9370802c04f1b820b1a469abf775ea0ef9b1c91638c`  
		Last Modified: Thu, 20 Jul 2017 18:40:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19316fb5fb147576d8990d6d0e115319e0edec4351ea1352e48a4fc5175389a7`  
		Last Modified: Thu, 20 Jul 2017 18:40:53 GMT  
		Size: 1.8 KB (1806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf4ddbbb0c6cd235ba6602cf79d853b78d25f12dd29fb9b377599956064b022`  
		Last Modified: Thu, 20 Jul 2017 18:40:53 GMT  
		Size: 133.2 KB (133180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61f02279e1a7bcdaaafdf278a784099ba066d9bd2c5400076261c11401bbd84`  
		Last Modified: Thu, 20 Jul 2017 18:40:53 GMT  
		Size: 818.4 KB (818446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2d9ce8f06c65bb77360673a4db69e8504eef9d2502da29fcf51a19875b3081a`  
		Last Modified: Thu, 20 Jul 2017 18:41:01 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7963f73e81b1515e60e224bc2ac56a54f57b40ff7b0be3d63ab346091e7cd89f`  
		Last Modified: Thu, 20 Jul 2017 18:40:54 GMT  
		Size: 6.0 KB (6036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7448ded4f631bb815c640188b3ac554816bf98740d734fe65fef5fc134e734e3`  
		Last Modified: Thu, 20 Jul 2017 18:40:53 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.5.1`

```console
$ docker pull bonita@sha256:94bea0992850606fe89f1923d50fa287eb8cafbf68e515a8138a1350200543d4
```

-	Platforms:
	-	linux; amd64

### `bonita:7.5.1` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218091162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6a64579fe2052e9ed0543f10ac6d5cbdc90cb84bf6aa41adfce5d9e2cae494`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:56 GMT
ADD file:96db69a1ba6c80f604d07b14bcbf84445624ad3eb5b0471eddabf09cb7925366 in / 
# Thu, 20 Jul 2017 17:15:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:15:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:15:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:15:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 18:39:42 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 20 Jul 2017 18:40:13 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:40:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 20 Jul 2017 18:40:15 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 20 Jul 2017 18:40:17 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 20 Jul 2017 18:40:21 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 20 Jul 2017 18:40:21 GMT
ARG BONITA_VERSION
# Thu, 20 Jul 2017 18:40:22 GMT
ARG TOMCAT_VERSION
# Thu, 20 Jul 2017 18:40:22 GMT
ARG BONITA_SHA256
# Thu, 20 Jul 2017 18:40:23 GMT
ARG BONITA_URL
# Thu, 20 Jul 2017 18:40:23 GMT
ENV BONITA_VERSION=7.5.1
# Thu, 20 Jul 2017 18:40:24 GMT
ENV TOMCAT_VERSION=7.0.76
# Thu, 20 Jul 2017 18:40:24 GMT
ENV BONITA_SHA256=aecf55d99f585b2e4fb01886a9512190fe4756f4b2cc718db778e3f9ce6848df
# Thu, 20 Jul 2017 18:40:25 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.1-Tomcat-7.0.76.zip
# Thu, 20 Jul 2017 18:40:36 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 20 Jul 2017 18:40:38 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 20 Jul 2017 18:40:39 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 20 Jul 2017 18:40:40 GMT
VOLUME [/opt/bonita]
# Thu, 20 Jul 2017 18:40:40 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Thu, 20 Jul 2017 18:40:41 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Thu, 20 Jul 2017 18:40:42 GMT
EXPOSE 8080/tcp
# Thu, 20 Jul 2017 18:40:42 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e0a742c2abfd5e2a6f8ed15b1c78e873cf9559b96a04204daf6de5df01e3124c`  
		Last Modified: Tue, 11 Jul 2017 06:39:41 GMT  
		Size: 47.1 MB (47146626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486cb8339a27635fa93dc47aa0c689326a0a7cce388966d16daf8d265436cf7f`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0d824617ad8a5d1163a5b2084814665dd83156317ad06ccf14deb517a053`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7a5649a30e3f318ce5d7e4dbcbbeb6c0938c4cbae4d4a641fe910562ff4978`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672363445ad2c734e29221a6b47f4e614b5adc8a3cdca3364f62db2ed2bdff0c`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1231dc3917022fb83e8d938c34a841d80e0162603e9eda53a9ae99234944ff4c`  
		Last Modified: Thu, 20 Jul 2017 18:41:34 GMT  
		Size: 82.6 MB (82589775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b8f07199b7bc49982e05b36eff606b3ae77b41990267310b46cdfb916805fe`  
		Last Modified: Thu, 20 Jul 2017 18:41:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0decee5c7fccf6f9b8fe5cf9966ed00b940795ee47b7ccea876ce665da0c89`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 2.0 KB (2001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30924a9cc3851119ed5eea56cab6841330880c39d9e0f59fd7126db263369bd`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 133.2 KB (133172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b7c414dbbcc42243acac1480bff454906a7db6809604c5d3e99885fdff7229`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 818.7 KB (818733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c669724adf56d266529dbf29135ee3b523a20b8ded49054058104f01852654`  
		Last Modified: Thu, 20 Jul 2017 18:41:27 GMT  
		Size: 87.4 MB (87390759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b14ef5a27a68e10d3ea8f7cc5234d46d86233379d695e38481a5519b0a539a`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 6.0 KB (6023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a820fd7785d8240870d3123d69e85178d3e8fd46432762f7b4f52bdb958664`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:94bea0992850606fe89f1923d50fa287eb8cafbf68e515a8138a1350200543d4
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218091162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6a64579fe2052e9ed0543f10ac6d5cbdc90cb84bf6aa41adfce5d9e2cae494`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 20 Jul 2017 17:14:56 GMT
ADD file:96db69a1ba6c80f604d07b14bcbf84445624ad3eb5b0471eddabf09cb7925366 in / 
# Thu, 20 Jul 2017 17:15:01 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 20 Jul 2017 17:15:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 17:15:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 20 Jul 2017 17:15:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 20 Jul 2017 17:15:12 GMT
CMD ["/bin/bash"]
# Thu, 20 Jul 2017 18:39:42 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 20 Jul 2017 18:40:13 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 20 Jul 2017 18:40:14 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 20 Jul 2017 18:40:15 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 20 Jul 2017 18:40:17 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 20 Jul 2017 18:40:21 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 20 Jul 2017 18:40:21 GMT
ARG BONITA_VERSION
# Thu, 20 Jul 2017 18:40:22 GMT
ARG TOMCAT_VERSION
# Thu, 20 Jul 2017 18:40:22 GMT
ARG BONITA_SHA256
# Thu, 20 Jul 2017 18:40:23 GMT
ARG BONITA_URL
# Thu, 20 Jul 2017 18:40:23 GMT
ENV BONITA_VERSION=7.5.1
# Thu, 20 Jul 2017 18:40:24 GMT
ENV TOMCAT_VERSION=7.0.76
# Thu, 20 Jul 2017 18:40:24 GMT
ENV BONITA_SHA256=aecf55d99f585b2e4fb01886a9512190fe4756f4b2cc718db778e3f9ce6848df
# Thu, 20 Jul 2017 18:40:25 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.1-Tomcat-7.0.76.zip
# Thu, 20 Jul 2017 18:40:36 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 20 Jul 2017 18:40:38 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 20 Jul 2017 18:40:39 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 20 Jul 2017 18:40:40 GMT
VOLUME [/opt/bonita]
# Thu, 20 Jul 2017 18:40:40 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Thu, 20 Jul 2017 18:40:41 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Thu, 20 Jul 2017 18:40:42 GMT
EXPOSE 8080/tcp
# Thu, 20 Jul 2017 18:40:42 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:e0a742c2abfd5e2a6f8ed15b1c78e873cf9559b96a04204daf6de5df01e3124c`  
		Last Modified: Tue, 11 Jul 2017 06:39:41 GMT  
		Size: 47.1 MB (47146626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486cb8339a27635fa93dc47aa0c689326a0a7cce388966d16daf8d265436cf7f`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc6f0d824617ad8a5d1163a5b2084814665dd83156317ad06ccf14deb517a053`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 512.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7a5649a30e3f318ce5d7e4dbcbbeb6c0938c4cbae4d4a641fe910562ff4978`  
		Last Modified: Thu, 20 Jul 2017 17:18:24 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672363445ad2c734e29221a6b47f4e614b5adc8a3cdca3364f62db2ed2bdff0c`  
		Last Modified: Thu, 20 Jul 2017 17:18:25 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1231dc3917022fb83e8d938c34a841d80e0162603e9eda53a9ae99234944ff4c`  
		Last Modified: Thu, 20 Jul 2017 18:41:34 GMT  
		Size: 82.6 MB (82589775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b8f07199b7bc49982e05b36eff606b3ae77b41990267310b46cdfb916805fe`  
		Last Modified: Thu, 20 Jul 2017 18:41:23 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0decee5c7fccf6f9b8fe5cf9966ed00b940795ee47b7ccea876ce665da0c89`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 2.0 KB (2001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30924a9cc3851119ed5eea56cab6841330880c39d9e0f59fd7126db263369bd`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 133.2 KB (133172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b7c414dbbcc42243acac1480bff454906a7db6809604c5d3e99885fdff7229`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 818.7 KB (818733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c669724adf56d266529dbf29135ee3b523a20b8ded49054058104f01852654`  
		Last Modified: Thu, 20 Jul 2017 18:41:27 GMT  
		Size: 87.4 MB (87390759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b14ef5a27a68e10d3ea8f7cc5234d46d86233379d695e38481a5519b0a539a`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 6.0 KB (6023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a820fd7785d8240870d3123d69e85178d3e8fd46432762f7b4f52bdb958664`  
		Last Modified: Thu, 20 Jul 2017 18:41:20 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
