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
$ docker pull gradle@sha256:891013532b1621aef3502fad7d948861686df16448a359d454b383507730ef21
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.2 MB (370166059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1254c79ad4944f0bd9ff227b587d72960e07306487d982fb5788509912926665`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 01:52:14 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 01:52:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 01:52:17 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 01:52:18 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 01:52:19 GMT
ENV JAVA_VERSION=7u131
# Fri, 23 Jun 2017 01:52:20 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 23 Jun 2017 01:56:03 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 14:53:15 GMT
CMD ["gradle"]
# Fri, 23 Jun 2017 14:53:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 23 Jun 2017 14:53:16 GMT
ENV GRADLE_VERSION=4.0
# Fri, 23 Jun 2017 14:53:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Fri, 23 Jun 2017 14:53:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Fri, 23 Jun 2017 14:53:36 GMT
USER [gradle]
# Fri, 23 Jun 2017 14:53:37 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 23 Jun 2017 14:53:39 GMT
WORKDIR /home/gradle
# Fri, 23 Jun 2017 14:53:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:9f0706ba7422412cd468804fee456786f88bed94bf9aea6dde2a47f770d19d27`  
		Last Modified: Tue, 20 Jun 2017 20:35:47 GMT  
		Size: 52.6 MB (52614808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3942a742d221ef22a0a335c4eebf09e15a36dcfb224b5a2d0cdcc405f374ccb`  
		Last Modified: Wed, 21 Jun 2017 00:33:28 GMT  
		Size: 19.3 MB (19264368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b1123c88f67a9ad43d9bf3f552bbe3352696a674e82712fda785db4f71a655`  
		Last Modified: Wed, 21 Jun 2017 00:34:52 GMT  
		Size: 43.2 MB (43227273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd20aef2091895544e1f428c076d83267e49462e9c8ce7b19516940fa360f818`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 594.4 KB (594399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3895ad605979a7a7252d1963cab8ac214d7c44be04da35ab0447c4e965fd8ad`  
		Last Modified: Sat, 24 Jun 2017 16:54:51 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37ee48745eb89786a1c1041a9959c3b3cde92677a5999448f537185d29d55cf`  
		Last Modified: Sat, 24 Jun 2017 16:54:51 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a67cb815527964e50938dd1690f5d9d617edba7a6b083e6b6f41506584ccb9fe`  
		Last Modified: Sat, 24 Jun 2017 16:56:28 GMT  
		Size: 187.0 MB (186961492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b861252ad5b8f1929ecba872563a30928a3d801b007602af99b96765257c463`  
		Last Modified: Sun, 25 Jun 2017 09:14:34 GMT  
		Size: 67.5 MB (67503210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df52e0e21bad2abf10c67328a96012e92222a4f49290fd6e0b6a8905e20a4715`  
		Last Modified: Sun, 25 Jun 2017 09:14:26 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7`

```console
$ docker pull gradle@sha256:371770a85c9720714673d1ea49bc63246510013239e41ca6d9e9c67b24f856d5
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.1 MB (370084193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e790612568a5a2a099a95d99631b93c8866d435387f00a86864ce0232b0940`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 16:52:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 16:52:42 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 16:52:43 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 16:52:44 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 16:55:27 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Jun 2017 20:12:28 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:12:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:32:31 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:32:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:32:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:32:59 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:33:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:33:01 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:33:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b583cbdc29006b13ef40e4052dba9a9e42ae156b77e77b1439d189448f04bf20`  
		Last Modified: Wed, 14 Jun 2017 11:25:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e9b5c3e4225ab47b81ced706c8b6bf429d1a09a1bbe2c03c73f7b8b02c65e9`  
		Last Modified: Wed, 14 Jun 2017 11:25:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f676d1fe1c43cd808f45fe5517d8100ca3766ed54a371350fb0c6053db59a57c`  
		Last Modified: Wed, 14 Jun 2017 11:26:34 GMT  
		Size: 186.9 MB (186929381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca2f338aeb54a92f6ac4477a30c191847596cc4c41599531870637261c86427`  
		Last Modified: Mon, 19 Jun 2017 18:42:41 GMT  
		Size: 67.5 MB (67503211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34d965a4608415c5c4c7321bba42dc6d6f8bd181b8c3a62296a6a12b15c6db9`  
		Last Modified: Mon, 19 Jun 2017 18:42:32 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre7`

```console
$ docker pull gradle@sha256:858c038aa43a84ac6947292a2128f0c11a1ffe6f302b8c6002e6b289d46e1681
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7de8d296f537412945bb55d04612a11dfac50102178895074ee3aec954a38f6`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:23:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:23:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 17:23:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 17:24:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Jun 2017 20:14:39 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:14:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:33:33 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:33:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:33:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:34:03 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:34:04 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:34:05 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:34:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9c588128772812f193d95bcf367d7b243e1cab14310eae2b228671b4ff0cd`  
		Last Modified: Wed, 14 Jun 2017 11:02:59 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f30f77b2d27a75b290e26c22d1328b194841516eeb2ad3ec3d8e9e34a41f3`  
		Last Modified: Wed, 14 Jun 2017 11:02:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf3e07a1b0ebab94df5f0e84bffed0cc1ce3136512a25dd04d99f12ecc6c937`  
		Last Modified: Wed, 14 Jun 2017 11:03:13 GMT  
		Size: 78.7 MB (78692266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56d99a703490dd29f056e078398ea723c8a4123e65bb305a46a55031b79616`  
		Last Modified: Mon, 19 Jun 2017 18:43:48 GMT  
		Size: 67.5 MB (67503231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684711a27f98e5ee96fb597e1908b763d8de0e8ffda3b98ecf82d7c165858025`  
		Last Modified: Mon, 19 Jun 2017 18:43:38 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:858c038aa43a84ac6947292a2128f0c11a1ffe6f302b8c6002e6b289d46e1681
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218595665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7de8d296f537412945bb55d04612a11dfac50102178895074ee3aec954a38f6`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:23:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:23:40 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:23:41 GMT
ENV JAVA_VERSION=7u131
# Mon, 12 Jun 2017 17:23:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Mon, 12 Jun 2017 17:24:42 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Jun 2017 20:14:39 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:14:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:33:33 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:33:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:33:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:34:03 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:34:04 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:34:05 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:34:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cd9c588128772812f193d95bcf367d7b243e1cab14310eae2b228671b4ff0cd`  
		Last Modified: Wed, 14 Jun 2017 11:02:59 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662f30f77b2d27a75b290e26c22d1328b194841516eeb2ad3ec3d8e9e34a41f3`  
		Last Modified: Wed, 14 Jun 2017 11:02:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf3e07a1b0ebab94df5f0e84bffed0cc1ce3136512a25dd04d99f12ecc6c937`  
		Last Modified: Wed, 14 Jun 2017 11:03:13 GMT  
		Size: 78.7 MB (78692266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb56d99a703490dd29f056e078398ea723c8a4123e65bb305a46a55031b79616`  
		Last Modified: Mon, 19 Jun 2017 18:43:48 GMT  
		Size: 67.5 MB (67503231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684711a27f98e5ee96fb597e1908b763d8de0e8ffda3b98ecf82d7c165858025`  
		Last Modified: Mon, 19 Jun 2017 18:43:38 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk7-alpine`

```console
$ docker pull gradle@sha256:c1fe4ab4ef926861ed65581511c7d70d2712aaa59c4f8378064b4f06e2d997d9
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0446db5aae498238fe9a8ef2d0d40af24702ec275863c1a4abeb6bfd96ccf05c`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:58:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 01 Jun 2017 16:58:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:58:49 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:58:50 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:59:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Jun 2017 20:16:47 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:16:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:34:57 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:34:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:35:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:35:34 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:35:34 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:35:36 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:35:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48844f08c2029e8a0a7e637a0b861a54d395c8e81cecc9214c9c85ab5f2654f4`  
		Last Modified: Thu, 01 Jun 2017 17:05:11 GMT  
		Size: 77.4 MB (77431116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c97cd2d0caf1f1227dfa04c5dcc26b53eb37db19c75f73e1d6ccdb4147a10e`  
		Last Modified: Mon, 19 Jun 2017 18:44:59 GMT  
		Size: 69.0 MB (68955109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221534f0be199ad894c7d562549fa5df2b9c6b3a6f111a68c3906695c1e96117`  
		Last Modified: Mon, 19 Jun 2017 18:44:50 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:c1fe4ab4ef926861ed65581511c7d70d2712aaa59c4f8378064b4f06e2d997d9
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0446db5aae498238fe9a8ef2d0d40af24702ec275863c1a4abeb6bfd96ccf05c`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:58:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Thu, 01 Jun 2017 16:58:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:58:49 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:58:50 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:59:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Jun 2017 20:16:47 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:16:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:34:57 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:34:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:35:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:35:34 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:35:34 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:35:36 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:35:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48844f08c2029e8a0a7e637a0b861a54d395c8e81cecc9214c9c85ab5f2654f4`  
		Last Modified: Thu, 01 Jun 2017 17:05:11 GMT  
		Size: 77.4 MB (77431116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c97cd2d0caf1f1227dfa04c5dcc26b53eb37db19c75f73e1d6ccdb4147a10e`  
		Last Modified: Mon, 19 Jun 2017 18:44:59 GMT  
		Size: 69.0 MB (68955109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221534f0be199ad894c7d562549fa5df2b9c6b3a6f111a68c3906695c1e96117`  
		Last Modified: Mon, 19 Jun 2017 18:44:50 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre7-alpine`

```console
$ docker pull gradle@sha256:5b7df81c39b19efdc356cbb71ae9ea398af7744cda03fed2c931f1bddef89301
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132068505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819a5c2d9d0d714c120b4eb509d496a966028a614a061ab95d04c592fe8484b7`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 01 Jun 2017 16:59:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:59:26 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:59:26 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:59:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Jun 2017 20:20:07 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:20:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:36:07 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:36:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:36:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:36:38 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:36:39 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:36:40 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:36:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e753c68085041975be72eedaab361067e03070e1ca4c393eef929ce2fe051e17`  
		Last Modified: Thu, 01 Jun 2017 17:08:06 GMT  
		Size: 61.1 MB (61131146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccef287558b2e4d7ba6e246d6146655eada4e47f5bf719f74930e230fc3381e`  
		Last Modified: Mon, 19 Jun 2017 18:46:03 GMT  
		Size: 68.9 MB (68946887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7c971f772d7debe8d7df1330c9726dd3ab20bd10225e1778d66e001413cd26`  
		Last Modified: Mon, 19 Jun 2017 18:45:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:5b7df81c39b19efdc356cbb71ae9ea398af7744cda03fed2c931f1bddef89301
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132068505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819a5c2d9d0d714c120b4eb509d496a966028a614a061ab95d04c592fe8484b7`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Thu, 01 Jun 2017 16:59:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 01 Jun 2017 16:59:26 GMT
ENV JAVA_VERSION=7u131
# Thu, 01 Jun 2017 16:59:26 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Thu, 01 Jun 2017 16:59:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Jun 2017 20:20:07 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:20:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:36:07 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:36:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:36:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:36:38 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:36:39 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:36:40 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:36:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e753c68085041975be72eedaab361067e03070e1ca4c393eef929ce2fe051e17`  
		Last Modified: Thu, 01 Jun 2017 17:08:06 GMT  
		Size: 61.1 MB (61131146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccef287558b2e4d7ba6e246d6146655eada4e47f5bf719f74930e230fc3381e`  
		Last Modified: Mon, 19 Jun 2017 18:46:03 GMT  
		Size: 68.9 MB (68946887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd7c971f772d7debe8d7df1330c9726dd3ab20bd10225e1778d66e001413cd26`  
		Last Modified: Mon, 19 Jun 2017 18:45:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk8`

```console
$ docker pull gradle@sha256:12e9c27e2a273ee7286a6dbb7c1bff7d2d3beb4b7850e5213db4fcc26297d69a
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e7a83f19747621636dd030a6c7fb02e36a31d1aaf635a83a7401fb2774dec1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:25:10 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:25:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:37:09 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:37:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:37:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:37:39 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:37:40 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:37:41 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:37:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96ccb6dd48c0e021610434026df0b34aae8e8827eea61a36d68cece25137a84`  
		Last Modified: Mon, 19 Jun 2017 18:47:08 GMT  
		Size: 67.5 MB (67503202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ca346ba1d0a0044e138bd68dd515ae46522bf8502c9107eb3d3aa1ad401230`  
		Last Modified: Mon, 19 Jun 2017 18:46:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:12e9c27e2a273ee7286a6dbb7c1bff7d2d3beb4b7850e5213db4fcc26297d69a
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e7a83f19747621636dd030a6c7fb02e36a31d1aaf635a83a7401fb2774dec1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:25:10 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:25:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:37:09 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:37:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:37:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:37:39 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:37:40 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:37:41 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:37:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96ccb6dd48c0e021610434026df0b34aae8e8827eea61a36d68cece25137a84`  
		Last Modified: Mon, 19 Jun 2017 18:47:08 GMT  
		Size: 67.5 MB (67503202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ca346ba1d0a0044e138bd68dd515ae46522bf8502c9107eb3d3aa1ad401230`  
		Last Modified: Mon, 19 Jun 2017 18:46:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk`

```console
$ docker pull gradle@sha256:12e9c27e2a273ee7286a6dbb7c1bff7d2d3beb4b7850e5213db4fcc26297d69a
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e7a83f19747621636dd030a6c7fb02e36a31d1aaf635a83a7401fb2774dec1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:25:10 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:25:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:37:09 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:37:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:37:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:37:39 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:37:40 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:37:41 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:37:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96ccb6dd48c0e021610434026df0b34aae8e8827eea61a36d68cece25137a84`  
		Last Modified: Mon, 19 Jun 2017 18:47:08 GMT  
		Size: 67.5 MB (67503202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ca346ba1d0a0044e138bd68dd515ae46522bf8502c9107eb3d3aa1ad401230`  
		Last Modified: Mon, 19 Jun 2017 18:46:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:12e9c27e2a273ee7286a6dbb7c1bff7d2d3beb4b7850e5213db4fcc26297d69a
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e7a83f19747621636dd030a6c7fb02e36a31d1aaf635a83a7401fb2774dec1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:25:10 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:25:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:37:09 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:37:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:37:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:37:39 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:37:40 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:37:41 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:37:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96ccb6dd48c0e021610434026df0b34aae8e8827eea61a36d68cece25137a84`  
		Last Modified: Mon, 19 Jun 2017 18:47:08 GMT  
		Size: 67.5 MB (67503202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ca346ba1d0a0044e138bd68dd515ae46522bf8502c9107eb3d3aa1ad401230`  
		Last Modified: Mon, 19 Jun 2017 18:46:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5`

```console
$ docker pull gradle@sha256:12e9c27e2a273ee7286a6dbb7c1bff7d2d3beb4b7850e5213db4fcc26297d69a
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e7a83f19747621636dd030a6c7fb02e36a31d1aaf635a83a7401fb2774dec1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:25:10 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:25:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:37:09 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:37:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:37:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:37:39 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:37:40 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:37:41 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:37:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96ccb6dd48c0e021610434026df0b34aae8e8827eea61a36d68cece25137a84`  
		Last Modified: Mon, 19 Jun 2017 18:47:08 GMT  
		Size: 67.5 MB (67503202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ca346ba1d0a0044e138bd68dd515ae46522bf8502c9107eb3d3aa1ad401230`  
		Last Modified: Mon, 19 Jun 2017 18:46:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:12e9c27e2a273ee7286a6dbb7c1bff7d2d3beb4b7850e5213db4fcc26297d69a
```

-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.8 MB (302795332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e7a83f19747621636dd030a6c7fb02e36a31d1aaf635a83a7401fb2774dec1`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:24:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 16:52:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:25:07 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:25:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:25:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:25:11 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:25:12 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:25:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:25:53 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:25:55 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:25:10 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:25:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:37:09 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:37:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:37:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:37:39 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:37:40 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:37:41 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:37:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f38f9d5c3c0e3e4eabe6d4dac4bcc729caf847c172d0af75caf581b6c23120c`  
		Last Modified: Wed, 07 Jun 2017 20:07:12 GMT  
		Size: 43.2 MB (43225567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbb987bd399bf408a9d6454c5dfaed03e218ef890851ed956202c762e627212`  
		Last Modified: Tue, 13 Jun 2017 21:27:35 GMT  
		Size: 594.3 KB (594334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d084a7098441d179acda1ede474028edd334db0c07de42f9c15f0a837b4240`  
		Last Modified: Tue, 13 Jun 2017 21:27:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09373cf6f1c7695d0e811c571320127e3abc393dca77f81b87e4d94ddfe8ca6f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5d486a02fa0f9d8708c9fa043ea1e9e7d54a48ac13790f3f65583c92072601f`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e979ba42b15895685f5307fb1d4aff7f8f260ae7f6ed5efb086a45963baf6eb`  
		Last Modified: Tue, 13 Jun 2017 21:27:57 GMT  
		Size: 119.4 MB (119350683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594e48fef5be5b8804b6402f7261a3a51f6cff42410a340984bc4c86b6fef7a6`  
		Last Modified: Tue, 13 Jun 2017 21:27:32 GMT  
		Size: 289.6 KB (289630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96ccb6dd48c0e021610434026df0b34aae8e8827eea61a36d68cece25137a84`  
		Last Modified: Mon, 19 Jun 2017 18:47:08 GMT  
		Size: 67.5 MB (67503202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ca346ba1d0a0044e138bd68dd515ae46522bf8502c9107eb3d3aa1ad401230`  
		Last Modified: Mon, 19 Jun 2017 18:46:59 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre8`

```console
$ docker pull gradle@sha256:20064f97f286e343a6556aad0dc30aebd717a3f49aeb1baa29ff7ae8d238e9f7
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194267022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2497b179e3008b1d6c83f66e5fc6c29d4a4457b11993b9de599a6d55ddf18d36`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:31:16 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:31:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:38:37 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:38:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:38:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:38:42 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:38:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:38:44 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:38:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bbc8f68f9775fd8d2adf2f80cf00d6129234557018707593abc5e0acde92fb`  
		Last Modified: Mon, 19 Jun 2017 18:49:57 GMT  
		Size: 67.5 MB (67503228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd0d058fc879e18a120d53ba223f7aceee550a455ff8ba4fffd776a1969e74a`  
		Last Modified: Mon, 19 Jun 2017 18:49:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:20064f97f286e343a6556aad0dc30aebd717a3f49aeb1baa29ff7ae8d238e9f7
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194267022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2497b179e3008b1d6c83f66e5fc6c29d4a4457b11993b9de599a6d55ddf18d36`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:31:16 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:31:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:38:37 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:38:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:38:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:38:42 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:38:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:38:44 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:38:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bbc8f68f9775fd8d2adf2f80cf00d6129234557018707593abc5e0acde92fb`  
		Last Modified: Mon, 19 Jun 2017 18:49:57 GMT  
		Size: 67.5 MB (67503228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd0d058fc879e18a120d53ba223f7aceee550a455ff8ba4fffd776a1969e74a`  
		Last Modified: Mon, 19 Jun 2017 18:49:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre`

```console
$ docker pull gradle@sha256:20064f97f286e343a6556aad0dc30aebd717a3f49aeb1baa29ff7ae8d238e9f7
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194267022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2497b179e3008b1d6c83f66e5fc6c29d4a4457b11993b9de599a6d55ddf18d36`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:31:16 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:31:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:38:37 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:38:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:38:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:38:42 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:38:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:38:44 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:38:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bbc8f68f9775fd8d2adf2f80cf00d6129234557018707593abc5e0acde92fb`  
		Last Modified: Mon, 19 Jun 2017 18:49:57 GMT  
		Size: 67.5 MB (67503228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd0d058fc879e18a120d53ba223f7aceee550a455ff8ba4fffd776a1969e74a`  
		Last Modified: Mon, 19 Jun 2017 18:49:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:20064f97f286e343a6556aad0dc30aebd717a3f49aeb1baa29ff7ae8d238e9f7
```

-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194267022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2497b179e3008b1d6c83f66e5fc6c29d4a4457b11993b9de599a6d55ddf18d36`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:32:31 GMT
ADD file:ce4be6f55b1f47cba28efd351c82dd9fa4efd3d29fa0ae365574adb52151dda1 in / 
# Wed, 07 Jun 2017 17:32:32 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:26:20 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Mon, 12 Jun 2017 17:26:20 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:26:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:26:23 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Mon, 12 Jun 2017 17:26:24 GMT
ENV JAVA_VERSION=8u131
# Mon, 12 Jun 2017 17:26:25 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Mon, 12 Jun 2017 17:26:26 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Mon, 12 Jun 2017 17:26:43 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 12 Jun 2017 17:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 13 Jun 2017 20:31:16 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:31:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:38:37 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:38:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:38:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:38:42 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:38:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:38:44 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:38:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:ef0380f84d05d3cdc5a5f660232d35ccb020ccf1d635b585580dea44691a13a7`  
		Last Modified: Wed, 07 Jun 2017 17:58:44 GMT  
		Size: 52.6 MB (52568269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24c170465c65dc43c3a0f4a0a2bdba7227a9a58745e2432e62cfa7a5ea4edf2c`  
		Last Modified: Wed, 07 Jun 2017 20:06:09 GMT  
		Size: 19.3 MB (19262922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d274e5d309ddee8129c12282e4e8f5ed08e36c51570f7babc49c7279cfceebc`  
		Last Modified: Tue, 13 Jun 2017 21:47:38 GMT  
		Size: 568.5 KB (568467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d93e028e8faa1ac685a0db314d2ea6bfc3c3f7fdab69b8fee07b73679e1ea81`  
		Last Modified: Tue, 13 Jun 2017 21:47:37 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75daf25114d3ab76f8e77f1b39284a7e21ec7ba1c29be46dafa0956d29618580`  
		Last Modified: Tue, 13 Jun 2017 21:47:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab6fa88c00d0466305ec00cdad040a554e36e5d482a86b4a9cf811f08cfd9b8`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3ffd274c10fce67199ed47d29ba01875da3b9a33189bfb33e76fc3e6939b79`  
		Last Modified: Tue, 13 Jun 2017 21:47:47 GMT  
		Size: 54.1 MB (54073769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:629463368949121d11835996200fea40eada7e5e2842e937308b31ed541ecf76`  
		Last Modified: Tue, 13 Jun 2017 21:47:34 GMT  
		Size: 289.6 KB (289643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bbc8f68f9775fd8d2adf2f80cf00d6129234557018707593abc5e0acde92fb`  
		Last Modified: Mon, 19 Jun 2017 18:49:57 GMT  
		Size: 67.5 MB (67503228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd0d058fc879e18a120d53ba223f7aceee550a455ff8ba4fffd776a1969e74a`  
		Last Modified: Mon, 19 Jun 2017 18:49:48 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk8-alpine`

```console
$ docker pull gradle@sha256:6162d7188ea3f50209898abc42ac5dd71a787ae5461d4b5526e68ee069dce89a
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8b43666a3060fdf36bcc1a696913df961230f8a0d151e2656e516d479cc2af`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:39:17 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:39:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:39:19 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:39:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:39:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:39:30 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:39:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:39:32 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc6aed373ee6e6121a9430477e3d833af5e5e2697e533141c30adaad168e6ab`  
		Last Modified: Mon, 19 Jun 2017 18:51:56 GMT  
		Size: 68.9 MB (68920011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1c6c8fe8d57bc17a24e74ab16e7951ca1b615bc33487ab498ff7ed5019842`  
		Last Modified: Mon, 19 Jun 2017 18:51:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:6162d7188ea3f50209898abc42ac5dd71a787ae5461d4b5526e68ee069dce89a
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8b43666a3060fdf36bcc1a696913df961230f8a0d151e2656e516d479cc2af`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:39:17 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:39:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:39:19 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:39:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:39:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:39:30 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:39:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:39:32 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc6aed373ee6e6121a9430477e3d833af5e5e2697e533141c30adaad168e6ab`  
		Last Modified: Mon, 19 Jun 2017 18:51:56 GMT  
		Size: 68.9 MB (68920011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1c6c8fe8d57bc17a24e74ab16e7951ca1b615bc33487ab498ff7ed5019842`  
		Last Modified: Mon, 19 Jun 2017 18:51:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk-alpine`

```console
$ docker pull gradle@sha256:6162d7188ea3f50209898abc42ac5dd71a787ae5461d4b5526e68ee069dce89a
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8b43666a3060fdf36bcc1a696913df961230f8a0d151e2656e516d479cc2af`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:39:17 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:39:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:39:19 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:39:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:39:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:39:30 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:39:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:39:32 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc6aed373ee6e6121a9430477e3d833af5e5e2697e533141c30adaad168e6ab`  
		Last Modified: Mon, 19 Jun 2017 18:51:56 GMT  
		Size: 68.9 MB (68920011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1c6c8fe8d57bc17a24e74ab16e7951ca1b615bc33487ab498ff7ed5019842`  
		Last Modified: Mon, 19 Jun 2017 18:51:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:6162d7188ea3f50209898abc42ac5dd71a787ae5461d4b5526e68ee069dce89a
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8b43666a3060fdf36bcc1a696913df961230f8a0d151e2656e516d479cc2af`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:39:17 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:39:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:39:19 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:39:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:39:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:39:30 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:39:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:39:32 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc6aed373ee6e6121a9430477e3d833af5e5e2697e533141c30adaad168e6ab`  
		Last Modified: Mon, 19 Jun 2017 18:51:56 GMT  
		Size: 68.9 MB (68920011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1c6c8fe8d57bc17a24e74ab16e7951ca1b615bc33487ab498ff7ed5019842`  
		Last Modified: Mon, 19 Jun 2017 18:51:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-alpine`

```console
$ docker pull gradle@sha256:6162d7188ea3f50209898abc42ac5dd71a787ae5461d4b5526e68ee069dce89a
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8b43666a3060fdf36bcc1a696913df961230f8a0d151e2656e516d479cc2af`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:39:17 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:39:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:39:19 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:39:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:39:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:39:30 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:39:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:39:32 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc6aed373ee6e6121a9430477e3d833af5e5e2697e533141c30adaad168e6ab`  
		Last Modified: Mon, 19 Jun 2017 18:51:56 GMT  
		Size: 68.9 MB (68920011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1c6c8fe8d57bc17a24e74ab16e7951ca1b615bc33487ab498ff7ed5019842`  
		Last Modified: Mon, 19 Jun 2017 18:51:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:6162d7188ea3f50209898abc42ac5dd71a787ae5461d4b5526e68ee069dce89a
```

-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8b43666a3060fdf36bcc1a696913df961230f8a0d151e2656e516d479cc2af`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 16:59:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 01 Jun 2017 16:59:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 16:59:59 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:10:15 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:10:24 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:39:17 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:39:18 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:39:19 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:39:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:39:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:39:30 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:39:31 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:39:32 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc79c9f161a1155f09119c5d339345333c92b46bbf9b9f3621312dd4394aebc1`  
		Last Modified: Sat, 17 Jun 2017 06:24:47 GMT  
		Size: 70.1 MB (70050328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc6aed373ee6e6121a9430477e3d833af5e5e2697e533141c30adaad168e6ab`  
		Last Modified: Mon, 19 Jun 2017 18:51:56 GMT  
		Size: 68.9 MB (68920011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e1c6c8fe8d57bc17a24e74ab16e7951ca1b615bc33487ab498ff7ed5019842`  
		Last Modified: Mon, 19 Jun 2017 18:51:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre8-alpine`

```console
$ docker pull gradle@sha256:34e9c24a8bba43837350cf070e1d33334905dc8e44d253e2cf1bea444d6e7b70
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2f71937a18f5703581e26d2ac7ece4ef359f0cb3526e8daa1e093df8c30c13`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 17:00:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 17:00:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 17:00:31 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:11:13 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:11:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:40:03 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:40:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:40:16 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:40:16 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:40:17 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432e3c96aacd9388d413a926f482ce420e39574fb0aa33c2bcee6d7e15ff0fa3`  
		Last Modified: Sat, 17 Jun 2017 06:29:48 GMT  
		Size: 54.3 MB (54281304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2814de6af3b410b51fe20af8514e6a8e575a862f3456799a6fcc0ec45fc8eb`  
		Last Modified: Mon, 19 Jun 2017 18:54:44 GMT  
		Size: 68.9 MB (68919289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dbe079927bd37b72ac2d0532ca94687d9e40b36c70d2fd4e4545476a2796de`  
		Last Modified: Mon, 19 Jun 2017 18:54:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:34e9c24a8bba43837350cf070e1d33334905dc8e44d253e2cf1bea444d6e7b70
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2f71937a18f5703581e26d2ac7ece4ef359f0cb3526e8daa1e093df8c30c13`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 17:00:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 17:00:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 17:00:31 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:11:13 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:11:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:40:03 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:40:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:40:16 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:40:16 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:40:17 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432e3c96aacd9388d413a926f482ce420e39574fb0aa33c2bcee6d7e15ff0fa3`  
		Last Modified: Sat, 17 Jun 2017 06:29:48 GMT  
		Size: 54.3 MB (54281304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2814de6af3b410b51fe20af8514e6a8e575a862f3456799a6fcc0ec45fc8eb`  
		Last Modified: Mon, 19 Jun 2017 18:54:44 GMT  
		Size: 68.9 MB (68919289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dbe079927bd37b72ac2d0532ca94687d9e40b36c70d2fd4e4545476a2796de`  
		Last Modified: Mon, 19 Jun 2017 18:54:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre-alpine`

```console
$ docker pull gradle@sha256:34e9c24a8bba43837350cf070e1d33334905dc8e44d253e2cf1bea444d6e7b70
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2f71937a18f5703581e26d2ac7ece4ef359f0cb3526e8daa1e093df8c30c13`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 17:00:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 17:00:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 17:00:31 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:11:13 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:11:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:40:03 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:40:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:40:16 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:40:16 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:40:17 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432e3c96aacd9388d413a926f482ce420e39574fb0aa33c2bcee6d7e15ff0fa3`  
		Last Modified: Sat, 17 Jun 2017 06:29:48 GMT  
		Size: 54.3 MB (54281304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2814de6af3b410b51fe20af8514e6a8e575a862f3456799a6fcc0ec45fc8eb`  
		Last Modified: Mon, 19 Jun 2017 18:54:44 GMT  
		Size: 68.9 MB (68919289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dbe079927bd37b72ac2d0532ca94687d9e40b36c70d2fd4e4545476a2796de`  
		Last Modified: Mon, 19 Jun 2017 18:54:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:34e9c24a8bba43837350cf070e1d33334905dc8e44d253e2cf1bea444d6e7b70
```

-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2f71937a18f5703581e26d2ac7ece4ef359f0cb3526e8daa1e093df8c30c13`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 25 May 2017 23:33:21 GMT
ADD file:ce33aabbc5f370e58ebe911e081ce093e3df18d689c2d5a5d092c77973f62a54 in / 
# Thu, 25 May 2017 23:33:22 GMT
CMD ["/bin/sh"]
# Thu, 01 Jun 2017 16:58:46 GMT
ENV LANG=C.UTF-8
# Thu, 01 Jun 2017 16:58:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 01 Jun 2017 17:00:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 01 Jun 2017 17:00:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 01 Jun 2017 17:00:31 GMT
ENV JAVA_VERSION=8u131
# Sat, 17 Jun 2017 06:11:13 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 17 Jun 2017 06:11:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Jun 2017 18:40:03 GMT
CMD ["gradle"]
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:40:04 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:40:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:40:16 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:40:16 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:40:17 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:2aecc7e1714b6fad58d13aedb0639011b37b86f743ba7b6a52d82bd03014b78e`  
		Last Modified: Thu, 25 May 2017 23:36:54 GMT  
		Size: 2.0 MB (1990101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bb7a1c6ee7ae261bc9a503b112a715153b44524eaf20763357e3c4b1b32983`  
		Last Modified: Thu, 01 Jun 2017 17:04:59 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432e3c96aacd9388d413a926f482ce420e39574fb0aa33c2bcee6d7e15ff0fa3`  
		Last Modified: Sat, 17 Jun 2017 06:29:48 GMT  
		Size: 54.3 MB (54281304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c2814de6af3b410b51fe20af8514e6a8e575a862f3456799a6fcc0ec45fc8eb`  
		Last Modified: Mon, 19 Jun 2017 18:54:44 GMT  
		Size: 68.9 MB (68919289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5dbe079927bd37b72ac2d0532ca94687d9e40b36c70d2fd4e4545476a2796de`  
		Last Modified: Mon, 19 Jun 2017 18:54:35 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk9`

```console
$ docker pull gradle@sha256:f04e930e67564fc53078c09ffaa2abccc9f2a57a58be22c2d7ea8b7b7b9016bd
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330901222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39616089c01da3c5d374782a1dd85b184044dcc70b4bfa3d9ba626b16e19aea`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:17 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:27:18 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:27:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:27:22 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:27:23 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:28:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Jun 2017 20:47:43 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:48:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:40:48 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:40:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:40:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:40:56 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:40:56 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:40:57 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:41:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85a12d174b5650f919587cbf7c8cc617a8db5e87676dd26c41461d31b5ec38`  
		Last Modified: Wed, 07 Jun 2017 20:10:10 GMT  
		Size: 50.9 MB (50942792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6846b1510be4fb3371c169cb47b6a2f2c09ca94132ee9bcdc9b7bb4a8bf6d`  
		Last Modified: Wed, 14 Jun 2017 11:40:13 GMT  
		Size: 655.2 KB (655240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6602782d2109de55c98dc5cd3242af71364e0f3547eadae5b284d224eea09c44`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f405c19f02a0262a2eee68f11efc170e03f5c5208faeab228541b66e779a`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb1cb2e6bb66f4e0b7ccd4babef73bd6292720f61a67529c16b44107eea8a3`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f113d2e0518884014aa1ee0089b009ecbb2031486bed34cd5e6b2846f932336`  
		Last Modified: Wed, 14 Jun 2017 11:41:02 GMT  
		Size: 155.3 MB (155253319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd5e62580583c0046362451df7b24a023bec74054a6812f3e2e366b51f2eb7d`  
		Last Modified: Mon, 19 Jun 2017 18:56:49 GMT  
		Size: 67.5 MB (67502960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330566cfed1d82e795bae128f3179124134636ae3c9a3fd8bcea73f22a09ca15`  
		Last Modified: Mon, 19 Jun 2017 18:56:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk9`

```console
$ docker pull gradle@sha256:f04e930e67564fc53078c09ffaa2abccc9f2a57a58be22c2d7ea8b7b7b9016bd
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **330.9 MB (330901222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39616089c01da3c5d374782a1dd85b184044dcc70b4bfa3d9ba626b16e19aea`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Jun 2017 19:28:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:27:17 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:27:18 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:27:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:27:21 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:27:22 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:27:23 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:28:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Jun 2017 20:47:43 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:48:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:40:48 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:40:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:40:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:40:56 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:40:56 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:40:57 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:41:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac85a12d174b5650f919587cbf7c8cc617a8db5e87676dd26c41461d31b5ec38`  
		Last Modified: Wed, 07 Jun 2017 20:10:10 GMT  
		Size: 50.9 MB (50942792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6846b1510be4fb3371c169cb47b6a2f2c09ca94132ee9bcdc9b7bb4a8bf6d`  
		Last Modified: Wed, 14 Jun 2017 11:40:13 GMT  
		Size: 655.2 KB (655240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6602782d2109de55c98dc5cd3242af71364e0f3547eadae5b284d224eea09c44`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f405c19f02a0262a2eee68f11efc170e03f5c5208faeab228541b66e779a`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eb1cb2e6bb66f4e0b7ccd4babef73bd6292720f61a67529c16b44107eea8a3`  
		Last Modified: Wed, 14 Jun 2017 11:40:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f113d2e0518884014aa1ee0089b009ecbb2031486bed34cd5e6b2846f932336`  
		Last Modified: Wed, 14 Jun 2017 11:41:02 GMT  
		Size: 155.3 MB (155253319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd5e62580583c0046362451df7b24a023bec74054a6812f3e2e366b51f2eb7d`  
		Last Modified: Mon, 19 Jun 2017 18:56:49 GMT  
		Size: 67.5 MB (67502960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330566cfed1d82e795bae128f3179124134636ae3c9a3fd8bcea73f22a09ca15`  
		Last Modified: Mon, 19 Jun 2017 18:56:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre9`

```console
$ docker pull gradle@sha256:b42c5a979d4cc540c9af7c34a1d2b8ddb99ad252115017d73aaa7f17a5cb8317
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280456818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c1b5974c9d0f4c20fb8772ac26f23ce16d53586778f9ea3948c40c6aa25ba2`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:28:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:28:39 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:28:40 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:29:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Jun 2017 20:53:47 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:54:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:41:36 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:41:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:41:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:41:42 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:41:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:41:43 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:41:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1389576b7193915c15c29271f9e614a8da310670b515796a56b4dc5f73a57f`  
		Last Modified: Wed, 14 Jun 2017 11:42:02 GMT  
		Size: 623.5 KB (623548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9c827a79040e1264c21d4f01788313bc596b05f40466f50754ed64a74a3373`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6039bebe6401b48d530b498bf1d9e24485236ec158062c3f1c5ddb911e00825`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d54515e9bf8bcf2a1f5a6b07a9cc3cc87465fd0abbfb6980654e4e0c362aa9`  
		Last Modified: Wed, 14 Jun 2017 11:41:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2555bf9eff93f9c80bd6bc7c571ada990a825c7dd82598a6452c31b9b002ba`  
		Last Modified: Wed, 14 Jun 2017 11:42:18 GMT  
		Size: 155.8 MB (155783370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905bb5fd1415e252eb071ac7d6562e29c2137cc142b84cf71601ce31e61e829d`  
		Last Modified: Mon, 19 Jun 2017 18:57:59 GMT  
		Size: 67.5 MB (67502990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d305024f9841274ee851d497b792536f50f47c3c4cf51e790ff99c1af094ce7e`  
		Last Modified: Mon, 19 Jun 2017 18:57:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:b42c5a979d4cc540c9af7c34a1d2b8ddb99ad252115017d73aaa7f17a5cb8317
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280456818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c1b5974c9d0f4c20fb8772ac26f23ce16d53586778f9ea3948c40c6aa25ba2`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 07 Jun 2017 17:45:47 GMT
ADD file:a66dc0ceece0e281da4052a3eae5b966d83cc9d3f269ffd3ea29f2b59e4f1463 in / 
# Wed, 07 Jun 2017 17:45:48 GMT
CMD ["bash"]
# Wed, 07 Jun 2017 19:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 12 Jun 2017 17:28:36 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Mon, 12 Jun 2017 17:28:37 GMT
ENV LANG=C.UTF-8
# Mon, 12 Jun 2017 17:28:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 12 Jun 2017 17:28:39 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 12 Jun 2017 17:28:40 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_VERSION=9~b170
# Mon, 12 Jun 2017 17:28:41 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Mon, 12 Jun 2017 17:29:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 13 Jun 2017 20:53:47 GMT
CMD ["gradle"]
# Tue, 13 Jun 2017 20:54:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 19 Jun 2017 18:41:36 GMT
ENV GRADLE_VERSION=4.0
# Mon, 19 Jun 2017 18:41:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 19 Jun 2017 18:41:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 19 Jun 2017 18:41:42 GMT
USER [gradle]
# Mon, 19 Jun 2017 18:41:43 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 19 Jun 2017 18:41:43 GMT
WORKDIR /home/gradle
# Mon, 19 Jun 2017 18:41:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:acc9a3eece3b042d397feae332fe06f3a630b42b002f384d91ad214e5b0c30a9`  
		Last Modified: Wed, 07 Jun 2017 18:04:09 GMT  
		Size: 45.3 MB (45313821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbda5906e878d15a3548f75de4cb0c85ce97fff4c1ee1eb6e6f928122f9756dd`  
		Last Modified: Wed, 07 Jun 2017 20:09:28 GMT  
		Size: 11.2 MB (11232366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1389576b7193915c15c29271f9e614a8da310670b515796a56b4dc5f73a57f`  
		Last Modified: Wed, 14 Jun 2017 11:42:02 GMT  
		Size: 623.5 KB (623548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9c827a79040e1264c21d4f01788313bc596b05f40466f50754ed64a74a3373`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6039bebe6401b48d530b498bf1d9e24485236ec158062c3f1c5ddb911e00825`  
		Last Modified: Wed, 14 Jun 2017 11:41:59 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d54515e9bf8bcf2a1f5a6b07a9cc3cc87465fd0abbfb6980654e4e0c362aa9`  
		Last Modified: Wed, 14 Jun 2017 11:41:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2555bf9eff93f9c80bd6bc7c571ada990a825c7dd82598a6452c31b9b002ba`  
		Last Modified: Wed, 14 Jun 2017 11:42:18 GMT  
		Size: 155.8 MB (155783370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:905bb5fd1415e252eb071ac7d6562e29c2137cc142b84cf71601ce31e61e829d`  
		Last Modified: Mon, 19 Jun 2017 18:57:59 GMT  
		Size: 67.5 MB (67502990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d305024f9841274ee851d497b792536f50f47c3c4cf51e790ff99c1af094ce7e`  
		Last Modified: Mon, 19 Jun 2017 18:57:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
