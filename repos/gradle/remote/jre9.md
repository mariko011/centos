## `gradle:jre9`

```console
$ docker pull gradle@sha256:3c6792920bd8069bd3a04792d436a69dfb12f37b2c851d898f253f750b4137d2
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.4 MB (280352300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0acd47c7a0db31dee29df4ffdcac5d70090fd84f4770ced8f8188cb2abbff416`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:44:54 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Jun 2017 02:44:54 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:44:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:44:57 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:44:58 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:44:59 GMT
ENV JAVA_VERSION=9~b170
# Fri, 23 Jun 2017 02:45:00 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Fri, 23 Jun 2017 02:45:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 14:57:11 GMT
CMD ["gradle"]
# Fri, 23 Jun 2017 14:57:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Jun 2017 14:57:13 GMT
ENV GRADLE_VERSION=4.0
# Fri, 23 Jun 2017 14:57:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Fri, 23 Jun 2017 14:57:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Fri, 23 Jun 2017 14:57:36 GMT
USER [gradle]
# Fri, 23 Jun 2017 14:57:37 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Jun 2017 14:57:38 GMT
WORKDIR /home/gradle
# Fri, 23 Jun 2017 14:57:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:f836f6e9bd1ef868da87e8fdcd0443c718f899e6da05effb84bb370ddc2c039f`  
		Last Modified: Tue, 20 Jun 2017 20:43:38 GMT  
		Size: 45.2 MB (45198775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:866f097affeb6c2272cae889af2ad71060e7e1e31baef46758f838a060c70da5`  
		Last Modified: Wed, 21 Jun 2017 00:37:41 GMT  
		Size: 11.2 MB (11232752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c67fe3f3f62d3be0f69949af11321139d94e653d745f2834e9d47f4b2b1647`  
		Last Modified: Sat, 24 Jun 2017 17:14:03 GMT  
		Size: 623.5 KB (623538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a3966ec751f91829596ae560909a4d208ac497d0775f350492aaa34046e955`  
		Last Modified: Sat, 24 Jun 2017 17:14:02 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b564aa3d7e7366f8e1ae2c477ed6c8704ef8c55e9b92314eaaf7221dcc64307f`  
		Last Modified: Sat, 24 Jun 2017 17:14:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114a1ebf5960e2805eaca7722d72001288c8ba85e52bdcd0f250aa2aa998ad60`  
		Last Modified: Sat, 24 Jun 2017 17:14:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12e478ffca1675f8994ae2e72c91c4ac4f8087fcec0d9f70a57c0783cf27cb8`  
		Last Modified: Sat, 24 Jun 2017 17:14:21 GMT  
		Size: 155.8 MB (155793518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5378506ee669a29f952d9db901301fb1e04577b11104bc60bbc73ffeeb664d01`  
		Last Modified: Sun, 25 Jun 2017 09:29:59 GMT  
		Size: 67.5 MB (67502992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076ed049f5a14aa600fdeeb1f14819f153e6198ab33079615798b60d76131621`  
		Last Modified: Sun, 25 Jun 2017 09:29:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
