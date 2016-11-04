<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `websphere-liberty`

-	[`websphere-liberty:kernel`](#websphere-libertykernel)
-	[`websphere-liberty:microProfile`](#websphere-libertymicroprofile)
-	[`websphere-liberty:webProfile6`](#websphere-libertywebprofile6)
-	[`websphere-liberty:webProfile7`](#websphere-libertywebprofile7)
-	[`websphere-liberty:javaee7`](#websphere-libertyjavaee7)
-	[`websphere-liberty:latest`](#websphere-libertylatest)
-	[`websphere-liberty:beta`](#websphere-libertybeta)

## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:00ebda5965b7543022e4d62a60a94b3e0c82ddf7c05bd30e3f8cf8f84ea4608b
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.1 MB (175086302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05166966167ae621c06db2642a7c2a19198dccfa4c4b9bb1d2a89f22771ad3cf`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 02 Nov 2016 19:51:47 GMT
ENV JAVA_VERSION=1.8.0_sr3fp20
# Wed, 02 Nov 2016 19:52:24 GMT
RUN ESUM="56cb00a65b5fbc6b2b9cfc98d992da06ff1406c9f1bf2877d4d097020646a705"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 02 Nov 2016 19:52:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:06 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 04 Nov 2016 21:40:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 04 Nov 2016 21:40:15 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Fri, 04 Nov 2016 21:40:15 GMT
ARG LIBERTY_URL
# Fri, 04 Nov 2016 21:40:15 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 04 Nov 2016 21:40:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 04 Nov 2016 21:40:19 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 04 Nov 2016 21:40:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 04 Nov 2016 21:40:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 04 Nov 2016 21:40:24 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Fri, 04 Nov 2016 21:40:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 04 Nov 2016 21:40:25 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17d430a1edeeea1d06d5c11c1cacb9e5d575057f8276517cf6b54701d72e9b`  
		Last Modified: Wed, 02 Nov 2016 19:56:07 GMT  
		Size: 110.2 MB (110242277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08ebed94969f68db44d0637ec0f6adc4b3f994f2ab1635cec7094519faecc3`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 265.4 KB (265381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c1249e5870446808ca4ad21ff64bf3c75603eb6a792e1cef28a6a3d7c5ad8`  
		Last Modified: Fri, 04 Nov 2016 21:45:34 GMT  
		Size: 11.6 MB (11633510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611752678ed37644b3453e3d2ea16d1205748b5a44f419c6b21429f194e29a75`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a027dfe7ee6d0ae5c1c0a22acee1c9765d4a2cce8d1e07ba836de167448802`  
		Last Modified: Fri, 04 Nov 2016 21:45:29 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198c36eb726d592d74c2dec260f02bfb8d72db8f6203728e14b20dd9d7565b9d`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:3cf0dc820009b6fe40f0e5fd62d6e48cbce06f029e0c2a384b4f130e0a1ff064
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:microProfile` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200642291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fec24512ebbdf7fca93a916035ca33aa9c3161da51b267144070c3a3c40ac2ff`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 02 Nov 2016 19:51:47 GMT
ENV JAVA_VERSION=1.8.0_sr3fp20
# Wed, 02 Nov 2016 19:52:24 GMT
RUN ESUM="56cb00a65b5fbc6b2b9cfc98d992da06ff1406c9f1bf2877d4d097020646a705"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 02 Nov 2016 19:52:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:06 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 04 Nov 2016 21:40:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 04 Nov 2016 21:40:15 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Fri, 04 Nov 2016 21:40:15 GMT
ARG LIBERTY_URL
# Fri, 04 Nov 2016 21:40:15 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 04 Nov 2016 21:40:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 04 Nov 2016 21:40:19 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 04 Nov 2016 21:40:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 04 Nov 2016 21:40:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 04 Nov 2016 21:40:24 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Fri, 04 Nov 2016 21:40:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 04 Nov 2016 21:40:25 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 04 Nov 2016 21:40:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 04 Nov 2016 21:40:26 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Fri, 04 Nov 2016 21:41:05 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17d430a1edeeea1d06d5c11c1cacb9e5d575057f8276517cf6b54701d72e9b`  
		Last Modified: Wed, 02 Nov 2016 19:56:07 GMT  
		Size: 110.2 MB (110242277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08ebed94969f68db44d0637ec0f6adc4b3f994f2ab1635cec7094519faecc3`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 265.4 KB (265381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c1249e5870446808ca4ad21ff64bf3c75603eb6a792e1cef28a6a3d7c5ad8`  
		Last Modified: Fri, 04 Nov 2016 21:45:34 GMT  
		Size: 11.6 MB (11633510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611752678ed37644b3453e3d2ea16d1205748b5a44f419c6b21429f194e29a75`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a027dfe7ee6d0ae5c1c0a22acee1c9765d4a2cce8d1e07ba836de167448802`  
		Last Modified: Fri, 04 Nov 2016 21:45:29 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198c36eb726d592d74c2dec260f02bfb8d72db8f6203728e14b20dd9d7565b9d`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22fc1d8a3c1bbb9633a61b32e07544c0c350af3542c909fffb2efe50b425d19`  
		Last Modified: Fri, 04 Nov 2016 21:45:52 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:520b50d139e0ce4fe9c4ffda2c4227601d59e9b71f1473b69ec3234d50dd44da`  
		Last Modified: Fri, 04 Nov 2016 21:45:55 GMT  
		Size: 25.6 MB (25555456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:f46d5b2ee52618c0b406adc92c07c062c8d85bd621f6957b98094873a1b402e9
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229523220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f9c61d86be22282f649b8afc97a6df41406b9057d6cecdf3cdc182dd1ef9fb`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 02 Nov 2016 19:51:47 GMT
ENV JAVA_VERSION=1.8.0_sr3fp20
# Wed, 02 Nov 2016 19:52:24 GMT
RUN ESUM="56cb00a65b5fbc6b2b9cfc98d992da06ff1406c9f1bf2877d4d097020646a705"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 02 Nov 2016 19:52:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:06 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 04 Nov 2016 21:40:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 04 Nov 2016 21:40:15 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Fri, 04 Nov 2016 21:40:15 GMT
ARG LIBERTY_URL
# Fri, 04 Nov 2016 21:40:15 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 04 Nov 2016 21:40:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 04 Nov 2016 21:40:19 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 04 Nov 2016 21:40:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 04 Nov 2016 21:40:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 04 Nov 2016 21:40:24 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Fri, 04 Nov 2016 21:40:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 04 Nov 2016 21:40:25 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 04 Nov 2016 21:40:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 04 Nov 2016 21:41:06 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Fri, 04 Nov 2016 21:42:13 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17d430a1edeeea1d06d5c11c1cacb9e5d575057f8276517cf6b54701d72e9b`  
		Last Modified: Wed, 02 Nov 2016 19:56:07 GMT  
		Size: 110.2 MB (110242277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08ebed94969f68db44d0637ec0f6adc4b3f994f2ab1635cec7094519faecc3`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 265.4 KB (265381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c1249e5870446808ca4ad21ff64bf3c75603eb6a792e1cef28a6a3d7c5ad8`  
		Last Modified: Fri, 04 Nov 2016 21:45:34 GMT  
		Size: 11.6 MB (11633510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611752678ed37644b3453e3d2ea16d1205748b5a44f419c6b21429f194e29a75`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a027dfe7ee6d0ae5c1c0a22acee1c9765d4a2cce8d1e07ba836de167448802`  
		Last Modified: Fri, 04 Nov 2016 21:45:29 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198c36eb726d592d74c2dec260f02bfb8d72db8f6203728e14b20dd9d7565b9d`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4dea7d5f03b527645cccd4f7f5c105410118183077e54930cf240289aafeca`  
		Last Modified: Fri, 04 Nov 2016 21:46:14 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f152127a5f95eeffd762c19212a477ab141256bcf5d209cd50a9fb9da091e`  
		Last Modified: Fri, 04 Nov 2016 21:46:19 GMT  
		Size: 54.4 MB (54436384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:20fc1620972715dbd6946ad1f49e79364c22178d58444e28c90dd1b35d60dcbc
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239273676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82f2bab6f5513eff72f508ffa016b12e7169e2b3554d34524348735dad72a32`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 02 Nov 2016 19:51:47 GMT
ENV JAVA_VERSION=1.8.0_sr3fp20
# Wed, 02 Nov 2016 19:52:24 GMT
RUN ESUM="56cb00a65b5fbc6b2b9cfc98d992da06ff1406c9f1bf2877d4d097020646a705"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 02 Nov 2016 19:52:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:06 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 04 Nov 2016 21:40:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 04 Nov 2016 21:40:15 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Fri, 04 Nov 2016 21:40:15 GMT
ARG LIBERTY_URL
# Fri, 04 Nov 2016 21:40:15 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 04 Nov 2016 21:40:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 04 Nov 2016 21:40:19 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 04 Nov 2016 21:40:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 04 Nov 2016 21:40:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 04 Nov 2016 21:40:24 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Fri, 04 Nov 2016 21:40:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 04 Nov 2016 21:40:25 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 04 Nov 2016 21:40:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 04 Nov 2016 21:42:13 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 04 Nov 2016 21:43:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17d430a1edeeea1d06d5c11c1cacb9e5d575057f8276517cf6b54701d72e9b`  
		Last Modified: Wed, 02 Nov 2016 19:56:07 GMT  
		Size: 110.2 MB (110242277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08ebed94969f68db44d0637ec0f6adc4b3f994f2ab1635cec7094519faecc3`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 265.4 KB (265381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c1249e5870446808ca4ad21ff64bf3c75603eb6a792e1cef28a6a3d7c5ad8`  
		Last Modified: Fri, 04 Nov 2016 21:45:34 GMT  
		Size: 11.6 MB (11633510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611752678ed37644b3453e3d2ea16d1205748b5a44f419c6b21429f194e29a75`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a027dfe7ee6d0ae5c1c0a22acee1c9765d4a2cce8d1e07ba836de167448802`  
		Last Modified: Fri, 04 Nov 2016 21:45:29 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198c36eb726d592d74c2dec260f02bfb8d72db8f6203728e14b20dd9d7565b9d`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf5bf962fa6988092590096ca6fb534739bca1f45105a9c2fc6bf709b23c874`  
		Last Modified: Fri, 04 Nov 2016 21:46:37 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0e66cfe922b3d0931c9a28db1f1c0e93a6657efb6d16359e7d153e2a580c1c`  
		Last Modified: Fri, 04 Nov 2016 21:46:48 GMT  
		Size: 64.2 MB (64186844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:162e2a86d8c58f45056d8f6277daf1143eaa601dd82a09057d7f15d5da8534a7
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277431821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9261798af062ef17fc654c71be044aa7f20cd11c25a80cf450de86b94ca00d`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 02 Nov 2016 19:51:47 GMT
ENV JAVA_VERSION=1.8.0_sr3fp20
# Wed, 02 Nov 2016 19:52:24 GMT
RUN ESUM="56cb00a65b5fbc6b2b9cfc98d992da06ff1406c9f1bf2877d4d097020646a705"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 02 Nov 2016 19:52:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:06 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 04 Nov 2016 21:40:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 04 Nov 2016 21:40:15 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Fri, 04 Nov 2016 21:40:15 GMT
ARG LIBERTY_URL
# Fri, 04 Nov 2016 21:40:15 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 04 Nov 2016 21:40:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 04 Nov 2016 21:40:19 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 04 Nov 2016 21:40:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 04 Nov 2016 21:40:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 04 Nov 2016 21:40:24 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Fri, 04 Nov 2016 21:40:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 04 Nov 2016 21:40:25 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 04 Nov 2016 21:40:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 04 Nov 2016 21:42:13 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 04 Nov 2016 21:43:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 04 Nov 2016 21:43:32 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 04 Nov 2016 21:43:33 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 04 Nov 2016 21:44:37 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17d430a1edeeea1d06d5c11c1cacb9e5d575057f8276517cf6b54701d72e9b`  
		Last Modified: Wed, 02 Nov 2016 19:56:07 GMT  
		Size: 110.2 MB (110242277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08ebed94969f68db44d0637ec0f6adc4b3f994f2ab1635cec7094519faecc3`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 265.4 KB (265381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c1249e5870446808ca4ad21ff64bf3c75603eb6a792e1cef28a6a3d7c5ad8`  
		Last Modified: Fri, 04 Nov 2016 21:45:34 GMT  
		Size: 11.6 MB (11633510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611752678ed37644b3453e3d2ea16d1205748b5a44f419c6b21429f194e29a75`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a027dfe7ee6d0ae5c1c0a22acee1c9765d4a2cce8d1e07ba836de167448802`  
		Last Modified: Fri, 04 Nov 2016 21:45:29 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198c36eb726d592d74c2dec260f02bfb8d72db8f6203728e14b20dd9d7565b9d`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf5bf962fa6988092590096ca6fb534739bca1f45105a9c2fc6bf709b23c874`  
		Last Modified: Fri, 04 Nov 2016 21:46:37 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0e66cfe922b3d0931c9a28db1f1c0e93a6657efb6d16359e7d153e2a580c1c`  
		Last Modified: Fri, 04 Nov 2016 21:46:48 GMT  
		Size: 64.2 MB (64186844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e94e24caa9ce8a5fafeb033db78ca3281c6149306f46b04987a33ef60301b3`  
		Last Modified: Fri, 04 Nov 2016 21:47:06 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7aed2699034bdb648d03e38cf53c57733340bf13140ee88320bb4dc0b65ad92`  
		Last Modified: Fri, 04 Nov 2016 21:47:10 GMT  
		Size: 38.2 MB (38157250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:162e2a86d8c58f45056d8f6277daf1143eaa601dd82a09057d7f15d5da8534a7
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.4 MB (277431821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b9261798af062ef17fc654c71be044aa7f20cd11c25a80cf450de86b94ca00d`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 02 Nov 2016 19:51:47 GMT
ENV JAVA_VERSION=1.8.0_sr3fp20
# Wed, 02 Nov 2016 19:52:24 GMT
RUN ESUM="56cb00a65b5fbc6b2b9cfc98d992da06ff1406c9f1bf2877d4d097020646a705"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 02 Nov 2016 19:52:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:06 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 04 Nov 2016 21:40:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 04 Nov 2016 21:40:15 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Fri, 04 Nov 2016 21:40:15 GMT
ARG LIBERTY_URL
# Fri, 04 Nov 2016 21:40:15 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 04 Nov 2016 21:40:19 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 04 Nov 2016 21:40:19 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:40:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 04 Nov 2016 21:40:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 04 Nov 2016 21:40:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 04 Nov 2016 21:40:24 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Fri, 04 Nov 2016 21:40:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 04 Nov 2016 21:40:25 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 04 Nov 2016 21:40:25 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 04 Nov 2016 21:42:13 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 04 Nov 2016 21:43:32 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 04 Nov 2016 21:43:32 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 04 Nov 2016 21:43:33 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 04 Nov 2016 21:44:37 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17d430a1edeeea1d06d5c11c1cacb9e5d575057f8276517cf6b54701d72e9b`  
		Last Modified: Wed, 02 Nov 2016 19:56:07 GMT  
		Size: 110.2 MB (110242277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e08ebed94969f68db44d0637ec0f6adc4b3f994f2ab1635cec7094519faecc3`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 265.4 KB (265381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06c1249e5870446808ca4ad21ff64bf3c75603eb6a792e1cef28a6a3d7c5ad8`  
		Last Modified: Fri, 04 Nov 2016 21:45:34 GMT  
		Size: 11.6 MB (11633510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611752678ed37644b3453e3d2ea16d1205748b5a44f419c6b21429f194e29a75`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a027dfe7ee6d0ae5c1c0a22acee1c9765d4a2cce8d1e07ba836de167448802`  
		Last Modified: Fri, 04 Nov 2016 21:45:29 GMT  
		Size: 594.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198c36eb726d592d74c2dec260f02bfb8d72db8f6203728e14b20dd9d7565b9d`  
		Last Modified: Fri, 04 Nov 2016 21:45:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf5bf962fa6988092590096ca6fb534739bca1f45105a9c2fc6bf709b23c874`  
		Last Modified: Fri, 04 Nov 2016 21:46:37 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0e66cfe922b3d0931c9a28db1f1c0e93a6657efb6d16359e7d153e2a580c1c`  
		Last Modified: Fri, 04 Nov 2016 21:46:48 GMT  
		Size: 64.2 MB (64186844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e94e24caa9ce8a5fafeb033db78ca3281c6149306f46b04987a33ef60301b3`  
		Last Modified: Fri, 04 Nov 2016 21:47:06 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7aed2699034bdb648d03e38cf53c57733340bf13140ee88320bb4dc0b65ad92`  
		Last Modified: Fri, 04 Nov 2016 21:47:10 GMT  
		Size: 38.2 MB (38157250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:2f6999a0c4eb7e71392fb79f7590b35af2184fb6fa439db81733a2de231d2264
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242555548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b560810a0a7bf29c971f7b9b0d862438697416bd71cc40a98322925999ba2273`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 13 Oct 2016 21:13:17 GMT
ADD file:b1cd0e54ba28cb1d6db4b93f98d5e02f5e2bcd96c55cb91731ba499861001e30 in / 
# Thu, 13 Oct 2016 21:13:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 13 Oct 2016 21:13:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 13 Oct 2016 21:13:20 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 13 Oct 2016 21:13:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 13 Oct 2016 21:13:21 GMT
CMD ["/bin/bash"]
# Thu, 13 Oct 2016 21:55:53 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 13 Oct 2016 21:56:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 02 Nov 2016 19:51:47 GMT
ENV JAVA_VERSION=1.8.0_sr3fp20
# Wed, 02 Nov 2016 19:52:24 GMT
RUN ESUM="56cb00a65b5fbc6b2b9cfc98d992da06ff1406c9f1bf2877d4d097020646a705"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 02 Nov 2016 19:52:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:44:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Fri, 04 Nov 2016 21:45:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 04 Nov 2016 21:45:04 GMT
ENV LIBERTY_VERSION=2016.10.0_0
# Fri, 04 Nov 2016 21:45:13 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Fri, 04 Nov 2016 21:45:14 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Nov 2016 21:45:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 04 Nov 2016 21:45:15 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 04 Nov 2016 21:45:16 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 04 Nov 2016 21:45:16 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Fri, 04 Nov 2016 21:45:16 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 04 Nov 2016 21:45:17 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6bbedd9b76a496816d86a0af731ea984f40467ef8fb23be752f801cb80436ac6`  
		Last Modified: Wed, 12 Oct 2016 16:22:30 GMT  
		Size: 49.9 MB (49866926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19d60a83f11bbddc7bd2dfca6095b49100314bfde61d83729112a6b6e11d48`  
		Last Modified: Thu, 13 Oct 2016 21:15:32 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de413bb911fd848383ef2e5068a42c258c898d6ee869fb441fb2391eb327b576`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2879a7ad31445fe2cea410b8ba76704003c11ee05c0a4d32d1113009ea1a1aae`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 678.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:668604fde02e75dddb4b44c80d4ce20baaac4832c41c3a945f4a236cd7d2f164`  
		Last Modified: Thu, 13 Oct 2016 21:15:31 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251d33b6bf95da0a257c29ee8eebfce6dd3d95a73858534afde0fb84d0ad9c76`  
		Last Modified: Thu, 13 Oct 2016 21:57:05 GMT  
		Size: 3.1 MB (3074874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e17d430a1edeeea1d06d5c11c1cacb9e5d575057f8276517cf6b54701d72e9b`  
		Last Modified: Wed, 02 Nov 2016 19:56:07 GMT  
		Size: 110.2 MB (110242277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb54d8211d949958d470983953b03bf5c55a6c62a40ec29a489d5b59b9200d6`  
		Last Modified: Fri, 04 Nov 2016 21:47:43 GMT  
		Size: 265.4 KB (265388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965a82bef69e8bf66397fe3374fa77db8e430f1700498fac787ff8ea0b50e814`  
		Last Modified: Fri, 04 Nov 2016 21:47:48 GMT  
		Size: 79.1 MB (79101821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4fe5e3d4266b2b017ce4e086c0763a25194b747a089440379a7c738c725a25`  
		Last Modified: Fri, 04 Nov 2016 21:47:41 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52e42918c4e544fb64e11d06ae35fca60c29b209df34255f4ed7501ca9805f6`  
		Last Modified: Fri, 04 Nov 2016 21:47:40 GMT  
		Size: 1.6 KB (1582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22529092ef9a12ccb086564707c0cd4152b272a200f32cb3c9fd7cc65d1917a4`  
		Last Modified: Fri, 04 Nov 2016 21:47:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
