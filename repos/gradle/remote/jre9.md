## `gradle:jre9`

```console
$ docker pull gradle@sha256:416a366d1c712e7ce47ab48f3c4ddde565f794fd19385a7b84f7cc4ac5b98f83
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.2 MB (286239347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d69c9bf6917b956ad317466dedde5d6de2b96539bb911ae6244749fd8dc1555f`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 08 May 2017 23:32:23 GMT
ADD file:485c5e010aec72afb62c7fe5bc651d739dad42e9baf81e811e6b3f369c72a917 in / 
# Mon, 08 May 2017 23:32:23 GMT
CMD ["/bin/bash"]
# Mon, 08 May 2017 23:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 10 May 2017 14:02:34 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Wed, 10 May 2017 14:02:35 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 14:02:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 14:02:38 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 10 May 2017 14:02:39 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 15 May 2017 20:44:55 GMT
ENV JAVA_VERSION=9~b169
# Mon, 15 May 2017 20:44:56 GMT
ENV JAVA_DEBIAN_VERSION=9~b169-1
# Mon, 15 May 2017 20:45:21 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 15 May 2017 22:57:38 GMT
CMD ["gradle"]
# Mon, 15 May 2017 22:57:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 15 May 2017 22:57:39 GMT
ENV GRADLE_VERSION=3.5
# Mon, 15 May 2017 22:57:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 15 May 2017 22:57:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 15 May 2017 22:57:46 GMT
USER [gradle]
# Mon, 15 May 2017 22:57:47 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 15 May 2017 22:57:48 GMT
WORKDIR /home/gradle
# Mon, 15 May 2017 22:58:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:705d0395ca7a3af6e4662abc693a18e13ffd882aaf93db55fc1a1b313b69cad8`  
		Last Modified: Mon, 08 May 2017 23:48:38 GMT  
		Size: 45.3 MB (45254594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95bfff6e637f7f460b136c6303bc8a9e3341d1821affa81f98ce0d8e2895d0a`  
		Last Modified: Tue, 09 May 2017 15:58:23 GMT  
		Size: 11.3 MB (11265380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe13d87883c9e70d0b7bdf485b6dd6ce43dd5fce01ac4f9841b36057ebba18ce`  
		Last Modified: Fri, 12 May 2017 15:26:45 GMT  
		Size: 627.7 KB (627748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b61bf4f9b91abade4a3639c940c71e977a56c1790eb3f8f0d6e2ee9f8361468`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301dec7b829e2fd43b5a9f0e79b21ddd0213ea5e1a45d66ac49230d2a893dc8b`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0451b2a7a53ce5b3a7db6d36ce6f5653e383286c5eb44bd7a2721c1891b9675`  
		Last Modified: Fri, 12 May 2017 15:26:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9435381826ea24594dff8aeadcf7438c4e0e5ba114bd712ef7dee2ead4676ad`  
		Last Modified: Mon, 15 May 2017 21:09:18 GMT  
		Size: 155.8 MB (155780267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d4e2ca88040f8d50022a98c9260286dab3c7e829ed7eecb0cf9ac4426b059`  
		Last Modified: Mon, 15 May 2017 23:14:39 GMT  
		Size: 73.3 MB (73310635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a8369ac5ec4ea5b8de05defd0f76678d013ab530ed42f518a41b8d655e72bf`  
		Last Modified: Mon, 15 May 2017 23:14:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
