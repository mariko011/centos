## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:5ad10dca7e6cf1fad1744b0cdd3f2615a863d516535d0be0837caaa0331cbff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:aecfde2c721c0813f5bef6e37df00629f9b106cfd3801db743616dca376335dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157766140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1a7e061ad6bb563bd386d0a0a21e29a3bb10ad1069223c69c83d8e1367b5527`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 10 Jan 2018 02:30:09 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 10 Jan 2018 02:31:39 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 10 Jan 2018 02:31:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 23:41:36 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Tue, 16 Jan 2018 23:41:41 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 16 Jan 2018 23:41:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Tue, 16 Jan 2018 23:41:42 GMT
RUN mkdir /logs     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config
# Tue, 16 Jan 2018 23:41:46 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 16 Jan 2018 23:41:46 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Tue, 16 Jan 2018 23:41:47 GMT
EXPOSE 9080/tcp 9443/tcp
# Tue, 16 Jan 2018 23:41:47 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Tue, 16 Jan 2018 23:41:47 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Thu, 18 Jan 2018 00:03:14 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07bdaf979c3d2f84a9b4168d7a83db00cb765237cb508d0f5402331abd0afc9b`  
		Last Modified: Wed, 10 Jan 2018 03:00:45 GMT  
		Size: 59.4 MB (59445729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9bfd304d2e5d0e4f9a99789434371f86cdaa5dd6429d08cd3b8d071ffe1a5c`  
		Last Modified: Tue, 16 Jan 2018 23:42:44 GMT  
		Size: 91.8 MB (91796613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e410ae0e687f008e5a025be89e38670c9996137cfa38e51a654a7abee18dbd5d`  
		Last Modified: Tue, 16 Jan 2018 23:42:38 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ae09b1f33b39ce18bb2f6055f26a78b32106f1ff02c6371351dbb603726773`  
		Last Modified: Tue, 16 Jan 2018 23:42:38 GMT  
		Size: 764.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f1083344227370b55fff05768195f3e9052d102cbc551b7921a6d8f651ef0f`  
		Last Modified: Tue, 16 Jan 2018 23:42:38 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf7620e43a2f353f219e9871963fb6196183783f65dc12b134897cbc0f71555`  
		Last Modified: Thu, 18 Jan 2018 00:04:44 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
