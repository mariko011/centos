## `ibmjava:sfj-alpine`

```console
$ docker pull ibmjava@sha256:098cb137a0560cf1fb82644dc535c0c5b1fc0ec9de5b581b6d50b544ba8b9e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:0c323f2d1c0115a2f03e5312524368eab83c2990901caeca6a9c43c4fc6772cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66454883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f60944dd0af4718b57538607409571b6a972ba58e72ea6fcb4513f7cf7dfca4`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Wed, 13 Sep 2017 17:39:50 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 13 Sep 2017 17:40:06 GMT
RUN apk --update add --no-cache ca-certificates curl openssl xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && apk del curl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 13 Sep 2017 17:40:06 GMT
ENV JAVA_VERSION=1.8.0_sr4fp11
# Wed, 13 Sep 2017 17:42:21 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='4fcd64915fb9dec9e60d5aaaf07958db583312fc86eb95ae3336b5c22cf73a4d';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='d0ff0812eba0dfee8639f11403cf56d9dd16a977a137ecdb7c057459ea943eb2';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='f876c556da07575891af0eeb9dc2dc31c718a1614fbdd45aa2e5338f3202f991';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='6eb97bc4f807252699b7f3fd578290d6c693e0f8a0e1ea76be898d2929567d21';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='2c729648d8a2b3021d30ee2343d70bd3aa855df2a07e6b0e081ff25ed280b010';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:42:21 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd6a2460e4be15d253bc9d5293b9847af9ceedfbb7b51a3a710613b2b8cd47a`  
		Last Modified: Wed, 13 Sep 2017 17:48:42 GMT  
		Size: 4.2 MB (4153449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535bc2c699d3ae8f5afec7ea86dfe100de91d8278d37585258930d1bc0cb094`  
		Last Modified: Wed, 13 Sep 2017 17:50:20 GMT  
		Size: 60.3 MB (60311032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
