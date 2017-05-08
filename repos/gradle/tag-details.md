<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gradle`

-	[`gradle:3.5-jdk7`](#gradle35-jdk7)
-	[`gradle:jdk7`](#gradlejdk7)
-	[`gradle:3.5-jre7`](#gradle35-jre7)
-	[`gradle:jre7`](#gradlejre7)
-	[`gradle:3.5-jdk7-alpine`](#gradle35-jdk7-alpine)
-	[`gradle:jdk7-alpine`](#gradlejdk7-alpine)
-	[`gradle:3.5-jre7-alpine`](#gradle35-jre7-alpine)
-	[`gradle:jre7-alpine`](#gradlejre7-alpine)
-	[`gradle:3.5-jdk8`](#gradle35-jdk8)
-	[`gradle:jdk8`](#gradlejdk8)
-	[`gradle:3.5-jdk`](#gradle35-jdk)
-	[`gradle:jdk`](#gradlejdk)
-	[`gradle:3.5`](#gradle35)
-	[`gradle:latest`](#gradlelatest)
-	[`gradle:3.5-jre8`](#gradle35-jre8)
-	[`gradle:jre8`](#gradlejre8)
-	[`gradle:3.5-jre`](#gradle35-jre)
-	[`gradle:jre`](#gradlejre)
-	[`gradle:3.5-jdk8-alpine`](#gradle35-jdk8-alpine)
-	[`gradle:jdk8-alpine`](#gradlejdk8-alpine)
-	[`gradle:3.5-jdk-alpine`](#gradle35-jdk-alpine)
-	[`gradle:jdk-alpine`](#gradlejdk-alpine)
-	[`gradle:3.5-alpine`](#gradle35-alpine)
-	[`gradle:alpine`](#gradlealpine)
-	[`gradle:3.5-jre8-alpine`](#gradle35-jre8-alpine)
-	[`gradle:jre8-alpine`](#gradlejre8-alpine)
-	[`gradle:3.5-jre-alpine`](#gradle35-jre-alpine)
-	[`gradle:jre-alpine`](#gradlejre-alpine)
-	[`gradle:3.5-jdk9`](#gradle35-jdk9)
-	[`gradle:jdk9`](#gradlejdk9)
-	[`gradle:3.5-jre9`](#gradle35-jre9)
-	[`gradle:jre9`](#gradlejre9)

## `gradle:3.5-jdk7`

```console
$ docker pull gradle@sha256:4e90359359aaab0457733526cc20ca89e4c19d470e2c5a18de9cc3471fb6d988
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk7` - linux; amd64

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

## `gradle:3.5-jre7`

```console
$ docker pull gradle@sha256:5210b751273638567bed5a563f3d0c64bd0787a7f4e98f5f5ad2271f0923fc46
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224112376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6e1c44b5f3861cd56b6bcaf6bf2d93d72a32f953e39a753ec2a03b01337ed5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:40:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:25:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:25:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:25:51 GMT
ENV JAVA_VERSION=7u121
# Fri, 05 May 2017 22:25:51 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Fri, 05 May 2017 22:26:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 08 May 2017 21:21:14 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:21:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:21:15 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:21:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:21:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:21:21 GMT
USER [gradle]
# Mon, 08 May 2017 21:21:22 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:21:22 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:21:27 GMT
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
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bca657a5b49bc714d81b3e3b0310bcf8d9a48837e8b4acd1fdfd10cfad25e1`  
		Last Modified: Tue, 25 Apr 2017 00:50:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d90b85561c69cb0635861c193e821821b6a406d523180d11d660b92761b12f`  
		Last Modified: Fri, 05 May 2017 22:51:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53610c8d65fccd69d9479b8315c62cd3eb1747e8c750038f720add31688eded`  
		Last Modified: Fri, 05 May 2017 22:51:55 GMT  
		Size: 78.4 MB (78411200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6d08f6cce9db146546dbc69977cac08bcce73da06ef0d2093dce87feb40b30`  
		Last Modified: Mon, 08 May 2017 21:29:56 GMT  
		Size: 73.3 MB (73310449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3947daa52cc7841c95bb2c4b3ab718b765c0250aa829ecd2bc61588923997f54`  
		Last Modified: Mon, 08 May 2017 21:29:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:5210b751273638567bed5a563f3d0c64bd0787a7f4e98f5f5ad2271f0923fc46
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224112376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b6e1c44b5f3861cd56b6bcaf6bf2d93d72a32f953e39a753ec2a03b01337ed5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:06 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:40:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:25:49 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:25:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:25:51 GMT
ENV JAVA_VERSION=7u121
# Fri, 05 May 2017 22:25:51 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Fri, 05 May 2017 22:26:48 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 08 May 2017 21:21:14 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:21:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:21:15 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:21:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:21:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:21:21 GMT
USER [gradle]
# Mon, 08 May 2017 21:21:22 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:21:22 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:21:27 GMT
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
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bca657a5b49bc714d81b3e3b0310bcf8d9a48837e8b4acd1fdfd10cfad25e1`  
		Last Modified: Tue, 25 Apr 2017 00:50:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d90b85561c69cb0635861c193e821821b6a406d523180d11d660b92761b12f`  
		Last Modified: Fri, 05 May 2017 22:51:42 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53610c8d65fccd69d9479b8315c62cd3eb1747e8c750038f720add31688eded`  
		Last Modified: Fri, 05 May 2017 22:51:55 GMT  
		Size: 78.4 MB (78411200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce6d08f6cce9db146546dbc69977cac08bcce73da06ef0d2093dce87feb40b30`  
		Last Modified: Mon, 08 May 2017 21:29:56 GMT  
		Size: 73.3 MB (73310449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3947daa52cc7841c95bb2c4b3ab718b765c0250aa829ecd2bc61588923997f54`  
		Last Modified: Mon, 08 May 2017 21:29:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk7-alpine`

```console
$ docker pull gradle@sha256:e9d64e5cdc8cef87dca07d118f6afb1b5fe2f970c4d7d58daf6724d81ec07523
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152666514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41e639805984e6ac1e06f2c1c1e3beb92e1fd3983829839a678cf5bfb77c9e1`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:00:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 03 Mar 2017 22:00:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:33:11 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:33:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:52:07 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:52:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:52:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:52:14 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:52:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:52:15 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:52:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813a1a00513cab49fcb6584abe3ba296279d0561ecfc7335b705d6e8eb1726c1`  
		Last Modified: Sat, 04 Mar 2017 01:28:34 GMT  
		Size: 75.6 MB (75585206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0908dda09d207a8dea5c468cf2ded41c3163cfce8e089ebe5f6164b9ef95d6`  
		Last Modified: Tue, 18 Apr 2017 16:58:00 GMT  
		Size: 74.8 MB (74767561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f4151b9f9d463927700d6482046eafde083b6d014a9f7a808e740457410f4c`  
		Last Modified: Tue, 18 Apr 2017 16:57:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:e9d64e5cdc8cef87dca07d118f6afb1b5fe2f970c4d7d58daf6724d81ec07523
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152666514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a41e639805984e6ac1e06f2c1c1e3beb92e1fd3983829839a678cf5bfb77c9e1`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:00:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Fri, 03 Mar 2017 22:00:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:00:59 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:33:11 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:33:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:52:07 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:52:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:52:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:52:14 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:52:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:52:15 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:52:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813a1a00513cab49fcb6584abe3ba296279d0561ecfc7335b705d6e8eb1726c1`  
		Last Modified: Sat, 04 Mar 2017 01:28:34 GMT  
		Size: 75.6 MB (75585206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0908dda09d207a8dea5c468cf2ded41c3163cfce8e089ebe5f6164b9ef95d6`  
		Last Modified: Tue, 18 Apr 2017 16:58:00 GMT  
		Size: 74.8 MB (74767561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71f4151b9f9d463927700d6482046eafde083b6d014a9f7a808e740457410f4c`  
		Last Modified: Tue, 18 Apr 2017 16:57:53 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre7-alpine`

```console
$ docker pull gradle@sha256:45cac86eac5d4f83d8f0af88fe6cfc9661d0826dbc731c86369895ddaae34142
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136418748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc5271e414521c3c6287d924623e444764934eb468b6bfc0ca46d78369cdfff`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 03 Mar 2017 22:01:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:01:11 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:34:45 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:34:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:52:36 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:52:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:52:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:52:42 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:52:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:52:43 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:52:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00931970f016de39c34343b7c5f5974d896c296f713fcd3102c5afe0b3ac15a8`  
		Last Modified: Sat, 04 Mar 2017 02:10:53 GMT  
		Size: 59.3 MB (59347767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a77bc754b8668c45a8c0a60e2f84dac80bd41539065d92cb91eef0f7e4ac08`  
		Last Modified: Tue, 18 Apr 2017 16:58:50 GMT  
		Size: 74.8 MB (74757230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46932a367db9e4705325281a24459640d84fad039e305bf4aad764fe6305f46b`  
		Last Modified: Tue, 18 Apr 2017 16:58:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:45cac86eac5d4f83d8f0af88fe6cfc9661d0826dbc731c86369895ddaae34142
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.4 MB (136418748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc5271e414521c3c6287d924623e444764934eb468b6bfc0ca46d78369cdfff`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 03 Mar 2017 22:01:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 03 Mar 2017 22:01:10 GMT
ENV JAVA_VERSION=7u121
# Fri, 03 Mar 2017 22:01:11 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Fri, 03 Mar 2017 22:01:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:34:45 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:34:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:52:36 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:52:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:52:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:52:42 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:52:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:52:43 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:52:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:7095154754192bfc2306f3b2b841ef82771b7ad39526537234adb1e74ae81a93`  
		Last Modified: Fri, 03 Mar 2017 20:34:19 GMT  
		Size: 2.3 MB (2313384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38a1c0aaa6fda9a4f5f940c5c7a0622430f1faac9de367016cd5a0aed8ef4478`  
		Last Modified: Sat, 04 Mar 2017 01:28:19 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00931970f016de39c34343b7c5f5974d896c296f713fcd3102c5afe0b3ac15a8`  
		Last Modified: Sat, 04 Mar 2017 02:10:53 GMT  
		Size: 59.3 MB (59347767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a77bc754b8668c45a8c0a60e2f84dac80bd41539065d92cb91eef0f7e4ac08`  
		Last Modified: Tue, 18 Apr 2017 16:58:50 GMT  
		Size: 74.8 MB (74757230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46932a367db9e4705325281a24459640d84fad039e305bf4aad764fe6305f46b`  
		Last Modified: Tue, 18 Apr 2017 16:58:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk8`

```console
$ docker pull gradle@sha256:c47a2027552816a2f7da7e39e4e29fd8e235b448af99581d7a2cfac8aaf368ac
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321136189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84387791b822c4e27ad468dac94eee669503ef413fefb1168e4dedf19c6321da`
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
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:20:00 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:20:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:20:02 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:20:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:20:12 GMT
USER [gradle]
# Mon, 08 May 2017 21:20:13 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:20:13 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:20:16 GMT
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
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d1f22faad2dbe8a25ffe7806e3d1f6a505a8a13260e3ec645547c7405412b2`  
		Last Modified: Mon, 08 May 2017 21:24:54 GMT  
		Size: 73.3 MB (73310479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699246eb1652b2609e44c092d593e48a4b451a154dd72e0b635ef7e0bb6471bd`  
		Last Modified: Mon, 08 May 2017 21:24:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:c47a2027552816a2f7da7e39e4e29fd8e235b448af99581d7a2cfac8aaf368ac
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321136189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84387791b822c4e27ad468dac94eee669503ef413fefb1168e4dedf19c6321da`
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
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:20:00 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:20:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:20:02 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:20:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:20:12 GMT
USER [gradle]
# Mon, 08 May 2017 21:20:13 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:20:13 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:20:16 GMT
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
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d1f22faad2dbe8a25ffe7806e3d1f6a505a8a13260e3ec645547c7405412b2`  
		Last Modified: Mon, 08 May 2017 21:24:54 GMT  
		Size: 73.3 MB (73310479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699246eb1652b2609e44c092d593e48a4b451a154dd72e0b635ef7e0bb6471bd`  
		Last Modified: Mon, 08 May 2017 21:24:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk`

```console
$ docker pull gradle@sha256:c47a2027552816a2f7da7e39e4e29fd8e235b448af99581d7a2cfac8aaf368ac
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321136189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84387791b822c4e27ad468dac94eee669503ef413fefb1168e4dedf19c6321da`
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
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:20:00 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:20:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:20:02 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:20:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:20:12 GMT
USER [gradle]
# Mon, 08 May 2017 21:20:13 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:20:13 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:20:16 GMT
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
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d1f22faad2dbe8a25ffe7806e3d1f6a505a8a13260e3ec645547c7405412b2`  
		Last Modified: Mon, 08 May 2017 21:24:54 GMT  
		Size: 73.3 MB (73310479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699246eb1652b2609e44c092d593e48a4b451a154dd72e0b635ef7e0bb6471bd`  
		Last Modified: Mon, 08 May 2017 21:24:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:c47a2027552816a2f7da7e39e4e29fd8e235b448af99581d7a2cfac8aaf368ac
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321136189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84387791b822c4e27ad468dac94eee669503ef413fefb1168e4dedf19c6321da`
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
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:20:00 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:20:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:20:02 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:20:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:20:12 GMT
USER [gradle]
# Mon, 08 May 2017 21:20:13 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:20:13 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:20:16 GMT
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
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d1f22faad2dbe8a25ffe7806e3d1f6a505a8a13260e3ec645547c7405412b2`  
		Last Modified: Mon, 08 May 2017 21:24:54 GMT  
		Size: 73.3 MB (73310479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699246eb1652b2609e44c092d593e48a4b451a154dd72e0b635ef7e0bb6471bd`  
		Last Modified: Mon, 08 May 2017 21:24:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5`

```console
$ docker pull gradle@sha256:c47a2027552816a2f7da7e39e4e29fd8e235b448af99581d7a2cfac8aaf368ac
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321136189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84387791b822c4e27ad468dac94eee669503ef413fefb1168e4dedf19c6321da`
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
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:20:00 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:20:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:20:02 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:20:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:20:12 GMT
USER [gradle]
# Mon, 08 May 2017 21:20:13 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:20:13 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:20:16 GMT
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
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d1f22faad2dbe8a25ffe7806e3d1f6a505a8a13260e3ec645547c7405412b2`  
		Last Modified: Mon, 08 May 2017 21:24:54 GMT  
		Size: 73.3 MB (73310479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699246eb1652b2609e44c092d593e48a4b451a154dd72e0b635ef7e0bb6471bd`  
		Last Modified: Mon, 08 May 2017 21:24:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:c47a2027552816a2f7da7e39e4e29fd8e235b448af99581d7a2cfac8aaf368ac
```

-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321136189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84387791b822c4e27ad468dac94eee669503ef413fefb1168e4dedf19c6321da`
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
# Tue, 25 Apr 2017 00:41:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:41:08 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:41:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:27:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 May 2017 22:27:39 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:27:57 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:27:58 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:28:45 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:28:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:20:00 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:20:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:20:02 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:20:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:20:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:20:12 GMT
USER [gradle]
# Mon, 08 May 2017 21:20:13 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:20:13 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:20:16 GMT
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
	-	`sha256:30d4cb7cc8bcb4f9a4cf2ccb6830338a99dd13262d8c4ae24f083d27de09d10d`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d273117faaf9aabd15756fc311cae3773768e2409158bd8a6e76cc5a3035913`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b271bed4ca3b242f18f086d4ccf56b710445d94c11a7b74dfaef415d5de4603`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e4d8ac7a5480d14a1a38b1afd8fd239a6fc205e13368c7bd6be7738f995212`  
		Last Modified: Fri, 05 May 2017 22:53:55 GMT  
		Size: 131.9 MB (131887898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45858d68b18da8beba6cb3582db59af65788dc4a5d90d8207c726a8c763ed381`  
		Last Modified: Fri, 05 May 2017 22:53:24 GMT  
		Size: 289.7 KB (289668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d1f22faad2dbe8a25ffe7806e3d1f6a505a8a13260e3ec645547c7405412b2`  
		Last Modified: Mon, 08 May 2017 21:24:54 GMT  
		Size: 73.3 MB (73310479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699246eb1652b2609e44c092d593e48a4b451a154dd72e0b635ef7e0bb6471bd`  
		Last Modified: Mon, 08 May 2017 21:24:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre8`

```console
$ docker pull gradle@sha256:84bb947b9902622f2ca8ad882326b5e08c12203563fa85856df0837793bb5635
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200050170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119074d1d078cd531a56ba93a00841b160ef7bfb32d2a7e062e79d67c3cea465`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:21:45 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:21:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:21:47 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:21:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:21:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:21:52 GMT
USER [gradle]
# Mon, 08 May 2017 21:21:53 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:21:53 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:21:57 GMT
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
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df259c3202c0b906898749ae5382025af479adaeb127b0b625858f81abcd3b2b`  
		Last Modified: Mon, 08 May 2017 21:31:26 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb48c36f193210df241f8e6c4a4149bc3b2e5ac185280ac1e884f832c502d3d`  
		Last Modified: Mon, 08 May 2017 21:31:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:84bb947b9902622f2ca8ad882326b5e08c12203563fa85856df0837793bb5635
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200050170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119074d1d078cd531a56ba93a00841b160ef7bfb32d2a7e062e79d67c3cea465`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:21:45 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:21:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:21:47 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:21:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:21:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:21:52 GMT
USER [gradle]
# Mon, 08 May 2017 21:21:53 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:21:53 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:21:57 GMT
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
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df259c3202c0b906898749ae5382025af479adaeb127b0b625858f81abcd3b2b`  
		Last Modified: Mon, 08 May 2017 21:31:26 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb48c36f193210df241f8e6c4a4149bc3b2e5ac185280ac1e884f832c502d3d`  
		Last Modified: Mon, 08 May 2017 21:31:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre`

```console
$ docker pull gradle@sha256:84bb947b9902622f2ca8ad882326b5e08c12203563fa85856df0837793bb5635
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200050170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119074d1d078cd531a56ba93a00841b160ef7bfb32d2a7e062e79d67c3cea465`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:21:45 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:21:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:21:47 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:21:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:21:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:21:52 GMT
USER [gradle]
# Mon, 08 May 2017 21:21:53 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:21:53 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:21:57 GMT
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
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df259c3202c0b906898749ae5382025af479adaeb127b0b625858f81abcd3b2b`  
		Last Modified: Mon, 08 May 2017 21:31:26 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb48c36f193210df241f8e6c4a4149bc3b2e5ac185280ac1e884f832c502d3d`  
		Last Modified: Mon, 08 May 2017 21:31:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:84bb947b9902622f2ca8ad882326b5e08c12203563fa85856df0837793bb5635
```

-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.1 MB (200050170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119074d1d078cd531a56ba93a00841b160ef7bfb32d2a7e062e79d67c3cea465`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:20:41 GMT
ADD file:712c48086043553b85ffb031d8f6c5de857a2e53974df30cdfbc1e85c1b00a25 in / 
# Mon, 24 Apr 2017 19:20:42 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:40:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:42:38 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 25 Apr 2017 00:42:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:42:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 05 May 2017 22:29:09 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 05 May 2017 22:29:10 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_VERSION=8u121
# Fri, 05 May 2017 22:29:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Fri, 05 May 2017 22:29:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 05 May 2017 22:29:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 May 2017 22:29:37 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 08 May 2017 21:21:45 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:21:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:21:47 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:21:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:21:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:21:52 GMT
USER [gradle]
# Mon, 08 May 2017 21:21:53 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:21:53 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:21:57 GMT
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
	-	`sha256:aac3320edf402163d25e312e38b3611696a39ea8cefb0f58bda4e29bf980ed0a`  
		Last Modified: Tue, 25 Apr 2017 00:50:41 GMT  
		Size: 573.7 KB (573718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9e109682f71c933209cd7962c1dcc21b6b81d1e5bc8c7089ba47a9f237fd6d`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a59efcf95535f4d4fc76173fde32486ab50fa8fbf293afae9412d4716cb59c4`  
		Last Modified: Tue, 25 Apr 2017 00:56:07 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b666d261d3b8c87670e9a57b9261a07977433af08d4d48d7fe37a5a7126350`  
		Last Modified: Fri, 05 May 2017 22:58:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98430ee944b3da76725b45f66548b40b10ad2b28dbf47a8b7a9a6a444020e8ab`  
		Last Modified: Fri, 05 May 2017 22:58:37 GMT  
		Size: 54.1 MB (54059101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0670b9fca61293fb13c831445d8604fa03674cdc0eea487af1db9df0cfadc859`  
		Last Modified: Fri, 05 May 2017 22:58:24 GMT  
		Size: 289.7 KB (289674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df259c3202c0b906898749ae5382025af479adaeb127b0b625858f81abcd3b2b`  
		Last Modified: Mon, 08 May 2017 21:31:26 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb48c36f193210df241f8e6c4a4149bc3b2e5ac185280ac1e884f832c502d3d`  
		Last Modified: Mon, 08 May 2017 21:31:21 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk8-alpine`

```console
$ docker pull gradle@sha256:2279b27df2d5b559fc66584356306cba8fd1cdf208ca897008986cb3857731a7
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146194216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e93db558a8405bacd3b3a4d2a3f58d7b50fb728299b71774f9d8ea9863fd03f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:37:25 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:13 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6943f6ba617cfb56287aaf32a3a5d5a3dc7745f591c2bda3d4c159dac0f7a22e`  
		Last Modified: Tue, 18 Apr 2017 17:02:56 GMT  
		Size: 74.7 MB (74723661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a97d4094b7759fcdf39319a563e667e8fb14a2e107ec83275c73e0b9d50333`  
		Last Modified: Tue, 18 Apr 2017 17:02:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:2279b27df2d5b559fc66584356306cba8fd1cdf208ca897008986cb3857731a7
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146194216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e93db558a8405bacd3b3a4d2a3f58d7b50fb728299b71774f9d8ea9863fd03f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:37:25 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:13 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6943f6ba617cfb56287aaf32a3a5d5a3dc7745f591c2bda3d4c159dac0f7a22e`  
		Last Modified: Tue, 18 Apr 2017 17:02:56 GMT  
		Size: 74.7 MB (74723661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a97d4094b7759fcdf39319a563e667e8fb14a2e107ec83275c73e0b9d50333`  
		Last Modified: Tue, 18 Apr 2017 17:02:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk-alpine`

```console
$ docker pull gradle@sha256:2279b27df2d5b559fc66584356306cba8fd1cdf208ca897008986cb3857731a7
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146194216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e93db558a8405bacd3b3a4d2a3f58d7b50fb728299b71774f9d8ea9863fd03f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:37:25 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:13 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6943f6ba617cfb56287aaf32a3a5d5a3dc7745f591c2bda3d4c159dac0f7a22e`  
		Last Modified: Tue, 18 Apr 2017 17:02:56 GMT  
		Size: 74.7 MB (74723661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a97d4094b7759fcdf39319a563e667e8fb14a2e107ec83275c73e0b9d50333`  
		Last Modified: Tue, 18 Apr 2017 17:02:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:2279b27df2d5b559fc66584356306cba8fd1cdf208ca897008986cb3857731a7
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146194216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e93db558a8405bacd3b3a4d2a3f58d7b50fb728299b71774f9d8ea9863fd03f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:37:25 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:13 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6943f6ba617cfb56287aaf32a3a5d5a3dc7745f591c2bda3d4c159dac0f7a22e`  
		Last Modified: Tue, 18 Apr 2017 17:02:56 GMT  
		Size: 74.7 MB (74723661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a97d4094b7759fcdf39319a563e667e8fb14a2e107ec83275c73e0b9d50333`  
		Last Modified: Tue, 18 Apr 2017 17:02:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-alpine`

```console
$ docker pull gradle@sha256:2279b27df2d5b559fc66584356306cba8fd1cdf208ca897008986cb3857731a7
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146194216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e93db558a8405bacd3b3a4d2a3f58d7b50fb728299b71774f9d8ea9863fd03f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:37:25 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:13 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6943f6ba617cfb56287aaf32a3a5d5a3dc7745f591c2bda3d4c159dac0f7a22e`  
		Last Modified: Tue, 18 Apr 2017 17:02:56 GMT  
		Size: 74.7 MB (74723661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a97d4094b7759fcdf39319a563e667e8fb14a2e107ec83275c73e0b9d50333`  
		Last Modified: Tue, 18 Apr 2017 17:02:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:2279b27df2d5b559fc66584356306cba8fd1cdf208ca897008986cb3857731a7
```

-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146194216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e93db558a8405bacd3b3a4d2a3f58d7b50fb728299b71774f9d8ea9863fd03f`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 07 Mar 2017 01:04:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:01 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:37:25 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:37:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:13 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:14 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e00029ebfe30f96f53c89cd3c838b89876ee212cbb545e8ac5c70698c1818f1`  
		Last Modified: Tue, 07 Mar 2017 01:12:59 GMT  
		Size: 69.6 MB (69564916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6943f6ba617cfb56287aaf32a3a5d5a3dc7745f591c2bda3d4c159dac0f7a22e`  
		Last Modified: Tue, 18 Apr 2017 17:02:56 GMT  
		Size: 74.7 MB (74723661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a97d4094b7759fcdf39319a563e667e8fb14a2e107ec83275c73e0b9d50333`  
		Last Modified: Tue, 18 Apr 2017 17:02:51 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre8-alpine`

```console
$ docker pull gradle@sha256:a596ada1a90cf777b92b3a44b84d962b43084d927fb477bb95ca69de746f8a22
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130438597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e879302161cfb15975b115c6dda157325a372abd4ef9f29a2bf7ce8e0727295`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:38:11 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:38:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:35 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:42 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:44 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ca9ffc9e94f179e485bffc5d74511fa5e0cc85c5a24937bf6ed3e3fad7efa4`  
		Last Modified: Tue, 18 Apr 2017 17:04:52 GMT  
		Size: 74.7 MB (74721866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff4efad77629f580302f050b23d789416ce0eca8a904eb54a04bec921144bc1`  
		Last Modified: Tue, 18 Apr 2017 17:04:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:a596ada1a90cf777b92b3a44b84d962b43084d927fb477bb95ca69de746f8a22
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130438597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e879302161cfb15975b115c6dda157325a372abd4ef9f29a2bf7ce8e0727295`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:38:11 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:38:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:35 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:42 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:44 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ca9ffc9e94f179e485bffc5d74511fa5e0cc85c5a24937bf6ed3e3fad7efa4`  
		Last Modified: Tue, 18 Apr 2017 17:04:52 GMT  
		Size: 74.7 MB (74721866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff4efad77629f580302f050b23d789416ce0eca8a904eb54a04bec921144bc1`  
		Last Modified: Tue, 18 Apr 2017 17:04:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre-alpine`

```console
$ docker pull gradle@sha256:a596ada1a90cf777b92b3a44b84d962b43084d927fb477bb95ca69de746f8a22
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130438597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e879302161cfb15975b115c6dda157325a372abd4ef9f29a2bf7ce8e0727295`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:38:11 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:38:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:35 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:42 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:44 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ca9ffc9e94f179e485bffc5d74511fa5e0cc85c5a24937bf6ed3e3fad7efa4`  
		Last Modified: Tue, 18 Apr 2017 17:04:52 GMT  
		Size: 74.7 MB (74721866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff4efad77629f580302f050b23d789416ce0eca8a904eb54a04bec921144bc1`  
		Last Modified: Tue, 18 Apr 2017 17:04:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:a596ada1a90cf777b92b3a44b84d962b43084d927fb477bb95ca69de746f8a22
```

-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130438597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e879302161cfb15975b115c6dda157325a372abd4ef9f29a2bf7ce8e0727295`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:37 GMT
ADD file:730030a984f5f0c5dc9b15ab61da161082b5c0f6e112a9c921b42321140c3927 in / 
# Tue, 07 Mar 2017 01:03:58 GMT
ENV LANG=C.UTF-8
# Tue, 07 Mar 2017 01:03:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 07 Mar 2017 01:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 07 Mar 2017 01:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Mar 2017 01:04:10 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Tue, 07 Mar 2017 01:04:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:38:11 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:38:12 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:54:35 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:54:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:54:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:54:42 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:54:43 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:54:44 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:54:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:627beaf3eaaff1c0bc3311d60fb933c17ad04fe377e1043d9593646d8ae3bfe1`  
		Last Modified: Fri, 03 Mar 2017 20:34:41 GMT  
		Size: 1.9 MB (1905270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de20f2d8b839756d5fc0ae6871096666a822b6b4205e11e9cf438a2263f3281`  
		Last Modified: Tue, 07 Mar 2017 01:12:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e619d348278f1e8660192734bff496a6c3e05aab6bef025e843e7413a7c9e3`  
		Last Modified: Tue, 07 Mar 2017 01:15:49 GMT  
		Size: 53.8 MB (53811092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ca9ffc9e94f179e485bffc5d74511fa5e0cc85c5a24937bf6ed3e3fad7efa4`  
		Last Modified: Tue, 18 Apr 2017 17:04:52 GMT  
		Size: 74.7 MB (74721866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff4efad77629f580302f050b23d789416ce0eca8a904eb54a04bec921144bc1`  
		Last Modified: Tue, 18 Apr 2017 17:04:46 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk9`

```console
$ docker pull gradle@sha256:736fe63ca441e32b8cf50a8abfd6da6511f80b9557463702b1995ea9e5f4f712
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk9` - linux; amd64

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

## `gradle:3.5-jre9`

```console
$ docker pull gradle@sha256:4d8603928679bc1295837c81cb3ffebf3490ad35eaa96927be1dc59cc89e3f61
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296333102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95121f6f05ecd8e0f8b6575e52175e6056b4319a937d4632c3983673f205e0ac`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:23:43 GMT
ADD file:c473955c7b4205ed3e562fd42f0e8a0dc2b73d83a951d1302c5934bccd4595e1 in / 
# Mon, 24 Apr 2017 19:23:44 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:44:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 25 Apr 2017 00:44:47 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:44:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 08 May 2017 19:48:57 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 08 May 2017 19:48:57 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 08 May 2017 19:48:58 GMT
ENV JAVA_VERSION=9~b168
# Mon, 08 May 2017 19:48:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b168-1
# Mon, 08 May 2017 19:49:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 08 May 2017 21:22:17 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:22:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:22:18 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:22:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:22:23 GMT
USER [gradle]
# Mon, 08 May 2017 21:22:24 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:22:25 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:22:35 GMT
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
	-	`sha256:2bbe4930e094ecb48add6ca6cd62e32393a18c4d7d9607f65d52674a9237e718`  
		Last Modified: Tue, 25 Apr 2017 00:59:44 GMT  
		Size: 633.9 KB (633905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31361d0a03141658f7b0f6846501453a527d2eabd9f6cc955e85856946e3703`  
		Last Modified: Tue, 25 Apr 2017 00:59:43 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb341f064078bd9d84e2bd5044e8e9d81692f08550615028bac9dcd331af0c95`  
		Last Modified: Tue, 25 Apr 2017 00:59:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82bf7693715b27e7900678461ff49f14c7269867f3a6df59ea0308d82fbf0c`  
		Last Modified: Mon, 08 May 2017 20:03:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c4920ac3542f66d4740e85183f17135de6350d9060875a00892b42f37f34bc`  
		Last Modified: Mon, 08 May 2017 20:04:01 GMT  
		Size: 155.7 MB (155740837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a956006db081b011ebdd72aa313b324ec73aea891352df2816141526061bf2`  
		Last Modified: Mon, 08 May 2017 21:34:16 GMT  
		Size: 73.3 MB (73310605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6a9b964d1fc6bd64349365fd201df327aa922453bdc128c6b80ea8942ff5b0`  
		Last Modified: Mon, 08 May 2017 21:34:11 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:4d8603928679bc1295837c81cb3ffebf3490ad35eaa96927be1dc59cc89e3f61
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 MB (296333102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95121f6f05ecd8e0f8b6575e52175e6056b4319a937d4632c3983673f205e0ac`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 24 Apr 2017 19:23:43 GMT
ADD file:c473955c7b4205ed3e562fd42f0e8a0dc2b73d83a951d1302c5934bccd4595e1 in / 
# Mon, 24 Apr 2017 19:23:44 GMT
CMD ["/bin/bash"]
# Mon, 24 Apr 2017 19:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:44:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 25 Apr 2017 00:44:46 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 25 Apr 2017 00:44:47 GMT
ENV LANG=C.UTF-8
# Tue, 25 Apr 2017 00:44:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 08 May 2017 19:48:57 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 08 May 2017 19:48:57 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 08 May 2017 19:48:58 GMT
ENV JAVA_VERSION=9~b168
# Mon, 08 May 2017 19:48:58 GMT
ENV JAVA_DEBIAN_VERSION=9~b168-1
# Mon, 08 May 2017 19:49:26 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 08 May 2017 21:22:17 GMT
CMD ["gradle"]
# Mon, 08 May 2017 21:22:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 08 May 2017 21:22:18 GMT
ENV GRADLE_VERSION=3.5
# Mon, 08 May 2017 21:22:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Mon, 08 May 2017 21:22:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 08 May 2017 21:22:23 GMT
USER [gradle]
# Mon, 08 May 2017 21:22:24 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 08 May 2017 21:22:25 GMT
WORKDIR /home/gradle
# Mon, 08 May 2017 21:22:35 GMT
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
	-	`sha256:2bbe4930e094ecb48add6ca6cd62e32393a18c4d7d9607f65d52674a9237e718`  
		Last Modified: Tue, 25 Apr 2017 00:59:44 GMT  
		Size: 633.9 KB (633905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31361d0a03141658f7b0f6846501453a527d2eabd9f6cc955e85856946e3703`  
		Last Modified: Tue, 25 Apr 2017 00:59:43 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb341f064078bd9d84e2bd5044e8e9d81692f08550615028bac9dcd331af0c95`  
		Last Modified: Tue, 25 Apr 2017 00:59:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd82bf7693715b27e7900678461ff49f14c7269867f3a6df59ea0308d82fbf0c`  
		Last Modified: Mon, 08 May 2017 20:03:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c4920ac3542f66d4740e85183f17135de6350d9060875a00892b42f37f34bc`  
		Last Modified: Mon, 08 May 2017 20:04:01 GMT  
		Size: 155.7 MB (155740837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a956006db081b011ebdd72aa313b324ec73aea891352df2816141526061bf2`  
		Last Modified: Mon, 08 May 2017 21:34:16 GMT  
		Size: 73.3 MB (73310605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6a9b964d1fc6bd64349365fd201df327aa922453bdc128c6b80ea8942ff5b0`  
		Last Modified: Mon, 08 May 2017 21:34:11 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
