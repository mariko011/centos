## `java:7-jre-alpine`

```console
$ docker pull java@sha256:7ae8759a41777bf9d0791b970f193e0bb971725bb5b81343bad7c72cc13ff602
```

-	Platforms:
	-	linux; amd64

### `java:7-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61621507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cf43c4e774e651a47a4d1ce7b421941d7923a76914a0f000d7b346fef117ca8`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 18 Oct 2016 20:40:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 19 Oct 2016 22:02:18 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:18 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b73ce31a9e421fc759c14f9dd45ca630d89d4b1827f27b56a4ff23e6484636`  
		Last Modified: Wed, 19 Oct 2016 22:08:46 GMT  
		Size: 59.3 MB (59308319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
