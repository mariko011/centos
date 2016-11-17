## `openjdk:7u121-jdk-alpine`

```console
$ docker pull openjdk@sha256:d1aa59dcf8559eed0b77afeec70eacce83a6a011deef27c7d7f161c3e48c3c31
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77888306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de3f0ffb1420a2d0d8cb00edbe5b70144a8251df3d0655fa4a3b5b0c5d94bdd`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 18 Oct 2016 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:a52044ef2cbfc95e1337f8b54cbbe080c9329cdf1bab6609375645df231e16e9`  
		Last Modified: Thu, 17 Nov 2016 21:53:03 GMT  
		Size: 75.6 MB (75575118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
