## `orientdb:latest`

```console
$ docker pull orientdb@sha256:dba75111f029e829d7e02cf7749d418c5b7ec8b2b1eb4572de3869af1e04a804
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86933626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b000046549d28b29f7fcbb32643f89e306e011ffaa0fc1a5944dd158383d3ac5`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:58:15 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 18 Nov 2016 01:58:29 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 18 Nov 2016 01:58:29 GMT
ENV ORIENTDB_VERSION=2.2.13
# Fri, 18 Nov 2016 01:58:30 GMT
ENV ORIENTDB_DOWNLOAD_MD5=030bbf826830d3e8533ff7db332f2ad7
# Fri, 18 Nov 2016 01:58:30 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ab8f759067a8787c6013d3f15b37f82c3d96784e
# Fri, 18 Nov 2016 01:58:30 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.13/orientdb-community-2.2.13.tar.gz
# Fri, 18 Nov 2016 01:58:32 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Fri, 18 Nov 2016 01:58:37 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 18 Nov 2016 01:58:38 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 18 Nov 2016 01:58:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 18 Nov 2016 01:58:39 GMT
WORKDIR /orientdb
# Fri, 18 Nov 2016 01:58:39 GMT
EXPOSE 2424/tcp
# Fri, 18 Nov 2016 01:58:40 GMT
EXPOSE 2480/tcp
# Fri, 18 Nov 2016 01:58:40 GMT
CMD ["server.sh"]
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
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f20afd2c8c58a3a39fbee3a3b3fd7b83cd2a98e76459d1c5fd07ae5b9e0967`  
		Last Modified: Fri, 18 Nov 2016 01:59:34 GMT  
		Size: 262.0 KB (262021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959c105ea201549663e97df1f8ae6b9693f145d87abe2abe50e15d828bd2e14c`  
		Last Modified: Fri, 18 Nov 2016 01:59:36 GMT  
		Size: 35.0 MB (35002708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
