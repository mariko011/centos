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
$ docker pull websphere-liberty@sha256:55767c8653eff96f9ac5f0d3b973ca0e76090b326a52b6c7eb1234fe1cb3c79b
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175291103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6934f6680f4a7dedf905eea73269c8c8e1badc29cecb79f2155e24aa671c15`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:55 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 29 Nov 2016 18:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:42:03 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Tue, 29 Nov 2016 18:42:03 GMT
ARG LIBERTY_URL
# Tue, 29 Nov 2016 18:42:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 29 Nov 2016 18:42:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 29 Nov 2016 18:42:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:42:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:42:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:42:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:42:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 29 Nov 2016 18:42:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:42:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b95125e62009c3e0087871d6181f0f4e699528400d68bb3583be9484340242e`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 265.6 KB (265603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b99846478dac90617007b11a1f026ac79d27f080cd58ce50f771cff5db475`  
		Last Modified: Tue, 29 Nov 2016 18:47:54 GMT  
		Size: 11.6 MB (11633497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1bc792ec65a91e7285ce700a457a2f0ce4f152fb8bc1c599faaaff27bd99c2`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570fd809fd785acf976ff997241bfcfbe04b21d2752e83fc0ec6518e687e5cad`  
		Last Modified: Tue, 29 Nov 2016 18:47:52 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d509884dac3ded9e8855b7234c53666d17299de59ff2a58c73df4ba5aed937b3`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:87d988c52b517172b6a8f37c34c91d1fca40cf864e09ce6e61b1e3a038bde35a
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:microProfile` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200847086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94ba556f4d83b3527fff60367bb45cd4b1cf4faaf3f4aa18c71e16aa5e712065`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:55 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 29 Nov 2016 18:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:42:03 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Tue, 29 Nov 2016 18:42:03 GMT
ARG LIBERTY_URL
# Tue, 29 Nov 2016 18:42:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 29 Nov 2016 18:42:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 29 Nov 2016 18:42:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:42:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:42:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:42:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:42:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 29 Nov 2016 18:42:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:42:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 29 Nov 2016 18:42:11 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:42:12 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Tue, 29 Nov 2016 18:42:52 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b95125e62009c3e0087871d6181f0f4e699528400d68bb3583be9484340242e`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 265.6 KB (265603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b99846478dac90617007b11a1f026ac79d27f080cd58ce50f771cff5db475`  
		Last Modified: Tue, 29 Nov 2016 18:47:54 GMT  
		Size: 11.6 MB (11633497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1bc792ec65a91e7285ce700a457a2f0ce4f152fb8bc1c599faaaff27bd99c2`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570fd809fd785acf976ff997241bfcfbe04b21d2752e83fc0ec6518e687e5cad`  
		Last Modified: Tue, 29 Nov 2016 18:47:52 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d509884dac3ded9e8855b7234c53666d17299de59ff2a58c73df4ba5aed937b3`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fedb46ce37d1fb20a1796acdf67fdbff87a06547bf33c39f80d6b2429054e10`  
		Last Modified: Tue, 29 Nov 2016 18:48:16 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31fdf3650be6fd4be3152df6a12765bd1be3ee357ae5240d952e98aabbdd97f4`  
		Last Modified: Tue, 29 Nov 2016 18:48:17 GMT  
		Size: 25.6 MB (25555449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:498741b3d75a9c8942a1a7cd05ee824cd55fda9d6b52d39cfbbe56a838a66d24
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229728332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c0e6ed0b5a9bdbbcc4a019159b6adea9008f7ba79a1f0da9162e6a3f34c495`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:55 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 29 Nov 2016 18:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:42:03 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Tue, 29 Nov 2016 18:42:03 GMT
ARG LIBERTY_URL
# Tue, 29 Nov 2016 18:42:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 29 Nov 2016 18:42:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 29 Nov 2016 18:42:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:42:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:42:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:42:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:42:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 29 Nov 2016 18:42:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:42:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 29 Nov 2016 18:42:11 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:42:53 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Tue, 29 Nov 2016 18:44:08 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b95125e62009c3e0087871d6181f0f4e699528400d68bb3583be9484340242e`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 265.6 KB (265603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b99846478dac90617007b11a1f026ac79d27f080cd58ce50f771cff5db475`  
		Last Modified: Tue, 29 Nov 2016 18:47:54 GMT  
		Size: 11.6 MB (11633497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1bc792ec65a91e7285ce700a457a2f0ce4f152fb8bc1c599faaaff27bd99c2`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570fd809fd785acf976ff997241bfcfbe04b21d2752e83fc0ec6518e687e5cad`  
		Last Modified: Tue, 29 Nov 2016 18:47:52 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d509884dac3ded9e8855b7234c53666d17299de59ff2a58c73df4ba5aed937b3`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92dff5de74182add4d3fb1b026f282082658f037d42a3c3b0c5e167b1dc1a99`  
		Last Modified: Tue, 29 Nov 2016 18:48:37 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63005f4cc1441c3864b772a24c9314ecf8d9e18b83dfc991b7739e53cb3eaca7`  
		Last Modified: Tue, 29 Nov 2016 18:48:42 GMT  
		Size: 54.4 MB (54436692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:be6be461427d60ecb09fb324ae396cd74254c34f3f7cd20ae55d0436bb9211da
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239478449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f0ab59e46be14e41fe6df71bdbe48cbf56df7b80b808095ff453b957bdb11b`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:55 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 29 Nov 2016 18:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:42:03 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Tue, 29 Nov 2016 18:42:03 GMT
ARG LIBERTY_URL
# Tue, 29 Nov 2016 18:42:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 29 Nov 2016 18:42:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 29 Nov 2016 18:42:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:42:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:42:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:42:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:42:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 29 Nov 2016 18:42:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:42:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 29 Nov 2016 18:42:11 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:44:09 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 29 Nov 2016 18:45:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b95125e62009c3e0087871d6181f0f4e699528400d68bb3583be9484340242e`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 265.6 KB (265603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b99846478dac90617007b11a1f026ac79d27f080cd58ce50f771cff5db475`  
		Last Modified: Tue, 29 Nov 2016 18:47:54 GMT  
		Size: 11.6 MB (11633497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1bc792ec65a91e7285ce700a457a2f0ce4f152fb8bc1c599faaaff27bd99c2`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570fd809fd785acf976ff997241bfcfbe04b21d2752e83fc0ec6518e687e5cad`  
		Last Modified: Tue, 29 Nov 2016 18:47:52 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d509884dac3ded9e8855b7234c53666d17299de59ff2a58c73df4ba5aed937b3`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11319e69d29a56e9cc73a87b3e4f45a7a273c1d1b7e4f95badc0bca785d9e760`  
		Last Modified: Tue, 29 Nov 2016 18:49:05 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6212ca1e9286b784e265715abe083c6f5eb64d445eefa61e3e62c544ed564bd`  
		Last Modified: Tue, 29 Nov 2016 18:49:12 GMT  
		Size: 64.2 MB (64186816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:501e24a5c8447851b8f07193acc1bb1fb260c1db838e5e9cca32385061f3da05
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277636572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d8e297de76fe785d0599e1e770d2146622c9248fcd27aa5d6f2bae510f3542`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:55 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 29 Nov 2016 18:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:42:03 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Tue, 29 Nov 2016 18:42:03 GMT
ARG LIBERTY_URL
# Tue, 29 Nov 2016 18:42:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 29 Nov 2016 18:42:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 29 Nov 2016 18:42:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:42:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:42:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:42:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:42:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 29 Nov 2016 18:42:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:42:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 29 Nov 2016 18:42:11 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:44:09 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 29 Nov 2016 18:45:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 29 Nov 2016 18:45:30 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 29 Nov 2016 18:45:31 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:46:19 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b95125e62009c3e0087871d6181f0f4e699528400d68bb3583be9484340242e`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 265.6 KB (265603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b99846478dac90617007b11a1f026ac79d27f080cd58ce50f771cff5db475`  
		Last Modified: Tue, 29 Nov 2016 18:47:54 GMT  
		Size: 11.6 MB (11633497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1bc792ec65a91e7285ce700a457a2f0ce4f152fb8bc1c599faaaff27bd99c2`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570fd809fd785acf976ff997241bfcfbe04b21d2752e83fc0ec6518e687e5cad`  
		Last Modified: Tue, 29 Nov 2016 18:47:52 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d509884dac3ded9e8855b7234c53666d17299de59ff2a58c73df4ba5aed937b3`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11319e69d29a56e9cc73a87b3e4f45a7a273c1d1b7e4f95badc0bca785d9e760`  
		Last Modified: Tue, 29 Nov 2016 18:49:05 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6212ca1e9286b784e265715abe083c6f5eb64d445eefa61e3e62c544ed564bd`  
		Last Modified: Tue, 29 Nov 2016 18:49:12 GMT  
		Size: 64.2 MB (64186816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c87cfb418bc513372c681ff465b7b8384dbf70362d80948749ef07dea80ff2c`  
		Last Modified: Tue, 29 Nov 2016 18:49:34 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcafcfea12ed4faef054ae87a4973a361a369acb7a89cb47e84334ec175b09bc`  
		Last Modified: Tue, 29 Nov 2016 18:49:38 GMT  
		Size: 38.2 MB (38157223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:501e24a5c8447851b8f07193acc1bb1fb260c1db838e5e9cca32385061f3da05
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277636572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4d8e297de76fe785d0599e1e770d2146622c9248fcd27aa5d6f2bae510f3542`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:55 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 29 Nov 2016 18:42:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:42:03 GMT
ENV LIBERTY_VERSION=16.0.0_03
# Tue, 29 Nov 2016 18:42:03 GMT
ARG LIBERTY_URL
# Tue, 29 Nov 2016 18:42:03 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 29 Nov 2016 18:42:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 29 Nov 2016 18:42:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:42:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:42:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:42:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:42:10 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 29 Nov 2016 18:42:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:42:11 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 29 Nov 2016 18:42:11 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:44:09 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Tue, 29 Nov 2016 18:45:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Tue, 29 Nov 2016 18:45:30 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Tue, 29 Nov 2016 18:45:31 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 29 Nov 2016 18:46:19 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b95125e62009c3e0087871d6181f0f4e699528400d68bb3583be9484340242e`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 265.6 KB (265603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b99846478dac90617007b11a1f026ac79d27f080cd58ce50f771cff5db475`  
		Last Modified: Tue, 29 Nov 2016 18:47:54 GMT  
		Size: 11.6 MB (11633497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1bc792ec65a91e7285ce700a457a2f0ce4f152fb8bc1c599faaaff27bd99c2`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570fd809fd785acf976ff997241bfcfbe04b21d2752e83fc0ec6518e687e5cad`  
		Last Modified: Tue, 29 Nov 2016 18:47:52 GMT  
		Size: 578.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d509884dac3ded9e8855b7234c53666d17299de59ff2a58c73df4ba5aed937b3`  
		Last Modified: Tue, 29 Nov 2016 18:47:51 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11319e69d29a56e9cc73a87b3e4f45a7a273c1d1b7e4f95badc0bca785d9e760`  
		Last Modified: Tue, 29 Nov 2016 18:49:05 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6212ca1e9286b784e265715abe083c6f5eb64d445eefa61e3e62c544ed564bd`  
		Last Modified: Tue, 29 Nov 2016 18:49:12 GMT  
		Size: 64.2 MB (64186816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c87cfb418bc513372c681ff465b7b8384dbf70362d80948749ef07dea80ff2c`  
		Last Modified: Tue, 29 Nov 2016 18:49:34 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcafcfea12ed4faef054ae87a4973a361a369acb7a89cb47e84334ec175b09bc`  
		Last Modified: Tue, 29 Nov 2016 18:49:38 GMT  
		Size: 38.2 MB (38157223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:aaaae6a4d916c33e2069578a470b7a020334073b929c6a539a47c080b2acf249
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239556303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df2d273c1fdcaedf92e785d56a1aa1db5dfb479fd373f772f93a4fef8a44542`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 16 Nov 2016 20:58:18 GMT
ADD file:abc033900893f6c7375050d1e1c2eed298d3d709145e3a7f7819de6e77f0f835 in / 
# Wed, 16 Nov 2016 20:58:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 16 Nov 2016 20:58:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 16 Nov 2016 20:58:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 16 Nov 2016 20:58:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 16 Nov 2016 20:58:26 GMT
CMD ["/bin/bash"]
# Thu, 17 Nov 2016 00:12:16 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 17 Nov 2016 00:12:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:21:00 GMT
ENV JAVA_VERSION=1.8.0_sr3fp21
# Tue, 29 Nov 2016 18:22:07 GMT
RUN ESUM="34fc944d1973d7bed31ea29371725e7175d927da841951ca27939654f0c6accf"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 29 Nov 2016 18:22:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:31 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Tue, 29 Nov 2016 18:41:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Nov 2016 18:41:41 GMT
ENV LIBERTY_VERSION=2016.11.0_1
# Tue, 29 Nov 2016 18:41:50 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Tue, 29 Nov 2016 18:41:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Nov 2016 18:41:51 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 29 Nov 2016 18:41:51 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 29 Nov 2016 18:41:53 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 29 Nov 2016 18:41:53 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Tue, 29 Nov 2016 18:41:54 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 29 Nov 2016 18:41:54 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:aed15891ba52590c33d862bb6a91ea016b7dc43a9080e48509f75f003d82952c`  
		Last Modified: Wed, 16 Nov 2016 21:01:59 GMT  
		Size: 50.1 MB (50066934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ae8583d14af4e500ce5a5fa2fedf079651fb1beb289fdf1a7146d147cd608`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d48771f782fed22e5d31dcb03e8970796ec80c350f3544844b5c4e131b959a`  
		Last Modified: Wed, 16 Nov 2016 21:01:46 GMT  
		Size: 516.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3d6cd6c0cff04046b5cfc3688e599e56efe9abe35ff59c36fcf469eb289f81`  
		Last Modified: Wed, 16 Nov 2016 21:01:44 GMT  
		Size: 680.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff6f8a9120c54ae6ebde4bea1a4f2bc8170d4a148f5f81eb731be74a071d71e`  
		Last Modified: Wed, 16 Nov 2016 21:01:48 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27bbd81f7134394ce6ea219cf5e2e433d9d14b1a94274b0368214abdd3df4078`  
		Last Modified: Thu, 17 Nov 2016 00:14:29 GMT  
		Size: 3.1 MB (3077135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf9aa6f54aa8020195f3b658238fc609f4b1d0474361d101e387d0252d04548`  
		Last Modified: Tue, 29 Nov 2016 18:24:50 GMT  
		Size: 110.2 MB (110244543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debb88ef996a824b986d18f4f9c1913e30b183e91ed8dcb9deabec27a57abbb4`  
		Last Modified: Tue, 29 Nov 2016 18:46:33 GMT  
		Size: 265.6 KB (265605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda3f8e2868524dcecf29f497668879bb85433c2cfdc144f015b89ca68026a2c`  
		Last Modified: Tue, 29 Nov 2016 18:47:22 GMT  
		Size: 75.9 MB (75897614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbdd6fa0ebe9a9577edc3e8b65933ccac429e696d64b90bbedd318448dc7b6f`  
		Last Modified: Tue, 29 Nov 2016 18:46:32 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f1621e264e1dc90850d65d6ae86e9ab2bea7a1e41aaee7bf3f891eab0c2456`  
		Last Modified: Tue, 29 Nov 2016 18:46:33 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b758b48fa3c059356e12e16b08592b6f1afe77657b1f6b79a9db345bf1d5f832`  
		Last Modified: Tue, 29 Nov 2016 18:46:33 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
