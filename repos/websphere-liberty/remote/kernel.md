## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:540186573afd975ec27024cdcd7d4d05576cc4899054cf3144c05aed83362aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:c3c20f01ae42cfa4eb88aea30bca7770f15325ed75a5cb55d0afc854e812067a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182725280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc2f2a3a7f7fe18b837d5249b4db232af3e30f2c39e316a58b5c80c9018a20a8`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 15 Jan 2018 21:12:15 GMT
ADD file:affda766655e01cbd66cdf7485f581f22be61d93abadcc9fd22ed34c78069e18 in / 
# Mon, 15 Jan 2018 21:12:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 15 Jan 2018 21:12:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 15 Jan 2018 21:12:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 15 Jan 2018 21:12:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 15 Jan 2018 21:12:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 02:44:03 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 16 Jan 2018 02:44:16 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 02:44:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Tue, 16 Jan 2018 02:45:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 16 Jan 2018 02:45:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 07:40:44 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 16 Jan 2018 07:40:53 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 07:40:59 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Tue, 16 Jan 2018 07:41:00 GMT
ARG LIBERTY_URL
# Tue, 16 Jan 2018 07:41:00 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 16 Jan 2018 07:41:04 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 16 Jan 2018 07:41:13 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 07:41:13 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Tue, 16 Jan 2018 07:41:13 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 16 Jan 2018 07:41:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 16 Jan 2018 07:41:18 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 16 Jan 2018 07:41:25 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 16 Jan 2018 07:41:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 16 Jan 2018 07:41:26 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:8f7c85c2269abaeba55439fe3a7e8935386d45a88da6166231fc947133c592a8`  
		Last Modified: Mon, 15 Jan 2018 14:45:34 GMT  
		Size: 42.8 MB (42842355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72e494a6dd79fa00aaf2921eb571801c5ce9aee021bf5353f91f859aeee92f`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3009ec50c8871f7a3f19c248194270a1a3aa28705934d619acbd96c663ce5c89`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d5ffccbec91702aeb063cb2f3987ca3661bd53dc9e4d8446261fe1c5b05de64`  
		Last Modified: Mon, 15 Jan 2018 21:16:57 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e872a2642ce1d63f3283e81bb6503579808c01e2bf63412ef87135ecb0f04746`  
		Last Modified: Mon, 15 Jan 2018 21:16:56 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df23f00c4a16647e27dd084c0150eabd8e6e242c99cfd0fbb754ca44a1e5e89a`  
		Last Modified: Tue, 16 Jan 2018 03:25:15 GMT  
		Size: 3.0 MB (3020970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a718d378e9934061bed65eba8615e7fff4cc816c858ed72cc75c618c7ca29d89`  
		Last Modified: Tue, 16 Jan 2018 03:25:30 GMT  
		Size: 124.6 MB (124580695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cced8c4e8fc0facb3ab535cb3730693428b52b66b188e10d3e65aed469887cd`  
		Last Modified: Tue, 16 Jan 2018 07:46:26 GMT  
		Size: 422.2 KB (422220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676b23c9cc892238ef4c21f63c9ea56d90649331c102432dc1ef05173ad0c8fa`  
		Last Modified: Tue, 16 Jan 2018 07:46:27 GMT  
		Size: 11.9 MB (11854906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee905914e58937172a558d9f5a2bf32e632fe74aef6ce91d7d0a111c576fc8f8`  
		Last Modified: Tue, 16 Jan 2018 07:46:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee52d7b53cdd0e9d83dd0b425f1c6d9ed5a5f4db94d4dd2206c2dc0b5d83418`  
		Last Modified: Tue, 16 Jan 2018 07:46:26 GMT  
		Size: 601.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961595174f0e6856f48ae40a2fcdc1e623efe0f329b0d10b354602a0597dbbde`  
		Last Modified: Tue, 16 Jan 2018 07:46:26 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:615a1722913ed8b4cc1195d95136dec22ef4209514f028dfed9255680a603da0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171673683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e0a0d3fb9982d47b2e62623917a79ebf367cfdbcdf205af9f958e7bf530df9e`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 16 Jan 2018 05:11:31 GMT
ADD file:df10e819b9716197dc5e750b5584d563a145ec09d017b0234a56e459be7e0be8 in / 
# Tue, 16 Jan 2018 05:11:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 05:11:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 05:11:33 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 05:11:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 05:11:34 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 06:11:10 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 16 Jan 2018 06:11:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 06:11:36 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Tue, 16 Jan 2018 06:12:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 16 Jan 2018 06:13:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 08:36:21 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 16 Jan 2018 08:36:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 08:36:31 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Tue, 16 Jan 2018 08:36:31 GMT
ARG LIBERTY_URL
# Tue, 16 Jan 2018 08:36:32 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 16 Jan 2018 08:36:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 16 Jan 2018 08:36:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 08:36:36 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Tue, 16 Jan 2018 08:36:37 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 16 Jan 2018 08:36:38 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 16 Jan 2018 08:36:43 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 16 Jan 2018 08:36:43 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 16 Jan 2018 08:36:43 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 16 Jan 2018 08:36:44 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:e70160f4fa61966fa69c241da9f8107af2c8962479771c219db7b3436247ea36`  
		Last Modified: Mon, 15 Jan 2018 14:45:32 GMT  
		Size: 43.2 MB (43171534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942f28116bd0740eb362e3369ed6497c4f4adfa30b314868833d4bbaf146038a`  
		Last Modified: Tue, 16 Jan 2018 05:48:56 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8188f1ca382dc8eeb7d61f6079c3b693f70461bae546c48ce07b6035ff00f441`  
		Last Modified: Tue, 16 Jan 2018 05:48:56 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b93d929ec938c6ef5d0321395d1d4ab1911e1711c9dd9775242d55d59c48167`  
		Last Modified: Tue, 16 Jan 2018 05:48:57 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23d87ded722d7e72329f4eef7debf29662f5ac33807c30fdfbe11e51023ba49`  
		Last Modified: Tue, 16 Jan 2018 05:48:58 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a0a290c9f9f059c886de291c21d98d561c02543e4c369c84e6f86f12edcd53`  
		Last Modified: Tue, 16 Jan 2018 07:00:04 GMT  
		Size: 2.9 MB (2877413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0907b73009894220b7485b8f97a170161e69ee9f85cd639b47cdacba30cf44f4`  
		Last Modified: Tue, 16 Jan 2018 07:00:18 GMT  
		Size: 113.3 MB (113344272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8684e1e3f142a793016c3d3dada235ca5427b7476ebdd3c1e5147989898a03a2`  
		Last Modified: Tue, 16 Jan 2018 09:50:39 GMT  
		Size: 421.5 KB (421466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56eb86a6e6eda1faa6d9aa2cfa9b63d94925795e045e831f1aa4556716226900`  
		Last Modified: Tue, 16 Jan 2018 09:50:41 GMT  
		Size: 11.9 MB (11854906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9883c7034e2324c1b09249569c077ae59c3d98cee43c556ad949d40f4b6db867`  
		Last Modified: Tue, 16 Jan 2018 09:50:39 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f6088493b4d24fac3dccd5ccf29d79fb2b9b466ee0166a7b61eca8f331c016`  
		Last Modified: Tue, 16 Jan 2018 09:50:39 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eb2a025b93c107bd8a91b86f0bc120d90322c963586a84b21ac07d7e5b757`  
		Last Modified: Tue, 16 Jan 2018 09:50:39 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:41ed6e30c321894f3bed8229561bd38437b7e46c57d97f60903c9ebebeb07edb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.6 MB (198631457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2e1c6800f778059e5aad3e79eda7fad6692b406302b3acf1667906bdd0141b`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Tue, 16 Jan 2018 03:41:26 GMT
ADD file:428d6c211d39abb55269a867b80ea9baa241605171d1caf44af05b1a799c39f1 in / 
# Tue, 16 Jan 2018 03:41:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 16 Jan 2018 03:41:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:41:38 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 16 Jan 2018 03:41:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 16 Jan 2018 03:41:42 GMT
CMD ["/bin/bash"]
# Tue, 16 Jan 2018 03:59:21 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 16 Jan 2018 03:59:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 03:59:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Tue, 16 Jan 2018 04:01:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 16 Jan 2018 04:01:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 04:30:00 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 16 Jan 2018 04:30:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Jan 2018 04:30:27 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Tue, 16 Jan 2018 04:30:30 GMT
ARG LIBERTY_URL
# Tue, 16 Jan 2018 04:30:33 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 16 Jan 2018 04:30:48 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 16 Jan 2018 04:30:51 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 04:30:53 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Tue, 16 Jan 2018 04:30:56 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 16 Jan 2018 04:31:01 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 16 Jan 2018 04:31:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 16 Jan 2018 04:31:08 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 16 Jan 2018 04:31:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 16 Jan 2018 04:31:12 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d4a70e2296fafb78b369961815a69711acf05e939053c953bcba46e4db15f61`  
		Last Modified: Tue, 16 Jan 2018 03:43:42 GMT  
		Size: 45.3 MB (45272971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9c1ddbc9791ceb8d81c3a206b334f5e2c12a5980b51dcfcf81a9695fa67c33`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d80d5b608f011672db438138da93404f73f97e2b67a8587cec29a7e55cdc9e`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 649.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0061f3d18553c084eba4b2ab560a988b9e5071a3e2b3410665e32fd3351d76ed`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e35f843f0a152e7ff1e816674e1e670d611ef85f517888ded98998e4fb7439d8`  
		Last Modified: Tue, 16 Jan 2018 03:43:31 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2daea3e54b4f2db7ca92831ee255fecb8b4dec626fadd219566171178483479a`  
		Last Modified: Tue, 16 Jan 2018 04:11:57 GMT  
		Size: 2.9 MB (2878132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ced8f26cdf3ff9f46703f277888a473e581232ecde1eca1433a8e6813cd7945`  
		Last Modified: Tue, 16 Jan 2018 04:12:16 GMT  
		Size: 138.2 MB (138167621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39661653c3b1b56ead0f01a6597cb382df2530f2a61f87367ac16604ccd12e1c`  
		Last Modified: Tue, 16 Jan 2018 04:40:26 GMT  
		Size: 453.6 KB (453550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e88bf221238f33a78d5b3c7d2402283c8178f1e304695789f767437ffb90e0b`  
		Last Modified: Tue, 16 Jan 2018 04:40:28 GMT  
		Size: 11.9 MB (11854909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71ec8350f665a9fd3fab566b32d18a96cc6e4d56f4916be7c0f8e7f6aeb30e5`  
		Last Modified: Tue, 16 Jan 2018 04:40:25 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92bccc961a7f851abbfa49e8638f17edb05c5b7927bf350a563871616aee4398`  
		Last Modified: Tue, 16 Jan 2018 04:40:25 GMT  
		Size: 651.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc09dd00300841900fe06222dda8f9bfa45ba37c44667dd554d9a5b6ef25e57`  
		Last Modified: Tue, 16 Jan 2018 04:40:26 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:25e253b0cc2d5636f6e100f1770d372f6c16659dad05f5631aabe158307cf2f3
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181050162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6766415dd62c617dd6da1e0ac0e1ca7d45f9a553e8733bb228bafb48c1cad302`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Sun, 07 Jan 2018 06:21:35 GMT
ADD file:11ba80bf6d29755a179a3aec11ff1cedac56856e058e8bc473bae7c772373af3 in / 
# Sun, 07 Jan 2018 06:21:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sun, 07 Jan 2018 06:21:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 06:21:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sun, 07 Jan 2018 06:21:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sun, 07 Jan 2018 06:21:38 GMT
CMD ["/bin/bash"]
# Sun, 07 Jan 2018 09:45:14 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 07 Jan 2018 09:45:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 09:45:22 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Sun, 07 Jan 2018 09:46:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ed49f45d82f6aa187fa0af64c6655f8370f1729f6f8644238519dc0149845acd';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='dc2828651a96e64bba66f9707a94cb64aae5f6a8686b1f8edde2d45d6622c35b';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f7140190ca6b8a4fce34be86fdfef8a2c078d443b13a8da12805a67be01721e1';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='3eb4ad375d8825a16cc7c0466527df4f3c49782a4b299ce8f1db2ff0d650e7cd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='9a41eccb986c71dffd6fc464f9425509d7189dc4028b7d74d589db9b14177566';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Sun, 07 Jan 2018 09:46:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 12:01:12 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Sun, 07 Jan 2018 12:01:18 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 12:01:18 GMT
ENV LIBERTY_VERSION=17.0.0_04
# Sun, 07 Jan 2018 12:01:18 GMT
ARG LIBERTY_URL
# Sun, 07 Jan 2018 12:01:18 GMT
ARG DOWNLOAD_OPTIONS=
# Sun, 07 Jan 2018 12:01:22 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Sun, 07 Jan 2018 12:01:22 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 12:01:22 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.4
# Sun, 07 Jan 2018 12:01:22 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Sun, 07 Jan 2018 12:01:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Sun, 07 Jan 2018 12:01:24 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Sun, 07 Jan 2018 12:01:25 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Sun, 07 Jan 2018 12:01:25 GMT
EXPOSE 9080/tcp 9443/tcp
# Sun, 07 Jan 2018 12:01:25 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:dde4bd472ee5cfdfe0c36c4cabc9d57a4e904ff57cb4c0dd5da1a57da17fcd9c`  
		Last Modified: Sun, 07 Jan 2018 06:22:48 GMT  
		Size: 41.9 MB (41877572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb275b8c445d96375f170f1921a0fc14d67bcf0a539f688a0fe685876e96d74`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac1ba7e93438f17ca3ccf8c3954f1773e07a36a84e4080c86cf14673aa31154`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5062c5559d3c8a48dbc8e839a8909ec2ca84ec3e4b3554d39f46d14ac85e145`  
		Last Modified: Sun, 07 Jan 2018 06:22:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b61e9907f78d856d8fed0dc9c5f74c932839788e1d2796f7be9a9f513fbcb88`  
		Last Modified: Sun, 07 Jan 2018 06:22:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7e68c138d902782e890f7ce265e0367ef1093adecb96c51df30257c8da34f1`  
		Last Modified: Sun, 07 Jan 2018 09:49:41 GMT  
		Size: 2.8 MB (2765488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d1d63ff421172267a8d69b7b850c81b80b4a8dd380fe05303378b9e0c9de95`  
		Last Modified: Sun, 07 Jan 2018 09:49:54 GMT  
		Size: 124.1 MB (124120168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb361e6749d6e880a1e9eff229c9df10892f7dad50770e3833ec05b33dfc70e`  
		Last Modified: Sun, 07 Jan 2018 12:07:50 GMT  
		Size: 427.9 KB (427891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32aac2358012977056a1fcfce6bbe0ef364725f4030d62a724632e83ef260ef1`  
		Last Modified: Sun, 07 Jan 2018 12:07:53 GMT  
		Size: 11.9 MB (11854912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e858bc2e5d51ee5376485a9abe47f319f54e3421e839356d76fd552ab8ea927b`  
		Last Modified: Sun, 07 Jan 2018 12:07:50 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58f5a0fadba327966708b33c20fb437d677d0fd8baec90052e84642abd06025`  
		Last Modified: Sun, 07 Jan 2018 12:07:51 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84304fb2d2707c5bac81fa4b6d32035a7780a93c4050e179bddedf3ec5ec7692`  
		Last Modified: Sun, 07 Jan 2018 12:07:51 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
