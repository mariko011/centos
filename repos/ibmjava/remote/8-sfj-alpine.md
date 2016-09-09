## `ibmjava:8-sfj-alpine`

```console
$ docker pull ibmjava@sha256:4a8dbdd996b8ec3d887f1a15a5304a8712724a56aa05fc47609ec7f3e395a273
```

-	Platforms:
	-	linux; amd64

### `ibmjava:8-sfj-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64942780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464f674d0a7cf048a50c67c24f4a79eabe666cff601844c36dbb8d499d28dabf`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:47:02 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 30 Aug 2016 19:47:21 GMT
RUN apk --update add --no-cache openssl ca-certificates     && ln -s /lib /lib64     && GLIBC_VER="2.23-r3"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/$GLIBC_VER.apk $ALPINE_GLIBC_REPO/$GLIBC_VER/glibc-$GLIBC_VER.apk     && apk add --allow-untrusted /tmp/$GLIBC_VER.apk     && apk --update add xz     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && tar -xvJf /tmp/gcc-libs.tar.xz -C /tmp usr/lib/libgcc_s.so.1 usr/lib/libgcc_s.so     && mv /tmp/usr/lib/libgcc* /usr/glibc-compat/lib     && rm -rf /tmp/$GLIBC_VER.apk /tmp/usr /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 07 Sep 2016 18:00:28 GMT
ENV JAVA_VERSION=1.8.0_sr3fp11
# Wed, 07 Sep 2016 18:01:51 GMT
RUN ESUM="da4497d49ae2f3789df1f1ec8c085eec399a1be4cdb7a8ec85cd066d1cdaf9f1"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="sfj/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 07 Sep 2016 18:01:52 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ec76e2aa68208823edd6df8456d4489d53c482e0a7775ca84a1081d9b1721c`  
		Last Modified: Wed, 07 Sep 2016 18:03:41 GMT  
		Size: 2.8 MB (2766549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b617742994779b3045b0ed9c86cd48b7afc4eb6c01deb41d00797b1eca0e4af8`  
		Last Modified: Wed, 07 Sep 2016 18:05:09 GMT  
		Size: 59.9 MB (59865945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
