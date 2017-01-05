## `openjdk:7u121-jdk-alpine`

```console
$ docker pull openjdk@sha256:1de3d4b175a08ff82b5ea63343a0648b729b551c5db6340cd24fd15318947b07
```

-	Platforms:
	-	linux; amd64

### `openjdk:7u121-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77852992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0136435f88ade75fa3011675444446576ab5c7ae885235d680d18fdc11f633`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:54 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:11:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 04 Jan 2017 21:11:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 04 Jan 2017 21:11:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 04 Jan 2017 21:11:55 GMT
ENV JAVA_VERSION=7u121
# Wed, 04 Jan 2017 21:11:55 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Wed, 04 Jan 2017 21:12:08 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:677018860378785b318d09b1d15ba412036ff83c1ced63c91a27732535891784`  
		Last Modified: Thu, 05 Jan 2017 00:13:12 GMT  
		Size: 76.0 MB (75950697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
