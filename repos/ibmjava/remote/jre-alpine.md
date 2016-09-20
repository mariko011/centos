## `ibmjava:jre-alpine`

```console
$ docker pull ibmjava@sha256:4749ac163674922bb9cee68e2b1cb4c756b49c947abbfeb3426df6633572ecbc
```

-	Platforms:
	-	linux; amd64

### `ibmjava:jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.5 MB (115522308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed86fb84bf8ad9d1f4bb0aff0bed0d5e5e521c104440fa0b0e117bcf84736f61`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:13:03 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 20 Sep 2016 00:13:15 GMT
RUN apk --update add --no-cache openssl ca-certificates     && ln -s /lib /lib64     && GLIBC_VER="2.23-r3"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/$GLIBC_VER.apk $ALPINE_GLIBC_REPO/$GLIBC_VER/glibc-$GLIBC_VER.apk     && apk add --allow-untrusted /tmp/$GLIBC_VER.apk     && apk --update add xz     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && tar -xvJf /tmp/gcc-libs.tar.xz -C /tmp usr/lib/libgcc_s.so.1 usr/lib/libgcc_s.so     && mv /tmp/usr/lib/libgcc* /usr/glibc-compat/lib     && rm -rf /tmp/$GLIBC_VER.apk /tmp/usr /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 20 Sep 2016 00:13:15 GMT
ENV JAVA_VERSION=1.8.0_sr3fp11
# Tue, 20 Sep 2016 00:13:57 GMT
RUN ESUM="a5e0e4e74bd50f6e57117592a97ded215225d92a434582089c9518807812e54a"     && BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"     && YML_FILE="jre/linux/x86_64/index.yml"     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml $BASE_URL/$YML_FILE     && JAVA_URL=$(cat /tmp/index.yml | sed -n '/'$JAVA_VERSION'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r')     && wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin $JAVA_URL     && echo "$ESUM  /tmp/ibm-java.bin" | sha256sum -c -     && echo "INSTALLER_UI=silent" > /tmp/response.properties     && echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties     && echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties     && mkdir -p /opt/ibm     && chmod +x /tmp/ibm-java.bin     && /tmp/ibm-java.bin -i silent -f /tmp/response.properties     && rm -f /tmp/response.properties     && rm -f /tmp/index.yml     && rm -f /tmp/ibm-java.bin
# Tue, 20 Sep 2016 00:13:58 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832787d032e308aa18923736014e44150e93bcd05fd92ac11b218b3edc198bf4`  
		Last Modified: Tue, 20 Sep 2016 00:14:07 GMT  
		Size: 2.8 MB (2765632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60886a7e79e2391dd34846c323dadf9aa14560043317f1effab619d29f43cf`  
		Last Modified: Tue, 20 Sep 2016 00:14:32 GMT  
		Size: 110.4 MB (110445623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
