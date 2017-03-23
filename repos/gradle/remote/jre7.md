## `gradle:jre7`

```console
$ docker pull gradle@sha256:6b84b1d9aa545f2bf00a00f1dbccf98e7d42b2ca03d7fb5d05544b175c357159
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218762377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72adee721023e1d8c098d1d16bec99348cd174159534e05116bd176fa2526192`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:14:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:14:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_VERSION=7u121
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 21 Mar 2017 22:15:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:31:17 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:31:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 23 Mar 2017 18:31:18 GMT
ENV GRADLE_VERSION=3.4
# Thu, 23 Mar 2017 18:31:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
# Thu, 23 Mar 2017 18:31:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Thu, 23 Mar 2017 18:31:58 GMT
USER [gradle]
# Thu, 23 Mar 2017 18:31:59 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 23 Mar 2017 18:32:00 GMT
WORKDIR /home/gradle
# Thu, 23 Mar 2017 18:32:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=72d0cd4dcdd5e3be165eb7cd7bbd25cf8968baf400323d9ab1bba622c3f72205
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab260573986a6f458fbd449b93a3f83d9cd20472c078533020e9a6d8cffb017`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c48cee0b2bcdda413b013c4222041500677be368ce932c606c8f3b94fe3f5f`  
		Last Modified: Thu, 23 Mar 2017 18:43:04 GMT  
		Size: 77.9 MB (77886489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac78c8b30222839b8e2b01c9eb71ad0e94f2a84172c0786b76e396049cca33e`  
		Last Modified: Thu, 23 Mar 2017 18:42:53 GMT  
		Size: 70.3 MB (70263588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b967bc4de9224c690aaee8578212a7874d8c97d23d56d83105198d8c62ec3d34`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
