## `orientdb:latest`

```console
$ docker pull orientdb@sha256:a12a59b85bb65e40b41fba8c68d3ae1d7d76c839a74e5bfc3e9e3dcfefc6ee41
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115334891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803504d2312d31e22a549273d11afa70cc9f4acc4225d566c03dec9092fadba8`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 May 2017 22:40:48 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 May 2017 22:41:22 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 10 May 2017 22:43:37 GMT
ENV ORIENTDB_VERSION=2.2.18
# Wed, 10 May 2017 22:43:38 GMT
ENV ORIENTDB_DOWNLOAD_MD5=dc92356f8fc488208f3c5f272e418fb3
# Wed, 10 May 2017 22:43:38 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=dc866f6b8be40eec43b71fbee3548ec8b2f423e6
# Wed, 10 May 2017 22:43:39 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.18/orientdb-community-2.2.18.tar.gz
# Wed, 10 May 2017 22:43:41 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 10 May 2017 22:43:47 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 10 May 2017 22:43:48 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:43:49 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 10 May 2017 22:43:50 GMT
WORKDIR /orientdb
# Wed, 10 May 2017 22:43:51 GMT
EXPOSE 2424/tcp
# Wed, 10 May 2017 22:43:52 GMT
EXPOSE 2480/tcp
# Wed, 10 May 2017 22:43:53 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46675ee03b9c4ee9ecedbb1d0a8db7bf3d01f7e2a140f3dbbd392bd6a8c9013c`  
		Last Modified: Fri, 12 May 2017 16:04:22 GMT  
		Size: 644.0 KB (644050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0f46a61a9bc9ebd2d5bdfde66a99c0ab7660b6487409090720d927b2fd12a0d`  
		Last Modified: Fri, 12 May 2017 16:04:25 GMT  
		Size: 42.7 MB (42718556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
