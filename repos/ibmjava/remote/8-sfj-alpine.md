## `ibmjava:8-sfj-alpine`

```console
$ docker pull ibmjava@sha256:92080833f99c79ebd853bde87fbd90349d7e4e9d063f9b6f69407a5e784a95ae
```

-	Platforms:
	-	linux; amd64

### `ibmjava:8-sfj-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64921556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1d660ec4da23e5efe43165f04bbb47b78fcb69e94733bc339ed70c5f65dd01a`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 23:25:48 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 18 Oct 2016 23:26:00 GMT
RUN apk --update add --no-cache openssl ca-certificates     && ln -s /lib /lib64     && GLIBC_VER="2.23-r3"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/$GLIBC_VER.apk $ALPINE_GLIBC_REPO/$GLIBC_VER/glibc-$GLIBC_VER.apk     && apk add --allow-untrusted /tmp/$GLIBC_VER.apk     && apk --update add xz     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && tar -xvJf /tmp/gcc-libs.tar.xz -C /tmp usr/lib/libgcc_s.so.1 usr/lib/libgcc_s.so     && mv /tmp/usr/lib/libgcc* /usr/glibc-compat/lib     && rm -rf /tmp/$GLIBC_VER.apk /tmp/usr /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 18 Oct 2016 23:26:05 GMT
ENV JAVA_VERSION=1.8.0_sr3fp12
# Tue, 18 Oct 2016 23:28:05 GMT
RUN ESUM="064e553d4bce75553d987ebd58e0331f24852d3f4e6b3da7fbeb670b057780b8"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="sfj/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 18 Oct 2016 23:28:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fc20c80dcd1f60448cc6c534a5bf5ccac173643389e507d940a559dcc5e402`  
		Last Modified: Tue, 18 Oct 2016 23:26:59 GMT  
		Size: 2.8 MB (2766193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf962be13b97dc96b18c52650ff8468c33685fe6778d2fd626f83f85e494fda`  
		Last Modified: Tue, 18 Oct 2016 23:28:29 GMT  
		Size: 59.8 MB (59842405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
