<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gradle`

-	[`gradle:4.2`](#gradle42)
-	[`gradle:4.2.1`](#gradle421)
-	[`gradle:4.2.1-alpine`](#gradle421-alpine)
-	[`gradle:4.2.1-jdk`](#gradle421-jdk)
-	[`gradle:4.2.1-jdk7`](#gradle421-jdk7)
-	[`gradle:4.2.1-jdk7-alpine`](#gradle421-jdk7-alpine)
-	[`gradle:4.2.1-jdk8`](#gradle421-jdk8)
-	[`gradle:4.2.1-jdk8-alpine`](#gradle421-jdk8-alpine)
-	[`gradle:4.2.1-jdk9`](#gradle421-jdk9)
-	[`gradle:4.2.1-jdk-alpine`](#gradle421-jdk-alpine)
-	[`gradle:4.2.1-jre`](#gradle421-jre)
-	[`gradle:4.2.1-jre7`](#gradle421-jre7)
-	[`gradle:4.2.1-jre7-alpine`](#gradle421-jre7-alpine)
-	[`gradle:4.2.1-jre8`](#gradle421-jre8)
-	[`gradle:4.2.1-jre8-alpine`](#gradle421-jre8-alpine)
-	[`gradle:4.2.1-jre9`](#gradle421-jre9)
-	[`gradle:4.2.1-jre-alpine`](#gradle421-jre-alpine)
-	[`gradle:4.2-alpine`](#gradle42-alpine)
-	[`gradle:4.2-jdk`](#gradle42-jdk)
-	[`gradle:4.2-jdk7`](#gradle42-jdk7)
-	[`gradle:4.2-jdk7-alpine`](#gradle42-jdk7-alpine)
-	[`gradle:4.2-jdk8`](#gradle42-jdk8)
-	[`gradle:4.2-jdk8-alpine`](#gradle42-jdk8-alpine)
-	[`gradle:4.2-jdk9`](#gradle42-jdk9)
-	[`gradle:4.2-jdk-alpine`](#gradle42-jdk-alpine)
-	[`gradle:4.2-jre`](#gradle42-jre)
-	[`gradle:4.2-jre7`](#gradle42-jre7)
-	[`gradle:4.2-jre7-alpine`](#gradle42-jre7-alpine)
-	[`gradle:4.2-jre8`](#gradle42-jre8)
-	[`gradle:4.2-jre8-alpine`](#gradle42-jre8-alpine)
-	[`gradle:4.2-jre9`](#gradle42-jre9)
-	[`gradle:4.2-jre-alpine`](#gradle42-jre-alpine)
-	[`gradle:alpine`](#gradlealpine)
-	[`gradle:jdk`](#gradlejdk)
-	[`gradle:jdk7`](#gradlejdk7)
-	[`gradle:jdk7-alpine`](#gradlejdk7-alpine)
-	[`gradle:jdk8`](#gradlejdk8)
-	[`gradle:jdk8-alpine`](#gradlejdk8-alpine)
-	[`gradle:jdk9`](#gradlejdk9)
-	[`gradle:jdk-alpine`](#gradlejdk-alpine)
-	[`gradle:jre`](#gradlejre)
-	[`gradle:jre7`](#gradlejre7)
-	[`gradle:jre7-alpine`](#gradlejre7-alpine)
-	[`gradle:jre8`](#gradlejre8)
-	[`gradle:jre8-alpine`](#gradlejre8-alpine)
-	[`gradle:jre9`](#gradlejre9)
-	[`gradle:jre-alpine`](#gradlejre-alpine)
-	[`gradle:latest`](#gradlelatest)

## `gradle:4.2`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk7`

