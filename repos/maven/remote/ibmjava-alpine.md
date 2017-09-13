## `maven:ibmjava-alpine`

```console
$ docker pull maven@sha256:5bfaa0c075c96194f9d93bd12f89ff4c823b0e6ff2d4fe523c293a71eb53e4e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8d4e6c80cf3299c13377a3d1a1a9ba908919da315cc967c60451b2bb64582d87
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165001848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0463d4a59b1234477d42eb2945d00a5faa19ae91f42bb5e0b0e7904de29837d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 13 Sep 2017 17:43:40 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0550e9e44b50ec77cd8774f99051b910816daf3cf275c05438994314ff61d7ee';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fc3180000ee745ba11fbcb8c0eda837ccf34830de652c3747682174980c0a466';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='bf39ce59310f477d8864134b5d1e8c090ea41a5421c17b6b0eaf5350fdc097bf';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7056455a52d8f753e435d3994ca87c22c496d19d4a06634ba57e4ffc50d0c722';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='89dc14c0bb8199463396f3f71a168e43d61550c7821acee50ec8c3f6ed60a83f';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Wed, 13 Sep 2017 17:43:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Sep 2017 18:17:31 GMT
RUN apk add --no-cache curl tar bash
# Wed, 13 Sep 2017 18:17:31 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 13 Sep 2017 18:17:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 13 Sep 2017 18:17:31 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 13 Sep 2017 18:17:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 13 Sep 2017 18:17:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 13 Sep 2017 18:17:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 13 Sep 2017 18:17:33 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 13 Sep 2017 18:17:34 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 13 Sep 2017 18:17:34 GMT
VOLUME [/root/.m2]
# Wed, 13 Sep 2017 18:17:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 13 Sep 2017 18:17:34 GMT
CMD ["mvn"]
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
	-	`sha256:da73a74ee4b39e4a6997a15fd8c628210eac356edb0302c7d2f7f72e8bf0dac3`  
		Last Modified: Wed, 13 Sep 2017 17:54:13 GMT  
		Size: 148.5 MB (148468039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13816ccb32ce57e6335cb3f0fa05d9311e85b46c674a2670f9f3d87d1a35cf5`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 1.7 MB (1716109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44550e1a63cc80ad21823622a498cb0705c90b69f6dcd891767e23acbf63c3d`  
		Last Modified: Wed, 13 Sep 2017 18:19:41 GMT  
		Size: 8.7 MB (8672762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48746aeecfe7dea8a47e3516751ba109fa60d052249ebbbc50eba988fdec0616`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 733.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec1a794d1772e4af7c3e6d3b694597d86d9095b41ea8ac9da1c8dd578d47ed0`  
		Last Modified: Wed, 13 Sep 2017 18:19:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
