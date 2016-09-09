## `java:7u91-alpine`

```console
$ docker pull java@sha256:cbdefa16e48c77686e37ea183010d36b3e4be7720fcd3a3b50b1d073c79a776f
```

-	Platforms:
	-	linux; amd64

### `java:7u91-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78911414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ebe57c9a3f218b3525d3fbcef6979fea3d14f5274bb5148687cb48c72fa0267`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
