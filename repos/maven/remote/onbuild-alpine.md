## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
