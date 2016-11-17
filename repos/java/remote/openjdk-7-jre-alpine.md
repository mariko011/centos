## `java:openjdk-7-jre-alpine`

```console
$ docker pull java@sha256:54e0fbb92e0b0a4447f9981fa69605747cd159bfb1bff7837460e7a2259d71c7
```

-	Platforms:
	-	linux; amd64

### `java:openjdk-7-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61646414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae5b156c694f25eab578afb7545860405209897ec35bab0ae314492fdd5e9ce`

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
# Thu, 17 Nov 2016 21:47:33 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:34 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:43 GMT
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
	-	`sha256:9cef8ba110b96cefb87a227f637bd3b64c59529cf1266dadd52588165899551c`  
		Last Modified: Thu, 17 Nov 2016 21:56:02 GMT  
		Size: 59.3 MB (59333226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
