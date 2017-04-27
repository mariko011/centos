## `gradle:jdk9`

```console
$ docker pull gradle@sha256:405474fc33cb11a850d65947d01f9319c97c7dbb98c8d31e0686cd9f8abcd80e
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336481129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7ad2a0972a5a9618a744a3b1b3985d59da05c9127df74113dd27b75c276082`
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
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_VERSION=9~b161
# Tue, 25 Apr 2017 00:43:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Wed, 26 Apr 2017 23:11:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 00:09:46 GMT
CMD ["gradle"]
# Thu, 27 Apr 2017 00:09:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 27 Apr 2017 00:09:47 GMT
ENV GRADLE_VERSION=3.5
# Thu, 27 Apr 2017 00:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Thu, 27 Apr 2017 00:09:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Thu, 27 Apr 2017 00:09:53 GMT
USER [gradle]
# Thu, 27 Apr 2017 00:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 27 Apr 2017 00:09:55 GMT
WORKDIR /home/gradle
# Thu, 27 Apr 2017 00:10:05 GMT
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
	-	`sha256:dc6a6b69791b11c869ce8a9e29ae6eacf2054e9c52aacecfcf71018423a49cb1`  
		Last Modified: Wed, 26 Apr 2017 23:26:54 GMT  
		Size: 155.1 MB (155054315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0496e9b84b48c23ee03dd14046240cd208dfc9180f8c362c1f661b4aab72a6dd`  
		Last Modified: Thu, 27 Apr 2017 00:18:02 GMT  
		Size: 73.3 MB (73310610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ddd97d77ec6be48011885910d942fd06d154a58561b0ee5677a198135a7ca6c`  
		Last Modified: Thu, 27 Apr 2017 00:17:54 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
