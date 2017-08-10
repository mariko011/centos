## `bonita:latest`

```console
$ docker pull bonita@sha256:28ef4cfb6ef61ceff0ed0ec2751b43eb97cdd8c16e038520d755b7be359b6b67
```

-	Platforms:
	-	linux; amd64

### `bonita:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218230944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37812c9a6ecfe7f11597976fe9602c38eea82abb7dc5ae53a9f699887afc5d1`
-	Default Command: `["\/opt\/files\/startup.sh"]`

```dockerfile
# Thu, 10 Aug 2017 20:13:38 GMT
ADD file:39d3593ea220e686d5450244ef9dd6c934e3b288a29212d332ec33942b7bf218 in / 
# Thu, 10 Aug 2017 20:13:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 10 Aug 2017 20:13:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 20:13:41 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 10 Aug 2017 20:13:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 10 Aug 2017 20:13:42 GMT
CMD ["/bin/bash"]
# Thu, 10 Aug 2017 21:20:37 GMT
MAINTAINER Jérémy Jacquier-Roux <jeremy.jacquier-roux@bonitasoft.org>
# Thu, 10 Aug 2017 21:21:09 GMT
RUN apt-get update && apt-get install -y   mysql-client-core-5.7   openjdk-8-jre-headless   postgresql-client   unzip   wget   zip   && rm -rf /var/lib/apt/lists/*
# Thu, 10 Aug 2017 21:21:10 GMT
RUN mkdir /opt/custom-init.d/
# Thu, 10 Aug 2017 21:21:10 GMT
RUN groupadd -r bonita -g 1000   && useradd -u 1000 -r -g bonita -d /opt/bonita/ -s /sbin/nologin -c "Bonita User" bonita
# Thu, 10 Aug 2017 21:21:12 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 10 Aug 2017 21:21:15 GMT
RUN wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture)" -O /usr/local/bin/gosu   && wget -q "https://github.com/tianon/gosu/releases/download/1.6/gosu-$(dpkg --print-architecture).asc" -O /usr/local/bin/gosu.asc   && gpg --verify /usr/local/bin/gosu.asc   && rm /usr/local/bin/gosu.asc   && chmod +x /usr/local/bin/gosu
# Thu, 10 Aug 2017 21:21:16 GMT
ARG BONITA_VERSION
# Thu, 10 Aug 2017 21:21:16 GMT
ARG TOMCAT_VERSION
# Thu, 10 Aug 2017 21:21:16 GMT
ARG BONITA_SHA256
# Thu, 10 Aug 2017 21:21:16 GMT
ARG BONITA_URL
# Thu, 10 Aug 2017 21:21:17 GMT
ENV BONITA_VERSION=7.5.1
# Thu, 10 Aug 2017 21:21:17 GMT
ENV TOMCAT_VERSION=7.0.76
# Thu, 10 Aug 2017 21:21:17 GMT
ENV BONITA_SHA256=aecf55d99f585b2e4fb01886a9512190fe4756f4b2cc718db778e3f9ce6848df
# Thu, 10 Aug 2017 21:21:17 GMT
ENV BONITA_URL=http://download.forge.ow2.org/bonita/BonitaBPMCommunity-7.5.1-Tomcat-7.0.76.zip
# Thu, 10 Aug 2017 21:21:28 GMT
RUN mkdir /opt/files   && wget -q ${BONITA_URL} -O /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 10 Aug 2017 21:21:29 GMT
RUN sha256sum /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip
# Thu, 10 Aug 2017 21:21:30 GMT
RUN echo "$BONITA_SHA256" /opt/files/BonitaBPMCommunity-${BONITA_VERSION}-Tomcat-${TOMCAT_VERSION}.zip | sha256sum -c -
# Thu, 10 Aug 2017 21:21:30 GMT
VOLUME [/opt/bonita]
# Thu, 10 Aug 2017 21:21:30 GMT
COPY dir:14da98bbdef0a4f881fec1c4e63270b89b849fd97a1e073f69fe60f8f0498bb1 in /opt/files 
# Thu, 10 Aug 2017 21:21:31 GMT
COPY dir:0f5b28efb7aa0114806152fbcfef64599a58d3bd42d494d262f29d8f3408ea15 in /opt/templates 
# Thu, 10 Aug 2017 21:21:31 GMT
EXPOSE 8080/tcp
# Thu, 10 Aug 2017 21:21:31 GMT
CMD ["/opt/files/startup.sh"]
```

-	Layers:
	-	`sha256:d5c6f90da05dc7e77d2e5fef63c341ab05ba2a03396ab5ae8f18814a7bbf5265`  
		Last Modified: Thu, 03 Aug 2017 11:51:31 GMT  
		Size: 47.3 MB (47258703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1300883d87d5ae0582a4e0f3f86ad93985b18676e8d829f6f3b4990403fdf145`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220aa3cfc1bff0c1df733eac869a66476ea35136c69d881da1e297ed8d0af2f`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e9398f099dcc5a3e5521205e1f55ee5d7665e203193cf48b32553eabcca323c`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc27a084064fee108f4d486469939bbfa6a5b16f6d6d3c6b5b2475e938f4c71e`  
		Last Modified: Thu, 10 Aug 2017 20:15:08 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d21947eb902fcde8622f66d5a03a5368866cd833c417839af14d602a43c095a0`  
		Last Modified: Thu, 10 Aug 2017 21:22:19 GMT  
		Size: 82.6 MB (82617471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17fb512e3720356e67a8396a7f272cf1e13ba5f015ef543b298f044ab312071`  
		Last Modified: Thu, 10 Aug 2017 21:22:07 GMT  
		Size: 122.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a44392e5fe31c82cfe2adb841092657093b366ec944dac5ac4289fc114ae75c`  
		Last Modified: Thu, 10 Aug 2017 21:22:05 GMT  
		Size: 2.0 KB (2004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70d7db75ddc732919f45925d4aae2602faa997c60c0bbc12b7bdf6fe803d2ab`  
		Last Modified: Thu, 10 Aug 2017 21:22:05 GMT  
		Size: 133.2 KB (133173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d909109928b76491c8dc02bc22939c532c77658ba745b3a4b33b66a1a12a118f`  
		Last Modified: Thu, 10 Aug 2017 21:22:05 GMT  
		Size: 818.7 KB (818736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb90e9a016b6aa2edd70a9d113ee5da4dad2cf4bf786a2b8e3829f268a014da`  
		Last Modified: Thu, 10 Aug 2017 21:22:15 GMT  
		Size: 87.4 MB (87390760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fac39042537459b718f913998a0e5d19911b7e9aa3773b5e92bed91d3187ff`  
		Last Modified: Thu, 10 Aug 2017 21:22:05 GMT  
		Size: 6.0 KB (6024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a481a0fa989a0203dfbeece49c0f13a13b3671376b3c89107f512e750f40c713`  
		Last Modified: Thu, 10 Aug 2017 21:22:06 GMT  
		Size: 1.6 KB (1607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
