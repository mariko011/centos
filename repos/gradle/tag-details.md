<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gradle`

-	[`gradle:4.0.1-jdk7`](#gradle401-jdk7)
-	[`gradle:4.0-jdk7`](#gradle40-jdk7)
-	[`gradle:jdk7`](#gradlejdk7)
-	[`gradle:4.0.1-jre7`](#gradle401-jre7)
-	[`gradle:4.0-jre7`](#gradle40-jre7)
-	[`gradle:jre7`](#gradlejre7)
-	[`gradle:4.0.1-jdk7-alpine`](#gradle401-jdk7-alpine)
-	[`gradle:4.0-jdk7-alpine`](#gradle40-jdk7-alpine)
-	[`gradle:jdk7-alpine`](#gradlejdk7-alpine)
-	[`gradle:4.0.1-jre7-alpine`](#gradle401-jre7-alpine)
-	[`gradle:4.0-jre7-alpine`](#gradle40-jre7-alpine)
-	[`gradle:jre7-alpine`](#gradlejre7-alpine)
-	[`gradle:4.0.1-jdk8`](#gradle401-jdk8)
-	[`gradle:4.0-jdk8`](#gradle40-jdk8)
-	[`gradle:jdk8`](#gradlejdk8)
-	[`gradle:4.0.1-jdk`](#gradle401-jdk)
-	[`gradle:4.0-jdk`](#gradle40-jdk)
-	[`gradle:jdk`](#gradlejdk)
-	[`gradle:4.0.1`](#gradle401)
-	[`gradle:4.0`](#gradle40)
-	[`gradle:latest`](#gradlelatest)
-	[`gradle:4.0.1-jre8`](#gradle401-jre8)
-	[`gradle:4.0-jre8`](#gradle40-jre8)
-	[`gradle:jre8`](#gradlejre8)
-	[`gradle:4.0.1-jre`](#gradle401-jre)
-	[`gradle:4.0-jre`](#gradle40-jre)
-	[`gradle:jre`](#gradlejre)
-	[`gradle:4.0.1-jdk8-alpine`](#gradle401-jdk8-alpine)
-	[`gradle:4.0-jdk8-alpine`](#gradle40-jdk8-alpine)
-	[`gradle:jdk8-alpine`](#gradlejdk8-alpine)
-	[`gradle:4.0.1-jdk-alpine`](#gradle401-jdk-alpine)
-	[`gradle:4.0-jdk-alpine`](#gradle40-jdk-alpine)
-	[`gradle:jdk-alpine`](#gradlejdk-alpine)
-	[`gradle:4.0.1-alpine`](#gradle401-alpine)
-	[`gradle:4.0-alpine`](#gradle40-alpine)
-	[`gradle:alpine`](#gradlealpine)
-	[`gradle:4.0.1-jre8-alpine`](#gradle401-jre8-alpine)
-	[`gradle:4.0-jre8-alpine`](#gradle40-jre8-alpine)
-	[`gradle:jre8-alpine`](#gradlejre8-alpine)
-	[`gradle:4.0.1-jre-alpine`](#gradle401-jre-alpine)
-	[`gradle:4.0-jre-alpine`](#gradle40-jre-alpine)
-	[`gradle:jre-alpine`](#gradlejre-alpine)
-	[`gradle:4.0.1-jdk9`](#gradle401-jdk9)
-	[`gradle:4.0-jdk9`](#gradle40-jdk9)
-	[`gradle:jdk9`](#gradlejdk9)
-	[`gradle:4.0.1-jre9`](#gradle401-jre9)
-	[`gradle:4.0-jre9`](#gradle40-jre9)
-	[`gradle:jre9`](#gradlejre9)

## `gradle:4.0.1-jdk7`

```console
$ docker pull gradle@sha256:18b9e7f0ed10a5185187d2d956d72e6877795aff181e71fb7ae7aa13cc0622ac
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jdk7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.2 MB (370161309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d17786f24515fd4c3049a405481f80326682247661b0824ed5be051c82645b8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:55:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:55:35 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 03:55:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 03:55:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 03:55:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 07 Jul 2017 03:55:41 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 03:55:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:02:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:25:27 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:27 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:33 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:33 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:34 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:25:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:c6575234aef399808d6e3b63e57255301698ec6b1d5e62994f2df6605eed4e24`  
		Last Modified: Fri, 07 Jul 2017 03:13:58 GMT  
		Size: 43.2 MB (43227586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c75b5899fb3e4b5497889042e296615af0edcfebb0a8b5c812d3663f4cb0b`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 594.4 KB (594427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eba5b9a8bb6862122e3862474fa79f971d937bf4faf45bd49e306f5afb4cdf`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c91d0c548004610a5e5f68263f8a09284040f4c8064d55b96e6252ee3db2ab`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69aca1ddb1ed3e963227778a9f9fd9bb942ded57788f09c4ef55487a3502ca`  
		Last Modified: Fri, 21 Jul 2017 22:24:36 GMT  
		Size: 187.0 MB (186956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0e6e1750e659d1aad8e1eb123830a23fe8215ae0caabec57ae5e5fe1f3dca9`  
		Last Modified: Sat, 22 Jul 2017 01:54:45 GMT  
		Size: 67.5 MB (67502954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be59f497ca5d102844be3d3b29c6d9942179cd223b0fd57a4167ebb3fcc0d98`  
		Last Modified: Sat, 22 Jul 2017 01:54:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jdk7`

```console
$ docker pull gradle@sha256:18b9e7f0ed10a5185187d2d956d72e6877795aff181e71fb7ae7aa13cc0622ac
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jdk7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.2 MB (370161309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d17786f24515fd4c3049a405481f80326682247661b0824ed5be051c82645b8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:55:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:55:35 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 03:55:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 03:55:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 03:55:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 07 Jul 2017 03:55:41 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 03:55:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:02:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:25:27 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:27 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:33 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:33 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:34 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:25:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:c6575234aef399808d6e3b63e57255301698ec6b1d5e62994f2df6605eed4e24`  
		Last Modified: Fri, 07 Jul 2017 03:13:58 GMT  
		Size: 43.2 MB (43227586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c75b5899fb3e4b5497889042e296615af0edcfebb0a8b5c812d3663f4cb0b`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 594.4 KB (594427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eba5b9a8bb6862122e3862474fa79f971d937bf4faf45bd49e306f5afb4cdf`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c91d0c548004610a5e5f68263f8a09284040f4c8064d55b96e6252ee3db2ab`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69aca1ddb1ed3e963227778a9f9fd9bb942ded57788f09c4ef55487a3502ca`  
		Last Modified: Fri, 21 Jul 2017 22:24:36 GMT  
		Size: 187.0 MB (186956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0e6e1750e659d1aad8e1eb123830a23fe8215ae0caabec57ae5e5fe1f3dca9`  
		Last Modified: Sat, 22 Jul 2017 01:54:45 GMT  
		Size: 67.5 MB (67502954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be59f497ca5d102844be3d3b29c6d9942179cd223b0fd57a4167ebb3fcc0d98`  
		Last Modified: Sat, 22 Jul 2017 01:54:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7`

```console
$ docker pull gradle@sha256:18b9e7f0ed10a5185187d2d956d72e6877795aff181e71fb7ae7aa13cc0622ac
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.2 MB (370161309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d17786f24515fd4c3049a405481f80326682247661b0824ed5be051c82645b8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:12:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:55:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 03:55:35 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 03:55:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 03:55:39 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 03:55:40 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 07 Jul 2017 03:55:41 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 03:55:42 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:02:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:25:27 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:27 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:27 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:33 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:33 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:34 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:25:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:c6575234aef399808d6e3b63e57255301698ec6b1d5e62994f2df6605eed4e24`  
		Last Modified: Fri, 07 Jul 2017 03:13:58 GMT  
		Size: 43.2 MB (43227586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368c75b5899fb3e4b5497889042e296615af0edcfebb0a8b5c812d3663f4cb0b`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 594.4 KB (594427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eba5b9a8bb6862122e3862474fa79f971d937bf4faf45bd49e306f5afb4cdf`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c91d0c548004610a5e5f68263f8a09284040f4c8064d55b96e6252ee3db2ab`  
		Last Modified: Fri, 07 Jul 2017 06:00:25 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e69aca1ddb1ed3e963227778a9f9fd9bb942ded57788f09c4ef55487a3502ca`  
		Last Modified: Fri, 21 Jul 2017 22:24:36 GMT  
		Size: 187.0 MB (186956659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0e6e1750e659d1aad8e1eb123830a23fe8215ae0caabec57ae5e5fe1f3dca9`  
		Last Modified: Sat, 22 Jul 2017 01:54:45 GMT  
		Size: 67.5 MB (67502954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8be59f497ca5d102844be3d3b29c6d9942179cd223b0fd57a4167ebb3fcc0d98`  
		Last Modified: Sat, 22 Jul 2017 01:54:39 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jre7`

```console
$ docker pull gradle@sha256:0d2ef6e1346857c9a688c742e1df4eaaaa9b6b5258f4040a831007d206a611fe
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218652222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5c1748b14a43f1762d9e64cf0caf9dee889f27d2e3d9a8274a37cda280d4f8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:25:40 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:40 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:44 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:45 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:25:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d7cb22d807c9ce6be16fa0a8a37b552b015d4f92015ea6d91610fb2ba72dc`  
		Last Modified: Sat, 22 Jul 2017 01:55:11 GMT  
		Size: 67.5 MB (67502953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dec4603d5d50fa2499b2c92481892e3cea241ab29a10621bc373c5246f55066`  
		Last Modified: Sat, 22 Jul 2017 01:55:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jre7`

```console
$ docker pull gradle@sha256:0d2ef6e1346857c9a688c742e1df4eaaaa9b6b5258f4040a831007d206a611fe
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218652222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5c1748b14a43f1762d9e64cf0caf9dee889f27d2e3d9a8274a37cda280d4f8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:25:40 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:40 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:44 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:45 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:25:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d7cb22d807c9ce6be16fa0a8a37b552b015d4f92015ea6d91610fb2ba72dc`  
		Last Modified: Sat, 22 Jul 2017 01:55:11 GMT  
		Size: 67.5 MB (67502953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dec4603d5d50fa2499b2c92481892e3cea241ab29a10621bc373c5246f55066`  
		Last Modified: Sat, 22 Jul 2017 01:55:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:0d2ef6e1346857c9a688c742e1df4eaaaa9b6b5258f4040a831007d206a611fe
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218652222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c5c1748b14a43f1762d9e64cf0caf9dee889f27d2e3d9a8274a37cda280d4f8`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:13:32 GMT
ADD file:9c48682ff75c756544d4491472081a078edf5dd0bb5038d1cb850a1f9c480e3e in / 
# Tue, 20 Jun 2017 20:13:34 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:13:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:13:47 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:13:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:13:50 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:13:51 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 07 Jul 2017 05:13:53 GMT
ENV JAVA_VERSION=7u131
# Fri, 07 Jul 2017 05:13:54 GMT
ENV JAVA_DEBIAN_VERSION=7u131-2.6.9-2~deb8u1
# Fri, 21 Jul 2017 22:07:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:25:40 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:40 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:44 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:45 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:45 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:25:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:0d17d95ac33c9bd457ba04ae695a2c9be2454e0ada0f6ad2f4cf03d133db88ba`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 568.5 KB (568534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ca3b17351aa7a21c0aa4e740dd4a5d5e52b87fc30341551c5336b96dea336`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a62e7f41ccfe5b9a9f6b4dbd83def9df46badd316160f7e7881a6d7d7436e51`  
		Last Modified: Fri, 07 Jul 2017 06:12:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e99d707e2d2a683776105cbeb0ba0c64e360bc6bb7985d3b0187476c51971`  
		Last Modified: Fri, 21 Jul 2017 22:27:25 GMT  
		Size: 78.7 MB (78701050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d7cb22d807c9ce6be16fa0a8a37b552b015d4f92015ea6d91610fb2ba72dc`  
		Last Modified: Sat, 22 Jul 2017 01:55:11 GMT  
		Size: 67.5 MB (67502953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dec4603d5d50fa2499b2c92481892e3cea241ab29a10621bc373c5246f55066`  
		Last Modified: Sat, 22 Jul 2017 01:55:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jdk7-alpine`

```console
$ docker pull gradle@sha256:b645173aa8ad09fb0cb4389d29d780623aef78f801615c0fb1ae8f64052989cc
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce0e28a4c685c38adf5199bad7708e8450312b098003615c3b96736afa17dd`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:03:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 28 Jun 2017 20:03:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:03:33 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:03:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:03:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:58 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:38:23 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:38:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:38:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:38:33 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:38:34 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:38:34 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:38:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a811e780433fcfc7fa469d3f89d1cb8d81b089d3e724025fb4d4eb04e45b3afc`  
		Last Modified: Thu, 29 Jun 2017 23:10:39 GMT  
		Size: 77.4 MB (77430872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381a796912de55fa5d1d430cd6d195fd6809d6c95e93ccd2f7e75b43bec8bea`  
		Last Modified: Thu, 13 Jul 2017 16:43:05 GMT  
		Size: 69.0 MB (68954809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1416967111defb76caab875e3158574eebfb63188188f05464f80884b4c71309`  
		Last Modified: Thu, 13 Jul 2017 16:42:59 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jdk7-alpine`

```console
$ docker pull gradle@sha256:b645173aa8ad09fb0cb4389d29d780623aef78f801615c0fb1ae8f64052989cc
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce0e28a4c685c38adf5199bad7708e8450312b098003615c3b96736afa17dd`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:03:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 28 Jun 2017 20:03:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:03:33 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:03:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:03:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:58 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:38:23 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:38:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:38:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:38:33 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:38:34 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:38:34 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:38:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a811e780433fcfc7fa469d3f89d1cb8d81b089d3e724025fb4d4eb04e45b3afc`  
		Last Modified: Thu, 29 Jun 2017 23:10:39 GMT  
		Size: 77.4 MB (77430872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381a796912de55fa5d1d430cd6d195fd6809d6c95e93ccd2f7e75b43bec8bea`  
		Last Modified: Thu, 13 Jul 2017 16:43:05 GMT  
		Size: 69.0 MB (68954809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1416967111defb76caab875e3158574eebfb63188188f05464f80884b4c71309`  
		Last Modified: Thu, 13 Jul 2017 16:42:59 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:b645173aa8ad09fb0cb4389d29d780623aef78f801615c0fb1ae8f64052989cc
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bce0e28a4c685c38adf5199bad7708e8450312b098003615c3b96736afa17dd`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:03:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Wed, 28 Jun 2017 20:03:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:03:33 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:03:34 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:03:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:58 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:38:23 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:38:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:38:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:38:33 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:38:34 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:38:34 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:38:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a811e780433fcfc7fa469d3f89d1cb8d81b089d3e724025fb4d4eb04e45b3afc`  
		Last Modified: Thu, 29 Jun 2017 23:10:39 GMT  
		Size: 77.4 MB (77430872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381a796912de55fa5d1d430cd6d195fd6809d6c95e93ccd2f7e75b43bec8bea`  
		Last Modified: Thu, 13 Jul 2017 16:43:05 GMT  
		Size: 69.0 MB (68954809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1416967111defb76caab875e3158574eebfb63188188f05464f80884b4c71309`  
		Last Modified: Thu, 13 Jul 2017 16:42:59 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jre7-alpine`

```console
$ docker pull gradle@sha256:b745716c9dfc91ef822edf21e01296c86d5cbc98344d944b677537ce5ce4e691
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132067861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767edaa9bd8d191f2219b017c630357c0b4dff106bb79ace2894147b9ffd27d7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:31:33 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:31:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:38:44 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:38:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:39:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:39:09 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:39:09 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:39:10 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:39:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee2c62f8909c5407a42477d5e77cacad7acd2d41ffdcf6323bc105277491811`  
		Last Modified: Thu, 13 Jul 2017 16:44:03 GMT  
		Size: 68.9 MB (68946812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67f554a3fa28bd25c47dfbc09c51a71428c9294c9a8dccef83e164ec48b08cb`  
		Last Modified: Thu, 13 Jul 2017 16:43:50 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jre7-alpine`

```console
$ docker pull gradle@sha256:b745716c9dfc91ef822edf21e01296c86d5cbc98344d944b677537ce5ce4e691
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132067861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767edaa9bd8d191f2219b017c630357c0b4dff106bb79ace2894147b9ffd27d7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:31:33 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:31:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:38:44 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:38:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:39:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:39:09 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:39:09 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:39:10 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:39:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee2c62f8909c5407a42477d5e77cacad7acd2d41ffdcf6323bc105277491811`  
		Last Modified: Thu, 13 Jul 2017 16:44:03 GMT  
		Size: 68.9 MB (68946812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67f554a3fa28bd25c47dfbc09c51a71428c9294c9a8dccef83e164ec48b08cb`  
		Last Modified: Thu, 13 Jul 2017 16:43:50 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:b745716c9dfc91ef822edf21e01296c86d5cbc98344d944b677537ce5ce4e691
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132067861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:767edaa9bd8d191f2219b017c630357c0b4dff106bb79ace2894147b9ffd27d7`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 28 Jun 2017 20:04:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 28 Jun 2017 20:04:10 GMT
ENV JAVA_VERSION=7u131
# Wed, 28 Jun 2017 20:04:11 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Wed, 28 Jun 2017 20:04:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:31:33 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:31:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:38:44 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:38:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:39:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:39:09 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:39:09 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:39:10 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:39:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246e118bc03e95aa14e20c0d7fc28b1fd27196ae60fc83f37c102df1e74a4ef6`  
		Last Modified: Thu, 29 Jun 2017 23:39:45 GMT  
		Size: 61.1 MB (61130280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee2c62f8909c5407a42477d5e77cacad7acd2d41ffdcf6323bc105277491811`  
		Last Modified: Thu, 13 Jul 2017 16:44:03 GMT  
		Size: 68.9 MB (68946812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67f554a3fa28bd25c47dfbc09c51a71428c9294c9a8dccef83e164ec48b08cb`  
		Last Modified: Thu, 13 Jul 2017 16:43:50 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jdk8`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jdk8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jdk8`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jdk8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jdk`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jdk`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:e682768b128df977a1e99bc73b9f80a454d7d9769ea5e45b7869dd4b402c3bf2
```

-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362209637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e395b48c270787549d9719f900e985d9c0717f1d96b9c67034f50c16ab930356`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 22:31:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:11:29 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:11:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:11:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 06 Jul 2017 23:11:34 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:11:35 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:11:36 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:10:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:10:42 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:25:51 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:25:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:25:52 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:25:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:25:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:25:56 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:25:56 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:25:57 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de358416a758e4776153bd86b34fcaa0f31b577b335845b968646e61ac78bf4`  
		Last Modified: Thu, 06 Jul 2017 23:56:47 GMT  
		Size: 50.0 MB (50004119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4049b231edeab7c94920b61f8e95d5ae615893cf7ae7b9d28a670f5e47765ddf`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 660.4 KB (660432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6617c62c7c1089f445af30dda32df5c346c31019acf9077741422a3e4785a537`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa26fbcddb08b7bc5e7847d2cd1bfb54bd4674c892a483341f8d59911cb012c2`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf9eeaccdbef302badbe408271f44e78f77ace907ad645f50e01e0c877a09a16`  
		Last Modified: Fri, 21 Jul 2017 22:29:36 GMT  
		Size: 183.1 MB (183110408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0dbc643791b279d676519e037e59b3ba88b5e4579ab963a4d92fddb7b8017f`  
		Last Modified: Fri, 21 Jul 2017 22:28:52 GMT  
		Size: 272.0 KB (272005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8e0a350d8bcb86045d65f69eb981fb20aea0dde371781a62c38a31dc93d900`  
		Last Modified: Sat, 22 Jul 2017 01:55:59 GMT  
		Size: 67.5 MB (67502450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db77091c1df0907080c3f69ba1484da8db096fec60269ca972278963a4bc31ca`  
		Last Modified: Sat, 22 Jul 2017 01:55:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jre8`

```console
$ docker pull gradle@sha256:2b3b2e44bf0ec9b5936a4f865556eba994cd4da8e0ef6587bdee08a4cb9dc14d
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb759fe7155b4e90382ad246509a1e66e564006f26dfbf743fe065d36d11c69f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:26:06 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:10 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9eb5891664bce02353687a53f057ae37897e47d1548e28034adca93e664abb`  
		Last Modified: Sat, 22 Jul 2017 01:56:50 GMT  
		Size: 67.5 MB (67502423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af7a148c85829fcc54bf653f03d2fcc03c332e9940342ddf95faede9fa9460`  
		Last Modified: Sat, 22 Jul 2017 01:56:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jre8`

```console
$ docker pull gradle@sha256:2b3b2e44bf0ec9b5936a4f865556eba994cd4da8e0ef6587bdee08a4cb9dc14d
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb759fe7155b4e90382ad246509a1e66e564006f26dfbf743fe065d36d11c69f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:26:06 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:10 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9eb5891664bce02353687a53f057ae37897e47d1548e28034adca93e664abb`  
		Last Modified: Sat, 22 Jul 2017 01:56:50 GMT  
		Size: 67.5 MB (67502423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af7a148c85829fcc54bf653f03d2fcc03c332e9940342ddf95faede9fa9460`  
		Last Modified: Sat, 22 Jul 2017 01:56:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:2b3b2e44bf0ec9b5936a4f865556eba994cd4da8e0ef6587bdee08a4cb9dc14d
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb759fe7155b4e90382ad246509a1e66e564006f26dfbf743fe065d36d11c69f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:26:06 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:10 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9eb5891664bce02353687a53f057ae37897e47d1548e28034adca93e664abb`  
		Last Modified: Sat, 22 Jul 2017 01:56:50 GMT  
		Size: 67.5 MB (67502423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af7a148c85829fcc54bf653f03d2fcc03c332e9940342ddf95faede9fa9460`  
		Last Modified: Sat, 22 Jul 2017 01:56:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jre`

```console
$ docker pull gradle@sha256:2b3b2e44bf0ec9b5936a4f865556eba994cd4da8e0ef6587bdee08a4cb9dc14d
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb759fe7155b4e90382ad246509a1e66e564006f26dfbf743fe065d36d11c69f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:26:06 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:10 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9eb5891664bce02353687a53f057ae37897e47d1548e28034adca93e664abb`  
		Last Modified: Sat, 22 Jul 2017 01:56:50 GMT  
		Size: 67.5 MB (67502423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af7a148c85829fcc54bf653f03d2fcc03c332e9940342ddf95faede9fa9460`  
		Last Modified: Sat, 22 Jul 2017 01:56:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jre`

```console
$ docker pull gradle@sha256:2b3b2e44bf0ec9b5936a4f865556eba994cd4da8e0ef6587bdee08a4cb9dc14d
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb759fe7155b4e90382ad246509a1e66e564006f26dfbf743fe065d36d11c69f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:26:06 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:10 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9eb5891664bce02353687a53f057ae37897e47d1548e28034adca93e664abb`  
		Last Modified: Sat, 22 Jul 2017 01:56:50 GMT  
		Size: 67.5 MB (67502423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af7a148c85829fcc54bf653f03d2fcc03c332e9940342ddf95faede9fa9460`  
		Last Modified: Sat, 22 Jul 2017 01:56:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:2b3b2e44bf0ec9b5936a4f865556eba994cd4da8e0ef6587bdee08a4cb9dc14d
```

-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb759fe7155b4e90382ad246509a1e66e564006f26dfbf743fe065d36d11c69f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:24:09 GMT
ADD file:93a0dbb6973bc13e5478292bfe283ff91745ca6e23b6fd3363f0661c45deb1ec in / 
# Tue, 20 Jun 2017 20:24:10 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:21:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 22:30:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Jul 2017 23:51:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Jul 2017 23:51:52 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jul 2017 23:51:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 06 Jul 2017 23:51:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 06 Jul 2017 23:51:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 06 Jul 2017 23:51:56 GMT
ENV JAVA_VERSION=8u131
# Thu, 06 Jul 2017 23:51:57 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-2
# Thu, 06 Jul 2017 23:51:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 21 Jul 2017 22:12:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 21 Jul 2017 22:12:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 22 Jul 2017 01:26:06 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:06 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:10 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:10 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:c75480ad9aafadef6c7faf829ede40cf2fa990c9308d6cd354d53041b01a7cda`  
		Last Modified: Tue, 20 Jun 2017 20:51:29 GMT  
		Size: 45.1 MB (45139825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d67befbc4e6fc58906f99031e8183060a10ee8b4e30cd2a83a942f68760818`  
		Last Modified: Wed, 21 Jun 2017 00:50:08 GMT  
		Size: 11.1 MB (11108544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5d2d0853c76cad76d65745ca5b10e17ffe72647e78616bb28b2fd70e5173ab`  
		Last Modified: Thu, 06 Jul 2017 23:56:33 GMT  
		Size: 4.4 MB (4411344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35d9f711df2316b83c53b250247282e5341b793b2215aea61330153f517d3c0`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 629.4 KB (629397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b9badf7c23ce3b04412ce201ff53c6fef0fb993fd3a26341b690d59510ab9d2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73fd941ef24e10e1412aa5ca44ae8680cdf64faddbb50c71c2f85ecce7c12b5`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d1eaefc75d038af9cebfa8582c7970345d99587b37efb1f069c64ead6fc0050`  
		Last Modified: Fri, 21 Jul 2017 22:33:04 GMT  
		Size: 54.4 MB (54421094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468fa92b91d1f13e589c5869d1561b8da47f2155b8607b94940092bac75fe86`  
		Last Modified: Fri, 21 Jul 2017 22:32:50 GMT  
		Size: 272.1 KB (272055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9eb5891664bce02353687a53f057ae37897e47d1548e28034adca93e664abb`  
		Last Modified: Sat, 22 Jul 2017 01:56:50 GMT  
		Size: 67.5 MB (67502423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0af7a148c85829fcc54bf653f03d2fcc03c332e9940342ddf95faede9fa9460`  
		Last Modified: Sat, 22 Jul 2017 01:56:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jdk8-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jdk8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jdk8-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jdk8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jdk-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jdk-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:14e152e1b35f48df70865f586571e255d13558c0ceb2847a82b308088ff0fcd4
```

-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140960683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7133af06833082f5745d58f98446262066bc93c3e8e0cebaabf8190b0ce8b036`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 28 Jun 2017 20:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:04:48 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:04:49 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:04:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:29:10 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:29:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:01 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:12 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:12 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:13 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86ed68184682c19ccbab7445ae3789b7e8a72ccd4d68b9b64548e0d71c17b15b`  
		Last Modified: Thu, 29 Jun 2017 23:42:08 GMT  
		Size: 70.1 MB (70050180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e44c5f5873c3754db3340d746085670948eff8ab70b4d02e8d66f5ecf96e4d2`  
		Last Modified: Thu, 13 Jul 2017 16:49:29 GMT  
		Size: 68.9 MB (68919733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b99adccd356ee97370d9bc3d2feda078cda14956fea9aed0ef1561c1fcc71790`  
		Last Modified: Thu, 13 Jul 2017 16:49:22 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jre8-alpine`

```console
$ docker pull gradle@sha256:bdaadb938191436936e79aa48b1cd9a0162e2ebc68fd88e103320aca6c9f7f37
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125190988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579aca3538b6dcaf7342f64daf144471ded8e72022b385b53917b4dba223c044`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:30:46 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:30:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:30 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:40 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395fbd4b9c4b2d45c6a9f08da404be576da95b122da1729aab6d28fda32bcc80`  
		Last Modified: Thu, 13 Jul 2017 16:51:52 GMT  
		Size: 68.9 MB (68918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f05bcebd55aff147c7aa2f5b3aabded6ecd934913c23356c8b49fc40e6f776`  
		Last Modified: Thu, 13 Jul 2017 16:51:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jre8-alpine`

```console
$ docker pull gradle@sha256:bdaadb938191436936e79aa48b1cd9a0162e2ebc68fd88e103320aca6c9f7f37
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125190988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579aca3538b6dcaf7342f64daf144471ded8e72022b385b53917b4dba223c044`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:30:46 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:30:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:30 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:40 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395fbd4b9c4b2d45c6a9f08da404be576da95b122da1729aab6d28fda32bcc80`  
		Last Modified: Thu, 13 Jul 2017 16:51:52 GMT  
		Size: 68.9 MB (68918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f05bcebd55aff147c7aa2f5b3aabded6ecd934913c23356c8b49fc40e6f776`  
		Last Modified: Thu, 13 Jul 2017 16:51:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:bdaadb938191436936e79aa48b1cd9a0162e2ebc68fd88e103320aca6c9f7f37
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125190988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579aca3538b6dcaf7342f64daf144471ded8e72022b385b53917b4dba223c044`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:30:46 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:30:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:30 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:40 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395fbd4b9c4b2d45c6a9f08da404be576da95b122da1729aab6d28fda32bcc80`  
		Last Modified: Thu, 13 Jul 2017 16:51:52 GMT  
		Size: 68.9 MB (68918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f05bcebd55aff147c7aa2f5b3aabded6ecd934913c23356c8b49fc40e6f776`  
		Last Modified: Thu, 13 Jul 2017 16:51:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jre-alpine`

```console
$ docker pull gradle@sha256:bdaadb938191436936e79aa48b1cd9a0162e2ebc68fd88e103320aca6c9f7f37
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125190988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579aca3538b6dcaf7342f64daf144471ded8e72022b385b53917b4dba223c044`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:30:46 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:30:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:30 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:40 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395fbd4b9c4b2d45c6a9f08da404be576da95b122da1729aab6d28fda32bcc80`  
		Last Modified: Thu, 13 Jul 2017 16:51:52 GMT  
		Size: 68.9 MB (68918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f05bcebd55aff147c7aa2f5b3aabded6ecd934913c23356c8b49fc40e6f776`  
		Last Modified: Thu, 13 Jul 2017 16:51:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jre-alpine`

```console
$ docker pull gradle@sha256:bdaadb938191436936e79aa48b1cd9a0162e2ebc68fd88e103320aca6c9f7f37
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125190988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579aca3538b6dcaf7342f64daf144471ded8e72022b385b53917b4dba223c044`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:30:46 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:30:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:30 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:40 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395fbd4b9c4b2d45c6a9f08da404be576da95b122da1729aab6d28fda32bcc80`  
		Last Modified: Thu, 13 Jul 2017 16:51:52 GMT  
		Size: 68.9 MB (68918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f05bcebd55aff147c7aa2f5b3aabded6ecd934913c23356c8b49fc40e6f776`  
		Last Modified: Thu, 13 Jul 2017 16:51:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:bdaadb938191436936e79aa48b1cd9a0162e2ebc68fd88e103320aca6c9f7f37
```

-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125190988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:579aca3538b6dcaf7342f64daf144471ded8e72022b385b53917b4dba223c044`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 27 Jun 2017 18:41:51 GMT
ADD file:4583e12bf5caec40b861a3409f2a1624c3f3556cc457edb99c9707f00e779e45 in / 
# Tue, 27 Jun 2017 18:42:16 GMT
CMD ["/bin/sh"]
# Wed, 28 Jun 2017 20:03:29 GMT
ENV LANG=C.UTF-8
# Wed, 28 Jun 2017 20:03:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Jun 2017 20:05:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 28 Jun 2017 20:05:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 28 Jun 2017 20:05:24 GMT
ENV JAVA_VERSION=8u131
# Wed, 28 Jun 2017 20:05:25 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Wed, 28 Jun 2017 20:05:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 29 Jun 2017 02:30:46 GMT
CMD ["gradle"]
# Thu, 29 Jun 2017 02:30:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 13 Jul 2017 16:40:30 GMT
ENV GRADLE_VERSION=4.0.1
# Thu, 13 Jul 2017 16:40:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Thu, 13 Jul 2017 16:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 13 Jul 2017 16:40:40 GMT
USER [gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 13 Jul 2017 16:40:41 GMT
WORKDIR /home/gradle
# Thu, 13 Jul 2017 16:40:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:88286f41530e93dffd4b964e1db22ce4939fffa4a4c665dab8591fbab03d4926`  
		Last Modified: Tue, 27 Jun 2017 18:49:37 GMT  
		Size: 2.0 MB (1990402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009f6e766a1b230e3ead1ccc615aaa6c631e4683ad31333286adb7be86af61fe`  
		Last Modified: Thu, 29 Jun 2017 23:10:25 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132a112fc74afe794084ddf45bf3003110389c78b869bf7a1e052010e2ad85a5`  
		Last Modified: Thu, 29 Jun 2017 23:49:36 GMT  
		Size: 54.3 MB (54281297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:395fbd4b9c4b2d45c6a9f08da404be576da95b122da1729aab6d28fda32bcc80`  
		Last Modified: Thu, 13 Jul 2017 16:51:52 GMT  
		Size: 68.9 MB (68918918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f05bcebd55aff147c7aa2f5b3aabded6ecd934913c23356c8b49fc40e6f776`  
		Last Modified: Thu, 13 Jul 2017 16:51:45 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jdk9`

```console
$ docker pull gradle@sha256:16b75b45e6f6447b56510f0d27a6ca3d94ce9369ec157b7fe2053822bd79dd52
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jdk9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337313977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd5b8afaa620e52b9f46c6e457cd8c61d421d0801e0f8cd86100f65bec42b89`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 01:34:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 01:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:26:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:27:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 07 Jul 2017 05:27:02 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:27:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:27:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:27:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jul 2017 23:27:38 GMT
ENV JAVA_VERSION=9-b177
# Wed, 19 Jul 2017 23:27:39 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Fri, 21 Jul 2017 22:14:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:26:19 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:20 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:25 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:25 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:26 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:d3999d81b5d80519af4924f4ffa9088d684372004fc9380566ee69e32da21b49`  
		Last Modified: Fri, 07 Jul 2017 03:16:29 GMT  
		Size: 4.4 MB (4424150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa058e7e715a6212842c44a104b7cc2f75755d9b6b8dcbde6abb4bb41215fd58`  
		Last Modified: Fri, 07 Jul 2017 03:17:18 GMT  
		Size: 52.9 MB (52871527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd45d96ce63b510cd179a4616a425e8426043aad8bf6f0cbe235e306669a9fe`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 661.2 KB (661167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fe5535b34a526a1b6eb10854c592499d136df1c43cc878aa034dd63e561892`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376fd88566eb93e15f95a7827dc4a94beb398ad982c824bb4cdd2f9363ea4f2b`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d004c5888e78f94c11295676dd9769f67bee0e0b6f7d542bf6874c08c12f323`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd440578515b9a57a150ee95f7b21c90d8597b203a4f3e48b5ccc81f2ad2af4`  
		Last Modified: Fri, 21 Jul 2017 22:35:31 GMT  
		Size: 155.4 MB (155422450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f4b5e0aa5610006b196ee99aba1b0239fdb5c0184889d5a161eb47b2a4d5c`  
		Last Modified: Sat, 22 Jul 2017 01:58:33 GMT  
		Size: 67.5 MB (67502433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27bd8a362e40e41a0402b3dd7380a31fa38e5739bc99f03b3713f5bc0dfcc4f`  
		Last Modified: Sat, 22 Jul 2017 01:58:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jdk9`

```console
$ docker pull gradle@sha256:16b75b45e6f6447b56510f0d27a6ca3d94ce9369ec157b7fe2053822bd79dd52
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jdk9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337313977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd5b8afaa620e52b9f46c6e457cd8c61d421d0801e0f8cd86100f65bec42b89`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 01:34:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 01:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:26:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:27:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 07 Jul 2017 05:27:02 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:27:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:27:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:27:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jul 2017 23:27:38 GMT
ENV JAVA_VERSION=9-b177
# Wed, 19 Jul 2017 23:27:39 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Fri, 21 Jul 2017 22:14:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:26:19 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:20 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:25 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:25 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:26 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:d3999d81b5d80519af4924f4ffa9088d684372004fc9380566ee69e32da21b49`  
		Last Modified: Fri, 07 Jul 2017 03:16:29 GMT  
		Size: 4.4 MB (4424150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa058e7e715a6212842c44a104b7cc2f75755d9b6b8dcbde6abb4bb41215fd58`  
		Last Modified: Fri, 07 Jul 2017 03:17:18 GMT  
		Size: 52.9 MB (52871527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd45d96ce63b510cd179a4616a425e8426043aad8bf6f0cbe235e306669a9fe`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 661.2 KB (661167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fe5535b34a526a1b6eb10854c592499d136df1c43cc878aa034dd63e561892`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376fd88566eb93e15f95a7827dc4a94beb398ad982c824bb4cdd2f9363ea4f2b`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d004c5888e78f94c11295676dd9769f67bee0e0b6f7d542bf6874c08c12f323`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd440578515b9a57a150ee95f7b21c90d8597b203a4f3e48b5ccc81f2ad2af4`  
		Last Modified: Fri, 21 Jul 2017 22:35:31 GMT  
		Size: 155.4 MB (155422450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f4b5e0aa5610006b196ee99aba1b0239fdb5c0184889d5a161eb47b2a4d5c`  
		Last Modified: Sat, 22 Jul 2017 01:58:33 GMT  
		Size: 67.5 MB (67502433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27bd8a362e40e41a0402b3dd7380a31fa38e5739bc99f03b3713f5bc0dfcc4f`  
		Last Modified: Sat, 22 Jul 2017 01:58:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk9`

```console
$ docker pull gradle@sha256:16b75b45e6f6447b56510f0d27a6ca3d94ce9369ec157b7fe2053822bd79dd52
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337313977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecd5b8afaa620e52b9f46c6e457cd8c61d421d0801e0f8cd86100f65bec42b89`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 01:34:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 01:34:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:26:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:27:01 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 07 Jul 2017 05:27:02 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:27:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:27:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:27:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jul 2017 23:27:38 GMT
ENV JAVA_VERSION=9-b177
# Wed, 19 Jul 2017 23:27:39 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Fri, 21 Jul 2017 22:14:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:26:19 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:20 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:25 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:25 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:26 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:d3999d81b5d80519af4924f4ffa9088d684372004fc9380566ee69e32da21b49`  
		Last Modified: Fri, 07 Jul 2017 03:16:29 GMT  
		Size: 4.4 MB (4424150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa058e7e715a6212842c44a104b7cc2f75755d9b6b8dcbde6abb4bb41215fd58`  
		Last Modified: Fri, 07 Jul 2017 03:17:18 GMT  
		Size: 52.9 MB (52871527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd45d96ce63b510cd179a4616a425e8426043aad8bf6f0cbe235e306669a9fe`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 661.2 KB (661167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22fe5535b34a526a1b6eb10854c592499d136df1c43cc878aa034dd63e561892`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376fd88566eb93e15f95a7827dc4a94beb398ad982c824bb4cdd2f9363ea4f2b`  
		Last Modified: Fri, 07 Jul 2017 06:35:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d004c5888e78f94c11295676dd9769f67bee0e0b6f7d542bf6874c08c12f323`  
		Last Modified: Fri, 07 Jul 2017 06:35:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd440578515b9a57a150ee95f7b21c90d8597b203a4f3e48b5ccc81f2ad2af4`  
		Last Modified: Fri, 21 Jul 2017 22:35:31 GMT  
		Size: 155.4 MB (155422450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2f4b5e0aa5610006b196ee99aba1b0239fdb5c0184889d5a161eb47b2a4d5c`  
		Last Modified: Sat, 22 Jul 2017 01:58:33 GMT  
		Size: 67.5 MB (67502433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27bd8a362e40e41a0402b3dd7380a31fa38e5739bc99f03b3713f5bc0dfcc4f`  
		Last Modified: Sat, 22 Jul 2017 01:58:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0.1-jre9`

```console
$ docker pull gradle@sha256:955b4ee3b982bf3794662be23b75491b6b61a0991d2232b0f787debaa1fe2976
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0.1-jre9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284291803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b137d82f51528b57766ec8bc07b92f3e48ff5498e4f1c456dafa0b671560416`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 01:34:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:47:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:47:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 07 Jul 2017 05:47:24 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:47:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:47:27 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:47:28 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jul 2017 23:28:20 GMT
ENV JAVA_VERSION=9-b177
# Wed, 19 Jul 2017 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Fri, 21 Jul 2017 22:16:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:26:32 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:33 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:36 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:36 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:37 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:d3999d81b5d80519af4924f4ffa9088d684372004fc9380566ee69e32da21b49`  
		Last Modified: Fri, 07 Jul 2017 03:16:29 GMT  
		Size: 4.4 MB (4424150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36899e8fd4235bf002a4cae7859880545842458e60b39d2f5ca60edadc459c41`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 629.7 KB (629726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5304abbfd9e75a85067dd08fb0e9e3b9e0dedd4d1a2d0e290d6e26c9c7232ed3`  
		Last Modified: Fri, 07 Jul 2017 06:39:24 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21044b9adfc2d3791ba813b67d134754031ee3f3f8643262e3f2d88afc40be9b`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edc540855c3c0488a1f9d35b51a115e0e4aca4c196830997492d6a82876f033`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6e1ccafbc279b1a773e1fccc1ee142316d2a54bfd74022db9812310925a466`  
		Last Modified: Fri, 21 Jul 2017 22:38:54 GMT  
		Size: 155.3 MB (155303192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c36aca605d25ed946ec55df4c25a95fd67868d0b44bb4d31d4f9d4ca1da78b`  
		Last Modified: Sat, 22 Jul 2017 01:58:56 GMT  
		Size: 67.5 MB (67502482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ff6bc9c07fd561cecb13ccaf875d21da888ebcc6a6276206c02d306bbb3e0`  
		Last Modified: Sat, 22 Jul 2017 01:58:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.0-jre9`

```console
$ docker pull gradle@sha256:955b4ee3b982bf3794662be23b75491b6b61a0991d2232b0f787debaa1fe2976
```

-	Platforms:
	-	linux; amd64

### `gradle:4.0-jre9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284291803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b137d82f51528b57766ec8bc07b92f3e48ff5498e4f1c456dafa0b671560416`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 01:34:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:47:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:47:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 07 Jul 2017 05:47:24 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:47:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:47:27 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:47:28 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jul 2017 23:28:20 GMT
ENV JAVA_VERSION=9-b177
# Wed, 19 Jul 2017 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Fri, 21 Jul 2017 22:16:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:26:32 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:33 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:36 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:36 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:37 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:d3999d81b5d80519af4924f4ffa9088d684372004fc9380566ee69e32da21b49`  
		Last Modified: Fri, 07 Jul 2017 03:16:29 GMT  
		Size: 4.4 MB (4424150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36899e8fd4235bf002a4cae7859880545842458e60b39d2f5ca60edadc459c41`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 629.7 KB (629726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5304abbfd9e75a85067dd08fb0e9e3b9e0dedd4d1a2d0e290d6e26c9c7232ed3`  
		Last Modified: Fri, 07 Jul 2017 06:39:24 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21044b9adfc2d3791ba813b67d134754031ee3f3f8643262e3f2d88afc40be9b`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edc540855c3c0488a1f9d35b51a115e0e4aca4c196830997492d6a82876f033`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6e1ccafbc279b1a773e1fccc1ee142316d2a54bfd74022db9812310925a466`  
		Last Modified: Fri, 21 Jul 2017 22:38:54 GMT  
		Size: 155.3 MB (155303192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c36aca605d25ed946ec55df4c25a95fd67868d0b44bb4d31d4f9d4ca1da78b`  
		Last Modified: Sat, 22 Jul 2017 01:58:56 GMT  
		Size: 67.5 MB (67502482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ff6bc9c07fd561cecb13ccaf875d21da888ebcc6a6276206c02d306bbb3e0`  
		Last Modified: Sat, 22 Jul 2017 01:58:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:955b4ee3b982bf3794662be23b75491b6b61a0991d2232b0f787debaa1fe2976
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284291803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b137d82f51528b57766ec8bc07b92f3e48ff5498e4f1c456dafa0b671560416`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 01:34:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg2 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 07 Jul 2017 05:47:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Jul 2017 05:47:23 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 07 Jul 2017 05:47:24 GMT
ENV LANG=C.UTF-8
# Fri, 07 Jul 2017 05:47:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 07 Jul 2017 05:47:27 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 07 Jul 2017 05:47:28 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 19 Jul 2017 23:28:20 GMT
ENV JAVA_VERSION=9-b177
# Wed, 19 Jul 2017 23:28:20 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Fri, 21 Jul 2017 22:16:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 22 Jul 2017 01:26:32 GMT
CMD ["gradle"]
# Sat, 22 Jul 2017 01:26:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 22 Jul 2017 01:26:33 GMT
ENV GRADLE_VERSION=4.0.1
# Sat, 22 Jul 2017 01:26:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
# Sat, 22 Jul 2017 01:26:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 22 Jul 2017 01:26:36 GMT
USER [gradle]
# Sat, 22 Jul 2017 01:26:36 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 22 Jul 2017 01:26:37 GMT
WORKDIR /home/gradle
# Sat, 22 Jul 2017 01:26:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d717e46200d1359893f891dab047fdab98784143ac76861b53c50dbd03b44fd4
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
	-	`sha256:d3999d81b5d80519af4924f4ffa9088d684372004fc9380566ee69e32da21b49`  
		Last Modified: Fri, 07 Jul 2017 03:16:29 GMT  
		Size: 4.4 MB (4424150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36899e8fd4235bf002a4cae7859880545842458e60b39d2f5ca60edadc459c41`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 629.7 KB (629726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5304abbfd9e75a85067dd08fb0e9e3b9e0dedd4d1a2d0e290d6e26c9c7232ed3`  
		Last Modified: Fri, 07 Jul 2017 06:39:24 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21044b9adfc2d3791ba813b67d134754031ee3f3f8643262e3f2d88afc40be9b`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2edc540855c3c0488a1f9d35b51a115e0e4aca4c196830997492d6a82876f033`  
		Last Modified: Fri, 07 Jul 2017 06:39:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6e1ccafbc279b1a773e1fccc1ee142316d2a54bfd74022db9812310925a466`  
		Last Modified: Fri, 21 Jul 2017 22:38:54 GMT  
		Size: 155.3 MB (155303192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c36aca605d25ed946ec55df4c25a95fd67868d0b44bb4d31d4f9d4ca1da78b`  
		Last Modified: Sat, 22 Jul 2017 01:58:56 GMT  
		Size: 67.5 MB (67502482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3ff6bc9c07fd561cecb13ccaf875d21da888ebcc6a6276206c02d306bbb3e0`  
		Last Modified: Sat, 22 Jul 2017 01:58:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
