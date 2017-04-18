## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:e9d64e5cdc8cef87dca07d118f6afb1b5fe2f970c4d7d58daf6724d81ec07523
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152666514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41e639805984e6ac1e06f2c1c1e3beb92e1fd3983829839a678cf5bfb77c9e1`
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
# Tue, 18 Apr 2017 16:52:07 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:52:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:52:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:52:14 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:52:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:52:15 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:52:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
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
	-	`sha256:cd0908dda09d207a8dea5c468cf2ded41c3163cfce8e089ebe5f6164b9ef95d6`  
		Last Modified: Tue, 18 Apr 2017 16:58:00 GMT  
		Size: 74.8 MB (74767561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f4151b9f9d463927700d6482046eafde083b6d014a9f7a808e740457410f4c`  
		Last Modified: Tue, 18 Apr 2017 16:57:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
