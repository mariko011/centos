## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:2d61bbdfc00a49d971e285ea254c9b6fd8d4517d84f4cac9e98ae7676c309549
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.6 MB (89578346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3beb7ab46c5eb6e8ae98f0e30274824ea4dd88f878175d8f9adb6faf870e60e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 23 Sep 2016 16:29:57 GMT
ADD file:d6ee3ba7a4d59b161917082cc7242c660c61bb3f3cc1549c7e2dfff2b0de7104 in / 
# Fri, 23 Sep 2016 17:02:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Sep 2016 17:02:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 23 Sep 2016 17:02:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 23 Sep 2016 17:02:30 GMT
ENV JAVA_VERSION=7u91
# Fri, 23 Sep 2016 17:02:31 GMT
ENV JAVA_ALPINE_VERSION=7.91.2.6.3-r2
# Fri, 23 Sep 2016 17:02:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 23 Sep 2016 18:59:00 GMT
RUN apk add --no-cache curl tar bash
# Fri, 23 Sep 2016 18:59:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 23 Sep 2016 18:59:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Sep 2016 18:59:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Sep 2016 18:59:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Sep 2016 18:59:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Sep 2016 18:59:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Sep 2016 18:59:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Sep 2016 18:59:05 GMT
VOLUME [/root/.m2]
# Fri, 23 Sep 2016 18:59:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Sep 2016 18:59:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:c0cb142e43453ebb1f82b905aa472e6e66017efd43872135bc5372e4fac04031`  
		Last Modified: Fri, 23 Sep 2016 16:30:54 GMT  
		Size: 2.3 MB (2312930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf00e3870fb3e40e4a8e049bc0cd0d95ccd634da7b4b9980004b819f064fa174`  
		Last Modified: Fri, 23 Sep 2016 17:02:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31023985e10510c0dc4dac5fe3ac63b0f53f89b1e6046bee2b996d183a509fa4`  
		Last Modified: Fri, 23 Sep 2016 17:03:05 GMT  
		Size: 76.6 MB (76601405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4c86fd19ae63eaa534681fa748fbb3f982613a4aee21e2250dbc764aab9304a`  
		Last Modified: Fri, 23 Sep 2016 18:59:17 GMT  
		Size: 2.1 MB (2063887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fed8e26d7d444d7b17b99f0a161b810de8ebd43ab7a00df7a08cbcb432fb2`  
		Last Modified: Fri, 23 Sep 2016 18:59:18 GMT  
		Size: 8.6 MB (8598860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb027a3c2dea775409385f83ed23773984baa6d5a97d6ee442aca36771b5825`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 684.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ce5d528873fbdb864d54252775df7e2f8cca84ec6799cad17610f23edc6bc8`  
		Last Modified: Fri, 23 Sep 2016 18:59:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
