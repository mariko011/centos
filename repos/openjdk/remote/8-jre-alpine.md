## `openjdk:8-jre-alpine`

```console
$ docker pull openjdk@sha256:dd7d7632efb36ce9d0970045047c0d9f1c778cf882365e662c329cd2c1d8ea3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:8-jre-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:bbd49f14df8b40641b52ecd5445992732a5ef33273dd4bb22cf34671aa1d4a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56273423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af80ba033a2ba56a199d619bdde53b12670256e8bffed1c3df40ed44315e34b`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
