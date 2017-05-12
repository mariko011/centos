## `orientdb:latest`

```console
$ docker pull orientdb@sha256:50e0782b928aa8e41dceea0b7a8956d8b3b37325e3898a49869009254c1e920c
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115343398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce5738c1687da6a3ad676739c230bd2b2a3660b6d78fde75cfb63d72929f3f2`
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
# Fri, 12 May 2017 16:00:01 GMT
ENV ORIENTDB_VERSION=2.2.20
# Fri, 12 May 2017 16:00:02 GMT
ENV ORIENTDB_DOWNLOAD_MD5=f3d098e8d978437e9679ec4f9d95aa19
# Fri, 12 May 2017 16:00:03 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=040429b67b33752c0a9852ee0a2e29890733a3c1
# Fri, 12 May 2017 16:00:03 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.20/orientdb-community-2.2.20.tar.gz
# Fri, 12 May 2017 16:00:08 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 12 May 2017 16:00:12 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 12 May 2017 16:00:13 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 12 May 2017 16:00:14 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 12 May 2017 16:00:15 GMT
WORKDIR /orientdb
# Fri, 12 May 2017 16:00:16 GMT
EXPOSE 2424/tcp
# Fri, 12 May 2017 16:00:17 GMT
EXPOSE 2480/tcp
# Fri, 12 May 2017 16:00:18 GMT
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
	-	`sha256:db3277c77aaafabb552f09963357246007511b70473a673e8e9be7ce6b197f00`  
		Last Modified: Fri, 12 May 2017 16:02:12 GMT  
		Size: 644.0 KB (644037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd022c1c669427a1fc5edd701c37914418f9c928724e461c4295965ae9de73b`  
		Last Modified: Fri, 12 May 2017 16:02:16 GMT  
		Size: 42.7 MB (42727076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
