## `websphere-liberty:microProfile`

```console
$ docker pull websphere-liberty@sha256:83342ef5a16a19dfb3af8c1e7d6a5358a5f00743a1d25bd51d8866949d480a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:microProfile` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:486da828eba4eb870e2f7a47de4a3e7a45b9c950e0ae5f82df20b083f5987181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213873398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7ccc5a227e2e1c920fae2df6265b6b943e6ae3d87f778ef17a46f6041abbb3`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 18 Sep 2017 23:31:37 GMT
ADD file:5ed435208da6621b45db657dd6549ee132cde58c4b6763920030794c2f31fbc0 in / 
# Mon, 18 Sep 2017 23:31:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:31:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:31:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:31:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:31:40 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:51:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:51:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:51:14 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Mon, 18 Sep 2017 23:51:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:51:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:37:39 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 19 Sep 2017 00:37:47 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:37:47 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Tue, 19 Sep 2017 00:37:47 GMT
ARG LIBERTY_URL
# Tue, 19 Sep 2017 00:37:48 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 19 Sep 2017 00:37:51 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 19 Sep 2017 00:37:51 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:37:51 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 19 Sep 2017 00:37:52 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 19 Sep 2017 00:37:55 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 19 Sep 2017 00:37:57 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 19 Sep 2017 00:37:57 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 19 Sep 2017 00:37:57 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 19 Sep 2017 00:38:04 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 19 Sep 2017 00:38:04 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Tue, 19 Sep 2017 00:38:26 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:9fb6c798fa41e509b58bccc5c29654c3ff4648b608f5daa67c1aab6a7d02c118`  
		Last Modified: Mon, 18 Sep 2017 23:32:39 GMT  
		Size: 47.5 MB (47536248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b61febd4aefe982e0cb9c696d415137384d1a01052b50a85aae46439e15e49a`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d99b9777eb02b8943c0e72d7a7baec5c782f8fd976825c9d3fb48b3101aacc2`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d010c8cf75d7eb5d2504d5ffa0d19696e8d745a457dd8d28ec6dd41d3763617e`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fac07fb303e0589b9c23e6f49d5dc1ff9d6f3c8c88cabe768b430bdb47f03a9`  
		Last Modified: Mon, 18 Sep 2017 23:32:33 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40ffc91f8064c091f3818d0ab995d4250fb8f3b00ebb52a14a5512d6d647217`  
		Last Modified: Mon, 18 Sep 2017 23:57:15 GMT  
		Size: 3.1 MB (3070464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8cecd2b3ad321b21ff006247045050eb0d00353bee0dace6d97cb7fd5ec449`  
		Last Modified: Mon, 18 Sep 2017 23:58:44 GMT  
		Size: 126.5 MB (126541814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03dbaf76abf7051b498616be339ca71783a6971b085cfc777b94444c66da6e16`  
		Last Modified: Tue, 19 Sep 2017 00:41:13 GMT  
		Size: 422.0 KB (422048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41061b2ca786e9cd30e1f579688247860faae316edcdd2ec4d7b7aa42e737eb`  
		Last Modified: Tue, 19 Sep 2017 00:41:13 GMT  
		Size: 11.5 MB (11515411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72170b9361d015779d4f1a6df9dff27ab3da9b25abfce08ec7aeb6075315f284`  
		Last Modified: Tue, 19 Sep 2017 00:41:12 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68345e0876d888fbe3c63447a563475a55c26cd046a4a03f17ca2ae5bb50cca4`  
		Last Modified: Tue, 19 Sep 2017 00:41:12 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77c55e4e4313eb09599f5d44c2f063b28117af0e09a7366990eb87d384e94379`  
		Last Modified: Tue, 19 Sep 2017 00:41:12 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411013b0e9f60fd326cec5c40261ba00f7da8281192dd8fa058358b6cd48e21`  
		Last Modified: Tue, 19 Sep 2017 00:41:26 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04d056df47f67afd73370f1833da0654c30c79a4f65222115e348679a946d4c`  
		Last Modified: Tue, 19 Sep 2017 00:41:28 GMT  
		Size: 24.8 MB (24783119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; 386

```console
$ docker pull websphere-liberty@sha256:4c0f84e9a56cae23ec24771a6ee679614f1ed3b96753bd308d3a252ed42b02bb
```

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.8 MB (200844592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdab18597bcc12bf54ac4b1bcebb29133b0eab7faa6a6e69d578365511a0c554`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 18 Sep 2017 23:38:38 GMT
ADD file:d48640b00d2030cbcef998e352c46f64322de00f9b48b015c7a649a7e9f9b1c0 in / 
# Mon, 18 Sep 2017 23:38:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:38:40 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:38:40 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:38:41 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:38:41 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:58:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:58:32 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:58:32 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Mon, 18 Sep 2017 23:59:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:59:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:29:50 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 19 Sep 2017 00:29:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:29:59 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Tue, 19 Sep 2017 00:29:59 GMT
ARG LIBERTY_URL
# Tue, 19 Sep 2017 00:29:59 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 19 Sep 2017 00:30:05 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 19 Sep 2017 00:30:07 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:30:07 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 19 Sep 2017 00:30:08 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 19 Sep 2017 00:30:14 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 19 Sep 2017 00:30:14 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 19 Sep 2017 00:30:14 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 19 Sep 2017 00:30:15 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 19 Sep 2017 00:30:23 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 19 Sep 2017 00:30:24 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Tue, 19 Sep 2017 00:30:56 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:be13f692d8c621a704b1caea34cb5f28fed77bf385b3fe4ea74f6532ea3f99b4`  
		Last Modified: Mon, 18 Sep 2017 15:38:38 GMT  
		Size: 47.8 MB (47812193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797352355bb152ea0fdaca2ebc1c21ba91258811be4174ce4a79a49f9fd8a139`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ebf35bf0f20205a0f77c9af83d132fbfd2860166960952d64ba2dc21a54905d`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 519.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499061be31e87ecf0c40c8a86a44b4b9f20524903f08e6233e110e65328338e2`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4be7379ba51f1f1a5f7121eb0378f0c9a0309fbf7d6433c71b9ca658c51586`  
		Last Modified: Mon, 18 Sep 2017 23:39:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350d3a6571d1610c2b687e97db12522570d39c68dbc9bfc0b3fff0efba0ef149`  
		Last Modified: Tue, 19 Sep 2017 00:08:48 GMT  
		Size: 2.9 MB (2923211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830ec72a04781a6b598dfa2ddddf340940527dbbddc898f9446d609b4522d1b3`  
		Last Modified: Tue, 19 Sep 2017 00:09:03 GMT  
		Size: 113.4 MB (113385664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3b5b28986477f65568c54045a971fce06da9c0ff04b808445bb088fd1698f9`  
		Last Modified: Tue, 19 Sep 2017 00:34:14 GMT  
		Size: 420.9 KB (420873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dbe1232935807a2f6f94436790c9bc760693f3d66d72c2270b9ed91dc7ae931`  
		Last Modified: Tue, 19 Sep 2017 00:34:15 GMT  
		Size: 11.5 MB (11515412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:682d273aa96511c69dab83e0eb50ccd70f26af503f2fa782a4807578abdc4e07`  
		Last Modified: Tue, 19 Sep 2017 00:34:14 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7891ffe7228bcd02d146981ab5ac71985150587c06c75ded4cb612b49af9d8`  
		Last Modified: Tue, 19 Sep 2017 00:34:14 GMT  
		Size: 603.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f4599c291a5365e17fa538371053c9cebd62e48e484bff192f50ada364bf6`  
		Last Modified: Tue, 19 Sep 2017 00:34:14 GMT  
		Size: 467.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbe25b3c7a7b1fb66a3ab5942723a049cba5e02f3001088d773256daa4d33a80`  
		Last Modified: Tue, 19 Sep 2017 00:34:24 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98812c3a6cf73d9eb0e18204a3f4d4a13d12b70059ebbe58a1e208f7d2285a7d`  
		Last Modified: Tue, 19 Sep 2017 00:34:26 GMT  
		Size: 24.8 MB (24783059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:0498e5e3b9f3287a54e267468d4fe79081dc730d8c708bb23180a25831b67d48
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.7 MB (227718493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d430a60241c12526d4091a6b65506708c83b3c066a005e081a08aa74915594ba`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 18 Sep 2017 23:35:10 GMT
ADD file:166742117a8e93b6503d54fec46467c136e204dcb8c35d31b0cf422761ed342f in / 
# Mon, 18 Sep 2017 23:35:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:35:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:35:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:35:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:35:32 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:54:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:55:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:55:10 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Mon, 18 Sep 2017 23:57:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:57:01 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:39:16 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 19 Sep 2017 00:40:09 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:40:12 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Tue, 19 Sep 2017 00:40:16 GMT
ARG LIBERTY_URL
# Tue, 19 Sep 2017 00:40:19 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 19 Sep 2017 00:40:33 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 19 Sep 2017 00:40:36 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:40:44 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 19 Sep 2017 00:40:57 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 19 Sep 2017 00:41:09 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 19 Sep 2017 00:41:23 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 19 Sep 2017 00:41:24 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 19 Sep 2017 00:41:28 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 19 Sep 2017 00:41:45 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 19 Sep 2017 00:41:47 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Tue, 19 Sep 2017 00:42:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:78ce7db4c3bca9744cdcf93b3f1f6f9953ea6b132224a828988e6c2a430c9405`  
		Last Modified: Mon, 18 Sep 2017 23:37:27 GMT  
		Size: 49.6 MB (49589011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:623dedb068d17490ebe0472376f5c6f72ce59e28f4be29cf635fed215565f96f`  
		Last Modified: Mon, 18 Sep 2017 23:37:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50564ef76bfd5864705e18a255d8ec5404ea5336424343840ca26559c5871bf2`  
		Last Modified: Mon, 18 Sep 2017 23:37:13 GMT  
		Size: 651.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb711d0eb7b437633cef81a629aa1445475b44748e9afb011d3ae087cddb00c`  
		Last Modified: Mon, 18 Sep 2017 23:37:14 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b721c801929694b506d76283f13c4a0a9f4246fdb2100598afacb0ce7c5899`  
		Last Modified: Mon, 18 Sep 2017 23:37:14 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942c364c907edfcdb30af22d914dc159fbe9c32b9491efd67d25b7bd57f5a25c`  
		Last Modified: Tue, 19 Sep 2017 00:15:01 GMT  
		Size: 2.9 MB (2925344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9737aeed6b09dba197ed0f2afb299fbb79e3376cd721b76e72f96a35213a8f`  
		Last Modified: Tue, 19 Sep 2017 00:15:22 GMT  
		Size: 138.4 MB (138444118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a304769980900e308bda204ac99986657da1a282dd8da452d25d41c805af1fab`  
		Last Modified: Tue, 19 Sep 2017 00:52:28 GMT  
		Size: 453.3 KB (453262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013717b5393c4c86db103a6c8036c84f8efbd3eeca0cdba2b2dd43220fecc3f2`  
		Last Modified: Tue, 19 Sep 2017 00:52:29 GMT  
		Size: 11.5 MB (11515461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397d0b4c2058a553574c1f5b0280b645b494920302585a016c63bb44174e22e3`  
		Last Modified: Tue, 19 Sep 2017 00:52:27 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259ef93296012a0c74d46582119ad212b25a04367468a8671ea0fed4ef8ca741`  
		Last Modified: Tue, 19 Sep 2017 00:52:27 GMT  
		Size: 642.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7804152bb37484e96358889eea1adf72f21a9edb85467bb18b25bb4d32c30461`  
		Last Modified: Tue, 19 Sep 2017 00:52:27 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc129decc2325ccbd6942d3994661f0bfa93af75aabc18d513b52025490903f5`  
		Last Modified: Tue, 19 Sep 2017 00:52:43 GMT  
		Size: 550.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b844ca071a07f73cdbdccc53269aaef62962a63db1f4115cc9b824f3f9afaf2f`  
		Last Modified: Tue, 19 Sep 2017 00:52:47 GMT  
		Size: 24.8 MB (24786880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:microProfile` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:1f0055b1d984b8d1cafb10a0a1eef4e5cdeddf1be93311a6277f6c46248ff096
```

-	Docker Version: 17.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.0 MB (209960567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a5a77b0b3209d8373a7d161e575fed11d8e847a973a00eecd6417d477a8131`
-	Default Command: `["\/opt\/ibm\/docker\/docker-server","run","defaultServer"]`

```dockerfile
# Mon, 18 Sep 2017 23:33:35 GMT
ADD file:dc38d822d5d846f68669d70bb363f7140284a7c5cc63886eb7e7aa7cca3b4be9 in / 
# Mon, 18 Sep 2017 23:33:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 18 Sep 2017 23:33:36 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:33:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Mon, 18 Sep 2017 23:33:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 18 Sep 2017 23:33:38 GMT
CMD ["/bin/bash"]
# Mon, 18 Sep 2017 23:50:23 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 18 Sep 2017 23:50:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 18 Sep 2017 23:50:31 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Mon, 18 Sep 2017 23:52:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='8721ed58195f90bcae6341033471322260dd4be21615c4e36cda9bb0eab24ca5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='973fd6f9c4a0f5fd4972b8bfa484d83360c3817cf9597346faa189ab63be074f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2886890c98cde880ff4ffe10108c10e13df6e5b90ca19d924498b44a4aca0e2a';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eeee4ccf83c0a959e72e1da4a758f169614bbcc641ff7c65ab2530758c6629ca';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='b0b39f01ace528ba7f6cd7bb59a5311cc989afc8774eefd2e877c8f03a27380d';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 18 Sep 2017 23:52:17 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:25:26 GMT
MAINTAINER David Currie <david_currie@uk.ibm.com> (@davidcurrie)
# Tue, 19 Sep 2017 00:25:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Tue, 19 Sep 2017 00:25:37 GMT
ENV LIBERTY_VERSION=17.0.0_02
# Tue, 19 Sep 2017 00:25:38 GMT
ARG LIBERTY_URL
# Tue, 19 Sep 2017 00:25:38 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 19 Sep 2017 00:25:44 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip
# Tue, 19 Sep 2017 00:25:45 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 19 Sep 2017 00:25:45 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output
# Tue, 19 Sep 2017 00:25:45 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config
# Tue, 19 Sep 2017 00:25:46 GMT
# ARGS: DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 19 Sep 2017 00:25:46 GMT
COPY file:53b1bf224098174489129fdc8fec40f8eb4b3d0bf09e3028796a285d9a3457f1 in /opt/ibm/docker/ 
# Tue, 19 Sep 2017 00:25:47 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 19 Sep 2017 00:25:47 GMT
CMD ["/opt/ibm/docker/docker-server" "run" "defaultServer"]
# Tue, 19 Sep 2017 00:25:54 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 19 Sep 2017 00:25:54 GMT
COPY file:85a1543c7ae96e8459a3ecdbc26e3041e476ac27a7895e24ea438f07dd0552f7 in /config/ 
# Tue, 19 Sep 2017 00:26:44 GMT
# ARGS: REPOSITORIES_PROPERTIES=
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/     && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi     && installUtility install --acceptLicense       appSecurity-2.0 localConnector-1.0 ssl-1.0 microProfile-1.0 transportSecurity-1.0     && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi     && rm -rf /output/workarea /output/logs
```

-	Layers:
	-	`sha256:f5e8251b894350dd431d405ba10d18ad69f483861bc4b50e35e6451448485122`  
		Last Modified: Mon, 18 Sep 2017 23:34:31 GMT  
		Size: 46.3 MB (46283368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d9a79c478b51b88d50770b5cd8eb9fa93aef62215129bbc28afd09d293cf7a`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659d0afbaf4bf9ab0a9d3929ac44433ec615f07bdc0e7aeccc0ad450b9c459b0`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44737872969f923172ecc9fdda10a9e9b2050b9eaced49674b70015dd9e9a9da`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c2a61c2b6f00d87cb17b57c583babfa8e8dcb35d1c3c903f4f392dc44b62fc`  
		Last Modified: Mon, 18 Sep 2017 23:34:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbd135753bfc6fc1fd3901a140df3a7ef46b905e8136caa905493449e582893`  
		Last Modified: Tue, 19 Sep 2017 00:07:02 GMT  
		Size: 2.8 MB (2810281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69cb267a3cb63a4eec9d57794a2d935a97327a1945e1f5d511eee89f65b5369`  
		Last Modified: Tue, 19 Sep 2017 00:07:20 GMT  
		Size: 124.1 MB (124136137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffef06458f32c1f4e27f85b1b56d3a2b6a6e3652abf50b5b058b75fee03635c`  
		Last Modified: Tue, 19 Sep 2017 00:31:13 GMT  
		Size: 427.7 KB (427721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f7cae70e896d24409e0fd1c20b3743608fe741a0a3a9a94191e3002b212435`  
		Last Modified: Tue, 19 Sep 2017 00:31:14 GMT  
		Size: 11.5 MB (11515411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fcffc91d1b1cdd14348179b33c3aa67ba6775abfc89ad7c0833a9c72ffef44`  
		Last Modified: Tue, 19 Sep 2017 00:31:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184652220c0cf7b6be83da97dd8aeacbcfacbaadc2caa16e400d8fec9ea0ba12`  
		Last Modified: Tue, 19 Sep 2017 00:31:13 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc91a2ac27b45828a1fc0356250ab2f0f329efcee81e2af9ba70b8c3d20c129e`  
		Last Modified: Tue, 19 Sep 2017 00:31:13 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15543afa28f19bc81ddf32ed982e35617ed7d1f1f2d8cebfcfa886433adc41ce`  
		Last Modified: Tue, 19 Sep 2017 00:31:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42b7a89421e2dd05d6a85d219821dfc5ed83bd03a32c028b6177368516b7f8b`  
		Last Modified: Tue, 19 Sep 2017 00:31:28 GMT  
		Size: 24.8 MB (24783370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
