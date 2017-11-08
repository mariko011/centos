## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:087e1584eea84e1a9cd09ad23900528f00c99a7348c9eaf569b2ef19be010204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:70928f065f1dc73d1ed50dd3ea52af71196d18f90efcfe1b3bb5461dec500593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129603290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07cedb0f049cbed845352daf4506afd304f836bec366f592c1e32196c1d6ca`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:11:04 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:11:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:11:16 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37df3fa36394c216777c4fe931277a8a5b1c817eb97f819f832dd3aa6bdb65fd`  
		Last Modified: Wed, 08 Nov 2017 20:25:02 GMT  
		Size: 73.3 MB (73325091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c963b6ea9954a1300b95e55a20fbfb0248d504c9debdd64962d78fbbc0718e`  
		Last Modified: Wed, 08 Nov 2017 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
