## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:e5331ed4ff6c1ab7a3b9273138adefd829661c815a3106c0b0f91d987d4ccaab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:ac53fdd19ff1446ef9a15f557dc1da9e4443bb52a4767624e91be55b3dea0829
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179039782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffc4f0c086a221d8ff68469c87e95c99f01a94a6c891da53b0457852d7cf92c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 01 Dec 2017 20:53:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='5989bd22deb8147fb14f5ef0b225c3514331eee82b8bd43a43688927b3867db0';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='95f6c61db9581255f708988d1fc13df46a53561c3a4eb78ac0440b06b9680fab';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a635df7beafc8f318cab0630cfc0d2009051c095a755d27b0d617e9dee627807';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='facfa6623ac39e1c103e05c4b98638ab1ffd3dcd50f6347563691561f9a95383';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='1e0237eeaa96c168f5ce54fcbddbb949e4654f31d2a5f60314ee06dca98fc6bd';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Fri, 01 Dec 2017 20:53:37 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Dec 2017 23:20:29 GMT
RUN apk add --no-cache curl tar bash
# Fri, 01 Dec 2017 23:20:34 GMT
ARG MAVEN_VERSION=3.5.2
# Fri, 01 Dec 2017 23:20:34 GMT
ARG USER_HOME_DIR=/root
# Fri, 01 Dec 2017 23:20:34 GMT
ARG SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff
# Fri, 01 Dec 2017 23:20:34 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries
# Fri, 01 Dec 2017 23:20:36 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.2/binaries MAVEN_VERSION=3.5.2 SHA=707b1f6e390a65bde4af4cdaf2a24d45fc19a6ded00fff02e91626e3e42ceaff USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 01 Dec 2017 23:20:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 01 Dec 2017 23:20:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 01 Dec 2017 23:20:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 01 Dec 2017 23:20:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 01 Dec 2017 23:20:37 GMT
VOLUME [/root/.m2]
# Fri, 01 Dec 2017 23:20:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 01 Dec 2017 23:20:37 GMT
CMD ["mvn"]
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
	-	`sha256:a60b824b3fd94d0179bc28b6b5c4643f4aaf61772e69d87322fd82882d6d1bec`  
		Last Modified: Fri, 01 Dec 2017 21:01:29 GMT  
		Size: 161.9 MB (161883947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d72a46525c1b809682b3a29d7ab4ead179728cc187c773f6234ab5eb2244bdf`  
		Last Modified: Fri, 01 Dec 2017 23:21:41 GMT  
		Size: 1.8 MB (1750797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b442871e0e42a782249bc0d3db26e184ad9cdf353e1651bbc703dbb0a7120f`  
		Last Modified: Fri, 01 Dec 2017 23:21:42 GMT  
		Size: 8.9 MB (8883866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2985d48becef528b6786d29d171e1132395d18915eeb58aa21590bc458922e70`  
		Last Modified: Fri, 01 Dec 2017 23:21:41 GMT  
		Size: 732.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad873482c55d20789d81adecaecebae7055de01bfc74d0c6357354f75f4ea881`  
		Last Modified: Fri, 01 Dec 2017 23:21:41 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
