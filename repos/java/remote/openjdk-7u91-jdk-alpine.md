## `java:openjdk-7u91-jdk-alpine`

```console
$ docker pull java@sha256:ffefd3cc0a0318821fc4f03925f23ec0f7901258008c08158036a8c5691b6234
```

-	Platforms:
	-	linux; amd64

### `java:openjdk-7u91-jdk-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78912345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2c6caee22da14eeafc24e473555a5e1184d285008edb37675ae6777a656dfb`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:20:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 20 Sep 2016 00:20:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 20 Sep 2016 00:20:20 GMT
ENV JAVA_VERSION=7u91
# Tue, 20 Sep 2016 00:20:20 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 20 Sep 2016 00:20:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:117f30b7ae3d50ac80e38e390a39f70848edcfc916127c2821604a8114c080aa`  
		Last Modified: Mon, 19 Sep 2016 23:25:22 GMT  
		Size: 2.3 MB (2311053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187ddf52152d8d92e51722e536dd02ec43d2f66b476ea87b4151c382fc922fea`  
		Last Modified: Tue, 20 Sep 2016 00:20:42 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ebddc13b30eab247dc5b1b0cc1493bd65ebd67cb9dcb0b93d2f8a83e095ba8`  
		Last Modified: Tue, 20 Sep 2016 00:21:02 GMT  
		Size: 76.6 MB (76601064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
