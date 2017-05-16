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
$ docker pull websphere-liberty@sha256:f63bf81be23c0cf7580e3e65a6eddbd10ff0b14d98121b39c92cfb520898f459
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:kernel` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.9 MB (172874117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c88eedc0cdc841bdac1d3699ea1ec0e8b6d5df9c3d094c651746171561a360fd`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:08:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 15 May 2017 22:08:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 22:08:15 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Mon, 15 May 2017 22:08:49 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 15 May 2017 22:08:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:46:20 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 15 May 2017 23:46:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 23:46:44 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Mon, 15 May 2017 23:46:45 GMT
ARG LIBERTY_URL
# Mon, 15 May 2017 23:46:46 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 15 May 2017 23:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 15 May 2017 23:47:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:47:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 15 May 2017 23:47:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 15 May 2017 23:47:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 15 May 2017 23:47:32 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 15 May 2017 23:47:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 15 May 2017 23:47:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f30dd03e0dd231194178fa3f28c6d8fd142bc27e3def97f0cb29363fe49b05`  
		Last Modified: Mon, 15 May 2017 22:16:10 GMT  
		Size: 3.1 MB (3070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483223faf9eee27afb087819771b83157da2fdd36fe2f7b110815b6187ab5f2`  
		Last Modified: Mon, 15 May 2017 22:16:24 GMT  
		Size: 110.9 MB (110887728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccdf7ef8d22defff12d062e7e9b0d9dd1bffa12d1c5dc2b4b13add82e3a378`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 269.4 KB (269422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a759fe8e409c77c6d57642a4e1806d2e9ff2f6692026bcad7cef7e98fc199`  
		Last Modified: Mon, 15 May 2017 23:54:51 GMT  
		Size: 11.7 MB (11749670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a43c53dfaaaa8109751962cc90910a16030b815cc07ca2eefb512a84809e674`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32be3b55e6901a7af70d44f8d8204cd317460c6e02a028fa50337643ef743676`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c2257c899d388816cdfce327b86ed731fca88f5b57fda730279b988efee77c`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:05c725660569c88cff72a24019c37eedc0319540988016063f2dcf557391bfac
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:microProfile` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.5 MB (197481496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed6f93572e3d7671211b933b1c55fa49c71c9e9ebd85ce6f59d8d5551a16e79`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:08:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 15 May 2017 22:08:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 22:08:15 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Mon, 15 May 2017 22:08:49 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 15 May 2017 22:08:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:46:20 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 15 May 2017 23:46:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 23:46:44 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Mon, 15 May 2017 23:46:45 GMT
ARG LIBERTY_URL
# Mon, 15 May 2017 23:46:46 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 15 May 2017 23:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 15 May 2017 23:47:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:47:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 15 May 2017 23:47:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 15 May 2017 23:47:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 15 May 2017 23:47:32 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 15 May 2017 23:47:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 15 May 2017 23:47:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 15 May 2017 23:48:33 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 15 May 2017 23:48:34 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Mon, 15 May 2017 23:49:02 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f30dd03e0dd231194178fa3f28c6d8fd142bc27e3def97f0cb29363fe49b05`  
		Last Modified: Mon, 15 May 2017 22:16:10 GMT  
		Size: 3.1 MB (3070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483223faf9eee27afb087819771b83157da2fdd36fe2f7b110815b6187ab5f2`  
		Last Modified: Mon, 15 May 2017 22:16:24 GMT  
		Size: 110.9 MB (110887728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccdf7ef8d22defff12d062e7e9b0d9dd1bffa12d1c5dc2b4b13add82e3a378`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 269.4 KB (269422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a759fe8e409c77c6d57642a4e1806d2e9ff2f6692026bcad7cef7e98fc199`  
		Last Modified: Mon, 15 May 2017 23:54:51 GMT  
		Size: 11.7 MB (11749670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a43c53dfaaaa8109751962cc90910a16030b815cc07ca2eefb512a84809e674`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32be3b55e6901a7af70d44f8d8204cd317460c6e02a028fa50337643ef743676`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c2257c899d388816cdfce327b86ed731fca88f5b57fda730279b988efee77c`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefc40ae5ec447cf107b3f6568de4d829669e2cef830cb41b31d119c0aa6acca`  
		Last Modified: Mon, 15 May 2017 23:55:29 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ca41ecc1bd3aa80e54c2bf66d529faf98cb8dfe17f969bff81d652f0e1f57e`  
		Last Modified: Mon, 15 May 2017 23:55:31 GMT  
		Size: 24.6 MB (24606843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:d3b918fc99b1e38d291889df100b950fde145a2886929ad110036d0c0c2dc71c
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile6` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.4 MB (227449860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf64f0125b20082038217e8a3d4fc456179bd9441ac1af15b1fb4205c07f6e8`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:08:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 15 May 2017 22:08:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 22:08:15 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Mon, 15 May 2017 22:08:49 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 15 May 2017 22:08:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:46:20 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 15 May 2017 23:46:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 23:46:44 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Mon, 15 May 2017 23:46:45 GMT
ARG LIBERTY_URL
# Mon, 15 May 2017 23:46:46 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 15 May 2017 23:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 15 May 2017 23:47:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:47:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 15 May 2017 23:47:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 15 May 2017 23:47:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 15 May 2017 23:47:32 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 15 May 2017 23:47:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 15 May 2017 23:47:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 15 May 2017 23:48:33 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 15 May 2017 23:50:01 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Mon, 15 May 2017 23:50:42 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f30dd03e0dd231194178fa3f28c6d8fd142bc27e3def97f0cb29363fe49b05`  
		Last Modified: Mon, 15 May 2017 22:16:10 GMT  
		Size: 3.1 MB (3070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483223faf9eee27afb087819771b83157da2fdd36fe2f7b110815b6187ab5f2`  
		Last Modified: Mon, 15 May 2017 22:16:24 GMT  
		Size: 110.9 MB (110887728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccdf7ef8d22defff12d062e7e9b0d9dd1bffa12d1c5dc2b4b13add82e3a378`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 269.4 KB (269422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a759fe8e409c77c6d57642a4e1806d2e9ff2f6692026bcad7cef7e98fc199`  
		Last Modified: Mon, 15 May 2017 23:54:51 GMT  
		Size: 11.7 MB (11749670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a43c53dfaaaa8109751962cc90910a16030b815cc07ca2eefb512a84809e674`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32be3b55e6901a7af70d44f8d8204cd317460c6e02a028fa50337643ef743676`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c2257c899d388816cdfce327b86ed731fca88f5b57fda730279b988efee77c`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86cea72d629ae21fcfd565d610bb4ed5e0cbe961c196c283f9d805d53a38f47e`  
		Last Modified: Mon, 15 May 2017 23:56:09 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb6183b34907dbce1d025663eebbf48fe4c77b6adc19cba5840644b9e203538`  
		Last Modified: Mon, 15 May 2017 23:56:13 GMT  
		Size: 54.6 MB (54575205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:6534bf100509378f71ad267de5748cc720678a7a13dcd7ea01715ecd1e3db471
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:webProfile7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.9 MB (235878624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e3ca151540b611e0f261d39c77368bdb2c0f7aa23dd5b836d2b89b64bacdc2`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:08:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 15 May 2017 22:08:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 22:08:15 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Mon, 15 May 2017 22:08:49 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 15 May 2017 22:08:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:46:20 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 15 May 2017 23:46:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 23:46:44 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Mon, 15 May 2017 23:46:45 GMT
ARG LIBERTY_URL
# Mon, 15 May 2017 23:46:46 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 15 May 2017 23:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 15 May 2017 23:47:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:47:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 15 May 2017 23:47:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 15 May 2017 23:47:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 15 May 2017 23:47:32 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 15 May 2017 23:47:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 15 May 2017 23:47:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 15 May 2017 23:48:33 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 15 May 2017 23:51:28 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 15 May 2017 23:52:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f30dd03e0dd231194178fa3f28c6d8fd142bc27e3def97f0cb29363fe49b05`  
		Last Modified: Mon, 15 May 2017 22:16:10 GMT  
		Size: 3.1 MB (3070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483223faf9eee27afb087819771b83157da2fdd36fe2f7b110815b6187ab5f2`  
		Last Modified: Mon, 15 May 2017 22:16:24 GMT  
		Size: 110.9 MB (110887728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccdf7ef8d22defff12d062e7e9b0d9dd1bffa12d1c5dc2b4b13add82e3a378`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 269.4 KB (269422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a759fe8e409c77c6d57642a4e1806d2e9ff2f6692026bcad7cef7e98fc199`  
		Last Modified: Mon, 15 May 2017 23:54:51 GMT  
		Size: 11.7 MB (11749670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a43c53dfaaaa8109751962cc90910a16030b815cc07ca2eefb512a84809e674`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32be3b55e6901a7af70d44f8d8204cd317460c6e02a028fa50337643ef743676`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c2257c899d388816cdfce327b86ed731fca88f5b57fda730279b988efee77c`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09675501fb939db7d20205269761557ae3e9a998016b4c5f30edc022d3ea318f`  
		Last Modified: Mon, 15 May 2017 23:56:49 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf60734ef8d06f715a07011eda5ddae5228ca07077cd92d06e5c7da297c014a`  
		Last Modified: Mon, 15 May 2017 23:56:54 GMT  
		Size: 63.0 MB (63003975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:javaee7`

```console
$ docker pull websphere-liberty@sha256:7cb4c2c9133f60dc8062ff3a3e890ce64d514b465a4a22e64cade18f6549633a
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:javaee7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.1 MB (274078156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eba9f48f281b0aedb0c77fdcd0db07366d1b3c39d86bd50eed092f41bfcb786`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:08:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 15 May 2017 22:08:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 22:08:15 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Mon, 15 May 2017 22:08:49 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 15 May 2017 22:08:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:46:20 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 15 May 2017 23:46:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 23:46:44 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Mon, 15 May 2017 23:46:45 GMT
ARG LIBERTY_URL
# Mon, 15 May 2017 23:46:46 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 15 May 2017 23:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 15 May 2017 23:47:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:47:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 15 May 2017 23:47:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 15 May 2017 23:47:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 15 May 2017 23:47:32 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 15 May 2017 23:47:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 15 May 2017 23:47:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 15 May 2017 23:48:33 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 15 May 2017 23:51:28 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 15 May 2017 23:52:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 15 May 2017 23:52:57 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 15 May 2017 23:52:58 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 15 May 2017 23:53:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f30dd03e0dd231194178fa3f28c6d8fd142bc27e3def97f0cb29363fe49b05`  
		Last Modified: Mon, 15 May 2017 22:16:10 GMT  
		Size: 3.1 MB (3070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483223faf9eee27afb087819771b83157da2fdd36fe2f7b110815b6187ab5f2`  
		Last Modified: Mon, 15 May 2017 22:16:24 GMT  
		Size: 110.9 MB (110887728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccdf7ef8d22defff12d062e7e9b0d9dd1bffa12d1c5dc2b4b13add82e3a378`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 269.4 KB (269422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a759fe8e409c77c6d57642a4e1806d2e9ff2f6692026bcad7cef7e98fc199`  
		Last Modified: Mon, 15 May 2017 23:54:51 GMT  
		Size: 11.7 MB (11749670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a43c53dfaaaa8109751962cc90910a16030b815cc07ca2eefb512a84809e674`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32be3b55e6901a7af70d44f8d8204cd317460c6e02a028fa50337643ef743676`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c2257c899d388816cdfce327b86ed731fca88f5b57fda730279b988efee77c`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09675501fb939db7d20205269761557ae3e9a998016b4c5f30edc022d3ea318f`  
		Last Modified: Mon, 15 May 2017 23:56:49 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf60734ef8d06f715a07011eda5ddae5228ca07077cd92d06e5c7da297c014a`  
		Last Modified: Mon, 15 May 2017 23:56:54 GMT  
		Size: 63.0 MB (63003975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b40be95bf99f47ff5754c9cc5b3705ea2e96c25a32ef216ee20881495d7a8`  
		Last Modified: Mon, 15 May 2017 23:57:28 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856e8ee56f0c9040a4f75ba65e0ae5f78c09128ab3202cbc3f2f20ea25079133`  
		Last Modified: Mon, 15 May 2017 23:57:32 GMT  
		Size: 38.2 MB (38198633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:7cb4c2c9133f60dc8062ff3a3e890ce64d514b465a4a22e64cade18f6549633a
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.1 MB (274078156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eba9f48f281b0aedb0c77fdcd0db07366d1b3c39d86bd50eed092f41bfcb786`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:08:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 15 May 2017 22:08:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 22:08:15 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Mon, 15 May 2017 22:08:49 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 15 May 2017 22:08:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:46:20 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 15 May 2017 23:46:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 23:46:44 GMT
ENV LIBERTY_VERSION=17.0.0_01
# Mon, 15 May 2017 23:46:45 GMT
ARG LIBERTY_URL
# Mon, 15 May 2017 23:46:46 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 15 May 2017 23:46:49 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 15 May 2017 23:47:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:47:08 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 15 May 2017 23:47:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 15 May 2017 23:47:30 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 15 May 2017 23:47:32 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 15 May 2017 23:47:32 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 15 May 2017 23:47:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 15 May 2017 23:48:33 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 15 May 2017 23:51:28 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Mon, 15 May 2017 23:52:17 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then     mkdir /opt/ibm/wlp/etc/     echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties;   fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Mon, 15 May 2017 23:52:57 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Mon, 15 May 2017 23:52:58 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 15 May 2017 23:53:29 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f30dd03e0dd231194178fa3f28c6d8fd142bc27e3def97f0cb29363fe49b05`  
		Last Modified: Mon, 15 May 2017 22:16:10 GMT  
		Size: 3.1 MB (3070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483223faf9eee27afb087819771b83157da2fdd36fe2f7b110815b6187ab5f2`  
		Last Modified: Mon, 15 May 2017 22:16:24 GMT  
		Size: 110.9 MB (110887728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ccdf7ef8d22defff12d062e7e9b0d9dd1bffa12d1c5dc2b4b13add82e3a378`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 269.4 KB (269422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067a759fe8e409c77c6d57642a4e1806d2e9ff2f6692026bcad7cef7e98fc199`  
		Last Modified: Mon, 15 May 2017 23:54:51 GMT  
		Size: 11.7 MB (11749670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a43c53dfaaaa8109751962cc90910a16030b815cc07ca2eefb512a84809e674`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32be3b55e6901a7af70d44f8d8204cd317460c6e02a028fa50337643ef743676`  
		Last Modified: Mon, 15 May 2017 23:54:49 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c2257c899d388816cdfce327b86ed731fca88f5b57fda730279b988efee77c`  
		Last Modified: Mon, 15 May 2017 23:54:50 GMT  
		Size: 463.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09675501fb939db7d20205269761557ae3e9a998016b4c5f30edc022d3ea318f`  
		Last Modified: Mon, 15 May 2017 23:56:49 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf60734ef8d06f715a07011eda5ddae5228ca07077cd92d06e5c7da297c014a`  
		Last Modified: Mon, 15 May 2017 23:56:54 GMT  
		Size: 63.0 MB (63003975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42b40be95bf99f47ff5754c9cc5b3705ea2e96c25a32ef216ee20881495d7a8`  
		Last Modified: Mon, 15 May 2017 23:57:28 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856e8ee56f0c9040a4f75ba65e0ae5f78c09128ab3202cbc3f2f20ea25079133`  
		Last Modified: Mon, 15 May 2017 23:57:32 GMT  
		Size: 38.2 MB (38198633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:9264096226f3348622618b8304b6d93170c6cb1b4d939a19d66f17f99793bbb0
```

-	Platforms:
	-	linux; amd64

### `websphere-liberty:beta` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240808591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0205b0b11caa4d144fa90972a218ce16214ae6a2f3cda1ac5c8e59d8f32e702`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 15 May 2017 16:43:34 GMT
ADD file:d14b493577228a498919faab376609c73048c0220b06d2989ecaaf1bdc17cf6c in / 
# Mon, 15 May 2017 16:43:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 May 2017 16:43:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 16:43:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 May 2017 16:43:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 May 2017 16:43:41 GMT
CMD ["/bin/bash"]
# Mon, 15 May 2017 22:08:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 15 May 2017 22:08:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 22:08:15 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Mon, 15 May 2017 22:08:49 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Mon, 15 May 2017 22:08:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:44:19 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Mon, 15 May 2017 23:44:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 15 May 2017 23:44:30 GMT
ENV LIBERTY_VERSION=2017.5.0_0
# Mon, 15 May 2017 23:44:40 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Mon, 15 May 2017 23:44:53 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 15 May 2017 23:44:54 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 15 May 2017 23:44:55 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 15 May 2017 23:45:20 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 15 May 2017 23:45:39 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Mon, 15 May 2017 23:45:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 15 May 2017 23:45:40 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b6f892c0043b37bd1834a4a1b7d68fe6421c6acbc7e7e63a4527e1d379f92c1b`  
		Last Modified: Fri, 12 May 2017 22:35:01 GMT  
		Size: 46.9 MB (46893344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55010f332b047687e081a9639fac04918552c144bc2da4edb3422ce8efcc1fb1`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2955fb827c947b782af190a759805d229cfebc75978dba2d01b4a59e6a333845`  
		Last Modified: Mon, 15 May 2017 16:49:05 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3deef3fcbd3072b45771bd0d192d4e5ff2b7310b99ea92bce062e01097953505`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9722e506aada1109f5c00a9ba542a81c9e109606c01c81f5991b1f93de7b66`  
		Last Modified: Mon, 15 May 2017 16:49:04 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f30dd03e0dd231194178fa3f28c6d8fd142bc27e3def97f0cb29363fe49b05`  
		Last Modified: Mon, 15 May 2017 22:16:10 GMT  
		Size: 3.1 MB (3070393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8483223faf9eee27afb087819771b83157da2fdd36fe2f7b110815b6187ab5f2`  
		Last Modified: Mon, 15 May 2017 22:16:24 GMT  
		Size: 110.9 MB (110887728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050e44ab557a2ec554d2741cff1929821c307370cac5a1d014aae987e2ca0299`  
		Last Modified: Mon, 15 May 2017 23:54:11 GMT  
		Size: 269.4 KB (269436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a787ecc473f7182485165085dbd2e5069411564d2945abebcdc6c3cfee8da67f`  
		Last Modified: Mon, 15 May 2017 23:54:16 GMT  
		Size: 79.7 MB (79682783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b09df016faaf97300db50d61ca80a80c916a3d65306bacf5fd9e8bf33d2a7a1`  
		Last Modified: Mon, 15 May 2017 23:54:10 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e783a410d25611aa642a05c0729ea107c783454b516b7b37e641f61a2d6459`  
		Last Modified: Mon, 15 May 2017 23:54:10 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b31a5b5dfda79165d5a62020c403d8654db1768597d89701c04e6299f35a6c1`  
		Last Modified: Mon, 15 May 2017 23:54:10 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
