## `openjdk:7-jre-alpine`

```console
$ docker pull openjdk@sha256:39c458fa95fd8053f970f07d1bc0b178bf49ddcb4c609ce3c484cacf838bc186
```

-	Platforms:
	-	linux; amd64

### `openjdk:7-jre-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62657389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af129d96bc7683ab045ecab7decc84e83a53e86cc28d1154f0f1f665b74f5b8c`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:23:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Tue, 20 Sep 2016 00:23:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 20 Sep 2016 00:23:39 GMT
ENV JAVA_VERSION=7u91
# Tue, 20 Sep 2016 00:23:39 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 20 Sep 2016 00:23:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:8336e971ca8cce46437fd2107c126cec62f9dc14318d4cbebf012d1e5e2205e6`  
		Last Modified: Tue, 20 Sep 2016 00:24:17 GMT  
		Size: 60.3 MB (60346108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
