## `ibmjava:8-jre-alpine`

```console
$ docker pull ibmjava@sha256:5c1569b30ecb3694ccece122608279566524f62fb925b4418a37655e385aaf30
```

-	Platforms:
	-	linux; amd64

### `ibmjava:8-jre-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115325729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8844c8614d3353a485dfa1fb2df4429e9a164bf845c4e74983166c8d52e23a57`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 19:12:22 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 27 Dec 2016 19:12:43 GMT
RUN apk --update add --no-cache openssl ca-certificates     && ln -s /lib /lib64     && GLIBC_VER="2.23-r3"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/$GLIBC_VER.apk $ALPINE_GLIBC_REPO/$GLIBC_VER/glibc-$GLIBC_VER.apk     && apk add --allow-untrusted /tmp/$GLIBC_VER.apk     && apk --update add xz     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && tar -xvJf /tmp/gcc-libs.tar.xz -C /tmp usr/lib/libgcc_s.so.1 usr/lib/libgcc_s.so     && mv /tmp/usr/lib/libgcc* /usr/glibc-compat/lib     && rm -rf /tmp/$GLIBC_VER.apk /tmp/usr /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 08 Feb 2017 22:45:53 GMT
ENV JAVA_VERSION=1.8.0_sr4
# Wed, 08 Feb 2017 22:46:26 GMT
RUN ESUM="88bdca13db3bba800cfe76504abc61a824a76560aa44c3e060e2d09434af8248"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Wed, 08 Feb 2017 22:46:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533bcfafc3178691ef608098859c92032010aab71bea954f8ae01000067901e5`  
		Last Modified: Tue, 27 Dec 2016 19:15:27 GMT  
		Size: 2.8 MB (2766252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a977eccf3100dbeee6e780d58554bd5c96e5a94a7301f485976f26f55e06be30`  
		Last Modified: Wed, 08 Feb 2017 22:51:19 GMT  
		Size: 110.2 MB (110246387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
