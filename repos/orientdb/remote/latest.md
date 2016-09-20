## `orientdb:latest`

```console
$ docker pull orientdb@sha256:23a3d1fd4be0ef999540de28a3ebc28e7adfc48fa300d774dc1bd144f433f0cf
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86854841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c039a2237d161f95719d3100007c6b825d9f334d8c61bceb6acde78183ff84a`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 19 Sep 2016 23:24:18 GMT
ADD file:fd71807f3b22f7f51f502e8aed6bd23067e6822ae08dec31e7477044d770cf48 in / 
# Tue, 20 Sep 2016 00:20:18 GMT
ENV LANG=C.UTF-8
# Tue, 20 Sep 2016 00:20:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 20 Sep 2016 00:24:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 20 Sep 2016 00:24:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_VERSION=8u92
# Tue, 20 Sep 2016 00:24:55 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 20 Sep 2016 00:25:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Sep 2016 00:40:02 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 20 Sep 2016 00:40:33 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 20 Sep 2016 00:40:33 GMT
ENV ORIENTDB_VERSION=2.2.10
# Tue, 20 Sep 2016 00:40:34 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a4d189ba1485fd974de1f9964f09825e
# Tue, 20 Sep 2016 00:40:34 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=14397248e00d93e4c0f2de1c788ccf4c60d6456c
# Tue, 20 Sep 2016 00:40:34 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.10/orientdb-community-2.2.10.tar.gz
# Tue, 20 Sep 2016 00:40:35 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 20 Sep 2016 00:40:38 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 20 Sep 2016 00:40:39 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Sep 2016 00:40:39 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 20 Sep 2016 00:40:40 GMT
WORKDIR /orientdb
# Tue, 20 Sep 2016 00:40:40 GMT
EXPOSE 2424/tcp
# Tue, 20 Sep 2016 00:40:40 GMT
EXPOSE 2480/tcp
# Tue, 20 Sep 2016 00:40:41 GMT
CMD ["server.sh"]
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
	-	`sha256:bbf67fd54f62e201ba82c703badd08312a6e2eca50d5b9f17b8c3cc7c574d426`  
		Last Modified: Tue, 20 Sep 2016 00:25:28 GMT  
		Size: 49.3 MB (49325081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa56f9d911aafb1f9b4ea3f505ad885d33458d55b3044da9d58ae7582bb501f`  
		Last Modified: Tue, 20 Sep 2016 00:40:49 GMT  
		Size: 261.8 KB (261819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9502b0ae95c8e471181dc472455cbae56c475aa9fb1b7f4b5be2b8df574b2d06`  
		Last Modified: Tue, 20 Sep 2016 00:40:53 GMT  
		Size: 35.0 MB (34956660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
