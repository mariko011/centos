## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:b60f7bf1427e35a629f4d98c08c1ea651daa69854b213e088c179d5a74b88a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:cc2d4622e40055aa2869c75ed252a8458c401fed36eb308fb660e3a32759ccb5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132315263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805f589a2189259a990fe56af6cf43eafa89a8ac0907bbdf1d30750cc190679d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 01 Dec 2017 18:48:48 GMT
ADD file:2b00f26f6004576e2f8faeb3fb0517a14f79ea89a059fe096b54cbecf5da512e in / 
# Fri, 01 Dec 2017 18:48:48 GMT
CMD ["/bin/sh"]
# Tue, 05 Dec 2017 03:42:44 GMT
ENV LANG=C.UTF-8
# Tue, 05 Dec 2017 03:42:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Dec 2017 03:43:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Dec 2017 03:43:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_VERSION=8u151
# Tue, 05 Dec 2017 03:43:46 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Tue, 05 Dec 2017 03:43:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Dec 2017 04:42:23 GMT
CMD ["gradle"]
# Tue, 05 Dec 2017 04:42:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 21 Dec 2017 01:23:05 GMT
ENV GRADLE_VERSION=4.4.1
# Thu, 21 Dec 2017 01:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=e7cf7d1853dfc30c1c44f571d3919eeeedef002823b66b6a988d27e919686389
# Thu, 21 Dec 2017 01:23:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e7cf7d1853dfc30c1c44f571d3919eeeedef002823b66b6a988d27e919686389
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 21 Dec 2017 01:23:15 GMT
USER [gradle]
# Thu, 21 Dec 2017 01:23:16 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 21 Dec 2017 01:23:16 GMT
WORKDIR /home/gradle
# Thu, 21 Dec 2017 01:23:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=e7cf7d1853dfc30c1c44f571d3919eeeedef002823b66b6a988d27e919686389
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2fdfe1cd78c20d05774f0919be19bc1a3e4729bce219968e4188e7e0f1af679d`  
		Last Modified: Fri, 01 Dec 2017 18:50:32 GMT  
		Size: 2.1 MB (2064911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82630fd6e5ba7225587bd7986c7b6245801f8c7b001c9db318aecbb7fcb188a4`  
		Last Modified: Tue, 05 Dec 2017 03:44:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d364c885d49cacd5587d152fc93747a1758e1cfdd3d10d627c00091c5b365`  
		Last Modified: Tue, 05 Dec 2017 03:46:37 GMT  
		Size: 54.5 MB (54453882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc13508721e3b3d669eb103b3aaad3a2666d700b0f6d8b12f025179d3ec4735b`  
		Last Modified: Thu, 21 Dec 2017 01:35:05 GMT  
		Size: 75.8 MB (75796093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f343735299c36617fc6d2c637be9c612e1c231e12ef518867e2b71e6d4bfb1e3`  
		Last Modified: Thu, 21 Dec 2017 01:34:56 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
