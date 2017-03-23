## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:ea989a2c5b73513e4a47e7e0403c64d25ad607bd6399b9092bf0f7282623c950
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.6 MB (149594632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e19a8ceb2f9996cf6a7664600eaec761524d2c400147853c3dc1b1980fb663b`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:00:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 03 Mar 2017 22:00:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:33:11 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:33:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 23 Mar 2017 18:33:46 GMT
ENV GRADLE_VERSION=3.4
# Thu, 23 Mar 2017 18:34:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
# Thu, 23 Mar 2017 18:34:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 23 Mar 2017 18:34:25 GMT
USER [gradle]
# Thu, 23 Mar 2017 18:34:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 23 Mar 2017 18:34:26 GMT
WORKDIR /home/gradle
# Thu, 23 Mar 2017 18:34:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
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
	-	`sha256:813a1a00513cab49fcb6584abe3ba296279d0561ecfc7335b705d6e8eb1726c1`  
		Last Modified: Sat, 04 Mar 2017 01:28:34 GMT  
		Size: 75.6 MB (75585206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fc8d22317543d0b7c1d94d683793a30f812c8348339e8b659080d2d30df712`  
		Last Modified: Thu, 23 Mar 2017 18:44:30 GMT  
		Size: 71.7 MB (71695676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecbb7a31abb2eddf4864b4db2b8f8d965b0da86d207d42c388ddde74b0dfaaa`  
		Last Modified: Thu, 23 Mar 2017 18:44:20 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
