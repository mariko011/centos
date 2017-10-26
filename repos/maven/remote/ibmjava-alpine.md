## `maven:ibmjava-alpine`

```console
$ docker pull maven@sha256:64add36c0f5f208ae274631eb43b69d41f5b08b96dacbeb2f0579f1917eff5fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:4fd190cd66044e6e9c26ce9b367faacf578e075f4ed7e5d9511772e8dd69988a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.1 MB (181091632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d330d5faf333d35dc870bef90f67c01bfebb59ed1135eb5b4642a781d79b476`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 25 Oct 2017 23:19:51 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Wed, 25 Oct 2017 23:19:51 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 00:17:12 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 26 Oct 2017 00:17:24 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 26 Oct 2017 00:17:24 GMT
ENV JAVA_VERSION=1.8.0_sr5
# Thu, 26 Oct 2017 00:19:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e0154e19d283b0257598cd62543c92f886cd0e33ce570750d80c92b1c27b532e';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='b45066ab6ae61b9a7b78b8828dc6f0dcd82ead18b120107c8f523c314592a1a8';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='52f54e1a4911f3a2123ea3e034818a1e8b2e707455ffb7dd9b104b6c5b4c38a6';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='6e5ebc6791a16e62be541c28a788884ac91f4a6b8441f2eabc04ebb3dd8278b5';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='f2aec41f74441a829e5bbbc62f14dc8dd85d8a256c2d6e46ec4e8c071f3b23ed';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Thu, 26 Oct 2017 00:19:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 04:40:11 GMT
RUN apk add --no-cache curl tar bash
# Thu, 26 Oct 2017 04:40:11 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 26 Oct 2017 04:40:12 GMT
ARG USER_HOME_DIR=/root
# Thu, 26 Oct 2017 04:40:12 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 26 Oct 2017 04:40:12 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 26 Oct 2017 04:40:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 26 Oct 2017 04:40:13 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 26 Oct 2017 04:40:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 26 Oct 2017 04:40:14 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 26 Oct 2017 04:40:14 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 26 Oct 2017 04:40:14 GMT
VOLUME [/root/.m2]
# Thu, 26 Oct 2017 04:40:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 26 Oct 2017 04:40:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297d8bda85a810254ec71553ab677c4e53598cf107a12b1e2633b03f568083b4`  
		Last Modified: Thu, 26 Oct 2017 00:26:47 GMT  
		Size: 4.5 MB (4526454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a3d4fb93733e15a50fce9bbd21023f239c34a6378cbdf9faa462021946edb1`  
		Last Modified: Thu, 26 Oct 2017 00:28:13 GMT  
		Size: 164.1 MB (164149110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1fcbc901516f788cc516a8991bebcc3dcdb9d0c4e5585c87451805db9186097`  
		Last Modified: Thu, 26 Oct 2017 04:42:34 GMT  
		Size: 1.8 MB (1750793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73b69c8c264d3a763ed22f6b647a63b6e53d697697a38d55943cfec9b6c0e15`  
		Last Modified: Thu, 26 Oct 2017 04:42:36 GMT  
		Size: 8.7 MB (8672757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7265b10c897b20e7c6886f72a0b81afe73dce486067f9121b450cba5c66c1bc`  
		Last Modified: Thu, 26 Oct 2017 04:42:34 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dde6fae4f4206a32c537a7fc19ae0904b2b05655ee7c1cba1cc6a92add9fbc9`  
		Last Modified: Thu, 26 Oct 2017 04:42:34 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
