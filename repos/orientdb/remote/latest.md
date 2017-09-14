## `orientdb:latest`

```console
$ docker pull orientdb@sha256:63ff398ce21fd21f628517bb92811b1240801ec4442289eb170abebb5e079574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:a1fa0e14736e1603f2aac3fb0f9d6652a42bdd6a1dda05dd587759471ed9c75b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.0 MB (116965177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11bc64878b54ea9db237b1493f23eddedd3330b02e009c47a4a2fbb3d6500ea9`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:40:32 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 14 Sep 2017 06:40:43 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 14 Sep 2017 18:05:56 GMT
ENV ORIENTDB_VERSION=2.2.27
# Thu, 14 Sep 2017 18:05:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=1ffd0018347148b32705eed5ffe37e3b
# Thu, 14 Sep 2017 18:05:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=66359697c14ae0b58d09d25f0a15743f135d372e
# Thu, 14 Sep 2017 18:05:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.27/orientdb-community-2.2.27.tar.gz
# Thu, 14 Sep 2017 18:06:00 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 14 Sep 2017 18:06:04 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 14 Sep 2017 18:06:04 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 18:06:04 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 14 Sep 2017 18:06:05 GMT
WORKDIR /orientdb
# Thu, 14 Sep 2017 18:06:05 GMT
EXPOSE 2424/tcp
# Thu, 14 Sep 2017 18:06:05 GMT
EXPOSE 2480/tcp
# Thu, 14 Sep 2017 18:06:05 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:897599696376759fed72382e256e41745b3d01a00537fe8346f31d36a9c38fa5`  
		Last Modified: Thu, 14 Sep 2017 18:06:18 GMT  
		Size: 649.5 KB (649459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df01213df8b46f400655c2e5b3cab922405e522ab0d5b93ea978114e5712ce86`  
		Last Modified: Thu, 14 Sep 2017 18:06:21 GMT  
		Size: 44.3 MB (44273715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
