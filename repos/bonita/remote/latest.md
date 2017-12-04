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
