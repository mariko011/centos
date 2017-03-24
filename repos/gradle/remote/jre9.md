## `gradle:jre9`

```console
$ docker pull gradle@sha256:4f821e89445e98561b29c5a0b29a035a0cb856d0931fe8339c5abb652f3d463d
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.3 MB (291294701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7f17d65740924a0e8a6ecf12694ec755612ece5f389c6d68edadc9b4a8c8ae`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:52:31 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 21 Mar 2017 22:52:31 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:52:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 21 Mar 2017 22:52:34 GMT
ENV JAVA_VERSION=9~b161
# Tue, 21 Mar 2017 22:52:34 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 21 Mar 2017 22:52:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:39:45 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:39:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 24 Mar 2017 17:04:34 GMT
ENV GRADLE_VERSION=3.4.1
# Fri, 24 Mar 2017 17:04:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=db1db193d479cc1202be843f17e4526660cfb0b21b57d62f3a87f88c878af9b2
# Fri, 24 Mar 2017 17:04:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=db1db193d479cc1202be843f17e4526660cfb0b21b57d62f3a87f88c878af9b2
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Fri, 24 Mar 2017 17:04:38 GMT
USER [gradle]
# Fri, 24 Mar 2017 17:04:38 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 24 Mar 2017 17:04:38 GMT
WORKDIR /home/gradle
# Fri, 24 Mar 2017 17:04:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=db1db193d479cc1202be843f17e4526660cfb0b21b57d62f3a87f88c878af9b2
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e3b45ca6f7b167b4ef26368cf09d21b2b8e8f75b5b78dd49498dc78f09176f`  
		Last Modified: Thu, 23 Mar 2017 18:56:53 GMT  
		Size: 627.4 KB (627440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf09c4384be8b6a902d9d2457f9e5bbd949d8dc159e41fc047ab5eb9223955`  
		Last Modified: Thu, 23 Mar 2017 18:56:52 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631d5a85d6bf6041a8e10de19bd29bef3997d2aadf05bd2329ff4bacbb9c18e3`  
		Last Modified: Thu, 23 Mar 2017 18:56:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a3fbb4d14e2ce8909975faf8e0f32cde08584da323efd247727df67a67663`  
		Last Modified: Thu, 23 Mar 2017 18:57:16 GMT  
		Size: 155.0 MB (154982959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7b15a6153e8c581cc64c62a2558d506ef87d4d9ea450d6ceea6e79eeaf1763`  
		Last Modified: Fri, 24 Mar 2017 17:21:57 GMT  
		Size: 70.3 MB (70264399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a637eb617b8a3d71920de89f3077c3f94ad1829769fb5247fcabdd88600cbc07`  
		Last Modified: Fri, 24 Mar 2017 17:21:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
