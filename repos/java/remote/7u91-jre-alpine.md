## `java:7u91-jre-alpine`

```console
$ docker pull java@sha256:88fb942a90fcd7e1c531d51e31e306ffa136fd1268fc9b06579c5aecfbee9ffb
```

-	Platforms:
	-	linux; amd64

### `java:7u91-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62659781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da32fee6db590d1c7266f3c8117968c997d41da9d8ac08bae2feeb73066ccce3`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:04:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 23 Sep 2016 17:04:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:04:12 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:04:12 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2449d3eaf19794ff83a76f45241e7036f03368f3066f75a6cdf1bd473dd5c0f7`  
		Last Modified: Fri, 23 Sep 2016 17:04:39 GMT  
		Size: 60.3 MB (60346620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
