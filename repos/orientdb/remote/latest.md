## `orientdb:latest`

```console
$ docker pull orientdb@sha256:1cafe703c8c8a7920f099568fdcb52572c911db88c35f59c0a77c1aad3492a31
```

-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115372456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7bbcf7ab97519a06e6ff82ddb2d736988d70a4e8dd6098bcc0906e21b13f72`
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
# Thu, 01 Jun 2017 16:22:07 GMT
ENV ORIENTDB_VERSION=2.2.21
# Thu, 01 Jun 2017 16:22:08 GMT
ENV ORIENTDB_DOWNLOAD_MD5=5e59409f6e582e98e125d19e208e5e90
# Thu, 01 Jun 2017 16:22:09 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=290d63ea2b5e1f6c951351e00875b65bfc51cf04
# Thu, 01 Jun 2017 16:22:10 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.21/orientdb-community-2.2.21.tar.gz
# Thu, 01 Jun 2017 16:22:14 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 01 Jun 2017 16:22:18 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 01 Jun 2017 16:22:19 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:22:20 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 01 Jun 2017 16:22:21 GMT
WORKDIR /orientdb
# Thu, 01 Jun 2017 16:22:22 GMT
EXPOSE 2424/tcp
# Thu, 01 Jun 2017 16:22:23 GMT
EXPOSE 2480/tcp
# Thu, 01 Jun 2017 16:22:23 GMT
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
	-	`sha256:8240e7113ac984ebc3fb88acf985778225123096505b7e1d9f8fb479fb0abb7f`  
		Last Modified: Thu, 01 Jun 2017 16:24:01 GMT  
		Size: 644.0 KB (644045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0808adc5fa03e8f8c02048f053b661c545a593dda52edb72619b4cc6692ce4f1`  
		Last Modified: Thu, 01 Jun 2017 16:24:04 GMT  
		Size: 42.8 MB (42756126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
