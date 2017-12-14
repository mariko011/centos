## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:51609f3c87db1ef1105098097d44731e7af4b0f4ea7574caa30051bfe5c0623e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:0b77c51041d15f621eca5b9abe66f241fc0b8fdf58c6da4ce91a5c4ad92beb42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.3 MB (132312842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a9f12e4a0cac189a9bee17dc1cc73e953c582d5991c827bd9dccc3e802ff43`
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
# Thu, 14 Dec 2017 19:09:35 GMT
ENV GRADLE_VERSION=4.4
# Thu, 14 Dec 2017 19:09:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=fa4873ae2c7f5e8c02ec6948ba95848cedced6134772a0169718eadcb39e0a2f
# Thu, 14 Dec 2017 19:09:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=fa4873ae2c7f5e8c02ec6948ba95848cedced6134772a0169718eadcb39e0a2f
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Thu, 14 Dec 2017 19:09:48 GMT
USER [gradle]
# Thu, 14 Dec 2017 19:09:48 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 14 Dec 2017 19:09:48 GMT
WORKDIR /home/gradle
# Thu, 14 Dec 2017 19:09:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=fa4873ae2c7f5e8c02ec6948ba95848cedced6134772a0169718eadcb39e0a2f
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
	-	`sha256:faed23304425e8e46e517d33db41a2852764ac04e5b3678549048e457e9cd5b4`  
		Last Modified: Thu, 14 Dec 2017 19:18:27 GMT  
		Size: 75.8 MB (75793672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048bd6cefbca1336d7aa3b868e0ac8f691037e26a120ec6145d7e42c31d9afc0`  
		Last Modified: Thu, 14 Dec 2017 19:18:15 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
