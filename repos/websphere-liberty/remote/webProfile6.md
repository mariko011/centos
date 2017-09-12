## `websphere-liberty:webProfile6`

```console
$ docker pull websphere-liberty@sha256:7cd82d15ce61fd5183328d30c14df729192d5da76d90c69ec41b7f75cc395f79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:webProfile6` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:98d3beed6a35323a0479aa0e7e217173fb6f4c9e05a9d56e513682cc40d8cdb9
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.0 MB (228029714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b86880041211138df9e99125ae5e30e1e3ed9b9b3ef6c923627e8935ad9dbc1`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

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
# Thu, 10 Aug 2017 23:12:59 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 10 Aug 2017 23:13:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 16:55:52 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Thu, 07 Sep 2017 16:56:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b8205bd5700813ef17141a0a7b476846842d86f2b0a7a5fd5176c1edd5dcbe1c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='da06a3df4c7ac7e29d9c92f8217e3dc1446c3b76194a99ab3dfb57dd3bcc55cf';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='28b3d31b7b9c13dfbd852b11ea06e6a7bf001baa18a68d0869788234dab3dc44';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8e817b4b1950415636b77c00b14795ec9b87d5c225c4897e05c378f6e45615a1';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='a14607e866f08ea19f8a5b571464968a12907369dc68f283c8e0bf1771ffb6ff';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 07 Sep 2017 16:56:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 18:36:35 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 07 Sep 2017 18:36:41 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 18:36:43 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Thu, 07 Sep 2017 18:36:44 GMT
ARG LIBERTY_URL
# Thu, 07 Sep 2017 18:36:44 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 07 Sep 2017 18:36:54 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 07 Sep 2017 18:36:56 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 18:36:57 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 07 Sep 2017 18:36:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 07 Sep 2017 18:36:58 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 07 Sep 2017 18:36:59 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Thu, 07 Sep 2017 18:37:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 07 Sep 2017 18:37:04 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 07 Sep 2017 18:37:09 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 07 Sep 2017 18:37:42 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Thu, 07 Sep 2017 18:38:21 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:155fe9cd61245b4429c43c2e43f3997b94db345c9ca41bb54f6c34a4939a77ee`  
		Last Modified: Thu, 10 Aug 2017 23:19:56 GMT  
		Size: 3.1 MB (3070301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf6b7dab19c35bcc21ad5816124aa13bc6eaf372035b5c189a9e85ba14b9ae9`  
		Last Modified: Thu, 07 Sep 2017 17:04:25 GMT  
		Size: 110.9 MB (110872121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7450573d85475542472816186f3292445ab0f305cb769037e17590944159688b`  
		Last Modified: Thu, 07 Sep 2017 18:40:24 GMT  
		Size: 269.8 KB (269842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110cdcc6b96e6fe1be97edad43e9b9660032d4f72d6b1e753ff52beefb5a433`  
		Last Modified: Thu, 07 Sep 2017 18:40:25 GMT  
		Size: 11.5 MB (11515381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86dd7336dd6af5af87a53d5d1e6328a6b386cb91de2ceffe1e05e2d6a24b6997`  
		Last Modified: Thu, 07 Sep 2017 18:40:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41f2cb12a6572b72b007313e93874c10552e297d54a86e875f22fbd6d6ec7245`  
		Last Modified: Thu, 07 Sep 2017 18:40:24 GMT  
		Size: 583.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:388270a7ef33af7980b2e79d2347992a24778079928d9c3b24554735a86f3675`  
		Last Modified: Thu, 07 Sep 2017 18:40:24 GMT  
		Size: 464.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a0b407b49784254f5b34b15dd60b85135fa3045034210b06feb8a9d5ad8db6`  
		Last Modified: Thu, 07 Sep 2017 18:40:56 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a49e259b284cd19cc9caa677d1800e42cc055c4751bc3dbc29289a80263745`  
		Last Modified: Thu, 07 Sep 2017 18:41:05 GMT  
		Size: 55.0 MB (55039264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; 386

```console
$ docker pull websphere-liberty@sha256:3d1b9df81572aadab5ba584fb9368c75a88f945fd7d4534a0479e4c293f4de35
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.2 MB (216169616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0305ab206e088dda4b366004c454426716b4fd698511bbc24b60b05f964561e6`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 11 Aug 2017 03:34:46 GMT
ADD file:36463abfbe0384b162416921470ec5307766fb081baf05d633ca8a1dbeded473 in / 
# Fri, 11 Aug 2017 03:34:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 03:34:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 03:34:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 03:34:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 03:34:49 GMT
CMD ["/bin/bash"]
# Thu, 07 Sep 2017 16:58:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Sep 2017 16:58:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 16:58:16 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Thu, 07 Sep 2017 16:58:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b8205bd5700813ef17141a0a7b476846842d86f2b0a7a5fd5176c1edd5dcbe1c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='da06a3df4c7ac7e29d9c92f8217e3dc1446c3b76194a99ab3dfb57dd3bcc55cf';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='28b3d31b7b9c13dfbd852b11ea06e6a7bf001baa18a68d0869788234dab3dc44';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8e817b4b1950415636b77c00b14795ec9b87d5c225c4897e05c378f6e45615a1';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='a14607e866f08ea19f8a5b571464968a12907369dc68f283c8e0bf1771ffb6ff';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 07 Sep 2017 16:58:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 22:53:21 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Mon, 11 Sep 2017 22:53:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 22:53:30 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Mon, 11 Sep 2017 22:53:30 GMT
ARG LIBERTY_URL
# Mon, 11 Sep 2017 22:53:31 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 11 Sep 2017 22:53:34 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Mon, 11 Sep 2017 22:53:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 22:53:34 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 11 Sep 2017 22:53:35 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 11 Sep 2017 22:53:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 11 Sep 2017 22:53:39 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Mon, 11 Sep 2017 22:53:39 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 11 Sep 2017 22:53:39 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Mon, 11 Sep 2017 22:53:42 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 11 Sep 2017 22:54:09 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Mon, 11 Sep 2017 22:54:46 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:386cf91244766a15867d7c4d5145a74812938e2870ec5cf26f0adaea9965b921`  
		Last Modified: Mon, 07 Aug 2017 14:40:47 GMT  
		Size: 47.6 MB (47564734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd05fe57b1dd5621709bbd7242f7d2fb06be680434764e95aa414393d8d70bd5`  
		Last Modified: Fri, 11 Aug 2017 03:35:55 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c27aeef149b035f5b7c003a8c67826570b1399fb46a802d9550613b075b17`  
		Last Modified: Fri, 11 Aug 2017 03:35:56 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900fca59e30903ebb5b4071fbc78182b6684957890eb1d5d38404d4188175ac8`  
		Last Modified: Fri, 11 Aug 2017 03:35:55 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c0ed06b6c5db10ec1ae1fe56ac96358b863c5556df005d6d684b3d60e8b497`  
		Last Modified: Fri, 11 Aug 2017 03:35:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efda194262de197fd778e7b01b166154146f97fb216b66e2393f79dade93d663`  
		Last Modified: Thu, 07 Sep 2017 17:03:44 GMT  
		Size: 2.9 MB (2923011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f636b67f4c83e939075ba489cd823d330091701464bf50fd1a35ac87641901`  
		Last Modified: Thu, 07 Sep 2017 17:03:52 GMT  
		Size: 98.7 MB (98702227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492802c1da71a7cb3b0c156e917aeb66e82e51608d1ee9f24bac0feb1ed3d741`  
		Last Modified: Mon, 11 Sep 2017 22:56:33 GMT  
		Size: 420.8 KB (420803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0770f038dd2d174e4dc03b2edb7d8ac92724bc49431350c359d0e6be3298d1f`  
		Last Modified: Mon, 11 Sep 2017 22:56:34 GMT  
		Size: 11.5 MB (11515395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374b0f6d7d402f9815175d52c645ab0f05a188a22869eac0cb9197949e6ffbb1`  
		Last Modified: Mon, 11 Sep 2017 22:56:33 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102e35ad7b58a5efcea2445081b53687aa1f0147b40dc460485615d2a616ade4`  
		Last Modified: Mon, 11 Sep 2017 22:56:33 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa8e09a9f496fb4a9138b02583bad3ecd591eef3aa49d731a6acb15803e6a14`  
		Last Modified: Mon, 11 Sep 2017 22:56:33 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f150828d284132629dc9bd74ce9d1a9da4b4868db0d9d657a095f008af5b50`  
		Last Modified: Mon, 11 Sep 2017 22:56:54 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5306ff7e92aa9a81131cedda634ef4bfbc2d372e2543de55181f855797f6bd28`  
		Last Modified: Mon, 11 Sep 2017 22:56:58 GMT  
		Size: 55.0 MB (55039258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:9c8fa2e30239125bbbdeb09443f308044541a0f24a2165aa19ebf691769da25c
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237292541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3ddd8dbc708659eec189fbb5f9c347761fd0b11e389b2926c6e300c69f8ab9b`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 11 Aug 2017 02:39:59 GMT
ADD file:1287f33c367cf2144010bcdb255fdaa9d4f565f52b7e5636dd76a06ed7adb919 in / 
# Fri, 11 Aug 2017 02:40:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 02:40:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 02:40:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 02:40:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 02:40:06 GMT
CMD ["/bin/bash"]
# Thu, 07 Sep 2017 16:47:00 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Sep 2017 16:47:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 16:47:38 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Thu, 07 Sep 2017 16:49:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b8205bd5700813ef17141a0a7b476846842d86f2b0a7a5fd5176c1edd5dcbe1c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='da06a3df4c7ac7e29d9c92f8217e3dc1446c3b76194a99ab3dfb57dd3bcc55cf';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='28b3d31b7b9c13dfbd852b11ea06e6a7bf001baa18a68d0869788234dab3dc44';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8e817b4b1950415636b77c00b14795ec9b87d5c225c4897e05c378f6e45615a1';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='a14607e866f08ea19f8a5b571464968a12907369dc68f283c8e0bf1771ffb6ff';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 07 Sep 2017 16:49:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 21:59:21 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 07 Sep 2017 21:59:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 21:59:35 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Thu, 07 Sep 2017 21:59:35 GMT
ARG LIBERTY_URL
# Thu, 07 Sep 2017 21:59:35 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 07 Sep 2017 21:59:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 07 Sep 2017 21:59:44 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 21:59:45 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 07 Sep 2017 21:59:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 07 Sep 2017 21:59:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 07 Sep 2017 21:59:46 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Thu, 07 Sep 2017 21:59:46 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 07 Sep 2017 21:59:47 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 07 Sep 2017 21:59:53 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 07 Sep 2017 22:00:42 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Thu, 07 Sep 2017 22:02:01 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:0ad9ca03f1b2a7f12f5daadfdacaf6d12378930b9f2bc604e5ffc52f73b3a763`  
		Last Modified: Fri, 11 Aug 2017 02:41:39 GMT  
		Size: 49.4 MB (49376565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d2491df949431479c35e36dc67ee18250a9e033cb90681c34a86b498cb8dca6`  
		Last Modified: Fri, 11 Aug 2017 02:41:25 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a961cbb08c01b1964d6458776e7c7a232a14358cb316c0de0fa0cd8411aec7b`  
		Last Modified: Fri, 11 Aug 2017 02:41:25 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f38c9e24bdd039bd98512bebc0aac6efb2cbdf0d0ef5a1733b483ced8fa32a9`  
		Last Modified: Fri, 11 Aug 2017 02:41:25 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36070ab6f935db2945692670fe2cbb715c92831b753dffdb47c203af50180ba3`  
		Last Modified: Fri, 11 Aug 2017 02:41:25 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44e9115c67572105f67c3828adf511a745acd128f4293dc1a25fb42d907204d`  
		Last Modified: Thu, 07 Sep 2017 16:59:57 GMT  
		Size: 2.9 MB (2925103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19364f87895fa38cfc0efdc614b1b6ec2cfdbcf00facd7a9fd90ed0dc90c601`  
		Last Modified: Thu, 07 Sep 2017 17:00:13 GMT  
		Size: 118.0 MB (117971867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a77ae6898e7a27c9af709c2ae31754337eb1963262ec92944583172c95618c1c`  
		Last Modified: Mon, 11 Sep 2017 22:50:30 GMT  
		Size: 453.1 KB (453070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90c5616192dbb8c6f1468a51e4394c7dbcb61a83d407baac2828b6a21da7bd9`  
		Last Modified: Mon, 11 Sep 2017 22:50:32 GMT  
		Size: 11.5 MB (11515463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9973637ca07f4636552c92d14bf3fecbf9cad8c8cee1bf0315a96bc2f8a7310`  
		Last Modified: Mon, 11 Sep 2017 22:50:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad857b7605519b9b00e122e568faa9907931199bd7674b866f09854ee0a305b`  
		Last Modified: Mon, 11 Sep 2017 22:50:30 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10270a43a373a0f4c19e122a1da6777ca648b9ef4e00ef1cb879d57e59271647`  
		Last Modified: Mon, 11 Sep 2017 22:50:30 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48187e46bf193b691302cf15a18bd4a50c90b13f3adedeab7836069f1c9e7021`  
		Last Modified: Mon, 11 Sep 2017 22:51:00 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b643215b422d2b2bc138c38adff8ec1c13a7357ca04ecf57fc700b7603c9c77`  
		Last Modified: Mon, 11 Sep 2017 22:51:08 GMT  
		Size: 55.0 MB (55046128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:webProfile6` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:8027c0683f739f3557d086e9a669b4047ea15a33ca9257cf5d8c410511f58040
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227552405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97ecc3c7e46b4438e1ab7a48f0c5ccb91716f53cc42e4cb65870b651aa06e9a`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 11 Aug 2017 13:15:30 GMT
ADD file:cec23aa004485764d66fea0ea06bc3512403ad85f2a2004c90355e814f6a972d in / 
# Fri, 11 Aug 2017 13:15:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 11 Aug 2017 13:15:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 11 Aug 2017 13:15:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 11 Aug 2017 13:15:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 11 Aug 2017 13:15:33 GMT
CMD ["/bin/bash"]
# Thu, 07 Sep 2017 16:47:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Sep 2017 16:47:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 16:47:14 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Thu, 07 Sep 2017 16:48:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b8205bd5700813ef17141a0a7b476846842d86f2b0a7a5fd5176c1edd5dcbe1c';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='da06a3df4c7ac7e29d9c92f8217e3dc1446c3b76194a99ab3dfb57dd3bcc55cf';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='28b3d31b7b9c13dfbd852b11ea06e6a7bf001baa18a68d0869788234dab3dc44';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8e817b4b1950415636b77c00b14795ec9b87d5c225c4897e05c378f6e45615a1';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='a14607e866f08ea19f8a5b571464968a12907369dc68f283c8e0bf1771ffb6ff';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 07 Sep 2017 16:48:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 21:47:51 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 07 Sep 2017 21:48:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 21:48:05 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Thu, 07 Sep 2017 21:48:05 GMT
ARG LIBERTY_URL
# Thu, 07 Sep 2017 21:48:05 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 07 Sep 2017 21:48:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 07 Sep 2017 21:48:17 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 21:48:17 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 07 Sep 2017 21:48:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 07 Sep 2017 21:48:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 07 Sep 2017 21:48:19 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Thu, 07 Sep 2017 21:48:19 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 07 Sep 2017 21:48:19 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 07 Sep 2017 21:48:26 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 07 Sep 2017 21:49:26 GMT
COPY file:88c06b07fb79e4006fd1fb7042780d25c5940fd4da63eb5d18144d89ae77aa37 in /config/ 
# Thu, 07 Sep 2017 21:51:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense     collectiveMember-1.0 monitor-1.0 webCache-1.0 ldapRegistry-3.0 appSecurity-2.0 localConnector-1.0 restConnector-1.0 ssl-1.0 sessionDatabase-1.0     appSecurity-1.0 blueprint-1.0 concurrent-1.0 oauth-2.0 osgiConsole-1.0 serverStatus-1.0 wab-1.0 timedOperations-1.0     webProfile-6.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:c58ca33e0c246871d07f22fecd3fe2b3fccd6176c69d03dc3e7ccfeb4ad51173`  
		Last Modified: Fri, 11 Aug 2017 13:16:02 GMT  
		Size: 46.1 MB (46067253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3fd4e627556d1102bbe48fd34cbbb4aaee8fe726133cc81e0045cfb7a9b722`  
		Last Modified: Fri, 11 Aug 2017 13:15:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7fa8f00fe2e7e69d9f4182cb28fdc934581a9d653d7f3bd9b8e9ec3548474a`  
		Last Modified: Fri, 11 Aug 2017 13:15:54 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1618266695ce48a7ff8ae992c8bc490e2b327d2475417bba860461d52961d810`  
		Last Modified: Fri, 11 Aug 2017 13:15:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c037ccce0cbbbb5a51347a125b519fb0dd842d976543be03c1edef564f9a3a9`  
		Last Modified: Fri, 11 Aug 2017 13:15:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3f4a21f2a7a44e4c9655e5b31ddb3eb79305eec38fba001102a56239334f6a`  
		Last Modified: Thu, 07 Sep 2017 17:04:37 GMT  
		Size: 2.8 MB (2809939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b1799dd456fa5925ea57b3edd686e2e21b4d79aa05f909079f4076f94ac054`  
		Last Modified: Thu, 07 Sep 2017 17:04:50 GMT  
		Size: 111.7 MB (111688245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d9ba5736f86ecda686367a680e8edbb93eaada7bd737e3a77e4a4063b225950`  
		Last Modified: Mon, 11 Sep 2017 22:50:25 GMT  
		Size: 427.5 KB (427541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af309917286f109b8304bf1f46555b74094aed7497cb28a402de7c0952603a68`  
		Last Modified: Mon, 11 Sep 2017 22:50:26 GMT  
		Size: 11.5 MB (11515397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff84ee2631f76fbb4fed80c9172d5683f019407afcc8965d47b26a1db6409c34`  
		Last Modified: Mon, 11 Sep 2017 22:50:25 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db35164e51c87122d63fc728bcb7184521d03dd045acfda19c71bbbb09c65156`  
		Last Modified: Mon, 11 Sep 2017 22:50:25 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bef0a03e230d06b45157b850482f72e6b165af47a4e8259f7a6310c2b5230ce`  
		Last Modified: Mon, 11 Sep 2017 22:50:24 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d394293c1312a54f3bd90ab1e95528b71b9eddcfa035e9ae7624e4de4135cdb2`  
		Last Modified: Mon, 11 Sep 2017 22:50:39 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b52d7bd85358936b0f9fba87030a8a9a28099276a6a4db488975ff9b657a782`  
		Last Modified: Mon, 11 Sep 2017 22:50:45 GMT  
		Size: 55.0 MB (55039825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
