## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:0db16952f26bfa2eba420d70aacfd810515690b853d8f3f49de784fc94c16f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c9c0ccb6cd712d34b37bceeec5c0395b579c74b486697bf38a36616744d824b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.1 MB (125126346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b330d68cfe7a6871f77f72451c75bb8f180df3897853ed1a93a1a937da206392`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Tue, 12 Sep 2017 23:48:34 GMT
ENV LANG=C.UTF-8
# Tue, 12 Sep 2017 23:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Sep 2017 23:54:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Sep 2017 23:54:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:54:45 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:54:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 13:07:13 GMT
CMD ["gradle"]
# Wed, 13 Sep 2017 13:07:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 13 Sep 2017 13:07:13 GMT
ENV GRADLE_VERSION=4.1
# Wed, 13 Sep 2017 13:07:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
# Wed, 13 Sep 2017 13:07:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache"  	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 13 Sep 2017 13:07:22 GMT
USER [gradle]
# Wed, 13 Sep 2017 13:07:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 13 Sep 2017 13:07:23 GMT
WORKDIR /home/gradle
# Wed, 13 Sep 2017 13:07:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30413cd501e882be9689126a3fe1418ac107d46bb4b5acca78d6cdb52b6d29bb`  
		Last Modified: Wed, 13 Sep 2017 00:01:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587ef727d40b7b1db4c6fa94eac61003c034db8867565123ca5544b05e75a1a5`  
		Last Modified: Wed, 13 Sep 2017 00:07:17 GMT  
		Size: 54.3 MB (54282782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eccf223a63ed9ee3c91b911c494da339fe254e1b2a15d181175d9cee856a630`  
		Last Modified: Wed, 13 Sep 2017 13:11:45 GMT  
		Size: 68.9 MB (68852784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e5514d102454d7026bb7427b6f027cd5624354df8dc3b5be7d0fa4076c3250d`  
		Last Modified: Wed, 13 Sep 2017 13:11:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
