<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `bonita`

-	[`bonita:7.4.3`](#bonita743)
-	[`bonita:7.5.4`](#bonita754)
-	[`bonita:latest`](#bonitalatest)

## `bonita:7.4.3`

```console
$ docker pull bonita@sha256:a43b3588f85ba6ce7543c8e645e9e69da70e0ff1c878250044ef750191816be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.4.3` - linux; amd64

```console
$ docker pull bonita@sha256:73cf54deda454ad8d2ad5438c7d1ccd0bb6d34fa2dfc8bc07c44ee08a76be0fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.8 MB (224760233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9009ac8f80c80f42a888a09fba59f1af409397b218b18cc9b6d5b7c5f52ad53c`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:07 GMT
ADD file:f5013009a258adf002575679e2f6a2fbfe5fd61bf45179e2fb9864683874b2b2 in / 
# Fri, 17 Nov 2017 21:59:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:09 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:10 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:18:04 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 17 Nov 2017 22:18:57 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.5   openjdk-7-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:18:58 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 17 Nov 2017 22:18:59 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 17 Nov 2017 22:19:01 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 17 Nov 2017 22:19:04 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 17 Nov 2017 22:19:05 GMT
ARG BONITA_VERSION
# Fri, 17 Nov 2017 22:19:05 GMT
ARG TOMCAT_VERSION
# Fri, 17 Nov 2017 22:19:05 GMT
ARG BONITA_SHA256
# Fri, 17 Nov 2017 22:19:05 GMT
ARG BONITA_URL
# Fri, 17 Nov 2017 22:19:05 GMT
ENV BONITA_VERSION=7.4.3
# Fri, 17 Nov 2017 22:19:06 GMT
ENV TOMCAT_VERSION=7.0.67
# Fri, 17 Nov 2017 22:19:06 GMT
ENV BONITA_SHA256=5129f43d1aad7e10441e4c0a73e0ab638a64e06fcd2859947b782e08fe9b6bab
# Fri, 17 Nov 2017 22:19:06 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.4.3-Tomcat-7.0.67.zip
# Fri, 17 Nov 2017 22:19:17 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 17 Nov 2017 22:19:18 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 17 Nov 2017 22:19:19 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 17 Nov 2017 22:19:19 GMT
VOLUME [/opt/bonita]
# Mon, 04 Dec 2017 20:54:26 GMT
COPY dir:4483a783c62159c517a977bcee18fc6f46b01cf98069fd1c2b679523041b0d77 in /opt/files 
# Mon, 04 Dec 2017 20:54:26 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Mon, 04 Dec 2017 20:54:26 GMT
EXPOSE 8080/tcp
# Mon, 04 Dec 2017 20:54:26 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:01a4f83874576563b6cd843ab7c105d92ab000fe0cb114a645ba99e89b970b77`  
		Last Modified: Fri, 17 Nov 2017 22:01:08 GMT  
		Size: 72.8 MB (72825073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c887940e680c6729f0c52a833ea44ae2323e4611752bf248da7f0ed9dce573c9`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 72.6 KB (72644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5432573ac160367250f315604a27532a28e12b6b25c8d8aff68d45533c52f8a7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027ee9a9665e446b635a4874018e2685491914be7d8a3fb240dc80dc96af12c7`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5611db80430d159f886e5b556217e6b94bdbd08ec98862074fe6bec4a9d4253e`  
		Last Modified: Fri, 17 Nov 2017 22:00:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6abc853686034ccf6be702280a245dfd092f038751851aeb3c46d31a5e65ec`  
		Last Modified: Fri, 17 Nov 2017 22:20:42 GMT  
		Size: 65.7 MB (65681663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7595ace4be7cfcf86fe1d394814dbe689b47a5211131b4df97b69f81401a7cf`  
		Last Modified: Fri, 17 Nov 2017 22:20:34 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9e38745f268b5da014aee2c85531cc349010534cefc6bc13e0cebdac695863`  
		Last Modified: Fri, 17 Nov 2017 22:20:34 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8413b7568ec58904f2b91b426aada93ad05ae89161fcc5db4fac4f4f90325d89`  
		Last Modified: Fri, 17 Nov 2017 22:20:32 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3cf931890ffb302bd6a8bbe9eb6a25aaaaeea784c584f2044d3dc87d180125a`  
		Last Modified: Fri, 17 Nov 2017 22:20:32 GMT  
		Size: 818.6 KB (818570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d956b11eebfb72f5677a862142c95c96cd8e4885063e2de85a679679c740802e`  
		Last Modified: Fri, 17 Nov 2017 22:20:40 GMT  
		Size: 85.2 MB (85217835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dad36ed408dc47d0bb92fb98b27632fb136693b2c11fec7649f433e2175bbf9`  
		Last Modified: Mon, 04 Dec 2017 20:54:50 GMT  
		Size: 6.1 KB (6057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0811b2a22fe741268904859e4f96ac08c8273ddf3fde7d48ad0a1e6fc439bb`  
		Last Modified: Mon, 04 Dec 2017 20:54:50 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:7.5.4`

```console
$ docker pull bonita@sha256:b975a060a0d4c4a1e8d732f8432e0d8d8a074ec425720ad4687c9f51acf5d6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:7.5.4` - linux; amd64

```console
$ docker pull bonita@sha256:e36b5154662e84df826cc695698ac08694f511d08d1fa23adfa77b79b2c3f988
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218878655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7461d2968aac6061109b57c30f468eb9840b01effa96455421a96e32e061739f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:19:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 17 Nov 2017 22:19:56 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:19:57 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 17 Nov 2017 22:19:58 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 17 Nov 2017 22:19:59 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 17 Nov 2017 22:20:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 17 Nov 2017 22:20:03 GMT
ARG BONITA_VERSION
# Fri, 17 Nov 2017 22:20:03 GMT
ARG TOMCAT_VERSION
# Fri, 17 Nov 2017 22:20:03 GMT
ARG BONITA_SHA256
# Fri, 17 Nov 2017 22:20:03 GMT
ARG BONITA_URL
# Fri, 17 Nov 2017 22:20:04 GMT
ENV BONITA_VERSION=7.5.4
# Fri, 17 Nov 2017 22:20:04 GMT
ENV TOMCAT_VERSION=7.0.76
# Fri, 17 Nov 2017 22:20:04 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Fri, 17 Nov 2017 22:20:04 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Fri, 17 Nov 2017 22:20:13 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 17 Nov 2017 22:20:14 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 17 Nov 2017 22:20:16 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 17 Nov 2017 22:20:16 GMT
VOLUME [/opt/bonita]
# Mon, 04 Dec 2017 20:54:39 GMT
COPY dir:67158d50f6a23f242c6ece683aa22b62bf43e8403082c8a4b4c012ca3a3a0ac5 in /opt/files 
# Mon, 04 Dec 2017 20:54:39 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Mon, 04 Dec 2017 20:54:39 GMT
EXPOSE 8080/tcp
# Mon, 04 Dec 2017 20:54:39 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82224e1065ecfdf05a60e2bdfa9eb24cff5cf2886810058cdc5d8f114c81cd8a`  
		Last Modified: Fri, 17 Nov 2017 22:21:06 GMT  
		Size: 82.7 MB (82650904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ef746888ef1eef5d8fffe37e67795dbd4aa2fc35b96d6d37552d6ebbd661c9`  
		Last Modified: Fri, 17 Nov 2017 22:20:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b00c442e9b77399abc751eac3611316be1fe725f649d35414cb9cac8412e56d`  
		Last Modified: Fri, 17 Nov 2017 22:20:56 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d484dc731c73acec0d704c7a12ecca0b79a285e52661bb0164b14eeb1995a723`  
		Last Modified: Fri, 17 Nov 2017 22:20:53 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcbf3f89d7ae892087c1014af46f7250ef7f9704a2ccd375ac8a9d12c331060`  
		Last Modified: Fri, 17 Nov 2017 22:20:53 GMT  
		Size: 818.6 KB (818554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f869e36e0c8dee0dc61708fde1f3f62a49d3b7598dad464b8108d4af97eed819`  
		Last Modified: Fri, 17 Nov 2017 22:20:59 GMT  
		Size: 87.5 MB (87503859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975a07e3bd88cb93ff9ff3f5bde2679e2b6c44d940f9f69c5f472240e2d3671e`  
		Last Modified: Mon, 04 Dec 2017 20:55:02 GMT  
		Size: 6.2 KB (6180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6a91c0e53ad745302a64c3a2cc4b03c061592a31402a4a317ec8ae02e9b4c5`  
		Last Modified: Mon, 04 Dec 2017 20:55:03 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `bonita:latest`

```console
$ docker pull bonita@sha256:b975a060a0d4c4a1e8d732f8432e0d8d8a074ec425720ad4687c9f51acf5d6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

```console
$ docker pull bonita@sha256:e36b5154662e84df826cc695698ac08694f511d08d1fa23adfa77b79b2c3f988
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218878655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7461d2968aac6061109b57c30f468eb9840b01effa96455421a96e32e061739f`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Fri, 17 Nov 2017 21:59:22 GMT
ADD file:280a445783f309c90ab928883d98e4326c1fbe19927c8a555da41bcb74c71a45 in / 
# Fri, 17 Nov 2017 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 21:59:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 21:59:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 21:59:24 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 21:59:25 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:19:27 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Fri, 17 Nov 2017 22:19:56 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   curl   zip   && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:19:57 GMT
RUN mkdir /opt/custom-init.d/
# Fri, 17 Nov 2017 22:19:58 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Fri, 17 Nov 2017 22:19:59 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 17 Nov 2017 22:20:03 GMT
RUN curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -o /usr/local/bin/gosu   && curl -fsSL "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -o /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Fri, 17 Nov 2017 22:20:03 GMT
ARG BONITA_VERSION
# Fri, 17 Nov 2017 22:20:03 GMT
ARG TOMCAT_VERSION
# Fri, 17 Nov 2017 22:20:03 GMT
ARG BONITA_SHA256
# Fri, 17 Nov 2017 22:20:03 GMT
ARG BONITA_URL
# Fri, 17 Nov 2017 22:20:04 GMT
ENV BONITA_VERSION=7.5.4
# Fri, 17 Nov 2017 22:20:04 GMT
ENV TOMCAT_VERSION=7.0.76
# Fri, 17 Nov 2017 22:20:04 GMT
ENV BONITA_SHA256=b7ccec231d9083b1b532b0aeaa4de3d38d91cae12df1725f8a802be5be170d21
# Fri, 17 Nov 2017 22:20:04 GMT
ENV BONITA_URL=https://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.4-Tomcat-7.0.76.zip
# Fri, 17 Nov 2017 22:20:13 GMT
RUN mkdir /opt/files   && curl -fsSL ${BONITA_URL} -o /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 17 Nov 2017 22:20:14 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Fri, 17 Nov 2017 22:20:16 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Fri, 17 Nov 2017 22:20:16 GMT
VOLUME [/opt/bonita]
# Mon, 04 Dec 2017 20:54:39 GMT
COPY dir:67158d50f6a23f242c6ece683aa22b62bf43e8403082c8a4b4c012ca3a3a0ac5 in /opt/files 
# Mon, 04 Dec 2017 20:54:39 GMT
COPY dir:9e855bbda97f640b6f8a3bf683a8ededee121c2f7673879b001ba4ea3a53d38b in /opt/templates 
# Mon, 04 Dec 2017 20:54:39 GMT
EXPOSE 8080/tcp
# Mon, 04 Dec 2017 20:54:39 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:660c48dd555dcbfdfe19c80a30f557ac57a15f595250e67bfad1e5663c1725bb`  
		Last Modified: Fri, 17 Nov 2017 22:01:36 GMT  
		Size: 47.8 MB (47759720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7380416e7816a5ab1f840482c9c3ca8de58c6f3ee7f95e55ad299abbfe599f`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421e436b5f80d876128b74139531693be9b4e59e4f1081c9a3c379c95094e375`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce6c3651b3a090bb43688f512f687ea6e3e533132bcbc4a83fb97e7046cea3`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be588e74bd348ce48bb7161350f4b9d783c331f37a853a80b0b4abc0a33c569e`  
		Last Modified: Fri, 17 Nov 2017 22:01:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82224e1065ecfdf05a60e2bdfa9eb24cff5cf2886810058cdc5d8f114c81cd8a`  
		Last Modified: Fri, 17 Nov 2017 22:21:06 GMT  
		Size: 82.7 MB (82650904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ef746888ef1eef5d8fffe37e67795dbd4aa2fc35b96d6d37552d6ebbd661c9`  
		Last Modified: Fri, 17 Nov 2017 22:20:55 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b00c442e9b77399abc751eac3611316be1fe725f649d35414cb9cac8412e56d`  
		Last Modified: Fri, 17 Nov 2017 22:20:56 GMT  
		Size: 2.0 KB (2045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d484dc731c73acec0d704c7a12ecca0b79a285e52661bb0164b14eeb1995a723`  
		Last Modified: Fri, 17 Nov 2017 22:20:53 GMT  
		Size: 133.2 KB (133179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcbf3f89d7ae892087c1014af46f7250ef7f9704a2ccd375ac8a9d12c331060`  
		Last Modified: Fri, 17 Nov 2017 22:20:53 GMT  
		Size: 818.6 KB (818554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f869e36e0c8dee0dc61708fde1f3f62a49d3b7598dad464b8108d4af97eed819`  
		Last Modified: Fri, 17 Nov 2017 22:20:59 GMT  
		Size: 87.5 MB (87503859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:975a07e3bd88cb93ff9ff3f5bde2679e2b6c44d940f9f69c5f472240e2d3671e`  
		Last Modified: Mon, 04 Dec 2017 20:55:02 GMT  
		Size: 6.2 KB (6180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6a91c0e53ad745302a64c3a2cc4b03c061592a31402a4a317ec8ae02e9b4c5`  
		Last Modified: Mon, 04 Dec 2017 20:55:03 GMT  
		Size: 1.6 KB (1608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
