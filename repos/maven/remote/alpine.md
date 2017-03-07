## `maven:alpine`

```console
$ docker pull maven@sha256:3ab854089af4b40cf3f1a12c96a6c84afe07063677073451c2190cdcec30391b
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81751075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9d4e1cd9dba7e2c7a69a08b17983f785d8a0509476dfde610aa8494e084dc6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Tue, 07 Mar 2017 19:06:18 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Mar 2017 19:06:19 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Mar 2017 19:06:21 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Mar 2017 19:06:22 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Mar 2017 19:06:22 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Mar 2017 19:06:23 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Mar 2017 19:06:24 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Mar 2017 19:06:25 GMT
VOLUME [/root/.m2]
# Tue, 07 Mar 2017 19:06:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Mar 2017 19:06:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd66eeabe19fa0cc7dc941842b7c598ace1507741e4f45db7207c8d7698bc51`  
		Last Modified: Tue, 07 Mar 2017 19:12:54 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4385888ddceef5c45398eaab2b1b020c210e1a7fc6ee022e6bb1b42b7349ac21`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3198c0a222146a991ddfc7edae8a9767a3eed32500d63bf9f769174cc9b3f620`  
		Last Modified: Tue, 07 Mar 2017 19:12:51 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
