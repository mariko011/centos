## `openjdk:7u111-alpine`

```console
$ docker pull openjdk@sha256:67bebf6b0a1fce67a060f396624cc795b9118c2e464902a7a847d0cb600805a7
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u111-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77862668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d7cb1353eeefbba248492002354d69dbd68950e40f190d795df952a1c25bf1`

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
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_VERSION=7u111
# Wed, 19 Oct 2016 22:02:07 GMT
ENV JAVA_ALPINE_VERSION=7.111.2.6.7-r2
# Wed, 19 Oct 2016 22:02:17 GMT
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
	-	`sha256:5e87eeb13ad9ed22981f9c0b7753f79568a84073d032ad7ac2310f0b494bfa1a`  
		Last Modified: Wed, 19 Oct 2016 22:06:24 GMT  
		Size: 75.5 MB (75549480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
