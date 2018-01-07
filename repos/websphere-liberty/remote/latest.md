## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:557a36526151f8388fed79ff753dd38f26df2d6ee208e8eb6fcc3c72d90e8c7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:681cbbbe551430a3fb297072467f77df2f8afa15677e2c800a332ac8f44d3258
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.5 MB (275492910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55609fb2492533df959a12b5443c172ced3d3cd9156f538199b7d4a89f99abd`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Thu, 14 Dec 2017 20:59:45 GMT
ADD file:f5a2d04c3f3cafada15eb32e4e8d971e48ef11724939c399a8664bf498111e67 in / 
# Thu, 14 Dec 2017 20:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 14 Dec 2017 20:59:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 14 Dec 2017 20:59:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 14 Dec 2017 20:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 14 Dec 2017 20:59:48 GMT
CMD ["/bin/bash"]
# Thu, 14 Dec 2017 21:53:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 14 Dec 2017 21:53:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Wed, 20 Dec 2017 17:45:34 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 20 Dec 2017 17:46:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 20 Dec 2017 17:46:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Dec 2017 18:28:45 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Wed, 20 Dec 2017 18:28:54 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 19:02:32 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Thu, 21 Dec 2017 19:02:32 GMT
ARG LIBERTY_URL
# Thu, 21 Dec 2017 19:02:33 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 21 Dec 2017 19:02:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 21 Dec 2017 19:02:37 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Dec 2017 19:02:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Thu, 21 Dec 2017 19:02:37 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 21 Dec 2017 19:02:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 21 Dec 2017 19:02:41 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 21 Dec 2017 19:02:41 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Thu, 21 Dec 2017 19:02:41 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 21 Dec 2017 19:02:41 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Thu, 21 Dec 2017 19:02:51 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 21 Dec 2017 19:04:33 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Thu, 21 Dec 2017 19:05:20 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Thu, 21 Dec 2017 19:05:29 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Thu, 21 Dec 2017 19:05:29 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 21 Dec 2017 19:05:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:50aff78429b146489e8a6cb9334d93a6d81d5de2edc4fbf5e2d4d9253625753e`  
		Last Modified: Sun, 03 Dec 2017 11:19:40 GMT  
		Size: 42.7 MB (42743207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6d82e297bce031a3de1fa8c1587535e34579abce09a61e37f5a225a8667422f`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:275abb2c8a6f1ce8e67a388a11f3cc014e98b36ff993a6ed1cc7cd6ecb4dd61b`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f15a39356d6fc1df0a77012bf1aa2150b683e46be39d1c51bc7a320f913e322`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0342a94c89e477c821328ccb542e6fb86ce4ef4ebbf1098e85669e051ef0dd`  
		Last Modified: Thu, 14 Dec 2017 21:01:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d523a11d2e4b94f1037f230c7a6766d7e6edf07bba2b2e2a801253adf579ba1`  
		Last Modified: Thu, 14 Dec 2017 22:00:49 GMT  
		Size: 3.0 MB (3020983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a19102e4dc978c1e8a30d83c3bd54fc5f75927859edf2efb1d211e2169d900`  
		Last Modified: Wed, 20 Dec 2017 18:06:49 GMT  
		Size: 124.6 MB (124580649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4f48900fb2e80a46fc53b90c3c91519fabb5aa07defbfca18eef302fac2d4a7`  
		Last Modified: Wed, 20 Dec 2017 18:35:32 GMT  
		Size: 422.2 KB (422192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1f8d1e8d429ae36ddaeb9aa2d3099bedfe8d3cf8cbbeff6b5774e611e85193`  
		Last Modified: Thu, 21 Dec 2017 19:06:24 GMT  
		Size: 11.9 MB (11854912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953753bc0ee39b3cd2909f04c2d6cfd41f7d2c17efa217335f7e338b8f0c29a5`  
		Last Modified: Thu, 21 Dec 2017 19:06:23 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67774ee876f52997610f0784cf7e9d25b498c37c651d8716354db20b31203421`  
		Last Modified: Thu, 21 Dec 2017 19:06:23 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34216c6bf87ca0a92ef90721b500003dcc05c07bb5c6ce170a9b83859b4bc48`  
		Last Modified: Thu, 21 Dec 2017 19:06:23 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51817fe41f892441a271d6936cd78ca821bcae65a5ca1772cfe8d83f2e690f92`  
		Last Modified: Thu, 21 Dec 2017 19:07:18 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10a4078a5cab19018c41b17bf6b1eb132bf4d9e91c3fa9b238db937da2a5091`  
		Last Modified: Thu, 21 Dec 2017 19:07:23 GMT  
		Size: 64.8 MB (64844412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4886212cbcb8b356e2e774fcc8aaaa2d718e7ac7d336c835755a3c89c98efc4f`  
		Last Modified: Thu, 21 Dec 2017 19:07:38 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e639455379af3e45639f1d4c05a4693529cb4564cb2a1bc8dac4037b04edbfb2`  
		Last Modified: Thu, 21 Dec 2017 19:07:41 GMT  
		Size: 28.0 MB (28020943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; 386

```console
$ docker pull websphere-liberty@sha256:f64bd3e9e54f8f2ec7ed639e50516a101906872986286f893b492d6f1d077244
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.5 MB (264466071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a136ae85972d6ecb0aae2fd22c783abb8d8a03f498b23df9518cbb3063913b77`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 15 Dec 2017 04:49:36 GMT
ADD file:db6281c0035641aa2735fb58b607c51543c5d7c489f464561d4735774b0d8ca7 in / 
# Fri, 15 Dec 2017 04:49:37 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 04:49:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 04:49:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 04:49:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 04:49:39 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 05:16:35 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 05:16:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 17:12:43 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 17:13:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 17:15:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Dec 2017 18:00:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 21 Dec 2017 18:00:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 17:00:34 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Fri, 22 Dec 2017 17:00:34 GMT
ARG LIBERTY_URL
# Fri, 22 Dec 2017 17:00:34 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 22 Dec 2017 17:00:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 22 Dec 2017 17:00:39 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 22 Dec 2017 17:00:39 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Fri, 22 Dec 2017 17:00:39 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 22 Dec 2017 17:00:40 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 22 Dec 2017 17:00:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 22 Dec 2017 17:00:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 22 Dec 2017 17:00:46 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 22 Dec 2017 17:00:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 22 Dec 2017 17:00:59 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 22 Dec 2017 17:02:50 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 22 Dec 2017 17:03:39 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 22 Dec 2017 17:04:56 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 22 Dec 2017 17:04:57 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 22 Dec 2017 17:05:27 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:aef6d0613937d52d60f194bc25f0ac7e33110ffe2240d0da27f0ca61e29312d4`  
		Last Modified: Fri, 15 Dec 2017 04:57:51 GMT  
		Size: 43.1 MB (43097644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83de9eba49f17ed49396ef3339ee48947df3f6a970585c7ee9aae96406e8ea89`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9087439057e1695a8ce4cd54750e754c9681383dc3afb06a11f59987fcba7f80`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d36c0ac9f9f11a3ae5dbd35a2b9d9c319f3a97fe6300fb377e3f77ee896746`  
		Last Modified: Fri, 15 Dec 2017 04:57:39 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e991b5792ff6c2f669fc3211eaa3ed9cc1f936ad1c2741182fd8b60ee81fe158`  
		Last Modified: Fri, 15 Dec 2017 04:57:38 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e6b7878d4483aec967fa598fe350c7960f5e143008cd2f9a5595dab4ef91837`  
		Last Modified: Fri, 15 Dec 2017 05:48:28 GMT  
		Size: 2.9 MB (2877127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f420fef0ad95a18cb70012da8370da912c3e95cf64983e926d1e9f8ba32400c`  
		Last Modified: Thu, 21 Dec 2017 17:33:30 GMT  
		Size: 113.3 MB (113344255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b8a03e45b154cdd3e8a612bb1ac3caca655b34f89f2b500ee3da818dbe7666`  
		Last Modified: Thu, 21 Dec 2017 18:34:16 GMT  
		Size: 421.2 KB (421212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fc5a3d945da494d6d5b916477694f93b5d1459072e91009904472fe54c695c`  
		Last Modified: Fri, 22 Dec 2017 17:06:05 GMT  
		Size: 11.9 MB (11854906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c50d736082e671ebb95ac4467ae6d373ccc22bd2f007b9272930ac7aed05758e`  
		Last Modified: Fri, 22 Dec 2017 17:06:03 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa18e049d5625ba40e77a91bc8e6f634f24d30009f35f43e515e77581f54d92d`  
		Last Modified: Fri, 22 Dec 2017 17:06:03 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:252bf9b3c2461f5a0814f36269bc6e9aec8e2ce62509d57ba14e440ed17a695b`  
		Last Modified: Fri, 22 Dec 2017 17:06:03 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b0971b2564c9580fc63f8a9612da09cb7e3b00f1399856511fbd729a018b89`  
		Last Modified: Fri, 22 Dec 2017 17:07:34 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4a7c83bca8ddc6e10c7d39b4136ab4a823c11dcc245760281b5ab4ba4d7fdf`  
		Last Modified: Fri, 22 Dec 2017 17:07:41 GMT  
		Size: 64.8 MB (64844397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0acf8c86df2f0c70aa592c617184476e69cdc6fb44a2ac23ed977fb71688853d`  
		Last Modified: Fri, 22 Dec 2017 17:08:01 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f74bbba7d7be5b30e6d2246f69a55fa17bbb25d6c22ddec74ead853781c162af`  
		Last Modified: Fri, 22 Dec 2017 17:08:04 GMT  
		Size: 28.0 MB (28020950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:d1ca52f1c059c89efed64477ff1e6538d1acec7c7f5c9ae35d34d47d622e5f0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.4 MB (291444171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f74bdf178b79ac9aff42d76cd44a2d513fd983fe0baca51c830683a0e291aace`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Fri, 15 Dec 2017 03:41:58 GMT
ADD file:d36796d61133bdf450effb63948c6fb33d8ef17a91b33113fadfdd210a29d225 in / 
# Fri, 15 Dec 2017 03:42:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 15 Dec 2017 03:42:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 03:42:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 15 Dec 2017 03:42:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 15 Dec 2017 03:42:20 GMT
CMD ["/bin/bash"]
# Fri, 15 Dec 2017 04:01:13 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 15 Dec 2017 04:01:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Thu, 21 Dec 2017 16:23:18 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Thu, 21 Dec 2017 16:25:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Thu, 21 Dec 2017 16:25:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Dec 2017 16:47:11 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Thu, 21 Dec 2017 16:47:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 22 Dec 2017 06:29:19 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Fri, 22 Dec 2017 06:29:21 GMT
ARG LIBERTY_URL
# Fri, 22 Dec 2017 06:29:22 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 22 Dec 2017 06:29:32 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 22 Dec 2017 06:29:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 22 Dec 2017 06:29:35 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Fri, 22 Dec 2017 06:29:36 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 22 Dec 2017 06:29:39 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 22 Dec 2017 06:29:42 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 22 Dec 2017 06:29:43 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 22 Dec 2017 06:29:44 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 22 Dec 2017 06:29:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Fri, 22 Dec 2017 06:29:56 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 22 Dec 2017 06:33:06 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Fri, 22 Dec 2017 06:35:10 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Fri, 22 Dec 2017 06:35:18 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Fri, 22 Dec 2017 06:35:20 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 22 Dec 2017 06:36:22 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:586a07d977d9891f197122f365df967649e26ee09657cb0824e7245080ebf62d`  
		Last Modified: Fri, 15 Dec 2017 03:44:27 GMT  
		Size: 45.2 MB (45208592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf911559ec0ea1563afc47ba82a8c1b83545bae3749f9958ee937748a7fc99c`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48999c060756be3aa70909a36813a48ab5661a4ca3b7563f76fe78913f5a9f88`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 646.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5e5494889f3c21fd44b4939663dbede3397e8ec024fd280d15cd4ca8b19796`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd4f80d03d3a8858dff9c2464ff8ad31b15f8097b10833d3066d4256771c625`  
		Last Modified: Fri, 15 Dec 2017 03:44:15 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ac2d58c37076040ee62ec5ea5b04c7262f59e28bbe6d1dcc3570407427c45`  
		Last Modified: Fri, 15 Dec 2017 04:19:04 GMT  
		Size: 2.9 MB (2878165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d752490eaa0f3f3c8936febd30fc264b74ba69fbe720a93a55f5f9e5541113e`  
		Last Modified: Thu, 21 Dec 2017 16:30:23 GMT  
		Size: 138.2 MB (138167532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3009eb5997d5bb2cd43f9afef60cf17337538c64edc69fa19c8c7e762efb0a0`  
		Last Modified: Thu, 21 Dec 2017 16:59:41 GMT  
		Size: 453.5 KB (453543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79eefa468e4da66d238d3d452b2129a38f75b0bea76aa626c1c1006bc3c50a27`  
		Last Modified: Fri, 22 Dec 2017 06:36:39 GMT  
		Size: 11.9 MB (11854908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f43e416bf646e83b99824cc0640a7f1696851ad1d6d9113cd20fd576b7fd6b1`  
		Last Modified: Fri, 22 Dec 2017 06:36:38 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a4cda414478cd9ae9b0172f07b9dd8e0bd0990ebab9ad87968290865a2e40a6`  
		Last Modified: Fri, 22 Dec 2017 06:36:37 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfb45a428338b744d25d5c48d4f198d81e7d67ccbbc67d2a1715da661ad2205`  
		Last Modified: Fri, 22 Dec 2017 06:36:38 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07afcaf1be16170a39717ffc7bf844fcde53f9e814ade9f9a5c773b0349c583`  
		Last Modified: Fri, 22 Dec 2017 06:37:22 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aa1414d14c5e66238c1370a061a8c5b0564e8c13c8bea53cd6015f217aeb581`  
		Last Modified: Fri, 22 Dec 2017 06:37:30 GMT  
		Size: 64.9 MB (64851273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c3aa5530598f1b2e343fc8b1576d0ba5948cbae25a1d95330a6a0bead0a5c03`  
		Last Modified: Fri, 22 Dec 2017 06:37:41 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1feb6e484e9495b76e4507cfc285689271fc987400b1e118dcd44ed9a86b34f`  
		Last Modified: Fri, 22 Dec 2017 06:37:44 GMT  
		Size: 28.0 MB (28024420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:ea5fdf6a1ecf46314d9da4b08670c83ce058c7124c7502c3bad23fc6019fe8ae
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278150001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53621fd4aa86767fc0a9fdb9492b847e3ece15c116c5fc47f6d5800f68742c12`
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
# Tue, 05 Dec 2017 11:42:38 GMT
ENV JAVA_VERSION=1.8.0_sr5fp6
# Tue, 05 Dec 2017 11:43:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b6ccb3db145f0b31e92a9621c81e6247704852daa6fbabc72ac4a36dd5f5df24';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='053ec23dca6a3cb98ca4128aa726ac7e8b06c9aed330a38dafa6817732451f6f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='26a7d65089f4a9cdbdcd93318a1c28017e9ef15bf66228e9984aa9fed5efb53e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0f806c5e2c04fc5fea7f815885db05530744616e2a5bafc2fecbd617350f325f';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7da8158760e2ce87cc258e8a69dfc08c86e4276cf798f47745d134a05732cc32';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 05 Dec 2017 11:43:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Dec 2017 12:03:52 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 05 Dec 2017 12:04:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:13:39 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Sun, 07 Jan 2018 06:13:39 GMT
ARG LIBERTY_URL
# Sun, 07 Jan 2018 06:13:39 GMT
ARG DOWNLOAD_OPTIONS=
# Sun, 07 Jan 2018 06:13:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sun, 07 Jan 2018 06:13:43 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 06:13:44 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Sun, 07 Jan 2018 06:13:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sun, 07 Jan 2018 06:13:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sun, 07 Jan 2018 06:13:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sun, 07 Jan 2018 06:13:46 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sun, 07 Jan 2018 06:13:46 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 07 Jan 2018 06:13:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Sun, 07 Jan 2018 06:13:58 GMT
ARG REPOSITORIES_PROPERTIES=
# Sun, 07 Jan 2018 06:15:46 GMT
COPY file:8a7d2385caf8e280c085cfcfad69edf89d8b4815d0f898897aa5053f0081bf61 in /config/ 
# Sun, 07 Jan 2018 06:16:45 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense     appSecurity-2.0 bluemixUtility-1.0 collectiveMember-1.0 ldapRegistry-3.0     localConnector-1.0 microProfile-1.0 monitor-1.0 restConnector-1.0     requestTiming-1.0 restConnector-2.0 sessionDatabase-1.0 ssl-1.0 transportSecurity-1.0     webCache-1.0 webProfile-7.0   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs
# Sun, 07 Jan 2018 06:16:56 GMT
COPY file:a6a1a88d3f0473f85596df9cf7599a22f32111deb67c95183a9a45b654d347eb in /config/ 
# Sun, 07 Jan 2018 06:16:56 GMT
ARG REPOSITORIES_PROPERTIES=
# Sun, 07 Jan 2018 06:17:30 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense appSecurityClient-1.0 javaee-7.0 javaeeClient-7.0     && if [ ! -z $REPOSITORIES_PROPERTIES ] ; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
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
	-	`sha256:3961624e27d8f19d4d856e47f0423ea5b21cd42c29379b7a41bca44df785bdd9`  
		Last Modified: Tue, 05 Dec 2017 11:46:19 GMT  
		Size: 123.8 MB (123809992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299e72fd5a2071df807afc0e21a77774cc6c8a42eecfd78ad4a34237d1fb89a2`  
		Last Modified: Tue, 05 Dec 2017 12:11:01 GMT  
		Size: 427.9 KB (427872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728ffa8a22e511cd934025df5bb107de6f6ccb8bdd27b3942c48cd7371170445`  
		Last Modified: Sun, 07 Jan 2018 06:18:13 GMT  
		Size: 11.9 MB (11854893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaf9f68301f89b0b6a5f52ad676166efda2ad1802ea561832f4489cdc316e84`  
		Last Modified: Sun, 07 Jan 2018 06:18:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f809dd8f8d38de924d860c50e03cf95c6fb8b7c3bfb654bfa5aa63d5a159477`  
		Last Modified: Sun, 07 Jan 2018 06:18:11 GMT  
		Size: 604.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5bfe90eb5e0d237ca622cec2ebe31010be86d19c343c11bb82fde230c32774c`  
		Last Modified: Sun, 07 Jan 2018 06:18:11 GMT  
		Size: 870.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d239912d1a7b0411d393bf38fcb9bba9a704576e4daada995f2ed0afb88f0a85`  
		Last Modified: Sun, 07 Jan 2018 06:18:47 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5774759bfbf891ccb325bbdeadb1f02856a6c0a32c3b43e239b5ad49759e6dd4`  
		Last Modified: Sun, 07 Jan 2018 06:18:52 GMT  
		Size: 64.8 MB (64844638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0fa907270681446ff189d021964770d942a8450b1fe76892dfaf901524e823`  
		Last Modified: Sun, 07 Jan 2018 06:19:00 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a8ac0e0f09126795e0e2dbeaf53a1fc5ba600c172d35b0be87b9b0dcc2cc5b`  
		Last Modified: Sun, 07 Jan 2018 06:19:04 GMT  
		Size: 28.0 MB (28020998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
