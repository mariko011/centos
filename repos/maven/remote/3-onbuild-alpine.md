## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
