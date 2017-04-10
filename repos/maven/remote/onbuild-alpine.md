## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
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
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
