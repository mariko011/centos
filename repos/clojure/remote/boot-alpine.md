## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:5663d34ecf2bd6737cac8c9bac7d959904489231d9d581c708d80c278b7acb4a
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.6 MB (107639067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43d29b81b36663fc545cf51de2e9575be4f6649a73d08f2970ad40244fb3b9da`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 17:36:51 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 07 Mar 2017 17:36:51 GMT
ENV BOOT_VERSION=2.7.1
# Tue, 07 Mar 2017 17:36:52 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 07 Mar 2017 17:36:52 GMT
WORKDIR /tmp
# Tue, 07 Mar 2017 17:36:55 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Tue, 07 Mar 2017 17:36:57 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 07 Mar 2017 17:36:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 07 Mar 2017 17:36:57 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 07 Mar 2017 17:40:13 GMT
RUN boot
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5c59ebdcdb641a32de6696b54c2a5c12ed8fde32a625b8855b041f3911c279`  
		Last Modified: Tue, 07 Mar 2017 17:41:39 GMT  
		Size: 2.8 MB (2839927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48121149f47822af28060fb553247cc49f79a06fd8f4a54cd97462731d153058`  
		Last Modified: Tue, 07 Mar 2017 17:41:39 GMT  
		Size: 6.3 KB (6330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a045e2358632b755481c9dbf457ec7f244e59677f97aae255c6876870acf25`  
		Last Modified: Tue, 07 Mar 2017 17:41:42 GMT  
		Size: 33.3 MB (33322392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
