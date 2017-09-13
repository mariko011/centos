## `gradle:alpine`

```console
$ docker pull gradle@sha256:9045669287986d28a5f365f224167e21f554e456f014f492e0ff103665171944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

```console
$ docker pull gradle@sha256:de4f221eb8eb18b3b8891218154e9b1a8151a84eb5157e92bccc5612d18da963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.9 MB (140898579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e3d30b1deb9369da5e113f7340fa5ed9065f3375de24fdbc5a23103322e136`
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
# Tue, 12 Sep 2017 23:52:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 12 Sep 2017 23:52:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_VERSION=8u131
# Tue, 12 Sep 2017 23:52:56 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Tue, 12 Sep 2017 23:53:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 13 Sep 2017 13:06:57 GMT
CMD ["gradle"]
# Wed, 13 Sep 2017 13:06:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 13 Sep 2017 13:06:58 GMT
ENV GRADLE_VERSION=4.1
# Wed, 13 Sep 2017 13:06:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
# Wed, 13 Sep 2017 13:07:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d55dfa9cfb5a3da86a1c9e75bb0b9507f9a8c8c100793ccec7beb6e259f9ed43
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache"  	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 13 Sep 2017 13:07:07 GMT
USER [gradle]
# Wed, 13 Sep 2017 13:07:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 13 Sep 2017 13:07:07 GMT
WORKDIR /home/gradle
# Wed, 13 Sep 2017 13:07:12 GMT
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
	-	`sha256:aea587fc42c2307f2235a5e0ea171a998ce809de2bfeaae81b8c0bc2966cba9c`  
		Last Modified: Wed, 13 Sep 2017 00:05:33 GMT  
		Size: 70.1 MB (70051350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9205fb866c6f9c5f33ef23a47dace41996edce78a08acb45927660061c87f6e6`  
		Last Modified: Wed, 13 Sep 2017 13:11:07 GMT  
		Size: 68.9 MB (68856449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfbd37c325425eb002c827aef1948d8045ccbdfb93c5bc13ed030d2876f8d56`  
		Last Modified: Wed, 13 Sep 2017 13:11:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
