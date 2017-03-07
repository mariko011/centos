## `orientdb:latest`

```console
$ docker pull orientdb@sha256:6d20235a1abded9acb78b80dbf92f4bcc13e94c8ea0dc204a7967bafb3ff60dd
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111366618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d62ef348dbaef36d6c9df5a145c4ca5024076789d56615439206841b853bc226`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:43:39 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 Mar 2017 19:43:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 07 Mar 2017 19:43:55 GMT
ENV ORIENTDB_VERSION=2.2.17
# Tue, 07 Mar 2017 19:43:55 GMT
ENV ORIENTDB_DOWNLOAD_MD5=3be5c561fbee52ca6ba12f1637f206fc
# Tue, 07 Mar 2017 19:43:56 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=e43104e7dafb301a232212d2300922a086f7aedf
# Tue, 07 Mar 2017 19:43:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.17/orientdb-community-2.2.17.tar.gz
# Tue, 07 Mar 2017 19:43:58 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 07 Mar 2017 19:44:06 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 Mar 2017 19:44:07 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 19:44:08 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 Mar 2017 19:44:08 GMT
WORKDIR /orientdb
# Tue, 07 Mar 2017 19:44:09 GMT
EXPOSE 2424/tcp
# Tue, 07 Mar 2017 19:44:10 GMT
EXPOSE 2480/tcp
# Tue, 07 Mar 2017 19:44:11 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c403019e29bc28ec6bb8afec8fd510fbbecd9605c7eb6e2429c8aabf02d7d2d`  
		Last Modified: Tue, 07 Mar 2017 19:45:15 GMT  
		Size: 258.5 KB (258489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21ca1882a685ac4124b0191781583f3bba87d1d65bfaf1a697aa03b190cb57b`  
		Last Modified: Tue, 07 Mar 2017 19:45:18 GMT  
		Size: 39.6 MB (39637711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
