## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:3cf7e7b075d10c155142c940d3a4d6b6f5c986372a5ca5173241bcc11e09e868
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89574381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fb7c572e9b8f2185739aa6ee4d4fd30d163e6b86a7b4bc6dce834672183f1b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 29 Aug 2016 23:49:14 GMT
ADD file:852e9d0cb9d906535af512a89339fc70b2873a0f94defbcbe41cd44942dd6ac8 in / 
# Tue, 30 Aug 2016 19:53:16 GMT
ENV LANG=C.UTF-8
# Tue, 30 Aug 2016 19:53:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 30 Aug 2016 19:53:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 30 Aug 2016 19:53:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_VERSION=7u91
# Tue, 30 Aug 2016 19:53:18 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Tue, 30 Aug 2016 19:53:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 31 Aug 2016 04:49:08 GMT
RUN apk add --no-cache curl tar bash
# Wed, 31 Aug 2016 04:49:08 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 31 Aug 2016 04:49:08 GMT
ARG USER_HOME_DIR=/root
# Wed, 31 Aug 2016 04:49:10 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 31 Aug 2016 04:49:10 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 31 Aug 2016 04:49:11 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 31 Aug 2016 04:49:11 GMT
VOLUME [/root/.m2]
# Wed, 31 Aug 2016 04:49:12 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 31 Aug 2016 04:49:12 GMT
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
	-	`sha256:e519571e574e23b8d02f416d1cb46011151200ff1218f6242e923807194c3427`  
		Last Modified: Wed, 31 Aug 2016 17:23:34 GMT  
		Size: 76.6 MB (76600896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b3bf0c4edac601147abb9ccb50c59d131c046822827f8034cb488d9a46eccd`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 2.1 MB (2063081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e5062255e35c493dafa6a16ade8da4570b9eddc33cfd658b16cb6be9253253`  
		Last Modified: Wed, 31 Aug 2016 21:07:27 GMT  
		Size: 8.6 MB (8598853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32443aef49add633b486dd65c1e91fc3352be915c32556a02544ae142f5ca29`  
		Last Modified: Wed, 31 Aug 2016 21:07:25 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b6cadad592ca5f20c5dfede73099c5a9d177306290360d321788c4df24cd02d`  
		Last Modified: Wed, 31 Aug 2016 21:07:26 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
