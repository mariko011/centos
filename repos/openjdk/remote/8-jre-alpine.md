## `openjdk:8-jre-alpine`

```console
$ docker pull openjdk@sha256:63c176fdfc83479c84a563c872dde49805215d94e6ad153cad74e3ef37ce2703
```

-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56271819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:038cdcbf73ff79e1510ac0d789e7666aecff32fa42c835fa95e16673ffefffa3`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:37:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Mon, 19 Jun 2017 22:37:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_VERSION=8u131
# Mon, 19 Jun 2017 22:37:08 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Mon, 19 Jun 2017 22:37:16 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5715c1254671847d6c3f8b1b58fb26a9a84de5e4fa4e57b7a41b9cd6e0325f`  
		Last Modified: Tue, 20 Jun 2017 21:13:01 GMT  
		Size: 54.3 MB (54281425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
