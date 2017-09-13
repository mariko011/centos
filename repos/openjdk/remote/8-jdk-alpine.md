## `openjdk:8-jdk-alpine`

```console
$ docker pull openjdk@sha256:a2884cd7302553f8c346962bda2faa1d5d00e0153f8eb357f3c997c54076b218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `openjdk:8-jdk-alpine` - linux; amd64

```console
$ docker pull openjdk@sha256:98ec33932f98f0909b294d5015911a7a80d61930b9405d1a832823e13a7e9230
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.0 MB (72041991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bdf0e122f645bb36efcc874029bfb6616a5e8fd86a848e7032eaedced8b7ee2`
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
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
