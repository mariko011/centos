## `websphere-liberty:webProfile7`

```console
$ docker pull websphere-liberty@sha256:7d27665784fbcb64882daf05373fa19c9e1ac283a25e0f43d0b7fc7286c74738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile7` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:c7d47baf557484757f2918552ee32354d20170658dab9f1fe24b18cccb6bc449
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (255990004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f86ed568bb3a0931f9a7d6e3bd85be5b0de37f96ef110c6b5cc9b7cfba980086`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Tue, 10 Oct 2017 21:34:11 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 10 Oct 2017 21:34:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 21:34:21 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 27 Oct 2017 20:45:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 27 Oct 2017 20:45:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:38 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 04 Nov 2017 10:43:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 10:43:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 04 Nov 2017 10:43:51 GMT
ARG LIBERTY_URL
# Sat, 04 Nov 2017 10:43:51 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 04 Nov 2017 10:43:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 04 Nov 2017 10:43:55 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 04 Nov 2017 10:43:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 04 Nov 2017 10:43:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 04 Nov 2017 10:43:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 04 Nov 2017 10:43:59 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 04 Nov 2017 10:43:59 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 04 Nov 2017 10:44:00 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 04 Nov 2017 10:44:00 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 04 Nov 2017 10:44:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 04 Nov 2017 10:46:26 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 04 Nov 2017 10:47:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
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
	-	`sha256:64fe2be44a590dda30db3f7bc8a86e259348dafad850d4cffa85cd31b936f2e9`  
		Last Modified: Tue, 10 Oct 2017 21:42:18 GMT  
		Size: 3.0 MB (3020468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf6d2d8db30eb1cabb2310a5596cb4c8ec3363d8d3199ddaf5dc51222c7120d`  
		Last Modified: Fri, 27 Oct 2017 20:52:09 GMT  
		Size: 124.6 MB (124607366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1688f89b831f120659776a8563e902cd48cecfe4c183331c0a2459d39faaa849`  
		Last Modified: Sat, 04 Nov 2017 10:49:33 GMT  
		Size: 421.9 KB (421942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe74964d154fc35d78b2d0a76ed2066daf1241d14fd464008c50fbe38138802`  
		Last Modified: Sat, 04 Nov 2017 10:49:35 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c9c95b2a93783bb67f1336befa8cd884ea0bfe2f62b8ee578ca155f753a0fc`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696042d4c883abe65bc8e0a100a507fc90d47c2117abe7015ce2054710edae0d`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013fb9eaa2f91c403b355b62c25bc61754492db9b7d1e1eb7913dce5451a2c5c`  
		Last Modified: Sat, 04 Nov 2017 10:49:32 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a556806d8dd85d45c0151f23cad993f6233bdda49cb2d1df92791e1d66778401`  
		Last Modified: Sat, 04 Nov 2017 10:50:20 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38dfb50b69720eeaf49506618fb99d1b6ddaad6e7c488fd794bcf27d7d4c0896`  
		Last Modified: Sat, 04 Nov 2017 10:50:29 GMT  
		Size: 68.7 MB (68661748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; 386

```console
$ docker pull websphere-liberty@sha256:4b4c3c2993f03b1317ebdcdc1cb6db2d9fa1cff6a666f70d3201a826cc00f0e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244881642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6ae3bac9d2096089f16798418bac974745a34d1a579b01902c9bbc3a11e1b0`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Wed, 11 Oct 2017 03:42:05 GMT
ADD file:bb3bd5935b4d8a89a615b235edd9f2c8994892f80f4207a9be6f73d1e740fe99 in / 
# Wed, 11 Oct 2017 03:42:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 11 Oct 2017 03:42:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 03:42:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 11 Oct 2017 03:42:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 11 Oct 2017 03:42:09 GMT
CMD ["/bin/bash"]
# Wed, 11 Oct 2017 04:17:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 11 Oct 2017 04:17:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 11 Oct 2017 04:17:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Sat, 28 Oct 2017 13:27:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sat, 28 Oct 2017 13:27:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:52:58 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sat, 28 Oct 2017 13:53:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Oct 2017 13:53:08 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Sat, 28 Oct 2017 13:53:09 GMT
ARG LIBERTY_URL
# Sat, 28 Oct 2017 13:53:09 GMT
ARG DOWNLOAD_OPTIONS=
# Sat, 28 Oct 2017 13:53:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sat, 28 Oct 2017 13:53:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Oct 2017 13:53:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Sat, 28 Oct 2017 13:53:14 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sat, 28 Oct 2017 13:53:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sat, 28 Oct 2017 13:53:21 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sat, 28 Oct 2017 13:53:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sat, 28 Oct 2017 13:53:22 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 28 Oct 2017 13:53:22 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sat, 28 Oct 2017 13:53:34 GMT
ARG REPOSITORIES_PROPERTIES=
# Sat, 28 Oct 2017 13:55:37 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sat, 28 Oct 2017 13:56:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:acb0d27ac9b88e225bef09d7d5994961e9a35aa8c44e63211012e3e309faba08`  
		Last Modified: Wed, 11 Oct 2017 03:43:24 GMT  
		Size: 47.9 MB (47874409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f9fbc97d20aafc373f030de956f2937231c0429b2afdb5bf29f37aa461dd48f`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebd9d15ef132d78842e10e92e7a68bff76280e8b8dfdbe8ccc0847a08857fa69`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92dbf3d41ac22221844d955b41a1c4e96a78f56e93ef0f2996d6173d4979720e`  
		Last Modified: Wed, 11 Oct 2017 03:43:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:babacea552509daca82b772dc265cb3120ac3a9b6dcad79724c8beebb932eb3a`  
		Last Modified: Wed, 11 Oct 2017 03:43:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc4b2148d6f3b0d30ba2b655afd84e3df87fb63910cac4fe2bd7ff7f9754b8d`  
		Last Modified: Wed, 11 Oct 2017 04:34:03 GMT  
		Size: 2.9 MB (2876479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ee8d49fb2a6a649592608ba73608af17fc9d6d74c8f11c5ce019d50319fe34`  
		Last Modified: Sat, 28 Oct 2017 13:33:25 GMT  
		Size: 113.4 MB (113386132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a1a53c233f73e6a2fb0af29dab3ddfd4489c6c07f2a53a5758cb8a5aa0ec82`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 421.0 KB (421012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bde529c6d4a8e740f864a445e669d27108c49c9bb8b5cd7ae93973706d6ed94`  
		Last Modified: Sat, 28 Oct 2017 13:58:22 GMT  
		Size: 11.7 MB (11656671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ff6ba188ca55ac329dd91382459d77fcbbd505eb8084388e973a22d4d407bb`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8de729e4c6f62ba39058a29fe74627f44c60c91268c56e056a79de11b05513f`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e3278b170d0938126b2739ebf59bae56bf027c33f7a8f0e9d8dff0f98992a2`  
		Last Modified: Sat, 28 Oct 2017 13:58:21 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3820b1dd9e0fc0082e319318986c22af780f5059a6c4f95789bda5f489b3aea`  
		Last Modified: Sat, 28 Oct 2017 13:59:04 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90854dcd4ca901ad8e9a32b0d2b92c3f504762e883f1c2b16802c20479a67978`  
		Last Modified: Sat, 28 Oct 2017 13:59:09 GMT  
		Size: 68.7 MB (68662291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:0a161e387c6424babca4854dbad8727091ebde473a4198e83958ac286e0102b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271831472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1929e8233604db3612a02c5bb787ae385c89dcd8179ee2fc7ab0f52f680b1ca`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:09:45 GMT
ADD file:392e323a73965750d9189d716d79fb80d688920977f201027a917643672a68a3 in / 
# Fri, 17 Nov 2017 22:09:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:09:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:09:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:10:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:10:01 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:28:51 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:29:28 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:29:29 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:31:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:31:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:11:15 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 23:11:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 23:11:53 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 23:11:55 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 23:11:58 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 23:12:16 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 23:12:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 23:12:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 23:12:30 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 23:12:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 23:12:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 23:12:48 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 23:12:50 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 23:12:53 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 17 Nov 2017 23:13:13 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 23:17:50 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 17 Nov 2017 23:20:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:275cfb52349b54241f21ad678f1d4ac09f272703b5c14b0dc7b1462f938eb3dc`  
		Last Modified: Fri, 17 Nov 2017 22:12:47 GMT  
		Size: 49.7 MB (49719729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:befb9c5f1f0c8cef24366df7015d606758a8100bb4d7875e33f912abe6e4c1e8`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d44f79a867b8828a6e81e7b80a0771b8386d74ab44a60b69dd9c1d4a6ed1f076`  
		Last Modified: Fri, 17 Nov 2017 22:12:35 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717848f4cefe5308aaf4936d634c0bde4e23406fbe32cf9ba61217645bdcc6d3`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87feb5fb9fd99d95d01c1ed12dfad1c72d3114cf533c775c8773993885387bef`  
		Last Modified: Fri, 17 Nov 2017 22:12:34 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f999661d1e0a6fb684415ff115cfb6ee4c305f6432c0ddb261d2395899ded841`  
		Last Modified: Fri, 17 Nov 2017 22:43:04 GMT  
		Size: 2.9 MB (2878072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83789b431c2196632bb1525d0e9da2b688261c956fb1cd7d896a8ac31d61ab30`  
		Last Modified: Fri, 17 Nov 2017 22:43:23 GMT  
		Size: 138.4 MB (138444260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac92bc0e0e3cf48a3afc408d62df07b7f3fd22e1f5c080ed81fc9fd8e7a113d6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 453.4 KB (453417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db5ee8b49b6315c8684b00ac7f915ff599a06ad987f51f23604080d7a05fc1`  
		Last Modified: Fri, 17 Nov 2017 23:25:31 GMT  
		Size: 11.7 MB (11656687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e593386cece5b5a0c66fa41e62f17f72ead66ed4530159a3790870c2d2efe6`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35dc219ebd563510d109919319c3c0b06228c3a16ec1a95d1a69696af23b4378`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 640.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316a66d0fed075c1d308eeaab58e1046999b16086ff88c69d10dc6116a9e00aa`  
		Last Modified: Fri, 17 Nov 2017 23:25:29 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6781909fb3077ade76b7dc229c530812ccc9ede3b7402ab31e488a8e3263d0`  
		Last Modified: Fri, 17 Nov 2017 23:26:32 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b47ee329844ece5543011223599be447643faaad2a2a4c2e73547276a71539`  
		Last Modified: Fri, 17 Nov 2017 23:26:41 GMT  
		Size: 68.7 MB (68674497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile7` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:69b64d83cce8d85b0393662d1f4a21fcecafd63401ee1c9f3fe48732c641173f
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.1 MB (254073783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b4e971fe290ad576502a1b3a7fba040b328a5cf8374a13fcab2e70a898585a`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 17 Nov 2017 22:08:02 GMT
ADD file:0d75a1a112d5c06900f4081c4a778cb5e4a2765b5873a3bf0b379766f6b0e9a0 in / 
# Fri, 17 Nov 2017 22:08:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 17 Nov 2017 22:08:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:08:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 17 Nov 2017 22:08:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 17 Nov 2017 22:08:04 GMT
CMD ["/bin/bash"]
# Fri, 17 Nov 2017 22:25:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 17 Nov 2017 22:25:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:25:57 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Fri, 17 Nov 2017 22:26:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 17 Nov 2017 22:26:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 22:50:46 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 17 Nov 2017 22:50:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 17 Nov 2017 22:50:54 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 17 Nov 2017 22:50:54 GMT
ARG LIBERTY_URL
# Fri, 17 Nov 2017 22:50:55 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 17 Nov 2017 22:50:58 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 17 Nov 2017 22:50:59 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 17 Nov 2017 22:50:59 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 17 Nov 2017 22:51:03 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 17 Nov 2017 22:51:07 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 17 Nov 2017 22:51:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 17 Nov 2017 22:51:12 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 17 Nov 2017 22:51:12 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 17 Nov 2017 22:51:12 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 17 Nov 2017 22:51:21 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 17 Nov 2017 22:53:53 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 17 Nov 2017 22:55:09 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:04bba6f6626b090990bcc7dbbecd1fe7fa001404fa9e2d86b538dea288d27b7e`  
		Last Modified: Fri, 17 Nov 2017 22:09:37 GMT  
		Size: 46.4 MB (46420553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb360dc7c011c7c5bdff218629c9f72e12ded36e76ebdfd506a03257e74f9c2d`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937301f048fa82e96871e32d3654b18b0cc883c421107927d29dd79549fa761`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d560dd7c61a1c77dbb4205d1df9c45479ff6bd1cf61d50d098a09122a45ea5d1`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dcf3356243fb4ea3ce6793fb4ff924805a7fb5c3a88204de30042868765e50`  
		Last Modified: Fri, 17 Nov 2017 22:09:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67927f5e6f9b7d56b02bc875b79f5c1431aaaa1b5a5dc1e5cfeec13d468f382`  
		Last Modified: Fri, 17 Nov 2017 22:33:05 GMT  
		Size: 2.8 MB (2765446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9bb1f84525c9d9b9d26a6908c4d12a28f131fbec137e735e6bada5c9d503c1a`  
		Last Modified: Fri, 17 Nov 2017 22:33:17 GMT  
		Size: 124.1 MB (124136143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abba1da55f5d705c29f54f1c7bb0073338551d75fc3264ade4f21c7ea2bb124`  
		Last Modified: Fri, 17 Nov 2017 22:57:06 GMT  
		Size: 427.8 KB (427835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369563baa8ed137fe382bd8f81eea4a03d71a837afa948d03fc893edcfc6ed59`  
		Last Modified: Fri, 17 Nov 2017 22:57:07 GMT  
		Size: 11.7 MB (11656677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7586b2c72ea4a6567468ffc4a1fe5547088a0015068ba0c78f4b318fed965cd5`  
		Last Modified: Fri, 17 Nov 2017 22:57:06 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2318d01f9d9146c547eb4aba0e7d55d829e3fd0f5636445db1aaf8a7c973ac20`  
		Last Modified: Fri, 17 Nov 2017 22:57:06 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5784ed7ae47d15c42a8f53b429c9ae3fb0c115baa3918618344a1ef70c871e40`  
		Last Modified: Fri, 17 Nov 2017 22:57:05 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9720f885066db0023a4f620bed453b5ec7b75f3e9545085ec3ca511a8ac2b12`  
		Last Modified: Fri, 17 Nov 2017 22:57:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248704d693c896dde592b8408166fa1fe28cd101aed61472c3072fc3303448ce`  
		Last Modified: Fri, 17 Nov 2017 22:57:54 GMT  
		Size: 68.7 MB (68662454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
