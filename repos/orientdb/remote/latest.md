## `orientdb:latest`

```console
$ docker pull orientdb@sha256:d01de9f255f3d581bcd9e66e60bf895b1c85627e2c0efc9f1b1c74c4c5f38d1f
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86883544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd532cd52f32f09b6a325723ac865809dcae220eabd4aa55eabf76b9cd95e467`
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
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 18 Oct 2016 23:48:51 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 18 Oct 2016 23:49:25 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_VERSION=2.2.12
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=baa2817c9ccb2e4d16501e012a6ec6a7
# Thu, 20 Oct 2016 17:34:22 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=557b8228f6dcf9f88c0b28ce1f31826dd2f70f84
# Thu, 20 Oct 2016 17:34:23 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.12/orientdb-community-2.2.12.tar.gz
# Thu, 20 Oct 2016 17:34:24 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Thu, 20 Oct 2016 17:34:29 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 20 Oct 2016 17:34:29 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 20 Oct 2016 17:34:30 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 20 Oct 2016 17:34:30 GMT
WORKDIR /orientdb
# Thu, 20 Oct 2016 17:34:31 GMT
EXPOSE 2424/tcp
# Thu, 20 Oct 2016 17:34:31 GMT
EXPOSE 2480/tcp
# Thu, 20 Oct 2016 17:34:31 GMT
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
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d0e890343438094c86112692bd603db3eb89749cdcef0c3da7eb9a48d70b28`  
		Last Modified: Thu, 20 Oct 2016 17:35:04 GMT  
		Size: 261.9 KB (261932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3bcac55007f5fc8dfa99351d174cb5ae13b72bd44b5ee38e6ed8d9606f3d9fe`  
		Last Modified: Thu, 20 Oct 2016 17:35:09 GMT  
		Size: 35.0 MB (34980640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
