## `openjdk:7u91-jre-alpine`

```console
$ docker pull openjdk@sha256:47285fdd16c6f217bbf506e47d0226caa714864bf8f42b359e46e84020cc4f3c
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u91-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62656429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f66e997ddd6f737d810674a5a15037d3fe01b218f93fc5ec9962abeb9af5fe`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 30 Aug 2016 19:54:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:54:14 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:54:14 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:54:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2fb1ed02d711a36db854af1194f20e409b7b7bae2451927e0cd7b7e32ab350`  
		Last Modified: Wed, 31 Aug 2016 17:25:38 GMT  
		Size: 60.3 MB (60345911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
