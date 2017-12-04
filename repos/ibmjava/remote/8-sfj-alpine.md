## `ibmjava:8-sfj-alpine`

```console
$ docker pull ibmjava@sha256:4c1ce57c33df87f886b147445a233bcaf99455f33a15ecd6bb45b1c8e047b1d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:16752153543c0a9349aba53a047da712efcc0e26e7f4fa9d3dd87c9ed8e7d87f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65961907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66edf7f3dd8c82475d9a4a30ed70db7ff3ddbbbbf483c66db602553686223ca3`
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
# Mon, 04 Dec 2017 21:56:04 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='1f594b34034cae332bfd773fd4bf1c9e43292df04d276f79b7488250f9cc0822';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='ff9d42a6b567c7f0c8e8e4590297ba3b796ee23ea6d3b7f9b822dd343ce85930';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e7206b4c6c790470b0eb6cbcc4f5b0d76ca1f5f88d87cc7784b377b8a83d2a58';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='bf795862c81e39f66cb7fed3d4a220c314cbce00553c82e91afee604aed0f86d';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='a9274e82ccded46a39c63f435e6a5c37c78713809575691f0c2a68c714e60a42';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Mon, 04 Dec 2017 21:56:04 GMT
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
	-	`sha256:7df3ef312b5da8843e8acf6b236bfb384fd63f6c2d6d98730776bd81575e5d29`  
		Last Modified: Mon, 04 Dec 2017 22:01:16 GMT  
		Size: 59.4 MB (59441823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
