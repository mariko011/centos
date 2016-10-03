## `orientdb:latest`

```console
$ docker pull orientdb@sha256:e60bf434814970ddc4399ba85a75de5ab9a766176b8931ecd1ee2693095912ad
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86865213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662d247cd05254c24efc563ced75429e9353f0e2b9e45ca10e50b576552f4e1b`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:05:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 23 Sep 2016 17:05:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_VERSION=8u92
# Fri, 23 Sep 2016 17:05:13 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Fri, 23 Sep 2016 17:05:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 17:17:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 23 Sep 2016 17:18:03 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 03 Oct 2016 17:16:49 GMT
ENV ORIENTDB_VERSION=2.2.11
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=df97a70c559256029f846caabe456e45
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f97a4d7a3bc5b60fff718c7c6408153b866f35b9
# Mon, 03 Oct 2016 17:16:50 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.11/orientdb-community-2.2.11.tar.gz
# Mon, 03 Oct 2016 17:16:52 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Mon, 03 Oct 2016 17:16:55 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 03 Oct 2016 17:16:55 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 03 Oct 2016 17:16:56 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 03 Oct 2016 17:16:56 GMT
WORKDIR /orientdb
# Mon, 03 Oct 2016 17:16:57 GMT
EXPOSE 2424/tcp
# Mon, 03 Oct 2016 17:16:57 GMT
EXPOSE 2480/tcp
# Mon, 03 Oct 2016 17:16:57 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9536b9909f79d52b70efe60abe868e66019b131e7618f3498475b236a756e2ad`  
		Last Modified: Fri, 23 Sep 2016 17:05:37 GMT  
		Size: 49.3 MB (49325354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be175839097487ea4f568af3b10fe6a09979cef339194e645f2da96a5748f01a`  
		Last Modified: Mon, 03 Oct 2016 17:17:27 GMT  
		Size: 261.8 KB (261816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f09b80a6352e4e6419e556975eb5ce4d8c297ede525404d060e2e8ca343d00c`  
		Last Modified: Mon, 03 Oct 2016 17:17:31 GMT  
		Size: 35.0 MB (34964882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
