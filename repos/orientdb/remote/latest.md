## `orientdb:latest`

```console
$ docker pull orientdb@sha256:54c6fd4011364904aba82d0b12a41b4b4a19dbcb9c979e69af4eb4ed1a6b0682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:cd45d5f37db8e33076c31c1d40d7a600dbb453e960a75ba50ce0ed3b4cf91d7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119287223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83dd6bf07f29396a7b855d32b0e0b9b52984c7b6ba4417eb34050236250560fb`
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
# Tue, 05 Dec 2017 04:59:54 GMT
ENV ORIENTDB_VERSION=2.2.30
# Tue, 05 Dec 2017 04:59:54 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Tue, 05 Dec 2017 04:59:55 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Tue, 05 Dec 2017 04:59:55 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Tue, 05 Dec 2017 04:59:58 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Dec 2017 05:00:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Dec 2017 05:00:01 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 05:00:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Dec 2017 05:00:02 GMT
WORKDIR /orientdb
# Tue, 05 Dec 2017 05:00:02 GMT
EXPOSE 2424/tcp
# Tue, 05 Dec 2017 05:00:02 GMT
EXPOSE 2480/tcp
# Tue, 05 Dec 2017 05:00:03 GMT
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
	-	`sha256:f12c5943814291368db98d896c7414af76cda9254131789df7a11d83220170cc`  
		Last Modified: Tue, 05 Dec 2017 05:01:35 GMT  
		Size: 665.5 KB (665500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8303dcbe9d9c52940129bf483f786a6f395b016cc243669ed2168ae1f7711ef`  
		Last Modified: Tue, 05 Dec 2017 05:01:38 GMT  
		Size: 46.3 MB (46328697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
