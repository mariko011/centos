## `java:openjdk-7-jre-alpine`

```console
$ docker pull java@sha256:e5ac7e2b2d6dba7a6b32aec3df94baf7069f9a41112f429a8fee9b8a553aec6a
```

-	Platforms:
	-	linux; amd64

### `java:openjdk-7-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62664179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:987f344b5eb2ca4de8e7bb3c3456b190725ac2eb3e768eb4cbb8db52a68f38bf`

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
# Tue, 18 Oct 2016 20:40:13 GMT
ENV JAVA_VERSION=7u91
# Tue, 18 Oct 2016 20:40:14 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 18 Oct 2016 20:40:24 GMT
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
	-	`sha256:25092d337590f0d72d494e3c122a4e0530685562cbf40b31ae9319673a17f2ae`  
		Last Modified: Tue, 18 Oct 2016 20:48:13 GMT  
		Size: 60.4 MB (60350991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
