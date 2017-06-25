## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:12cfec7925e1cc7b921fe48870761e5e362a414def2e1c6790135898dbcdfa43
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc678292f00581ad9ad1795a1e1994f5b2e9f6c3829e3bf7052c115757b8436`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 19 Jun 2017 16:58:00 GMT
ADD file:90d7b7a4bad6a39f91c8e1c988e5ee0a7fb9f28b6364b50b6d74dada40258cca in / 
# Mon, 19 Jun 2017 16:58:46 GMT
CMD ["/bin/sh"]
# Mon, 19 Jun 2017 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 19 Jun 2017 22:32:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 19 Jun 2017 22:32:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Mon, 19 Jun 2017 22:32:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_VERSION=7u131
# Mon, 19 Jun 2017 22:32:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Mon, 19 Jun 2017 22:32:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 20 Jun 2017 18:43:21 GMT
CMD ["gradle"]
# Tue, 20 Jun 2017 18:43:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Jun 2017 18:43:23 GMT
ENV GRADLE_VERSION=4.0
# Tue, 20 Jun 2017 18:43:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Tue, 20 Jun 2017 18:43:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 20 Jun 2017 18:44:14 GMT
USER [gradle]
# Tue, 20 Jun 2017 18:44:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Jun 2017 18:44:16 GMT
WORKDIR /home/gradle
# Tue, 20 Jun 2017 18:44:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:43d680a959df2b2131639a5e0915cc03e6eeeaba1a22abf3d8881136728bc2ee`  
		Last Modified: Mon, 19 Jun 2017 17:09:10 GMT  
		Size: 2.0 MB (1990164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e40d7806c43a66123981ef727087e5dabea9084a00cd28bccd782bd5bd319a4`  
		Last Modified: Tue, 20 Jun 2017 20:52:30 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3fd7966a2f90d20fb0b963450265699c50612f3d1c9fbdca5a12936d1b3cc8`  
		Last Modified: Tue, 20 Jun 2017 20:52:42 GMT  
		Size: 77.4 MB (77430840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029b3da66e0b60187d62fcc0359d13bbf69f3b52206d2df19ec7d985341a12d9`  
		Last Modified: Sun, 25 Jun 2017 09:16:55 GMT  
		Size: 69.0 MB (68955212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0471fcb6a0b8bed3fd8e6fdcbc75290a7d5564af2f2157ccfb21fb93e81493be`  
		Last Modified: Sun, 25 Jun 2017 09:16:49 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
