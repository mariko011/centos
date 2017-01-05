## `openjdk:7u121-jre-alpine`

```console
$ docker pull openjdk@sha256:2775df5236a001dcb336714eb78eb3c05a6a023d89ed054f8cdf8f356045d8d3
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61614458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84852393871c43f358f40d95125b564b720a5643e69595996979ec0db085fbbe`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:54 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:11:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 04 Jan 2017 21:12:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 04 Jan 2017 21:12:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 04 Jan 2017 21:12:10 GMT
ENV JAVA_VERSION=7u121
# Wed, 04 Jan 2017 21:12:10 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 04 Jan 2017 21:12:25 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:0a8490d0dfd399b3a50e9aaa81dba0d425c3868762d46526b41be00886bcc28b`  
		Last Modified: Tue, 27 Dec 2016 18:19:22 GMT  
		Size: 1.9 MB (1902063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a1dac692eaaa4c9c41f906aa430138b06b88d601950c39c1a896e25cbbd87e`  
		Last Modified: Thu, 05 Jan 2017 00:12:51 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1491d22942963d24fc11a222d3ddfacc579dc9437c2b0dd2d1ee904cbc549de`  
		Last Modified: Thu, 05 Jan 2017 00:15:25 GMT  
		Size: 59.7 MB (59712163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
