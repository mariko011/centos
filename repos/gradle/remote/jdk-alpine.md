## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:08f5119894794e1e70a7986e294a92338603323d17cbf84f930367d83332bcaf
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143121514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96b98e7a90b074b248ce06b9d722bfa3ab19f57177c9153f0dd9755d7d822999`
-	Default Command: `["gradle"]`

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
# Thu, 23 Mar 2017 18:37:25 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_VERSION=3.4
# Thu, 23 Mar 2017 18:37:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
# Thu, 23 Mar 2017 18:37:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 23 Mar 2017 18:37:50 GMT
USER [gradle]
# Thu, 23 Mar 2017 18:37:51 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 23 Mar 2017 18:37:51 GMT
WORKDIR /home/gradle
# Thu, 23 Mar 2017 18:37:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
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
	-	`sha256:411714ec22a648cb5c889c6ec8e93b8896cd9a427bf1ef7c221c1d9165b9de12`  
		Last Modified: Thu, 23 Mar 2017 18:52:13 GMT  
		Size: 71.7 MB (71650956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc811a96a82dd4571c1c1ab252a325aa326791e0253ce6e0e8d356fe54fc59a8`  
		Last Modified: Thu, 23 Mar 2017 18:52:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
