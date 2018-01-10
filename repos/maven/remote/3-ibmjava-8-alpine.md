## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:e5a505007a94e6d10fbd9a7a854c11e270eed8e636de0bf37dac30bb5398f76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:98af1d689a20aa9f41302b2a0b0ec5dbf7ef6316eb4bc6363372ed1654c8eabc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.4 MB (179392939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785b419c8d686d2a6de01453dd0a090435c5991ef216602c04546559435a646d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 10 Jan 2018 02:39:09 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='022bd2f108dd63fbaf2259bd4dfc2bc97ca4854f5912f663feace22a504dece3';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='61e4313e53dcc8a0e6027d748a5897e3261fcad95c7306554c71ca4fdbeadd25';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='6dba534ac781d04844e686d510b13b5efff0d1890c5840ab9d3c18a9bacacb0f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='ad4839553ba05ccc0537f4b83b9c482ea2f859ae525fc116645622dee51a1a7f';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5e0755ef8475920671840bb13b61769901cd632797e3191cddbed0633ae3276d';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 10 Jan 2018 02:44:33 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 05:57:28 GMT
RUN apk add --no-cache curl tar bash
# Wed, 10 Jan 2018 05:57:36 GMT
ARG MAVEN_VERSION=3.5.2
# Wed, 10 Jan 2018 05:57:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 10 Jan 2018 05:57:36 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Wed, 10 Jan 2018 05:57:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Wed, 10 Jan 2018 05:57:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 10 Jan 2018 05:57:47 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 10 Jan 2018 05:57:47 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 10 Jan 2018 06:05:43 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 10 Jan 2018 06:05:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 10 Jan 2018 06:05:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 10 Jan 2018 06:05:44 GMT
CMD ["mvn"]
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
	-	`sha256:85e36abe6c933c60a66bf31732131a057a883f49c259cc0ca44553c4ba99397b`  
		Last Modified: Wed, 10 Jan 2018 03:01:46 GMT  
		Size: 162.2 MB (162232608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e527c8682dc9ad872b5d0c55724e9f631d930ecaef50c552061ce4615acc88a6`  
		Last Modified: Wed, 10 Jan 2018 06:16:46 GMT  
		Size: 1.8 MB (1753561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a00853690fc26396bbeb348c3d927bbafdaa032a98628ffd5f334e1d79917101`  
		Last Modified: Wed, 10 Jan 2018 06:16:46 GMT  
		Size: 8.9 MB (8883863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dbbc3f4b40e6915a92dc8a649458f84df9d55782438cf792d8ba6695cb3740d`  
		Last Modified: Wed, 10 Jan 2018 06:19:32 GMT  
		Size: 748.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba368c8f877f1a04146f023feb709bf301f0ae93d47f6adcac4284c5e0895fb6`  
		Last Modified: Wed, 10 Jan 2018 06:19:32 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
