## `websphere-liberty:beta`

```console
$ docker pull websphere-liberty@sha256:5e7590b29657de29eabe49056331f882dfd6e3c117c08e083ecaea383542a278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:beta` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:3b96930d49d0e54a332d3791681c3481c0b80aa766720eab00863946dbcd3696
```

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.1 MB (246054369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d839f560062d5f0f21a3f544bb858dfeca6d02e31db0906e58ae676a4e845d35`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 07 Sep 2017 18:35:50 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Thu, 07 Sep 2017 18:35:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 18:35:58 GMT
ENV LIBERTY_VERSION=2017.9.0_0
# Thu, 07 Sep 2017 18:36:07 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Thu, 07 Sep 2017 18:36:12 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 18:36:12 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 07 Sep 2017 18:36:13 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 07 Sep 2017 18:36:16 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 07 Sep 2017 18:36:19 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Thu, 07 Sep 2017 18:36:20 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 07 Sep 2017 18:36:20 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:84d306a08343ddf71442c42140d1c0b9f02050c86e60519c15255196a71a505a`  
		Last Modified: Thu, 07 Sep 2017 18:40:03 GMT  
		Size: 269.8 KB (269840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5021186ed4f49355f7869d123ede9268ad575b88d5f5798fd1b3c96e24c742`  
		Last Modified: Thu, 07 Sep 2017 18:40:09 GMT  
		Size: 84.6 MB (84578497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466845ef62ee7cdf45b4323af236567733967b6caa2a28077cd61abbb45f0e67`  
		Last Modified: Thu, 07 Sep 2017 18:40:02 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96844a96a9f64a6e830faf7033d0bddd3bd869b7304d537ebec583e73d50f29b`  
		Last Modified: Thu, 07 Sep 2017 18:40:03 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3057dc78bdd5d0d6832e20beed5cd56700895d44e44419625cc082c8474a566`  
		Last Modified: Thu, 07 Sep 2017 18:40:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; 386

```console
$ docker pull websphere-liberty@sha256:c965a861fc25ad2a5df44906ea885546181977b25b0dcfa98b2484607c120ded
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.2 MB (234194253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e294f9ac2aced952813c17e89515e1571f4066a80300d29915f341ea0ab45800`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 11 Sep 2017 22:56:03 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Mon, 11 Sep 2017 22:56:12 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Mon, 11 Sep 2017 22:56:12 GMT
ENV LIBERTY_VERSION=2017.9.0_0
# Mon, 11 Sep 2017 22:56:20 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Mon, 11 Sep 2017 22:56:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 11 Sep 2017 22:56:21 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Mon, 11 Sep 2017 22:56:21 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Mon, 11 Sep 2017 22:56:22 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 11 Sep 2017 22:56:22 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Mon, 11 Sep 2017 22:56:23 GMT
EXPOSE 9080/tcp 9443/tcp
# Mon, 11 Sep 2017 22:56:23 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:15024ffbbda8c841ab94c70fd450f4154b91cda2773697d6638d53c8b2ac9d7b`  
		Last Modified: Mon, 11 Sep 2017 22:57:45 GMT  
		Size: 420.8 KB (420788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c149a06a944163b6f14a72f9d1b762cdb711587e483624470b137396ce47ad2b`  
		Last Modified: Mon, 11 Sep 2017 22:57:51 GMT  
		Size: 84.6 MB (84578515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44140d00c21fa8f46c2b09fc356f5b3a3f1a1b5a8caf901482f0da14e6fc714`  
		Last Modified: Mon, 11 Sep 2017 22:57:45 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0686a81771f1eeff82f68a2ea6af796de04674180921b5b938bc2c3ff3f2a387`  
		Last Modified: Mon, 11 Sep 2017 22:57:45 GMT  
		Size: 2.0 KB (2003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe1966fe9287e6d20885c233ec4aabe933171e106e746829cfab415a690f3a4`  
		Last Modified: Mon, 11 Sep 2017 22:57:45 GMT  
		Size: 413.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:7f6aef41a7a833e65653277278ffe84bb50df96489f8df032054302cd6c15530
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.3 MB (255311723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a74c802a53f21b2f7cee9ac4f01bfc7f4407895ec81379eeb6836db8594a971c`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 07 Sep 2017 22:04:51 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Thu, 07 Sep 2017 22:05:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 22:05:19 GMT
ENV LIBERTY_VERSION=2017.9.0_0
# Thu, 07 Sep 2017 22:06:00 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Thu, 07 Sep 2017 22:06:00 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 22:06:01 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 07 Sep 2017 22:06:01 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 07 Sep 2017 22:06:02 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 07 Sep 2017 22:06:03 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Thu, 07 Sep 2017 22:06:03 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 07 Sep 2017 22:06:03 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:cddb3b7c0db03a397f8ea1a0478c0513071c7a4105e8893de1983b731785657f`  
		Last Modified: Mon, 11 Sep 2017 22:52:06 GMT  
		Size: 453.1 KB (453069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0375e6c74333ff35d08961f248d63105983feab935879b2adb683e7e83e78fbf`  
		Last Modified: Mon, 11 Sep 2017 22:52:15 GMT  
		Size: 84.6 MB (84579995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f37263670cbcce487fbcb66588c6e5d7803db90b494858f40c0a570b1f5b91`  
		Last Modified: Mon, 11 Sep 2017 22:52:05 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38428b5d81d490a6aa7356422cfbb8fa9a0f77979dd20ac1953de0c25fb4afb7`  
		Last Modified: Mon, 11 Sep 2017 22:52:05 GMT  
		Size: 2.1 KB (2053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942d34fcb73650f3c6f292fe087ad06724fb39df5323dedf372b8979931b1946`  
		Last Modified: Mon, 11 Sep 2017 22:52:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:beta` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:a5f6c6a52bd424e4ad15e632d8ab559fb8e114246e8bb8e693094c5ee9b11a4e
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245577996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06421a99b1000231a9b7ef11a739d316654f5dcf634f683f20b55cd80e80e971`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 07 Sep 2017 21:55:09 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@dcurrie)
# Thu, 07 Sep 2017 21:55:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Sep 2017 21:55:30 GMT
ENV LIBERTY_VERSION=2017.9.0_0
# Thu, 07 Sep 2017 21:57:18 GMT
RUN LIBERTY_URL=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 3 | sed -n 's/\s*webProfile7:\s//p' | tr -d '\r')      && echo $LIBERTY_URL     && wget -q $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp-beta.zip     && unzip -q /tmp/wlp-beta.zip -d /opt/ibm     && rm /tmp/wlp-beta.zip
# Thu, 07 Sep 2017 21:57:19 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Sep 2017 21:57:19 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 07 Sep 2017 21:57:19 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 07 Sep 2017 21:57:20 GMT
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 07 Sep 2017 21:57:20 GMT
COPY file:889efe2fa762acb1292377f98c0f0fb54c169e3f4bbab602322ba3b63ff3b3ca in /opt/ibm/wlp/usr/servers/defaultServer/ 
# Thu, 07 Sep 2017 21:57:21 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 07 Sep 2017 21:57:21 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:2c9e9bfa8e6af1d506e1fd9172de2209998aa819c731d7954b7b290e8510b0ee`  
		Last Modified: Mon, 11 Sep 2017 22:51:17 GMT  
		Size: 427.5 KB (427531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307e69d88d73d8f36bd6f7e446be151ae36a6d598ec65b5e96b5ef0dc5d3db81`  
		Last Modified: Mon, 11 Sep 2017 22:51:24 GMT  
		Size: 84.6 MB (84580022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24127aa73a040b2db897b5087f2d3d0932b601e82fedb55991403a59f43ebbe`  
		Last Modified: Mon, 11 Sep 2017 22:51:17 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d27f75f327387989c95aeceaeda43ed01266e755156d701e74f1fa37f300ac`  
		Last Modified: Mon, 11 Sep 2017 22:51:16 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2495cda5d7162ebca9fec9b1b848082af62e55158164d532ca10a1246daf3cd5`  
		Last Modified: Mon, 11 Sep 2017 22:51:17 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
