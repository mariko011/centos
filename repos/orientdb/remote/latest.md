## `orientdb:latest`

```console
$ docker pull orientdb@sha256:de7379e5f32f1858cdb115387530b7ef505d71f9667e8fd48060f21839cfe950
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87020436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ce271599c3e278532fcec6ec5db24bd7f7fe363b8a93c9450d97f944c41fc7`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 20:51:43 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 27 Dec 2016 20:51:55 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 27 Dec 2016 20:51:56 GMT
ENV ORIENTDB_VERSION=2.2.14
# Tue, 27 Dec 2016 20:51:56 GMT
ENV ORIENTDB_DOWNLOAD_MD5=599e89bc8a0cd1452b583027515aeecd
# Tue, 27 Dec 2016 20:51:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=cd3bf0012bcc9b5ee311b71ae711af20bec0b11a
# Tue, 27 Dec 2016 20:51:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.14/orientdb-community-2.2.14.tar.gz
# Tue, 27 Dec 2016 20:51:59 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Tue, 27 Dec 2016 20:52:04 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 27 Dec 2016 20:52:04 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 20:52:05 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 27 Dec 2016 20:52:05 GMT
WORKDIR /orientdb
# Tue, 27 Dec 2016 20:52:06 GMT
EXPOSE 2424/tcp
# Tue, 27 Dec 2016 20:52:06 GMT
EXPOSE 2480/tcp
# Tue, 27 Dec 2016 20:52:07 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d503dae31d9ff79e045e8bba4d3509cfbd66bb121140a23060a7d319e59c668b`  
		Last Modified: Tue, 27 Dec 2016 21:21:05 GMT  
		Size: 262.0 KB (262024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3397bcd94ae401a22f4edc49121890d600c23f74365360fe5cb8d3fb5deba14`  
		Last Modified: Tue, 27 Dec 2016 21:21:10 GMT  
		Size: 35.1 MB (35089448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
