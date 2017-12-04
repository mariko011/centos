## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:be00de314029f2ec748f5100a5cfa88a00f8538ea294511aa61cff61a336a027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:681a599bad8a7f06e2b5ddbdc711931128d5aa84281f0502614cc287141bc693
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168422370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21800448aba341cc7b3f75d14a335f9e0a6991bcd61145eef39d05dc763ce520`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 20:51:08 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 01 Dec 2017 20:51:23 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Mon, 04 Dec 2017 21:54:06 GMT
ENV JAVA_VERSION=1.8.0_sr5fp6
# Mon, 04 Dec 2017 21:58:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='b5e2824313e62d647c7c7c7c8a6eb8704e445e915da460d379aedd30e6835030';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='5e2fd0cafeab9c72e8eb038eb22cf911a18607298a47cd3d4684179610ec364c';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='c2dc7e1cf3db66f7ea0497b48ecb79048a553eaa82d5595a43c9bd7542610b0b';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='5f3f12fefe36502954d69fb1178c2a8bcd88624bc77c4c7bafd9193adcc79398';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='116fbee3c36425056d6310dd6ef54ce3debdd7150fa57e28caf39f04108b3edc';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 04 Dec 2017 21:58:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180ad5d872d5fe0880d6d77fe688a2655b4c0a4f79d558f86e37e7a4aab42a2`  
		Last Modified: Fri, 01 Dec 2017 20:57:40 GMT  
		Size: 4.5 MB (4528583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40e1c15f4c41076898ab485cfb1e0f2c898a172c4a36e4960bc10c619120076`  
		Last Modified: Mon, 04 Dec 2017 22:02:27 GMT  
		Size: 161.9 MB (161902286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
