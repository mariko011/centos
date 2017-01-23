## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:6bca2db34b9b140b70d255b922cb53813f67b0dc9aaea41f3d467e2e586390a1
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86597868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf3035e9a8a8112aa0ef2eae1b9d7face47c9a59e73a778063ce49456bf6581`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:12:58 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Mon, 23 Jan 2017 18:36:47 GMT
ENV BOOT_VERSION=2.7.1
# Mon, 23 Jan 2017 18:36:47 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 23 Jan 2017 18:36:48 GMT
WORKDIR /tmp
# Mon, 23 Jan 2017 18:36:51 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Mon, 23 Jan 2017 18:36:53 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 23 Jan 2017 18:36:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Mon, 23 Jan 2017 18:36:54 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 23 Jan 2017 18:38:57 GMT
RUN boot
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561e8ee8b71ebf706516d90815b45d6b40360fcfca544421d10ba6ff18515736`  
		Last Modified: Mon, 23 Jan 2017 18:42:42 GMT  
		Size: 1.6 MB (1601003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4e74feaf985266b5484784c6a9b74741527e27f1cdcd0763b54c94a8544c48`  
		Last Modified: Mon, 23 Jan 2017 18:42:40 GMT  
		Size: 6.3 KB (6329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9046b47ca1ab009fc275021eaab14c7a7856e256ea0a78a4bdfc492c6a9352c9`  
		Last Modified: Mon, 23 Jan 2017 18:42:45 GMT  
		Size: 33.3 MB (33321572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
