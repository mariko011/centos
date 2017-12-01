## `ibmjava:8-sfj-alpine`

```console
$ docker pull ibmjava@sha256:0cd59e258a2fb941a62ee0261f9813d15a53f4ce7027d4af1ea2b6209ca1491a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:5b0cb74b95ba087deb09cf239e29e5eb9452a78b74777a322b546e959f1a48ae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65956817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9ae183aa9f8f4371e67ab606da4d3b3462c80b163e912ce1cd13f402652cd04`
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
# Fri, 01 Dec 2017 20:51:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp5
# Fri, 01 Dec 2017 20:52:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='296c0982f5a5cfdd29825abd632898a144f1571711160d37b31ed1aada9ee930';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='41ce019143ea698c1dcd399e2f44475d0ee59b3410b98078b1ce176f199b4e12';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='c41e50fe95c8684835f04c8b2b1de10a197ab05986ff3b71fa9036d47846faed';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='b66c7a3273de43cb09df896cc1e5fd73dce2fc8a7fc0a2d0c9b4a6408fb08d73';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='e04d622bf5c932520cb407a4dedff2dadf236a9a5be919424fee7d4cdc4fa7bb';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 01 Dec 2017 20:52:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
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
	-	`sha256:830b3091160a4072e2d289b4ec38dab03b59189ad8f143ea78e92d04341c1069`  
		Last Modified: Fri, 01 Dec 2017 20:59:12 GMT  
		Size: 59.4 MB (59436733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
