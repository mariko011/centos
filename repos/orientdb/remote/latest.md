## `orientdb:latest`

```console
$ docker pull orientdb@sha256:100eba6fe883709019a19bb3cd37ee9bc0161f8401e0db7e230455f441cc2582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:9936185d37fdeb470d0208cc2c640543aa6f9fe9eb8e82bb8cf35b4eab865325
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.0 MB (119037390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b0b59a01b9554e6c520d3f8c1c53bcb71522db8cb0c941bc27fdcf4613baa65`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:26 GMT
ADD file:cb381165dec3689cf77e902c07ea78ca4da6bce4f5ac1909eebd40dba3273bfe in / 
# Fri, 01 Dec 2017 18:46:26 GMT
CMD ["/bin/sh"]
# Fri, 01 Dec 2017 22:10:23 GMT
ENV LANG=C.UTF-8
# Fri, 01 Dec 2017 22:10:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 01 Dec 2017 22:11:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 01 Dec 2017 22:11:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_VERSION=8u131
# Fri, 01 Dec 2017 22:11:21 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Fri, 01 Dec 2017 22:11:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 02 Dec 2017 00:23:30 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 02 Dec 2017 00:23:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_VERSION=2.2.30
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=41757856ddbca87f368e812982041316
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7c014647fbf7521a2817a5427e29dae609e53954
# Sat, 02 Dec 2017 00:23:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.30/orientdb-community-2.2.30.tar.gz
# Sat, 02 Dec 2017 00:23:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 02 Dec 2017 00:23:52 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 02 Dec 2017 00:23:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 02 Dec 2017 00:23:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 02 Dec 2017 00:23:53 GMT
WORKDIR /orientdb
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2424/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
EXPOSE 2480/tcp
# Sat, 02 Dec 2017 00:23:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:1160f4abea84cbe2f316db6306839d2704f09a04af763ee493dd92cb066c0865`  
		Last Modified: Fri, 01 Dec 2017 18:50:17 GMT  
		Size: 2.0 MB (1991501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1b3e089ad5bb56a471216d30899b22b6cc9887cb8a4f49e5ada714fd21a8c8e`  
		Last Modified: Fri, 01 Dec 2017 22:12:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4220f7d94f04402577aa397b232e4efb4d3a99550329c601b5fb98279d22a2d8`  
		Last Modified: Fri, 01 Dec 2017 22:13:39 GMT  
		Size: 70.1 MB (70053843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904c853784f93a7e49d23b99957380a1fe292a3225ea6bdf491af4a2c25c1aff`  
		Last Modified: Sat, 02 Dec 2017 00:25:22 GMT  
		Size: 663.1 KB (663109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f9bed0273986ed159dfa895ea05ea72404c00b13b3d6f0ef0a209da5a1f7bb`  
		Last Modified: Sat, 02 Dec 2017 00:25:25 GMT  
		Size: 46.3 MB (46328700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
