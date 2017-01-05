## `openjdk:8-jre-alpine`

```console
$ docker pull openjdk@sha256:0eb02a045af00e1dc2ac9f045ab6be8e3771e6b46115a2b3acdb1487ebe261de
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53743952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b9d236f4769a7e67b34cfad34af8f5613dc2888faabf60309843dfb8cad335`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:54 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:11:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 04 Jan 2017 21:12:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 04 Jan 2017 21:12:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 04 Jan 2017 21:12:37 GMT
ENV JAVA_VERSION=8u111
# Wed, 04 Jan 2017 21:12:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r1
# Wed, 04 Jan 2017 21:12:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:2633e4d4264d44d937a50944b3e81e65321defbde7579c02ac5ff766b0db2a60`  
		Last Modified: Thu, 05 Jan 2017 00:20:52 GMT  
		Size: 51.8 MB (51841657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
