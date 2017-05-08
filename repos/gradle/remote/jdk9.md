## `gradle:jdk9`

```console
$ docker pull gradle@sha256:736fe63ca441e32b8cf50a8abfd6da6511f80b9557463702b1995ea9e5f4f712
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336626888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ecaead684718f3dfc95390ff8aeee971adf50671d0c08de873e7622c540a6f`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:23:43 GMT
ADD file:c473955c7b4205ed3e562fd42f0e8a0dc2b73d83a951d1302c5934bccd4595e1 in / 
# Mon, 24 Apr 2017 19:23:44 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:43:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:43:49 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 25 Apr 2017 00:43:50 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:43:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:59 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:30:00 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 08 May 2017 19:48:09 GMT
ENV JAVA_VERSION=9~b168
# Mon, 08 May 2017 19:48:09 GMT
ENV JAVA_DEBIAN_VERSION=9~b168-1
# Mon, 08 May 2017 19:48:36 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 08 May 2017 21:20:36 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:20:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:20:37 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:20:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:20:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:20:43 GMT
USER [gradle]
# Mon, 08 May 2017 21:20:44 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:20:44 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:20:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:a841bbfc2677931730fc87f2ae744411bafc92235b68ca88a21443c2a9adaa55`  
		Last Modified: Mon, 24 Apr 2017 19:35:43 GMT  
		Size: 45.2 MB (45249494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d5c09827328edda71795dc28781e627950f1a5bbec385201080f5aed329daba`  
		Last Modified: Mon, 24 Apr 2017 22:23:11 GMT  
		Size: 21.4 MB (21397541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754a5e86a8a3d961b9f6ca710d35659c604e2ae767f15a82fe0dc8b41aa04e43`  
		Last Modified: Mon, 24 Apr 2017 22:23:44 GMT  
		Size: 40.8 MB (40809328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8468b2aa102cd59731e580352efec7dbfc21cf0a5497f6a34e681917530a4a40`  
		Last Modified: Tue, 25 Apr 2017 00:58:09 GMT  
		Size: 659.3 KB (659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da02347ff68f5d8d4f2d7fa1c21b934222e4cc86c32b3acdb5ecf22d4527060`  
		Last Modified: Tue, 25 Apr 2017 00:58:09 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a182b8c78e914657dff19e63ceb2bf298d357109da9546fb3b318539e946374f`  
		Last Modified: Tue, 25 Apr 2017 00:58:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f730fa1986d37b26b13b31d484eb9bf065edc4984d0818533011fe49df3a958b`  
		Last Modified: Mon, 08 May 2017 20:02:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56923d2084fd21acd58e56e2ada33cc36ba8eea5830afda26883943b4ac58028`  
		Last Modified: Mon, 08 May 2017 20:02:22 GMT  
		Size: 155.2 MB (155199908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b79dc380b752e0cd3cffa9aecf01945f4f2d7903528409389bc7ce6dde7a8a`  
		Last Modified: Mon, 08 May 2017 21:29:03 GMT  
		Size: 73.3 MB (73310644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c2dee8f127dfeacd50945d457543518550e595c21fee564022313060c9f070e`  
		Last Modified: Mon, 08 May 2017 21:28:58 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
