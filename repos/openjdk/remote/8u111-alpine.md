## `openjdk:8u111-alpine`

```console
$ docker pull openjdk@sha256:3827f0c05dc4797bbbba5d9ee80ecd9099266db8966a649bbab7227ba09816ad
```

-	Platforms:
	-	linux; amd64

### `openjdk:8u111-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69457746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3767dc6eb3aa3e9a864982690df9d3e12e56c8bfe524eed74dbdf845a77483`

```dockerfile
# Tue, 27 Dec 2016 18:17:25 GMT
ADD file:92ab746eb22dd3ed2b87469c719adf3c1bed7302653bbd76baafd7cfd95e911e in / 
# Wed, 04 Jan 2017 21:11:54 GMT
ENV LANG=C.UTF-8
# Wed, 04 Jan 2017 21:11:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 04 Jan 2017 21:12:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 04 Jan 2017 21:12:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 04 Jan 2017 21:12:26 GMT
ENV JAVA_VERSION=8u111
# Wed, 04 Jan 2017 21:12:26 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r1
# Wed, 04 Jan 2017 21:12:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:7b971317ed1341b248ce40598e1ac736c0e9012e44a572bbf6285edac915dfc8`  
		Last Modified: Thu, 05 Jan 2017 00:18:00 GMT  
		Size: 67.6 MB (67555451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
