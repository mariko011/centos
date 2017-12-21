## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:a525e44ad342cb8dff0f8c9ccaa7f47bfb630f85270de7b056aee9f9e8d5bbd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:9724bb433272a8ba6e86810eaab70b9b743ece3f3275a43fc60bf1bb2df383d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.4 MB (182427849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2712c2273cf60836fe68d89751287a5be0c07200aa5b5cbc3649528924e7b0`
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
# Wed, 20 Dec 2017 18:28:54 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Wed, 20 Dec 2017 18:28:54 GMT
ARG LIBERTY_URL
# Wed, 20 Dec 2017 18:29:02 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 20 Dec 2017 18:29:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Wed, 20 Dec 2017 18:29:11 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Dec 2017 18:29:11 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Wed, 20 Dec 2017 18:29:11 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Wed, 20 Dec 2017 18:29:12 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Wed, 20 Dec 2017 18:29:23 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 20 Dec 2017 18:29:28 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Wed, 20 Dec 2017 18:29:28 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 20 Dec 2017 18:29:29 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
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
	-	`sha256:1a3a4aa183dacff8daf14eeccc97cc59be1d4f9647f144ce2e1f3136d62d1ded`  
		Last Modified: Wed, 20 Dec 2017 18:35:32 GMT  
		Size: 11.7 MB (11656681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e46d587a84cdef7f1150b6604e6b152c72f68bb672dffb8570b392820e0d7b`  
		Last Modified: Wed, 20 Dec 2017 18:35:31 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7639507b89cf17ad874351f2b9d87d5fd345ee0c7adea4128f4c4a8e5fc55d2f`  
		Last Modified: Wed, 20 Dec 2017 18:35:32 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfc52459ebc87efa557f312806184acef5d36b0e6dd4de1b38f20bc1b0fe3c5`  
		Last Modified: Wed, 20 Dec 2017 18:35:32 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; 386

```console
$ docker pull websphere-liberty@sha256:5bd230a55954ec81e70e464b36efd93c650c789e0747ef10698768f475a8d7df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171105029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6630ae2580a490883dd4b52c87419fc7a4879c654be6fe2d66626f1b52e99daa`
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
# Fri, 15 Dec 2017 05:16:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp6
# Fri, 15 Dec 2017 05:17:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b6ccb3db145f0b31e92a9621c81e6247704852daa6fbabc72ac4a36dd5f5df24';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='053ec23dca6a3cb98ca4128aa726ac7e8b06c9aed330a38dafa6817732451f6f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='26a7d65089f4a9cdbdcd93318a1c28017e9ef15bf66228e9984aa9fed5efb53e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0f806c5e2c04fc5fea7f815885db05530744616e2a5bafc2fecbd617350f325f';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='7da8158760e2ce87cc258e8a69dfc08c86e4276cf798f47745d134a05732cc32';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 15 Dec 2017 05:21:46 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 06:36:08 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Fri, 15 Dec 2017 06:37:15 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 06:37:15 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Fri, 15 Dec 2017 06:37:15 GMT
ARG LIBERTY_URL
# Fri, 15 Dec 2017 06:37:15 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 15 Dec 2017 06:37:40 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Fri, 15 Dec 2017 06:37:40 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 Dec 2017 06:37:40 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Fri, 15 Dec 2017 06:37:40 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Fri, 15 Dec 2017 06:37:41 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Fri, 15 Dec 2017 06:37:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Fri, 15 Dec 2017 06:37:45 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Fri, 15 Dec 2017 06:37:45 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 15 Dec 2017 06:37:46 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
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
	-	`sha256:8da99fca9b5e47a924a01a2b58e85c2eb49827ae3ca7fe91d8f54f8269d9e853`  
		Last Modified: Fri, 15 Dec 2017 05:48:39 GMT  
		Size: 113.0 MB (113048311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a217130e83695a12e0354c4f7058c7cc3d259741e5fbfa48429dc06098859`  
		Last Modified: Fri, 15 Dec 2017 07:09:41 GMT  
		Size: 421.2 KB (421187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3247dd48e6ea459dce32d29be0c16e61fef6ea3db1441c50ab724824a883f533`  
		Last Modified: Fri, 15 Dec 2017 07:09:43 GMT  
		Size: 11.7 MB (11656666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d754985fb377270c7976a1bb0b7ca94583d11117e172c2f821d283c2f0c19e3`  
		Last Modified: Fri, 15 Dec 2017 07:09:40 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:732240778b93937b25ab7461c77ce8271f3c937f52a38511bbe0b0c9f7c4cc5f`  
		Last Modified: Fri, 15 Dec 2017 07:09:41 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f6686888301b391581539b35809409fb790db74b679c2e132732d142595f4`  
		Last Modified: Fri, 15 Dec 2017 07:09:41 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:503a89b35925a93ef77d61dd64897675583a2b942483dca9505f3592b8449a07
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198368783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f456498b87ded904be783c6e7df8b4997e9f677d03c97f0fb73b279535a9183`
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
# Thu, 21 Dec 2017 16:47:50 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Thu, 21 Dec 2017 16:47:51 GMT
ARG LIBERTY_URL
# Thu, 21 Dec 2017 16:47:52 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 21 Dec 2017 16:48:06 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Thu, 21 Dec 2017 16:48:10 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 21 Dec 2017 16:48:12 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Thu, 21 Dec 2017 16:48:13 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Thu, 21 Dec 2017 16:48:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Thu, 21 Dec 2017 16:48:20 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Thu, 21 Dec 2017 16:48:22 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Thu, 21 Dec 2017 16:48:23 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 21 Dec 2017 16:48:28 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
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
	-	`sha256:09cfd25b1b35336738e1213b85d5a36a295a4c7ca3dd248ed98b08f6a4b4d9b6`  
		Last Modified: Thu, 21 Dec 2017 16:59:44 GMT  
		Size: 11.7 MB (11656683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8d29ed5aa98e3731deae04da7886be782b329b9344d258edda58ebf17a3218d`  
		Last Modified: Thu, 21 Dec 2017 16:59:41 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bda4b9940baa58f9b52a68d54049cbef66e82ce7fc25dccaa1ce4c7836bc870f`  
		Last Modified: Thu, 21 Dec 2017 16:59:40 GMT  
		Size: 650.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc73371e1c1e317b519cc2ca783a62d192ba12aaecceffd3b337f222200e5709`  
		Last Modified: Thu, 21 Dec 2017 16:59:41 GMT  
		Size: 892.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:0f1ea0aa5d783e5574ea1f0360722336069e3a24519d11c86a5944f0e7bed3d7
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185084668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc31be770cb69d21654b3a38d5c9f6f22d6a191cb2a4414a644415b37ce9bcd9`
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
# Tue, 05 Dec 2017 12:04:07 GMT
ENV LIBERTY_VERSION=17.0.0_03
# Tue, 05 Dec 2017 12:04:07 GMT
ARG LIBERTY_URL
# Tue, 05 Dec 2017 12:04:13 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 05 Dec 2017 12:04:17 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 05 Dec 2017 12:04:20 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Dec 2017 12:04:26 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=17.0.0.3
# Tue, 05 Dec 2017 12:04:27 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 05 Dec 2017 12:04:35 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 05 Dec 2017 12:04:36 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 05 Dec 2017 12:04:37 GMT
COPY file:2b4a5f7506c0eefaef4babd07fa604f8c110a1adfb55ea94cc05c5c165ee1a84 in /opt/ibm/docker/ 
# Tue, 05 Dec 2017 12:04:38 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 05 Dec 2017 12:04:38 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
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
	-	`sha256:7b678b940fd7ba3152ed2b1caf622bf1f3bd73476e4a501b6db33561ac39149a`  
		Last Modified: Tue, 05 Dec 2017 12:11:03 GMT  
		Size: 11.7 MB (11656673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ea940b95b0b9552b02b6f692dcdf90769e3d95f5cf5d472cd58c61a0d7c3f5`  
		Last Modified: Tue, 05 Dec 2017 12:11:01 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c735f897d6e9769c1a34cd50a8e7a77b679bef73e02e2b20efd32c2e6b7d1dde`  
		Last Modified: Tue, 05 Dec 2017 12:11:01 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1bf7169c1b956487f43b5ab99dae7e87068b4b33b25ecc0cc3fada81ddac6bb`  
		Last Modified: Tue, 05 Dec 2017 12:11:01 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