```console
$ docker pull gradle@sha256:1641b72d3e0afed811f49957647796064826aac625d32cac1dc30ce7641ce080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:59f791fa0b6b0450815642f6bfba03c91cc4454595225b7155b0ba0b78179e39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.9 MB (315893943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd79ac887d031e9f573160cd9eaf3875109e5ac9dea4abee3006ee5860643dd1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:41 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:36:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:36:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:38:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:03:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:03:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:03:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:03:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:03:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:03:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:03:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:03:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:03:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1589802ecad54f7897f34b36fbdbb6b689b765688a9abecf56c2bd445d3a4`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 828.7 KB (828686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6494729fa0855c6777551738b712cfd6292b968deb362933a5ac6beb35eb16e5`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce9d8c463b7f7a5217e23671bb82214ce9609b46d07c8719864e7f025a86b2a`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e935187420110e1073b932b129778bd8111327ede217281559b644bbaa252`  
		Last Modified: Tue, 10 Oct 2017 01:12:14 GMT  
		Size: 128.9 MB (128901568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5680ebb8294ae31557eb78340643d7343847a218dbbc4053e928814b63ad1dc`  
		Last Modified: Tue, 10 Oct 2017 04:06:01 GMT  
		Size: 71.1 MB (71076008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125df1cdd59fcffa41e911630deeaab02f0dd01e98aea5d7798c33707b34a9a3`  
		Last Modified: Tue, 10 Oct 2017 04:05:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk7-alpine`

```console
$ docker pull gradle@sha256:d481d4636dee84948229c9fbd2a68f202a0ca6132e5ed16d7ff14b2465fd0a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:6d06acc9e256b433edee5088197e549522f1f0e9f5e0b60bf606248b4d8ffad7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150866340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed88101404326b521c1af45afe7a5ecfb8c4ec3adc6de9d53453f4eb61acced`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:13:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 14 Sep 2017 04:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 04:13:42 GMT
ENV JAVA_VERSION=7u131
# Thu, 14 Sep 2017 04:13:42 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 14 Sep 2017 04:13:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:24:00 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:24:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:15:03 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:15:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:15:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:15:10 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:15:10 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:15:11 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:15:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01693a7d9e2f16c6f1164718f315f8cf99b2ac7c343b7e8a0876d185c5a921cd`  
		Last Modified: Thu, 14 Sep 2017 04:51:00 GMT  
		Size: 77.4 MB (77433926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356647d663d555ace2a3fbb414aebc0255ef31cff66cf81b4453cfc2fcceaa20`  
		Last Modified: Mon, 09 Oct 2017 17:18:49 GMT  
		Size: 71.4 MB (71441633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87703c9214795abecab0bddd91a75f5079de8dffb7d734bf017d3fa13a09ab79`  
		Last Modified: Mon, 09 Oct 2017 17:18:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk8`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk8-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk9`

```console
$ docker pull gradle@sha256:13006789fa1923c13fa6d64e0957172efe654d7eb6c8181bc52ac55569b5489c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:ece012491c830fae2553fbfd3336f9353c9bdd5dae3df69a595491b0fa0f9660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.7 MB (464718598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55aab7ecec6306abfcc1aa677d9e9be8e7fd9857a044ce047b203513593581fe`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:33:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:51:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:52:00 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:52:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:52:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:52:53 GMT
CMD ["jshell"]
# Tue, 10 Oct 2017 04:05:04 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:05:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:05:04 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:05:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:05:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:05:09 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:05:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:05:10 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:05:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58c0540eee85afd65d984ed9680210a9e8740b186454a9c5411b9b3862140e`  
		Last Modified: Mon, 09 Oct 2017 22:59:35 GMT  
		Size: 8.6 MB (8552413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c55f19db116c2c49c508d0625d83267697fdac44eba96a9510109088f88fc40`  
		Last Modified: Mon, 09 Oct 2017 22:59:34 GMT  
		Size: 9.3 MB (9274450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf7e2e8b82f67b215add075a7fcc9ca4d027d7f375ddcb3a5d09f0eb6c3afca`  
		Last Modified: Mon, 09 Oct 2017 23:00:03 GMT  
		Size: 48.2 MB (48207160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32822f5e747ae22da3c35acc657e511a8168f628458e42877ed0ec9cd42dcdbf`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 893.8 KB (893756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eab7eb0322f04354ca240de0d8e9eace1d6dcc89d779fbbcd264ef137025ea`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a4b7188b7ca6b86546091bc61ecca78d94ecee591b281a1a73687b155c3d`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46af528a88a933a783d0a32ab91877c8fa43e708efc3527cc5f78c6251f1497`  
		Last Modified: Tue, 10 Oct 2017 01:27:58 GMT  
		Size: 279.2 MB (279152519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc7f3f52e334daf969e252448f630cc4601e29c493ad3c8a54e0dd432250882`  
		Last Modified: Tue, 10 Oct 2017 04:09:49 GMT  
		Size: 71.1 MB (71075835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c23f48e7b42154a75190efd0a0c8e6ad5ba26018c16bfac172fa9fcbd9eeb0`  
		Last Modified: Tue, 10 Oct 2017 04:09:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre`

```console
$ docker pull gradle@sha256:9751eb0b47c7ca941eb0f2e6becacbb908c8a2726abfa5bd3b6171faef1dfc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre` - linux; amd64

```console
$ docker pull gradle@sha256:e3940b80c4e7ca63c21692badb5106452610cedb060c562ab9b0ebf3ac328e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299240441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6b3a13997b0f0c528c05353a1920f5a9b520e09dfb4bf062c22444bcbfac2a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bd9f632b5cd62243689840cb4698205716975b6ef0c6d9b73888d830ed9e69`  
		Last Modified: Tue, 10 Oct 2017 04:08:42 GMT  
		Size: 71.1 MB (71075663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6151301549066e21207f78fd82aa9fb1c108e7ce3fda032721751c08fe099df`  
		Last Modified: Tue, 10 Oct 2017 04:08:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre7`

```console
$ docker pull gradle@sha256:eefa71d4017fb93c881fd0a65c253398914139c0252893cd352a6f1e62376f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre7` - linux; amd64

```console
$ docker pull gradle@sha256:dd3d102d058a61b3c1543a99e6830995ccb97cd552cf07d0b232181f8d2415ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.6 MB (260615817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21307ba1322784afeb18396cf97c7e2deeee1fa9566251b82bce5f00a7b2bf5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:03:55 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:03:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:03:55 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:03:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:03:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:03:59 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:03:59 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:03:59 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df02f45fbd55023119dab8785a1c5a5a385db894c51bd0fd522d470eae88008`  
		Last Modified: Tue, 10 Oct 2017 04:06:42 GMT  
		Size: 71.1 MB (71076033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8aa463b9e07b988f2eceaaecceb703ef81dd8520c5d5d27b2919073a7f5944`  
		Last Modified: Tue, 10 Oct 2017 04:06:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre7-alpine`

```console
$ docker pull gradle@sha256:7c82d9bb9462067a31ba4be37ce35e231a1cd473eb901e4afce52a06a17619af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:cee91176f4d4f23724c92f3d53ed34e011fb07d4364615b9f805062029d7128f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134552949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c276de0aaf9da62552961400fc839662810003ca77b867f5498bd6f96dfe090d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 14 Sep 2017 04:17:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_VERSION=7u131
# Thu, 14 Sep 2017 04:17:47 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 14 Sep 2017 04:18:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:24:15 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:24:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:15:20 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:15:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:15:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:15:29 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:15:29 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:15:30 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:15:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd43573df90c82d7e60c22718682d64c6c6b89fc2c409dd3c426090b41f0b573`  
		Last Modified: Thu, 14 Sep 2017 04:53:05 GMT  
		Size: 61.1 MB (61132262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63019dfa42001eb8a239bd8aaac1e1b3a2111a9d3d0e3aeefbe4b50464bffde`  
		Last Modified: Mon, 09 Oct 2017 17:19:25 GMT  
		Size: 71.4 MB (71429906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04cd95b9f9b62109ece9dbd700e7c145932bcab6df28c95ed3a338bbd7187`  
		Last Modified: Mon, 09 Oct 2017 17:19:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre8`

```console
$ docker pull gradle@sha256:9751eb0b47c7ca941eb0f2e6becacbb908c8a2726abfa5bd3b6171faef1dfc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:e3940b80c4e7ca63c21692badb5106452610cedb060c562ab9b0ebf3ac328e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299240441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6b3a13997b0f0c528c05353a1920f5a9b520e09dfb4bf062c22444bcbfac2a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bd9f632b5cd62243689840cb4698205716975b6ef0c6d9b73888d830ed9e69`  
		Last Modified: Tue, 10 Oct 2017 04:08:42 GMT  
		Size: 71.1 MB (71075663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6151301549066e21207f78fd82aa9fb1c108e7ce3fda032721751c08fe099df`  
		Last Modified: Tue, 10 Oct 2017 04:08:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre8-alpine`

```console
$ docker pull gradle@sha256:fe6268bbc1b50046782dc1ee5569223c7bc33a3d56132af019867ef9f3692e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2cdbd0a72b129b7b69abc35cd972e9947bec3faed65bf9f17151b1fc760e6098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127679201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287e96c059207d644052280dc7aa0db512cb48b569dbf8a31133200a0d558e27`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:23 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:36 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:43 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f57e992b01c6c6373f77c0ac65493e7491c4293c6d7fea99d5a73cc1ac04ac7`  
		Last Modified: Mon, 09 Oct 2017 17:23:27 GMT  
		Size: 71.4 MB (71405518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf41bbf971f6d4a5639bc2963e8d713fbb59aa48b0d583456d127598f2e53a3`  
		Last Modified: Mon, 09 Oct 2017 17:23:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre9`

```console
$ docker pull gradle@sha256:ac0afb2edfe69ea15c862d4f79fcfa0f90baec48bc5f71d7b16d54e06d4699d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre9` - linux; amd64

```console
$ docker pull gradle@sha256:f2d699a432fe94ab40bc428e7be5d938a82c75a04874a50971cb2da2b1f78b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410704525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfff766f0603845b7226a8626fc4f499ee6e8949d39a7c8fbb2635d4ee99559`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:56:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:56:52 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:56:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:57:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:05:20 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:05:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:05:20 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:05:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:05:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:05:28 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:05:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:05:29 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:05:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58c0540eee85afd65d984ed9680210a9e8740b186454a9c5411b9b3862140e`  
		Last Modified: Mon, 09 Oct 2017 22:59:35 GMT  
		Size: 8.6 MB (8552413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c55f19db116c2c49c508d0625d83267697fdac44eba96a9510109088f88fc40`  
		Last Modified: Mon, 09 Oct 2017 22:59:34 GMT  
		Size: 9.3 MB (9274450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82778428e07641125327971168285129e3ba441ecd842001243dc101ebf61e64`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 855.6 KB (855569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1d7ba119a5b30a05594bd8c5aa001f2dcff735bd4def7e8af140770babb49a`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45bc206640a65ef432a7d450250a37f91263abbf64efb51bb0a839651f6c82e`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49626e0ac053b36ffcbae3b40934b4c7586de14f0fb87fe21d775eb9d432dc3`  
		Last Modified: Tue, 10 Oct 2017 01:36:01 GMT  
		Size: 273.4 MB (273383771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95da7d23046299f7c60b72c18d8765bebf6434de2f11e5866b3ce93e38d6cda3`  
		Last Modified: Tue, 10 Oct 2017 04:10:28 GMT  
		Size: 71.1 MB (71075856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd72603025546094ddd01c9fd432dcb3925805de70cf3413e4d98e108dfe7267`  
		Last Modified: Tue, 10 Oct 2017 04:10:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre-alpine`

```console
$ docker pull gradle@sha256:fe6268bbc1b50046782dc1ee5569223c7bc33a3d56132af019867ef9f3692e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2cdbd0a72b129b7b69abc35cd972e9947bec3faed65bf9f17151b1fc760e6098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127679201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287e96c059207d644052280dc7aa0db512cb48b569dbf8a31133200a0d558e27`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:23 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:36 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:43 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f57e992b01c6c6373f77c0ac65493e7491c4293c6d7fea99d5a73cc1ac04ac7`  
		Last Modified: Mon, 09 Oct 2017 17:23:27 GMT  
		Size: 71.4 MB (71405518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf41bbf971f6d4a5639bc2963e8d713fbb59aa48b0d583456d127598f2e53a3`  
		Last Modified: Mon, 09 Oct 2017 17:23:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk7`

```console
$ docker pull gradle@sha256:1641b72d3e0afed811f49957647796064826aac625d32cac1dc30ce7641ce080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:59f791fa0b6b0450815642f6bfba03c91cc4454595225b7155b0ba0b78179e39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.9 MB (315893943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd79ac887d031e9f573160cd9eaf3875109e5ac9dea4abee3006ee5860643dd1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:41 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:36:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:36:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:38:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:03:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:03:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:03:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:03:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:03:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:03:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:03:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:03:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:03:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1589802ecad54f7897f34b36fbdbb6b689b765688a9abecf56c2bd445d3a4`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 828.7 KB (828686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6494729fa0855c6777551738b712cfd6292b968deb362933a5ac6beb35eb16e5`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce9d8c463b7f7a5217e23671bb82214ce9609b46d07c8719864e7f025a86b2a`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e935187420110e1073b932b129778bd8111327ede217281559b644bbaa252`  
		Last Modified: Tue, 10 Oct 2017 01:12:14 GMT  
		Size: 128.9 MB (128901568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5680ebb8294ae31557eb78340643d7343847a218dbbc4053e928814b63ad1dc`  
		Last Modified: Tue, 10 Oct 2017 04:06:01 GMT  
		Size: 71.1 MB (71076008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125df1cdd59fcffa41e911630deeaab02f0dd01e98aea5d7798c33707b34a9a3`  
		Last Modified: Tue, 10 Oct 2017 04:05:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk7-alpine`

```console
$ docker pull gradle@sha256:d481d4636dee84948229c9fbd2a68f202a0ca6132e5ed16d7ff14b2465fd0a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:6d06acc9e256b433edee5088197e549522f1f0e9f5e0b60bf606248b4d8ffad7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150866340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed88101404326b521c1af45afe7a5ecfb8c4ec3adc6de9d53453f4eb61acced`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:13:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 14 Sep 2017 04:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 04:13:42 GMT
ENV JAVA_VERSION=7u131
# Thu, 14 Sep 2017 04:13:42 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 14 Sep 2017 04:13:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:24:00 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:24:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:15:03 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:15:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:15:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:15:10 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:15:10 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:15:11 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:15:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01693a7d9e2f16c6f1164718f315f8cf99b2ac7c343b7e8a0876d185c5a921cd`  
		Last Modified: Thu, 14 Sep 2017 04:51:00 GMT  
		Size: 77.4 MB (77433926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356647d663d555ace2a3fbb414aebc0255ef31cff66cf81b4453cfc2fcceaa20`  
		Last Modified: Mon, 09 Oct 2017 17:18:49 GMT  
		Size: 71.4 MB (71441633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87703c9214795abecab0bddd91a75f5079de8dffb7d734bf017d3fa13a09ab79`  
		Last Modified: Mon, 09 Oct 2017 17:18:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk8`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk8-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk9`

```console
$ docker pull gradle@sha256:13006789fa1923c13fa6d64e0957172efe654d7eb6c8181bc52ac55569b5489c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:ece012491c830fae2553fbfd3336f9353c9bdd5dae3df69a595491b0fa0f9660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.7 MB (464718598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55aab7ecec6306abfcc1aa677d9e9be8e7fd9857a044ce047b203513593581fe`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:33:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:51:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:52:00 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:52:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:52:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:52:53 GMT
CMD ["jshell"]
# Tue, 10 Oct 2017 04:05:04 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:05:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:05:04 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:05:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:05:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:05:09 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:05:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:05:10 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:05:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58c0540eee85afd65d984ed9680210a9e8740b186454a9c5411b9b3862140e`  
		Last Modified: Mon, 09 Oct 2017 22:59:35 GMT  
		Size: 8.6 MB (8552413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c55f19db116c2c49c508d0625d83267697fdac44eba96a9510109088f88fc40`  
		Last Modified: Mon, 09 Oct 2017 22:59:34 GMT  
		Size: 9.3 MB (9274450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf7e2e8b82f67b215add075a7fcc9ca4d027d7f375ddcb3a5d09f0eb6c3afca`  
		Last Modified: Mon, 09 Oct 2017 23:00:03 GMT  
		Size: 48.2 MB (48207160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32822f5e747ae22da3c35acc657e511a8168f628458e42877ed0ec9cd42dcdbf`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 893.8 KB (893756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eab7eb0322f04354ca240de0d8e9eace1d6dcc89d779fbbcd264ef137025ea`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a4b7188b7ca6b86546091bc61ecca78d94ecee591b281a1a73687b155c3d`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46af528a88a933a783d0a32ab91877c8fa43e708efc3527cc5f78c6251f1497`  
		Last Modified: Tue, 10 Oct 2017 01:27:58 GMT  
		Size: 279.2 MB (279152519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc7f3f52e334daf969e252448f630cc4601e29c493ad3c8a54e0dd432250882`  
		Last Modified: Tue, 10 Oct 2017 04:09:49 GMT  
		Size: 71.1 MB (71075835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c23f48e7b42154a75190efd0a0c8e6ad5ba26018c16bfac172fa9fcbd9eeb0`  
		Last Modified: Tue, 10 Oct 2017 04:09:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre`

```console
$ docker pull gradle@sha256:9751eb0b47c7ca941eb0f2e6becacbb908c8a2726abfa5bd3b6171faef1dfc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre` - linux; amd64

```console
$ docker pull gradle@sha256:e3940b80c4e7ca63c21692badb5106452610cedb060c562ab9b0ebf3ac328e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299240441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6b3a13997b0f0c528c05353a1920f5a9b520e09dfb4bf062c22444bcbfac2a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bd9f632b5cd62243689840cb4698205716975b6ef0c6d9b73888d830ed9e69`  
		Last Modified: Tue, 10 Oct 2017 04:08:42 GMT  
		Size: 71.1 MB (71075663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6151301549066e21207f78fd82aa9fb1c108e7ce3fda032721751c08fe099df`  
		Last Modified: Tue, 10 Oct 2017 04:08:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre7`

```console
$ docker pull gradle@sha256:eefa71d4017fb93c881fd0a65c253398914139c0252893cd352a6f1e62376f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre7` - linux; amd64

```console
$ docker pull gradle@sha256:dd3d102d058a61b3c1543a99e6830995ccb97cd552cf07d0b232181f8d2415ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.6 MB (260615817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21307ba1322784afeb18396cf97c7e2deeee1fa9566251b82bce5f00a7b2bf5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:03:55 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:03:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:03:55 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:03:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:03:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:03:59 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:03:59 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:03:59 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df02f45fbd55023119dab8785a1c5a5a385db894c51bd0fd522d470eae88008`  
		Last Modified: Tue, 10 Oct 2017 04:06:42 GMT  
		Size: 71.1 MB (71076033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8aa463b9e07b988f2eceaaecceb703ef81dd8520c5d5d27b2919073a7f5944`  
		Last Modified: Tue, 10 Oct 2017 04:06:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre7-alpine`

```console
$ docker pull gradle@sha256:7c82d9bb9462067a31ba4be37ce35e231a1cd473eb901e4afce52a06a17619af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:cee91176f4d4f23724c92f3d53ed34e011fb07d4364615b9f805062029d7128f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134552949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c276de0aaf9da62552961400fc839662810003ca77b867f5498bd6f96dfe090d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 14 Sep 2017 04:17:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_VERSION=7u131
# Thu, 14 Sep 2017 04:17:47 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 14 Sep 2017 04:18:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:24:15 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:24:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:15:20 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:15:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:15:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:15:29 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:15:29 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:15:30 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:15:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd43573df90c82d7e60c22718682d64c6c6b89fc2c409dd3c426090b41f0b573`  
		Last Modified: Thu, 14 Sep 2017 04:53:05 GMT  
		Size: 61.1 MB (61132262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63019dfa42001eb8a239bd8aaac1e1b3a2111a9d3d0e3aeefbe4b50464bffde`  
		Last Modified: Mon, 09 Oct 2017 17:19:25 GMT  
		Size: 71.4 MB (71429906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04cd95b9f9b62109ece9dbd700e7c145932bcab6df28c95ed3a338bbd7187`  
		Last Modified: Mon, 09 Oct 2017 17:19:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre8`

```console
$ docker pull gradle@sha256:9751eb0b47c7ca941eb0f2e6becacbb908c8a2726abfa5bd3b6171faef1dfc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:e3940b80c4e7ca63c21692badb5106452610cedb060c562ab9b0ebf3ac328e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299240441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6b3a13997b0f0c528c05353a1920f5a9b520e09dfb4bf062c22444bcbfac2a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bd9f632b5cd62243689840cb4698205716975b6ef0c6d9b73888d830ed9e69`  
		Last Modified: Tue, 10 Oct 2017 04:08:42 GMT  
		Size: 71.1 MB (71075663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6151301549066e21207f78fd82aa9fb1c108e7ce3fda032721751c08fe099df`  
		Last Modified: Tue, 10 Oct 2017 04:08:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre8-alpine`

```console
$ docker pull gradle@sha256:fe6268bbc1b50046782dc1ee5569223c7bc33a3d56132af019867ef9f3692e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2cdbd0a72b129b7b69abc35cd972e9947bec3faed65bf9f17151b1fc760e6098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127679201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287e96c059207d644052280dc7aa0db512cb48b569dbf8a31133200a0d558e27`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:23 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:36 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:43 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f57e992b01c6c6373f77c0ac65493e7491c4293c6d7fea99d5a73cc1ac04ac7`  
		Last Modified: Mon, 09 Oct 2017 17:23:27 GMT  
		Size: 71.4 MB (71405518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf41bbf971f6d4a5639bc2963e8d713fbb59aa48b0d583456d127598f2e53a3`  
		Last Modified: Mon, 09 Oct 2017 17:23:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre9`

```console
$ docker pull gradle@sha256:ac0afb2edfe69ea15c862d4f79fcfa0f90baec48bc5f71d7b16d54e06d4699d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre9` - linux; amd64

```console
$ docker pull gradle@sha256:f2d699a432fe94ab40bc428e7be5d938a82c75a04874a50971cb2da2b1f78b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410704525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfff766f0603845b7226a8626fc4f499ee6e8949d39a7c8fbb2635d4ee99559`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:56:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:56:52 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:56:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:57:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:05:20 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:05:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:05:20 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:05:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:05:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:05:28 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:05:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:05:29 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:05:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58c0540eee85afd65d984ed9680210a9e8740b186454a9c5411b9b3862140e`  
		Last Modified: Mon, 09 Oct 2017 22:59:35 GMT  
		Size: 8.6 MB (8552413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c55f19db116c2c49c508d0625d83267697fdac44eba96a9510109088f88fc40`  
		Last Modified: Mon, 09 Oct 2017 22:59:34 GMT  
		Size: 9.3 MB (9274450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82778428e07641125327971168285129e3ba441ecd842001243dc101ebf61e64`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 855.6 KB (855569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1d7ba119a5b30a05594bd8c5aa001f2dcff735bd4def7e8af140770babb49a`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45bc206640a65ef432a7d450250a37f91263abbf64efb51bb0a839651f6c82e`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49626e0ac053b36ffcbae3b40934b4c7586de14f0fb87fe21d775eb9d432dc3`  
		Last Modified: Tue, 10 Oct 2017 01:36:01 GMT  
		Size: 273.4 MB (273383771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95da7d23046299f7c60b72c18d8765bebf6434de2f11e5866b3ce93e38d6cda3`  
		Last Modified: Tue, 10 Oct 2017 04:10:28 GMT  
		Size: 71.1 MB (71075856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd72603025546094ddd01c9fd432dcb3925805de70cf3413e4d98e108dfe7267`  
		Last Modified: Tue, 10 Oct 2017 04:10:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre-alpine`

```console
$ docker pull gradle@sha256:fe6268bbc1b50046782dc1ee5569223c7bc33a3d56132af019867ef9f3692e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2cdbd0a72b129b7b69abc35cd972e9947bec3faed65bf9f17151b1fc760e6098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127679201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287e96c059207d644052280dc7aa0db512cb48b569dbf8a31133200a0d558e27`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:23 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:36 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:43 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f57e992b01c6c6373f77c0ac65493e7491c4293c6d7fea99d5a73cc1ac04ac7`  
		Last Modified: Mon, 09 Oct 2017 17:23:27 GMT  
		Size: 71.4 MB (71405518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf41bbf971f6d4a5639bc2963e8d713fbb59aa48b0d583456d127598f2e53a3`  
		Last Modified: Mon, 09 Oct 2017 17:23:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7`

```console
$ docker pull gradle@sha256:1641b72d3e0afed811f49957647796064826aac625d32cac1dc30ce7641ce080
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:59f791fa0b6b0450815642f6bfba03c91cc4454595225b7155b0ba0b78179e39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.9 MB (315893943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd79ac887d031e9f573160cd9eaf3875109e5ac9dea4abee3006ee5860643dd1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:36:41 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:36:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:36:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:36:44 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:38:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:03:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:03:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:03:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:03:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:03:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:03:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:03:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:03:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:03:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661393707836d5196874d18a5d89808079f01cb4376800584bfc1f7b33dd0852`  
		Last Modified: Mon, 09 Oct 2017 22:58:41 GMT  
		Size: 43.2 MB (43228125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47c1589802ecad54f7897f34b36fbdbb6b689b765688a9abecf56c2bd445d3a4`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 828.7 KB (828686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6494729fa0855c6777551738b712cfd6292b968deb362933a5ac6beb35eb16e5`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce9d8c463b7f7a5217e23671bb82214ce9609b46d07c8719864e7f025a86b2a`  
		Last Modified: Tue, 10 Oct 2017 01:11:55 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608e935187420110e1073b932b129778bd8111327ede217281559b644bbaa252`  
		Last Modified: Tue, 10 Oct 2017 01:12:14 GMT  
		Size: 128.9 MB (128901568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5680ebb8294ae31557eb78340643d7343847a218dbbc4053e928814b63ad1dc`  
		Last Modified: Tue, 10 Oct 2017 04:06:01 GMT  
		Size: 71.1 MB (71076008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:125df1cdd59fcffa41e911630deeaab02f0dd01e98aea5d7798c33707b34a9a3`  
		Last Modified: Tue, 10 Oct 2017 04:05:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:d481d4636dee84948229c9fbd2a68f202a0ca6132e5ed16d7ff14b2465fd0a3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:6d06acc9e256b433edee5088197e549522f1f0e9f5e0b60bf606248b4d8ffad7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150866340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed88101404326b521c1af45afe7a5ecfb8c4ec3adc6de9d53453f4eb61acced`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:13:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 14 Sep 2017 04:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 04:13:42 GMT
ENV JAVA_VERSION=7u131
# Thu, 14 Sep 2017 04:13:42 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 14 Sep 2017 04:13:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:24:00 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:24:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:15:03 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:15:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:15:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:15:10 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:15:10 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:15:11 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:15:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01693a7d9e2f16c6f1164718f315f8cf99b2ac7c343b7e8a0876d185c5a921cd`  
		Last Modified: Thu, 14 Sep 2017 04:51:00 GMT  
		Size: 77.4 MB (77433926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356647d663d555ace2a3fbb414aebc0255ef31cff66cf81b4453cfc2fcceaa20`  
		Last Modified: Mon, 09 Oct 2017 17:18:49 GMT  
		Size: 71.4 MB (71441633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87703c9214795abecab0bddd91a75f5079de8dffb7d734bf017d3fa13a09ab79`  
		Last Modified: Mon, 09 Oct 2017 17:18:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk9`

```console
$ docker pull gradle@sha256:13006789fa1923c13fa6d64e0957172efe654d7eb6c8181bc52ac55569b5489c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:ece012491c830fae2553fbfd3336f9353c9bdd5dae3df69a595491b0fa0f9660
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.7 MB (464718598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55aab7ecec6306abfcc1aa677d9e9be8e7fd9857a044ce047b203513593581fe`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:33:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:51:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:52:00 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:52:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:52:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:52:02 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:52:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:52:53 GMT
CMD ["jshell"]
# Tue, 10 Oct 2017 04:05:04 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:05:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:05:04 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:05:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:05:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:05:09 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:05:10 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:05:10 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:05:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58c0540eee85afd65d984ed9680210a9e8740b186454a9c5411b9b3862140e`  
		Last Modified: Mon, 09 Oct 2017 22:59:35 GMT  
		Size: 8.6 MB (8552413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c55f19db116c2c49c508d0625d83267697fdac44eba96a9510109088f88fc40`  
		Last Modified: Mon, 09 Oct 2017 22:59:34 GMT  
		Size: 9.3 MB (9274450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf7e2e8b82f67b215add075a7fcc9ca4d027d7f375ddcb3a5d09f0eb6c3afca`  
		Last Modified: Mon, 09 Oct 2017 23:00:03 GMT  
		Size: 48.2 MB (48207160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32822f5e747ae22da3c35acc657e511a8168f628458e42877ed0ec9cd42dcdbf`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 893.8 KB (893756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eab7eb0322f04354ca240de0d8e9eace1d6dcc89d779fbbcd264ef137025ea`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e345a4b7188b7ca6b86546091bc61ecca78d94ecee591b281a1a73687b155c3d`  
		Last Modified: Tue, 10 Oct 2017 01:27:15 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46af528a88a933a783d0a32ab91877c8fa43e708efc3527cc5f78c6251f1497`  
		Last Modified: Tue, 10 Oct 2017 01:27:58 GMT  
		Size: 279.2 MB (279152519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc7f3f52e334daf969e252448f630cc4601e29c493ad3c8a54e0dd432250882`  
		Last Modified: Tue, 10 Oct 2017 04:09:49 GMT  
		Size: 71.1 MB (71075835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c23f48e7b42154a75190efd0a0c8e6ad5ba26018c16bfac172fa9fcbd9eeb0`  
		Last Modified: Tue, 10 Oct 2017 04:09:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:3eceb5d4167f1e7475a3481fea9167a7ef78197c2b0a8184adc6ce6b0fd36331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:d38744c960b0bb5b71d071995fa19426eaccf2d939d279424f0f6f2b1363f771
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143449563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fbcadb8891ce24d23fdb26708111bcc05c23637a24d3cd8ccfafe561cbfd621`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:21:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 14 Sep 2017 04:21:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:21:31 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:21:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:04 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:16 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:26 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:26 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:27 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a4b3080d3cc157970baf6edf6194df12fa0a9dc61d2c1525781ae4af65213c`  
		Last Modified: Thu, 14 Sep 2017 04:59:04 GMT  
		Size: 70.1 MB (70051361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf81ff91ad0a39b62eafca9728d38dfa9e3f4a1ef998c3a6fd6ef6fa4a8d8da`  
		Last Modified: Mon, 09 Oct 2017 17:22:15 GMT  
		Size: 71.4 MB (71407421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02a9a6745ff549e50c1f9217c980525f7b02cfaed8c320efabbb68f62bbff5de`  
		Last Modified: Mon, 09 Oct 2017 17:22:05 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:9751eb0b47c7ca941eb0f2e6becacbb908c8a2726abfa5bd3b6171faef1dfc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

```console
$ docker pull gradle@sha256:e3940b80c4e7ca63c21692badb5106452610cedb060c562ab9b0ebf3ac328e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299240441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6b3a13997b0f0c528c05353a1920f5a9b520e09dfb4bf062c22444bcbfac2a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bd9f632b5cd62243689840cb4698205716975b6ef0c6d9b73888d830ed9e69`  
		Last Modified: Tue, 10 Oct 2017 04:08:42 GMT  
		Size: 71.1 MB (71075663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6151301549066e21207f78fd82aa9fb1c108e7ce3fda032721751c08fe099df`  
		Last Modified: Tue, 10 Oct 2017 04:08:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:eefa71d4017fb93c881fd0a65c253398914139c0252893cd352a6f1e62376f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

```console
$ docker pull gradle@sha256:dd3d102d058a61b3c1543a99e6830995ccb97cd552cf07d0b232181f8d2415ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.6 MB (260615817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21307ba1322784afeb18396cf97c7e2deeee1fa9566251b82bce5f00a7b2bf5`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:28:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:45:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:45:49 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:45:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:45:50 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_VERSION=7u151
# Tue, 10 Oct 2017 00:45:51 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Tue, 10 Oct 2017 00:47:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:03:55 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:03:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:03:55 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:03:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:03:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:03:59 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:03:59 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:03:59 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5409e9a7fa9eab9287c6992a75dc9b70811a01e96a24872a02ad07bad557b20a`  
		Last Modified: Mon, 09 Oct 2017 22:57:46 GMT  
		Size: 19.3 MB (19263916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b13d87807d6da4b292850ca316150448b31972b5736730abecc548035f3caf1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186c5e5371c706c5d6417b09396041424b8a6eaecb36fa92c8fc879a22fd85e1`  
		Last Modified: Tue, 10 Oct 2017 01:13:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a03dd5c34637a15d6a0242aa1914010c59d0c548724968aef67444c62c6486c`  
		Last Modified: Tue, 10 Oct 2017 01:13:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa950b3b83b90da01b4555cf859e1b8659649fdbc2d108c2ece6634831ccd4be`  
		Last Modified: Tue, 10 Oct 2017 01:14:12 GMT  
		Size: 116.9 MB (116884638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df02f45fbd55023119dab8785a1c5a5a385db894c51bd0fd522d470eae88008`  
		Last Modified: Tue, 10 Oct 2017 04:06:42 GMT  
		Size: 71.1 MB (71076033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8aa463b9e07b988f2eceaaecceb703ef81dd8520c5d5d27b2919073a7f5944`  
		Last Modified: Tue, 10 Oct 2017 04:06:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:7c82d9bb9462067a31ba4be37ce35e231a1cd473eb901e4afce52a06a17619af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:cee91176f4d4f23724c92f3d53ed34e011fb07d4364615b9f805062029d7128f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134552949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c276de0aaf9da62552961400fc839662810003ca77b867f5498bd6f96dfe090d`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 14 Sep 2017 04:17:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 14 Sep 2017 04:17:46 GMT
ENV JAVA_VERSION=7u131
# Thu, 14 Sep 2017 04:17:47 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 14 Sep 2017 04:18:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:24:15 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:24:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:15:20 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:15:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:15:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:15:29 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:15:29 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:15:30 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:15:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd43573df90c82d7e60c22718682d64c6c6b89fc2c409dd3c426090b41f0b573`  
		Last Modified: Thu, 14 Sep 2017 04:53:05 GMT  
		Size: 61.1 MB (61132262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63019dfa42001eb8a239bd8aaac1e1b3a2111a9d3d0e3aeefbe4b50464bffde`  
		Last Modified: Mon, 09 Oct 2017 17:19:25 GMT  
		Size: 71.4 MB (71429906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a04cd95b9f9b62109ece9dbd700e7c145932bcab6df28c95ed3a338bbd7187`  
		Last Modified: Mon, 09 Oct 2017 17:19:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:9751eb0b47c7ca941eb0f2e6becacbb908c8a2726abfa5bd3b6171faef1dfc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

```console
$ docker pull gradle@sha256:e3940b80c4e7ca63c21692badb5106452610cedb060c562ab9b0ebf3ac328e99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299240441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca6b3a13997b0f0c528c05353a1920f5a9b520e09dfb4bf062c22444bcbfac2a`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:50:26 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:50:27 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:50:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:50:28 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:50:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:51:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:51:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:35 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:35 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:42 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:42 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bceb9f576935acd4433bd41017d3b74ea1bcde02593938b3fdba8f594d353f3`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 852.5 KB (852507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268410abd9cfbc11b635f95ac458e4af7061aec128041149ce86063cfc8d0aa7`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5e2fb2d87cf14b0e5968b7b40cd36663f45d6244a3bd37c1204d928026aa952`  
		Last Modified: Tue, 10 Oct 2017 01:23:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09681f714a7bf2a3c7453539930f6b768c3733a18457685857ab6a8be93176d4`  
		Last Modified: Tue, 10 Oct 2017 01:24:32 GMT  
		Size: 166.2 MB (166170709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c20de950ce5253aeea1d19e7edfca3d1738e872ab3a0cf6b182bf804e42a3fe8`  
		Last Modified: Tue, 10 Oct 2017 01:23:47 GMT  
		Size: 272.0 KB (272003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bd9f632b5cd62243689840cb4698205716975b6ef0c6d9b73888d830ed9e69`  
		Last Modified: Tue, 10 Oct 2017 04:08:42 GMT  
		Size: 71.1 MB (71075663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6151301549066e21207f78fd82aa9fb1c108e7ce3fda032721751c08fe099df`  
		Last Modified: Tue, 10 Oct 2017 04:08:37 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:fe6268bbc1b50046782dc1ee5569223c7bc33a3d56132af019867ef9f3692e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2cdbd0a72b129b7b69abc35cd972e9947bec3faed65bf9f17151b1fc760e6098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127679201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287e96c059207d644052280dc7aa0db512cb48b569dbf8a31133200a0d558e27`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:23 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:36 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:43 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f57e992b01c6c6373f77c0ac65493e7491c4293c6d7fea99d5a73cc1ac04ac7`  
		Last Modified: Mon, 09 Oct 2017 17:23:27 GMT  
		Size: 71.4 MB (71405518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf41bbf971f6d4a5639bc2963e8d713fbb59aa48b0d583456d127598f2e53a3`  
		Last Modified: Mon, 09 Oct 2017 17:23:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:ac0afb2edfe69ea15c862d4f79fcfa0f90baec48bc5f71d7b16d54e06d4699d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

```console
$ docker pull gradle@sha256:f2d699a432fe94ab40bc428e7be5d938a82c75a04874a50971cb2da2b1f78b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410704525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cfff766f0603845b7226a8626fc4f499ee6e8949d39a7c8fbb2635d4ee99559`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:33:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:33:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 10 Oct 2017 00:56:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:56:52 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:56:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_VERSION=9-b181
# Tue, 10 Oct 2017 00:56:54 GMT
ENV JAVA_DEBIAN_VERSION=9~b181-4
# Tue, 10 Oct 2017 00:57:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 04:05:20 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:05:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:05:20 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:05:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:05:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:05:28 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:05:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:05:29 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:05:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b58c0540eee85afd65d984ed9680210a9e8740b186454a9c5411b9b3862140e`  
		Last Modified: Mon, 09 Oct 2017 22:59:35 GMT  
		Size: 8.6 MB (8552413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c55f19db116c2c49c508d0625d83267697fdac44eba96a9510109088f88fc40`  
		Last Modified: Mon, 09 Oct 2017 22:59:34 GMT  
		Size: 9.3 MB (9274450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82778428e07641125327971168285129e3ba441ecd842001243dc101ebf61e64`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 855.6 KB (855569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1d7ba119a5b30a05594bd8c5aa001f2dcff735bd4def7e8af140770babb49a`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45bc206640a65ef432a7d450250a37f91263abbf64efb51bb0a839651f6c82e`  
		Last Modified: Tue, 10 Oct 2017 01:35:17 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49626e0ac053b36ffcbae3b40934b4c7586de14f0fb87fe21d775eb9d432dc3`  
		Last Modified: Tue, 10 Oct 2017 01:36:01 GMT  
		Size: 273.4 MB (273383771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95da7d23046299f7c60b72c18d8765bebf6434de2f11e5866b3ce93e38d6cda3`  
		Last Modified: Tue, 10 Oct 2017 04:10:28 GMT  
		Size: 71.1 MB (71075856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd72603025546094ddd01c9fd432dcb3925805de70cf3413e4d98e108dfe7267`  
		Last Modified: Tue, 10 Oct 2017 04:10:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:fe6268bbc1b50046782dc1ee5569223c7bc33a3d56132af019867ef9f3692e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:2cdbd0a72b129b7b69abc35cd972e9947bec3faed65bf9f17151b1fc760e6098
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127679201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287e96c059207d644052280dc7aa0db512cb48b569dbf8a31133200a0d558e27`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 13 Sep 2017 14:32:25 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Wed, 13 Sep 2017 14:32:26 GMT
CMD ["/bin/sh"]
# Thu, 14 Sep 2017 04:13:40 GMT
ENV LANG=C.UTF-8
# Thu, 14 Sep 2017 04:13:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 14 Sep 2017 04:25:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 14 Sep 2017 04:25:34 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Thu, 14 Sep 2017 04:25:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 14 Sep 2017 06:25:23 GMT
CMD ["gradle"]
# Thu, 14 Sep 2017 06:25:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 09 Oct 2017 17:16:36 GMT
ENV GRADLE_VERSION=4.2.1
# Mon, 09 Oct 2017 17:16:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Mon, 09 Oct 2017 17:16:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Mon, 09 Oct 2017 17:16:43 GMT
USER [gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 09 Oct 2017 17:16:43 GMT
WORKDIR /home/gradle
# Mon, 09 Oct 2017 17:16:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:720349d0916a74fb5124be4a8a2bf898de431927e1caec15cc956c8a7fb33d14`  
		Last Modified: Thu, 14 Sep 2017 04:50:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9431a0557160e1ec384a6cfe37d1225528bd236e486010ffc0b75ce7fe1c1465`  
		Last Modified: Thu, 14 Sep 2017 05:01:46 GMT  
		Size: 54.3 MB (54282902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f57e992b01c6c6373f77c0ac65493e7491c4293c6d7fea99d5a73cc1ac04ac7`  
		Last Modified: Mon, 09 Oct 2017 17:23:27 GMT  
		Size: 71.4 MB (71405518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf41bbf971f6d4a5639bc2963e8d713fbb59aa48b0d583456d127598f2e53a3`  
		Last Modified: Mon, 09 Oct 2017 17:23:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:ac0b397afc426e0f5d00d63c4d4aff2fce9da34894d20b79034b325faa8ec537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

```console
$ docker pull gradle@sha256:c7b8b35e0dd6b94975048af1a5a4e6105beb3738f97eb38b50f45dac377523f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366822463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff714432880500aa8e7ada796241f00d9928390709f55df6a98f1fb0b7ba1a8`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Mon, 09 Oct 2017 22:37:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 09 Oct 2017 22:37:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Mon, 09 Oct 2017 22:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 10 Oct 2017 00:48:47 GMT
ENV LANG=C.UTF-8
# Tue, 10 Oct 2017 00:48:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 10 Oct 2017 00:48:48 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_VERSION=8u141
# Tue, 10 Oct 2017 00:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u141-b15-1~deb9u1
# Tue, 10 Oct 2017 00:48:49 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 10 Oct 2017 00:49:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 10 Oct 2017 00:49:34 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 10 Oct 2017 04:04:10 GMT
CMD ["gradle"]
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 10 Oct 2017 04:04:10 GMT
ENV GRADLE_VERSION=4.2.1
# Tue, 10 Oct 2017 04:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Tue, 10 Oct 2017 04:04:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Tue, 10 Oct 2017 04:04:15 GMT
USER [gradle]
# Tue, 10 Oct 2017 04:04:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 10 Oct 2017 04:04:16 GMT
WORKDIR /home/gradle
# Tue, 10 Oct 2017 04:04:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d44b20f851c8ef0b042070ba8eb018b386f50fdae5c37871d3fe7b4cfb4956`  
		Last Modified: Mon, 09 Oct 2017 23:01:17 GMT  
		Size: 11.1 MB (11106736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a156217f3fa434b4821b01f0d24be50ead40560053fb5b65982f52507f55bc12`  
		Last Modified: Mon, 09 Oct 2017 23:01:15 GMT  
		Size: 4.6 MB (4633218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a1ed13b6faa4be7117a973f02c46398e98adfb4a2af34cb279fc5908e37ccba`  
		Last Modified: Mon, 09 Oct 2017 23:02:37 GMT  
		Size: 50.0 MB (50021676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77980e5d0a6deb5b982795f18597f7e9ee7f9d08614cbc57528050b2a7977044`  
		Last Modified: Tue, 10 Oct 2017 01:17:05 GMT  
		Size: 892.2 KB (892192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5458607a81d3430c59a97089416a3ef2d8788bdb7eba159b3c2508904d41b996`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34cf8338f422c47dc8c752afc2b406bb502e95cd2f74af9e84bff773e72d243`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3da5c56e5c9083605636f83450dfb193a0e46c55185cf98ed1ebac26f339`  
		Last Modified: Tue, 10 Oct 2017 01:17:39 GMT  
		Size: 183.7 MB (183691300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ade7a861e3fe26356fa773e1b3f05add01be9ab4c977b711223c15fc30f458e`  
		Last Modified: Tue, 10 Oct 2017 01:17:04 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2b73dfb8d968aedfddccc72a53f499ac0e95d3c0490a219112b5e892d3850e`  
		Last Modified: Tue, 10 Oct 2017 04:07:19 GMT  
		Size: 71.1 MB (71075733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b324416d8726fa377aba6cdad1ecfedb8932d5b090472e6d28cb9aa9e84dd0`  
		Last Modified: Tue, 10 Oct 2017 04:07:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
