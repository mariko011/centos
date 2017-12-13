## `orientdb:latest`

```console
$ docker pull orientdb@sha256:8857810b5cd029622a3de84e036c776336d21786f7212ec4a4e9fc0b0b748d8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:7109c70f145eb2e93ea94505ef48856467194a64f01e37481367dba0fad02935
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119619400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a91b48ffd510e85ad55e40f46173b10f6cf90fa95ca3454bc13a4e9451ad73ab`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Dec 2017 03:43:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:29 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:38 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:59:33 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Dec 2017 04:59:54 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_VERSION=2.2.31
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=a7f9558bed6f8a12950b6282af9ef8cd
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b4044e1a623ceaa67fd2a0ff18afe10b3f741c1c
# Wed, 13 Dec 2017 18:36:37 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.31/orientdb-community-2.2.31.tar.gz
# Wed, 13 Dec 2017 18:36:40 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 13 Dec 2017 18:36:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 13 Dec 2017 18:36:46 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Dec 2017 18:36:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 13 Dec 2017 18:36:46 GMT
WORKDIR /orientdb
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2424/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
EXPOSE 2480/tcp
# Wed, 13 Dec 2017 18:36:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001511eb343719c992da5faff08582639cc4a015132f74ac29c2be121bfd62ed`  
		Last Modified: Tue, 05 Dec 2017 03:45:44 GMT  
		Size: 70.2 MB (70227876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cda56e469046baae75ad43748d2c523505e679ee34b36d510663aa1a9e57922`  
		Last Modified: Wed, 13 Dec 2017 18:37:12 GMT  
		Size: 665.5 KB (665514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3624b319c5c7e5eed72b364d08b06979faab0665b589a43c4b372f89bebe43`  
		Last Modified: Wed, 13 Dec 2017 18:37:17 GMT  
		Size: 46.7 MB (46660860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
