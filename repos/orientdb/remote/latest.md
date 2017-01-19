## `orientdb:latest`

```console
$ docker pull orientdb@sha256:553885408afaf7d85ea685e9c2a1c6130bfdc049ac47fbad59f034b0bd190167
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91461008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4680758cb98c97ecd7d17cd6b82113d5643b9bf1de169a8059db88db0ac2ed95`
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
# Thu, 19 Jan 2017 19:08:01 GMT
ENV ORIENTDB_VERSION=2.2.15
# Thu, 19 Jan 2017 19:08:01 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ef6fdd215f17ef5df756b85c9ea09755
# Thu, 19 Jan 2017 19:08:02 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=80f26162d5f7545591d6c29ecf4845d314190060
# Thu, 19 Jan 2017 19:08:02 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.15/orientdb-community-2.2.15.tar.gz
# Thu, 19 Jan 2017 19:08:04 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 19 Jan 2017 19:08:09 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 19 Jan 2017 19:08:10 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 19 Jan 2017 19:08:11 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 19 Jan 2017 19:08:11 GMT
WORKDIR /orientdb
# Thu, 19 Jan 2017 19:08:12 GMT
EXPOSE 2424/tcp
# Thu, 19 Jan 2017 19:08:13 GMT
EXPOSE 2480/tcp
# Thu, 19 Jan 2017 19:08:13 GMT
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
	-	`sha256:fc9e714b5f174541c73e87641276ba103d306331e601803b8857515ae899fab7`  
		Last Modified: Thu, 19 Jan 2017 19:08:58 GMT  
		Size: 262.0 KB (262023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f858dc6f55aa3e5ba5b06a4467f26a43d38b033b266a7a0b8a9872220a72ff`  
		Last Modified: Thu, 19 Jan 2017 19:09:03 GMT  
		Size: 39.5 MB (39530021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
