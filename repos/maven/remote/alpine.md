## `maven:alpine`

```console
$ docker pull maven@sha256:aa471c4b227a4fdd20ddb30b690d0bb383951371e49c626015a3520af884242c
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61922321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3277efdcd5a1a470a2b67edd7d8cf7e41b9f4321431c0b3c4d38f313caee4c33`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:55:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 30 Aug 2016 19:55:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_VERSION=8u92
# Tue, 30 Aug 2016 19:55:34 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 30 Aug 2016 19:55:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:24 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:24 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:25 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:26 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:26 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:27 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:28 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e110a4a1794126ef308a49f2d65785af2f25538f06700721aad8283b81fdfa58`  
		Last Modified: Thu, 23 Jun 2016 19:56:16 GMT  
		Size: 2.3 MB (2310286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a696cba1f6e865421664a7bf9bf585bcfaa924d56b7d2a112a799e00a7433791`  
		Last Modified: Tue, 30 Aug 2016 21:11:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0f0d61cd0d229546b1e33b0c92036ad3f35b42dd2c9a945aeaf67f84684ce26`  
		Last Modified: Tue, 30 Aug 2016 21:56:07 GMT  
		Size: 49.3 MB (49325330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0973e1692b3386eea97dfbb0d29ff4fffe499f41f77295d6ae982e7b3be12a4d`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 1.7 MB (1686596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47cc4c80728515a820f0bf2f2b46d95afe62a3e6b9147ccdb10afb458f9f344`  
		Last Modified: Wed, 31 Aug 2016 21:09:49 GMT  
		Size: 8.6 MB (8598842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e344ff1ea65115dece12e7ea0821f5f563e5644db256be591f034bb13e07571`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36922a31d2ce8ee1902ee1c519b035ad3d98f6d68b0b739592cc597bf0e505f`  
		Last Modified: Wed, 31 Aug 2016 21:09:48 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
