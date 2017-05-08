## `gradle:jdk7`

```console
$ docker pull gradle@sha256:4e90359359aaab0457733526cc20ca89e4c19d470e2c5a18de9cc3471fb6d988
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.9 MB (329892311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2c3a997304fb46b4dbf2d01bfbe282f08dd04cd167a8fc3c92db417338e406`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 24 Apr 2017 19:55:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:38:27 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:38:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:23:48 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:23:49 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:23:49 GMT
ENV JAVA_VERSION=7u121
# Fri, 05 May 2017 22:24:07 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Fri, 05 May 2017 22:25:14 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 08 May 2017 21:19:27 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:19:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:19:28 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:19:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:19:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:19:34 GMT
USER [gradle]
# Mon, 08 May 2017 21:19:35 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:19:35 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:19:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:cd0a524342efac6edff500c17e625735bbe479c926439b263bbe3c8518a0849c`  
		Last Modified: Mon, 24 Apr 2017 19:32:05 GMT  
		Size: 52.6 MB (52550276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39c3ffe41332a7a3c7f85f57e547361ec90b6e0091dd6058e06acccde2217d4`  
		Last Modified: Mon, 24 Apr 2017 22:19:28 GMT  
		Size: 19.3 MB (19266225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85334a7c200103c122f3cbf56460f28fe688abc52655dc714afa939e49848ba8`  
		Last Modified: Mon, 24 Apr 2017 22:20:21 GMT  
		Size: 43.2 MB (43231315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46c5b79125ec83395527f1cf86e8b3f5f4e2fc6bbf53d087b521e470afc46c6`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 599.6 KB (599608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88674293e9f71d3de3773708d6c1c0d9133768b642dfd49fdb533095ead5923`  
		Last Modified: Tue, 25 Apr 2017 00:47:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cd78a82019b788fbdb62473141b35a6f88edd48e3e2f3af05d8c46e6d62dce4`  
		Last Modified: Fri, 05 May 2017 22:48:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da0c129af499b11e61aaadea1091595e3a82aff9aad1446651e751bef9daa497`  
		Last Modified: Fri, 05 May 2017 22:48:38 GMT  
		Size: 140.9 MB (140933946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd162e572f11e75889dc377debe8c286888e51040bc6d7fff3a66ddcfa6e039`  
		Last Modified: Mon, 08 May 2017 21:23:08 GMT  
		Size: 73.3 MB (73310433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a64f33a2491f61cb6b10ed3a8bd44c7c66bf3b596bf7f33d7042ffbd482c1f8`  
		Last Modified: Mon, 08 May 2017 21:23:00 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
