## `ibmjava:8-jre-alpine`

```console
$ docker pull ibmjava@sha256:8a72a7ff2796c45ed35dec9dea81fa64431f2681d5467725a5ff1ea0bddd534f
```

-	Platforms:
	-	linux; amd64

### `ibmjava:8-jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115924977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16e1c6669a4f3228a8bf2e7e8e769afe028760bc577e9971fda4a731b5d767f3`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 21:58:25 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 03 Apr 2017 17:14:14 GMT
RUN apk --update add --no-cache openssl ca-certificates     && GLIBC_VER="2.23-r3"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/$GLIBC_VER.apk $ALPINE_GLIBC_REPO/$GLIBC_VER/glibc-$GLIBC_VER.apk     && apk add --allow-untrusted /tmp/$GLIBC_VER.apk     && apk --update add xz     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /usr/glibc-compat/lib     && rm -rf /tmp/$GLIBC_VER.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 04 May 2017 22:31:26 GMT
ENV JAVA_VERSION=1.8.0_sr4fp5
# Thu, 04 May 2017 22:32:00 GMT
RUN ESUM="187f67fa0fa23416811aa76df70d9e43ce75bb18bba0e7be080eb83f0c21fb20"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Thu, 04 May 2017 22:32:01 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b06a2b71694d05ed652713916f0177d5f0637cab585ff7862e6b978a2a31e0`  
		Last Modified: Mon, 03 Apr 2017 17:18:24 GMT  
		Size: 2.8 MB (2771933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5a89071fff2209a812c7497f0727269475e67da8f075019f426a4a3c0f668f`  
		Last Modified: Thu, 04 May 2017 22:36:42 GMT  
		Size: 110.8 MB (110839660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
