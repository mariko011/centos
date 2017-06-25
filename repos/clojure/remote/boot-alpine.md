## `clojure:boot-alpine`

```console
$ docker pull clojure@sha256:a40e0533d1e088825189b44b3285c9a961c257fc70c99c85ed709a8dc5264815
```

-	Platforms:
	-	linux; amd64

### `clojure:boot-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108299524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8d45b7e1b5fe6a14d8c83b4536db2d7904a2694da2ad6da1c59c4f2d47c77c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:35:27 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Mon, 19 Jun 2017 22:35:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:35:29 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:36:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 17:43:09 GMT
MAINTAINER Wes Morgan <wesmorgan@icloud.com>
# Tue, 20 Jun 2017 17:44:31 GMT
ENV BOOT_VERSION=2.7.1
# Tue, 20 Jun 2017 17:44:32 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 20 Jun 2017 17:44:33 GMT
WORKDIR /tmp
# Tue, 20 Jun 2017 17:44:37 GMT
RUN apk add --update bash openssl && rm -rf /var/cache/apk/*
# Tue, 20 Jun 2017 17:44:40 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.5.2/boot.sh   && echo "Comparing installer checksum..."   && echo "d9cbefc6cbf043361a58b416e6d62fc80e5ead32 *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 20 Jun 2017 17:44:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/usr/local/bin/
# Tue, 20 Jun 2017 17:44:41 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 20 Jun 2017 17:46:58 GMT
RUN boot
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d6fbc2ab6eafc4e238b99bdbd470d39d99dffe9d70123777c74469211364bb`  
		Last Modified: Tue, 20 Jun 2017 21:04:41 GMT  
		Size: 70.1 MB (70050234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a555d407233a80eead5a30b5b58d1f82aedbe85efd7bf40ddcc62f0e3760f5d6`  
		Last Modified: Sun, 25 Jun 2017 07:22:50 GMT  
		Size: 2.9 MB (2916369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:493e1c491fc18ed87da9f880559c61319b514f73afe1ce126c38f87d83f90986`  
		Last Modified: Sun, 25 Jun 2017 07:22:48 GMT  
		Size: 6.3 KB (6347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcef0727265429b49877869401bddca8124bb025dedd7e6a8440ef3baeb5b2c`  
		Last Modified: Sun, 25 Jun 2017 07:22:52 GMT  
		Size: 33.3 MB (33336180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
