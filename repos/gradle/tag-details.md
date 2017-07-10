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
$ docker pull gradle@sha256:586c4560b5ceac7aca8d02a03c2c81502c263d26b31500010f548a8b181b35d8
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.2 MB (370162995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f5e6314cc5cb75218574a5569e0c7dc62ad1802e6dd8f9582158f054b91b952`
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
# Fri, 07 Jul 2017 04:00:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 08 Jul 2017 13:25:24 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:25 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:29 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:30 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:30 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:35 GMT
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
	-	`sha256:688c871363a47c4dfa149a90334a829390595400e21cdec4153b361844d3be41`  
		Last Modified: Fri, 07 Jul 2017 06:02:06 GMT  
		Size: 187.0 MB (186958116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6953fc96f0948262ef17a430a3739b561f45c1a90b21572c810c20df85157a4`  
		Last Modified: Mon, 10 Jul 2017 22:56:43 GMT  
		Size: 67.5 MB (67503184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53eaa82728825754730f1ed063d443811e18e76f567e6673fdc22dded7bd81f0`  
		Last Modified: Mon, 10 Jul 2017 22:56:36 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7`

```console
$ docker pull gradle@sha256:586c4560b5ceac7aca8d02a03c2c81502c263d26b31500010f548a8b181b35d8
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.2 MB (370162995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f5e6314cc5cb75218574a5569e0c7dc62ad1802e6dd8f9582158f054b91b952`
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
# Fri, 07 Jul 2017 04:00:12 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 08 Jul 2017 13:25:24 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:25 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:25 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:29 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:30 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:30 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:35 GMT
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
	-	`sha256:688c871363a47c4dfa149a90334a829390595400e21cdec4153b361844d3be41`  
		Last Modified: Fri, 07 Jul 2017 06:02:06 GMT  
		Size: 187.0 MB (186958116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6953fc96f0948262ef17a430a3739b561f45c1a90b21572c810c20df85157a4`  
		Last Modified: Mon, 10 Jul 2017 22:56:43 GMT  
		Size: 67.5 MB (67503184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53eaa82728825754730f1ed063d443811e18e76f567e6673fdc22dded7bd81f0`  
		Last Modified: Mon, 10 Jul 2017 22:56:36 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre7`

```console
$ docker pull gradle@sha256:104c13c99215960f797ba1324ea4b12cf594d69f12e944f44796fe2b5250c895
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218646617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f652ffe4638f4b9e2699a574241a29d1a005806ecbd72981834b72b7f0e68d56`
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
# Fri, 07 Jul 2017 05:15:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 08 Jul 2017 13:26:30 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:26:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:26:31 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:26:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:26:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:26:37 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:26:38 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:26:38 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:26:43 GMT
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
	-	`sha256:36c7db8ce719d23f6df92cb6eb321bd214c9e408e4850e5b4f937b808e91ec7f`  
		Last Modified: Fri, 07 Jul 2017 06:12:32 GMT  
		Size: 78.7 MB (78695179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80659025d8e47e76e7ed0d1a427a4a23d4dc2d417c4f814f4f4f493ec43c9f2`  
		Last Modified: Mon, 10 Jul 2017 22:57:15 GMT  
		Size: 67.5 MB (67503220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9241d5d5eb4768da5b65412c33c3aa67247d9e5e7124f87c6a6626d5a2faffd9`  
		Last Modified: Mon, 10 Jul 2017 22:57:08 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:104c13c99215960f797ba1324ea4b12cf594d69f12e944f44796fe2b5250c895
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218646617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f652ffe4638f4b9e2699a574241a29d1a005806ecbd72981834b72b7f0e68d56`
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
# Fri, 07 Jul 2017 05:15:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 08 Jul 2017 13:26:30 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:26:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:26:31 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:26:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:26:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:26:37 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:26:38 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:26:38 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:26:43 GMT
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
	-	`sha256:36c7db8ce719d23f6df92cb6eb321bd214c9e408e4850e5b4f937b808e91ec7f`  
		Last Modified: Fri, 07 Jul 2017 06:12:32 GMT  
		Size: 78.7 MB (78695179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80659025d8e47e76e7ed0d1a427a4a23d4dc2d417c4f814f4f4f493ec43c9f2`  
		Last Modified: Mon, 10 Jul 2017 22:57:15 GMT  
		Size: 67.5 MB (67503220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9241d5d5eb4768da5b65412c33c3aa67247d9e5e7124f87c6a6626d5a2faffd9`  
		Last Modified: Mon, 10 Jul 2017 22:57:08 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk7-alpine`

```console
$ docker pull gradle@sha256:085bef49bd3b46e81d55f169cb89fd47b0e8186ca1323e98d361cba17d526851
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28527e76c57553cb8f1b7204e9033df55b9564254f8a9ace1c199eee24052b`
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
# Thu, 29 Jun 2017 02:30:00 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:30:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:30:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:30:12 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:30:13 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:30:14 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:30:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:6cc67c23aae2fe03a25fbe5e9d8c7bb648d61cf698a81cd6766cdc3006eb2875`  
		Last Modified: Fri, 30 Jun 2017 16:19:53 GMT  
		Size: 69.0 MB (68955183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfa6974baf889e621fc8bcaecbc4004c45bdaa7408f46fc79bd2db67c7490bc`  
		Last Modified: Fri, 30 Jun 2017 16:19:40 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:085bef49bd3b46e81d55f169cb89fd47b0e8186ca1323e98d361cba17d526851
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148376824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b28527e76c57553cb8f1b7204e9033df55b9564254f8a9ace1c199eee24052b`
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
# Thu, 29 Jun 2017 02:30:00 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:30:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:30:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:30:12 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:30:13 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:30:14 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:30:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:6cc67c23aae2fe03a25fbe5e9d8c7bb648d61cf698a81cd6766cdc3006eb2875`  
		Last Modified: Fri, 30 Jun 2017 16:19:53 GMT  
		Size: 69.0 MB (68955183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcfa6974baf889e621fc8bcaecbc4004c45bdaa7408f46fc79bd2db67c7490bc`  
		Last Modified: Fri, 30 Jun 2017 16:19:40 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre7-alpine`

```console
$ docker pull gradle@sha256:94e4ed6ee88af0577e402321a9fe7745b0fa5c58a2cd4895d1283f17886b390f
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132067938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b320ad0165ed2ecd53ae741b1f01899780dc90cfd58d65a64b808e14bbd233`
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
# Thu, 29 Jun 2017 02:31:34 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:31:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:31:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:31:49 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:31:50 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:31:51 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:31:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:7cfad9848af677c86aa3cb927c5758c978bdd576baa7898aac4d921f03a6f6d8`  
		Last Modified: Fri, 30 Jun 2017 16:26:25 GMT  
		Size: 68.9 MB (68946889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9f2b0d34397a3759273cab7af86e923b84c1276bd6ed6141d8718304ef522a`  
		Last Modified: Fri, 30 Jun 2017 16:26:17 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:94e4ed6ee88af0577e402321a9fe7745b0fa5c58a2cd4895d1283f17886b390f
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132067938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b320ad0165ed2ecd53ae741b1f01899780dc90cfd58d65a64b808e14bbd233`
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
# Thu, 29 Jun 2017 02:31:34 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:31:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:31:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:31:49 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:31:50 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:31:51 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:31:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:7cfad9848af677c86aa3cb927c5758c978bdd576baa7898aac4d921f03a6f6d8`  
		Last Modified: Fri, 30 Jun 2017 16:26:25 GMT  
		Size: 68.9 MB (68946889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9f2b0d34397a3759273cab7af86e923b84c1276bd6ed6141d8718304ef522a`  
		Last Modified: Fri, 30 Jun 2017 16:26:17 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk8`

```console
$ docker pull gradle@sha256:f7211b6fe7950f7b18563ef8f8400a0fdf90849439a74257b264587922741fbf
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362208968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc24a6d3781acefaaa786ca0071005906a2aaae5762f7e1d029e67a868966da`
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
# Thu, 06 Jul 2017 23:12:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:12:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:25:08 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:13 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:13 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:14 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:d5b28339f9cb0b6aef1e23a0d32b8bf6da5ff989a4a1191a36f3a9d3d9630ce2`  
		Last Modified: Thu, 06 Jul 2017 23:57:10 GMT  
		Size: 183.1 MB (183109251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b25fab67abb2ebdc9eff8023a7cc5b1efc7cd956e1f05ba4af94389992040`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 272.0 KB (271977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee158369dcbbe90e6866b4a19e9050c3cfcdabbaf7b9b288f77de993e51a4d4e`  
		Last Modified: Mon, 10 Jul 2017 22:58:22 GMT  
		Size: 67.5 MB (67502967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c574ec7dc5e0d4844e6132245ef74b1f5b1c8ea1b651732c780ca5a3eabd360`  
		Last Modified: Mon, 10 Jul 2017 22:58:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:f7211b6fe7950f7b18563ef8f8400a0fdf90849439a74257b264587922741fbf
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362208968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc24a6d3781acefaaa786ca0071005906a2aaae5762f7e1d029e67a868966da`
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
# Thu, 06 Jul 2017 23:12:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:12:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:25:08 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:13 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:13 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:14 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:d5b28339f9cb0b6aef1e23a0d32b8bf6da5ff989a4a1191a36f3a9d3d9630ce2`  
		Last Modified: Thu, 06 Jul 2017 23:57:10 GMT  
		Size: 183.1 MB (183109251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b25fab67abb2ebdc9eff8023a7cc5b1efc7cd956e1f05ba4af94389992040`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 272.0 KB (271977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee158369dcbbe90e6866b4a19e9050c3cfcdabbaf7b9b288f77de993e51a4d4e`  
		Last Modified: Mon, 10 Jul 2017 22:58:22 GMT  
		Size: 67.5 MB (67502967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c574ec7dc5e0d4844e6132245ef74b1f5b1c8ea1b651732c780ca5a3eabd360`  
		Last Modified: Mon, 10 Jul 2017 22:58:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk`

```console
$ docker pull gradle@sha256:f7211b6fe7950f7b18563ef8f8400a0fdf90849439a74257b264587922741fbf
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362208968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc24a6d3781acefaaa786ca0071005906a2aaae5762f7e1d029e67a868966da`
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
# Thu, 06 Jul 2017 23:12:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:12:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:25:08 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:13 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:13 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:14 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:d5b28339f9cb0b6aef1e23a0d32b8bf6da5ff989a4a1191a36f3a9d3d9630ce2`  
		Last Modified: Thu, 06 Jul 2017 23:57:10 GMT  
		Size: 183.1 MB (183109251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b25fab67abb2ebdc9eff8023a7cc5b1efc7cd956e1f05ba4af94389992040`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 272.0 KB (271977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee158369dcbbe90e6866b4a19e9050c3cfcdabbaf7b9b288f77de993e51a4d4e`  
		Last Modified: Mon, 10 Jul 2017 22:58:22 GMT  
		Size: 67.5 MB (67502967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c574ec7dc5e0d4844e6132245ef74b1f5b1c8ea1b651732c780ca5a3eabd360`  
		Last Modified: Mon, 10 Jul 2017 22:58:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:f7211b6fe7950f7b18563ef8f8400a0fdf90849439a74257b264587922741fbf
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362208968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc24a6d3781acefaaa786ca0071005906a2aaae5762f7e1d029e67a868966da`
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
# Thu, 06 Jul 2017 23:12:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:12:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:25:08 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:13 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:13 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:14 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:d5b28339f9cb0b6aef1e23a0d32b8bf6da5ff989a4a1191a36f3a9d3d9630ce2`  
		Last Modified: Thu, 06 Jul 2017 23:57:10 GMT  
		Size: 183.1 MB (183109251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b25fab67abb2ebdc9eff8023a7cc5b1efc7cd956e1f05ba4af94389992040`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 272.0 KB (271977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee158369dcbbe90e6866b4a19e9050c3cfcdabbaf7b9b288f77de993e51a4d4e`  
		Last Modified: Mon, 10 Jul 2017 22:58:22 GMT  
		Size: 67.5 MB (67502967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c574ec7dc5e0d4844e6132245ef74b1f5b1c8ea1b651732c780ca5a3eabd360`  
		Last Modified: Mon, 10 Jul 2017 22:58:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5`

```console
$ docker pull gradle@sha256:f7211b6fe7950f7b18563ef8f8400a0fdf90849439a74257b264587922741fbf
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362208968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc24a6d3781acefaaa786ca0071005906a2aaae5762f7e1d029e67a868966da`
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
# Thu, 06 Jul 2017 23:12:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:12:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:25:08 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:13 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:13 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:14 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:d5b28339f9cb0b6aef1e23a0d32b8bf6da5ff989a4a1191a36f3a9d3d9630ce2`  
		Last Modified: Thu, 06 Jul 2017 23:57:10 GMT  
		Size: 183.1 MB (183109251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b25fab67abb2ebdc9eff8023a7cc5b1efc7cd956e1f05ba4af94389992040`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 272.0 KB (271977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee158369dcbbe90e6866b4a19e9050c3cfcdabbaf7b9b288f77de993e51a4d4e`  
		Last Modified: Mon, 10 Jul 2017 22:58:22 GMT  
		Size: 67.5 MB (67502967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c574ec7dc5e0d4844e6132245ef74b1f5b1c8ea1b651732c780ca5a3eabd360`  
		Last Modified: Mon, 10 Jul 2017 22:58:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:f7211b6fe7950f7b18563ef8f8400a0fdf90849439a74257b264587922741fbf
```

-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362208968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fc24a6d3781acefaaa786ca0071005906a2aaae5762f7e1d029e67a868966da`
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
# Thu, 06 Jul 2017 23:12:29 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:12:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:25:08 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:25:09 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:25:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:25:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:25:13 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:25:13 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:25:14 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:25:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:d5b28339f9cb0b6aef1e23a0d32b8bf6da5ff989a4a1191a36f3a9d3d9630ce2`  
		Last Modified: Thu, 06 Jul 2017 23:57:10 GMT  
		Size: 183.1 MB (183109251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7b25fab67abb2ebdc9eff8023a7cc5b1efc7cd956e1f05ba4af94389992040`  
		Last Modified: Thu, 06 Jul 2017 23:56:30 GMT  
		Size: 272.0 KB (271977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee158369dcbbe90e6866b4a19e9050c3cfcdabbaf7b9b288f77de993e51a4d4e`  
		Last Modified: Mon, 10 Jul 2017 22:58:22 GMT  
		Size: 67.5 MB (67502967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c574ec7dc5e0d4844e6132245ef74b1f5b1c8ea1b651732c780ca5a3eabd360`  
		Last Modified: Mon, 10 Jul 2017 22:58:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre8`

```console
$ docker pull gradle@sha256:72cc497b55f2dbb68adbbdc825b743cfc2c78111ad487310211ea69664e64c1d
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd5355592017a47dc3eac776fa39f16f812527dce40b50403848d3b70b3a023`
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
# Thu, 06 Jul 2017 23:52:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:52:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:26:11 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:26:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:26:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:26:15 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:26:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:119baa503f8c24ae4c15d151ce32aba28e7d3bfcb355135fb3e719e0f5924932`  
		Last Modified: Fri, 07 Jul 2017 00:07:14 GMT  
		Size: 54.4 MB (54420897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fd7e5b1f07f548997ae056745e69a3b0058bb38a7b59c5e6fb7ee0edf5d5b2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 272.0 KB (272015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab88c10c7d538a02f9f20fb703a4414591ee3623c372befaadee8994f52231`  
		Last Modified: Mon, 10 Jul 2017 22:59:30 GMT  
		Size: 67.5 MB (67502982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ead9e98d1eba9e432957924ea9b620524882786134de04bcfb1f9dc5d3228e`  
		Last Modified: Mon, 10 Jul 2017 22:59:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:72cc497b55f2dbb68adbbdc825b743cfc2c78111ad487310211ea69664e64c1d
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd5355592017a47dc3eac776fa39f16f812527dce40b50403848d3b70b3a023`
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
# Thu, 06 Jul 2017 23:52:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:52:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:26:11 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:26:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:26:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:26:15 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:26:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:119baa503f8c24ae4c15d151ce32aba28e7d3bfcb355135fb3e719e0f5924932`  
		Last Modified: Fri, 07 Jul 2017 00:07:14 GMT  
		Size: 54.4 MB (54420897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fd7e5b1f07f548997ae056745e69a3b0058bb38a7b59c5e6fb7ee0edf5d5b2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 272.0 KB (272015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab88c10c7d538a02f9f20fb703a4414591ee3623c372befaadee8994f52231`  
		Last Modified: Mon, 10 Jul 2017 22:59:30 GMT  
		Size: 67.5 MB (67502982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ead9e98d1eba9e432957924ea9b620524882786134de04bcfb1f9dc5d3228e`  
		Last Modified: Mon, 10 Jul 2017 22:59:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre`

```console
$ docker pull gradle@sha256:72cc497b55f2dbb68adbbdc825b743cfc2c78111ad487310211ea69664e64c1d
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd5355592017a47dc3eac776fa39f16f812527dce40b50403848d3b70b3a023`
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
# Thu, 06 Jul 2017 23:52:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:52:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:26:11 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:26:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:26:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:26:15 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:26:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:119baa503f8c24ae4c15d151ce32aba28e7d3bfcb355135fb3e719e0f5924932`  
		Last Modified: Fri, 07 Jul 2017 00:07:14 GMT  
		Size: 54.4 MB (54420897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fd7e5b1f07f548997ae056745e69a3b0058bb38a7b59c5e6fb7ee0edf5d5b2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 272.0 KB (272015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab88c10c7d538a02f9f20fb703a4414591ee3623c372befaadee8994f52231`  
		Last Modified: Mon, 10 Jul 2017 22:59:30 GMT  
		Size: 67.5 MB (67502982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ead9e98d1eba9e432957924ea9b620524882786134de04bcfb1f9dc5d3228e`  
		Last Modified: Mon, 10 Jul 2017 22:59:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:72cc497b55f2dbb68adbbdc825b743cfc2c78111ad487310211ea69664e64c1d
```

-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.5 MB (183485513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd5355592017a47dc3eac776fa39f16f812527dce40b50403848d3b70b3a023`
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
# Thu, 06 Jul 2017 23:52:10 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Jul 2017 23:52:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 08 Jul 2017 13:26:11 GMT
CMD ["gradle"]
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 08 Jul 2017 13:26:11 GMT
ENV GRADLE_VERSION=4.0
# Sat, 08 Jul 2017 13:26:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Sat, 08 Jul 2017 13:26:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Sat, 08 Jul 2017 13:26:15 GMT
USER [gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 08 Jul 2017 13:26:16 GMT
WORKDIR /home/gradle
# Sat, 08 Jul 2017 13:26:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:119baa503f8c24ae4c15d151ce32aba28e7d3bfcb355135fb3e719e0f5924932`  
		Last Modified: Fri, 07 Jul 2017 00:07:14 GMT  
		Size: 54.4 MB (54420897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2fd7e5b1f07f548997ae056745e69a3b0058bb38a7b59c5e6fb7ee0edf5d5b2`  
		Last Modified: Fri, 07 Jul 2017 00:07:01 GMT  
		Size: 272.0 KB (272015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab88c10c7d538a02f9f20fb703a4414591ee3623c372befaadee8994f52231`  
		Last Modified: Mon, 10 Jul 2017 22:59:30 GMT  
		Size: 67.5 MB (67502982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ead9e98d1eba9e432957924ea9b620524882786134de04bcfb1f9dc5d3228e`  
		Last Modified: Mon, 10 Jul 2017 22:59:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk8-alpine`

```console
$ docker pull gradle@sha256:7595f2858a57a7628d8387d7401921503bcd9345de494182c4e905fca31058ee
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cbb6f65a4829bb84f7f4391781978aefdc1ac073449206a0022eb3679f2023`
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
# Thu, 29 Jun 2017 02:29:12 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:29:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:29:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:29:24 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:29:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:29:26 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:29:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:87d75453ca6dcbf2b5374e155bc637d7cc1c4ecd15f59e13bc09ff95314619a9`  
		Last Modified: Fri, 30 Jun 2017 16:21:27 GMT  
		Size: 68.9 MB (68920097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a51d00cf9202eddbf47f1959f267b5281b50141cf97109fce29c4f7f1ed4a0`  
		Last Modified: Fri, 30 Jun 2017 16:21:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:7595f2858a57a7628d8387d7401921503bcd9345de494182c4e905fca31058ee
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cbb6f65a4829bb84f7f4391781978aefdc1ac073449206a0022eb3679f2023`
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
# Thu, 29 Jun 2017 02:29:12 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:29:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:29:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:29:24 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:29:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:29:26 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:29:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:87d75453ca6dcbf2b5374e155bc637d7cc1c4ecd15f59e13bc09ff95314619a9`  
		Last Modified: Fri, 30 Jun 2017 16:21:27 GMT  
		Size: 68.9 MB (68920097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a51d00cf9202eddbf47f1959f267b5281b50141cf97109fce29c4f7f1ed4a0`  
		Last Modified: Fri, 30 Jun 2017 16:21:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk-alpine`

```console
$ docker pull gradle@sha256:7595f2858a57a7628d8387d7401921503bcd9345de494182c4e905fca31058ee
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cbb6f65a4829bb84f7f4391781978aefdc1ac073449206a0022eb3679f2023`
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
# Thu, 29 Jun 2017 02:29:12 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:29:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:29:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:29:24 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:29:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:29:26 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:29:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:87d75453ca6dcbf2b5374e155bc637d7cc1c4ecd15f59e13bc09ff95314619a9`  
		Last Modified: Fri, 30 Jun 2017 16:21:27 GMT  
		Size: 68.9 MB (68920097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a51d00cf9202eddbf47f1959f267b5281b50141cf97109fce29c4f7f1ed4a0`  
		Last Modified: Fri, 30 Jun 2017 16:21:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:7595f2858a57a7628d8387d7401921503bcd9345de494182c4e905fca31058ee
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cbb6f65a4829bb84f7f4391781978aefdc1ac073449206a0022eb3679f2023`
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
# Thu, 29 Jun 2017 02:29:12 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:29:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:29:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:29:24 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:29:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:29:26 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:29:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:87d75453ca6dcbf2b5374e155bc637d7cc1c4ecd15f59e13bc09ff95314619a9`  
		Last Modified: Fri, 30 Jun 2017 16:21:27 GMT  
		Size: 68.9 MB (68920097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a51d00cf9202eddbf47f1959f267b5281b50141cf97109fce29c4f7f1ed4a0`  
		Last Modified: Fri, 30 Jun 2017 16:21:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-alpine`

```console
$ docker pull gradle@sha256:7595f2858a57a7628d8387d7401921503bcd9345de494182c4e905fca31058ee
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cbb6f65a4829bb84f7f4391781978aefdc1ac073449206a0022eb3679f2023`
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
# Thu, 29 Jun 2017 02:29:12 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:29:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:29:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:29:24 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:29:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:29:26 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:29:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:87d75453ca6dcbf2b5374e155bc637d7cc1c4ecd15f59e13bc09ff95314619a9`  
		Last Modified: Fri, 30 Jun 2017 16:21:27 GMT  
		Size: 68.9 MB (68920097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a51d00cf9202eddbf47f1959f267b5281b50141cf97109fce29c4f7f1ed4a0`  
		Last Modified: Fri, 30 Jun 2017 16:21:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:7595f2858a57a7628d8387d7401921503bcd9345de494182c4e905fca31058ee
```

-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.0 MB (140961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84cbb6f65a4829bb84f7f4391781978aefdc1ac073449206a0022eb3679f2023`
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
# Thu, 29 Jun 2017 02:29:12 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:29:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:29:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:29:24 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:29:25 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:29:26 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:29:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:87d75453ca6dcbf2b5374e155bc637d7cc1c4ecd15f59e13bc09ff95314619a9`  
		Last Modified: Fri, 30 Jun 2017 16:21:27 GMT  
		Size: 68.9 MB (68920097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a51d00cf9202eddbf47f1959f267b5281b50141cf97109fce29c4f7f1ed4a0`  
		Last Modified: Fri, 30 Jun 2017 16:21:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre8-alpine`

```console
$ docker pull gradle@sha256:2880a277cdc17742289bef21d8d4d0da1b1125a28a1d1326efc8af939a3ded23
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bc3e1f9c8930486afdb5990f5eed62a81d1732f387f9d8dee228e600b13158`
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
# Thu, 29 Jun 2017 02:30:47 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:30:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:31:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:31:01 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:31:01 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:31:03 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:31:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:5ce8898044a7707a212127ab377f49eac91c833236fced646fc782660c5665e0`  
		Last Modified: Fri, 30 Jun 2017 16:28:05 GMT  
		Size: 68.9 MB (68919339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca55323da1407bee05fa8dda7ff9925bc8f42364f4c01f74f06a457fa23a177`  
		Last Modified: Fri, 30 Jun 2017 16:27:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:2880a277cdc17742289bef21d8d4d0da1b1125a28a1d1326efc8af939a3ded23
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bc3e1f9c8930486afdb5990f5eed62a81d1732f387f9d8dee228e600b13158`
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
# Thu, 29 Jun 2017 02:30:47 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:30:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:31:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:31:01 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:31:01 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:31:03 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:31:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:5ce8898044a7707a212127ab377f49eac91c833236fced646fc782660c5665e0`  
		Last Modified: Fri, 30 Jun 2017 16:28:05 GMT  
		Size: 68.9 MB (68919339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca55323da1407bee05fa8dda7ff9925bc8f42364f4c01f74f06a457fa23a177`  
		Last Modified: Fri, 30 Jun 2017 16:27:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre-alpine`

```console
$ docker pull gradle@sha256:2880a277cdc17742289bef21d8d4d0da1b1125a28a1d1326efc8af939a3ded23
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bc3e1f9c8930486afdb5990f5eed62a81d1732f387f9d8dee228e600b13158`
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
# Thu, 29 Jun 2017 02:30:47 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:30:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:31:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:31:01 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:31:01 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:31:03 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:31:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:5ce8898044a7707a212127ab377f49eac91c833236fced646fc782660c5665e0`  
		Last Modified: Fri, 30 Jun 2017 16:28:05 GMT  
		Size: 68.9 MB (68919339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca55323da1407bee05fa8dda7ff9925bc8f42364f4c01f74f06a457fa23a177`  
		Last Modified: Fri, 30 Jun 2017 16:27:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:2880a277cdc17742289bef21d8d4d0da1b1125a28a1d1326efc8af939a3ded23
```

-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.2 MB (125191407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bc3e1f9c8930486afdb5990f5eed62a81d1732f387f9d8dee228e600b13158`
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
# Thu, 29 Jun 2017 02:30:47 GMT
ENV GRADLE_VERSION=4.0
# Thu, 29 Jun 2017 02:30:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Thu, 29 Jun 2017 02:31:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Installing dependencies" 	&& apk add --no-cache 		bash 		libstdc++ 		&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle
# Thu, 29 Jun 2017 02:31:01 GMT
USER [gradle]
# Thu, 29 Jun 2017 02:31:01 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Jun 2017 02:31:03 GMT
WORKDIR /home/gradle
# Thu, 29 Jun 2017 02:31:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
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
	-	`sha256:5ce8898044a7707a212127ab377f49eac91c833236fced646fc782660c5665e0`  
		Last Modified: Fri, 30 Jun 2017 16:28:05 GMT  
		Size: 68.9 MB (68919339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca55323da1407bee05fa8dda7ff9925bc8f42364f4c01f74f06a457fa23a177`  
		Last Modified: Fri, 30 Jun 2017 16:27:57 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk9`

```console
$ docker pull gradle@sha256:8a50ccb2d49ee25bf7c9d7be041a1c05b66370af448e9fc1faf4788d10935380
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337313942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321168e3bc940812277b6bd27474f5884f77637847f563bdd2782cbbba101d69`
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
# Mon, 10 Jul 2017 20:14:03 GMT
ENV JAVA_VERSION=9~b177
# Mon, 10 Jul 2017 20:14:03 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Mon, 10 Jul 2017 20:14:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 10 Jul 2017 22:55:56 GMT
CMD ["gradle"]
# Mon, 10 Jul 2017 22:55:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Jul 2017 22:55:57 GMT
ENV GRADLE_VERSION=4.0
# Mon, 10 Jul 2017 22:55:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 10 Jul 2017 22:56:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 10 Jul 2017 22:56:02 GMT
USER [gradle]
# Mon, 10 Jul 2017 22:56:02 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Jul 2017 22:56:03 GMT
WORKDIR /home/gradle
# Mon, 10 Jul 2017 22:56:05 GMT
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
	-	`sha256:1f0e2affb373fbaee572fa6b7b244a20fc75f5b3d6232506ff82e91238db8d86`  
		Last Modified: Mon, 10 Jul 2017 20:22:09 GMT  
		Size: 155.4 MB (155421891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8406a3c92d6b4b1f7a601dab0bae5cfaabccab6f20fd62d2dbde0d0173825691`  
		Last Modified: Mon, 10 Jul 2017 23:01:46 GMT  
		Size: 67.5 MB (67502960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb39223d9330373b8d09a89ec503838b15e3e46058c4d55bc4bd1044c689b6b`  
		Last Modified: Mon, 10 Jul 2017 23:01:42 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk9`

```console
$ docker pull gradle@sha256:8a50ccb2d49ee25bf7c9d7be041a1c05b66370af448e9fc1faf4788d10935380
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.3 MB (337313942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:321168e3bc940812277b6bd27474f5884f77637847f563bdd2782cbbba101d69`
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
# Mon, 10 Jul 2017 20:14:03 GMT
ENV JAVA_VERSION=9~b177
# Mon, 10 Jul 2017 20:14:03 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Mon, 10 Jul 2017 20:14:34 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 10 Jul 2017 22:55:56 GMT
CMD ["gradle"]
# Mon, 10 Jul 2017 22:55:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Jul 2017 22:55:57 GMT
ENV GRADLE_VERSION=4.0
# Mon, 10 Jul 2017 22:55:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 10 Jul 2017 22:56:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 10 Jul 2017 22:56:02 GMT
USER [gradle]
# Mon, 10 Jul 2017 22:56:02 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Jul 2017 22:56:03 GMT
WORKDIR /home/gradle
# Mon, 10 Jul 2017 22:56:05 GMT
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
	-	`sha256:1f0e2affb373fbaee572fa6b7b244a20fc75f5b3d6232506ff82e91238db8d86`  
		Last Modified: Mon, 10 Jul 2017 20:22:09 GMT  
		Size: 155.4 MB (155421891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8406a3c92d6b4b1f7a601dab0bae5cfaabccab6f20fd62d2dbde0d0173825691`  
		Last Modified: Mon, 10 Jul 2017 23:01:46 GMT  
		Size: 67.5 MB (67502960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb39223d9330373b8d09a89ec503838b15e3e46058c4d55bc4bd1044c689b6b`  
		Last Modified: Mon, 10 Jul 2017 23:01:42 GMT  
		Size: 135.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre9`

```console
$ docker pull gradle@sha256:67bbfdff3da892d620adb91971235c6982be0912a728081748b4d3f582407b3a
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284289910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbcd908b8335ebfff6755c2d3f5bc313ca7532b5dbc626c21602f3389fa887b`
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
# Mon, 10 Jul 2017 20:14:42 GMT
ENV JAVA_VERSION=9~b177
# Mon, 10 Jul 2017 20:14:43 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Mon, 10 Jul 2017 20:15:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 10 Jul 2017 22:56:13 GMT
CMD ["gradle"]
# Mon, 10 Jul 2017 22:56:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Jul 2017 22:56:14 GMT
ENV GRADLE_VERSION=4.0
# Mon, 10 Jul 2017 22:56:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 10 Jul 2017 22:56:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 10 Jul 2017 22:56:18 GMT
USER [gradle]
# Mon, 10 Jul 2017 22:56:18 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Jul 2017 22:56:19 GMT
WORKDIR /home/gradle
# Mon, 10 Jul 2017 22:56:21 GMT
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
	-	`sha256:328dad85807a5f398b64ea0c8be3efcde956cc704063de150282d5633ed083c7`  
		Last Modified: Mon, 10 Jul 2017 20:23:28 GMT  
		Size: 155.3 MB (155300788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff15f0558596f566925b118b4cc739f51ee5e6159b135b7a6005c7d57fcb210a`  
		Last Modified: Mon, 10 Jul 2017 23:02:22 GMT  
		Size: 67.5 MB (67502994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f77711db52ed2ea0eed4175992a2de2879eb4004d7ba8c2c22592c3cc7d593`  
		Last Modified: Mon, 10 Jul 2017 23:02:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:67bbfdff3da892d620adb91971235c6982be0912a728081748b4d3f582407b3a
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284289910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbcd908b8335ebfff6755c2d3f5bc313ca7532b5dbc626c21602f3389fa887b`
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
# Mon, 10 Jul 2017 20:14:42 GMT
ENV JAVA_VERSION=9~b177
# Mon, 10 Jul 2017 20:14:43 GMT
ENV JAVA_DEBIAN_VERSION=9~b177-3
# Mon, 10 Jul 2017 20:15:05 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 10 Jul 2017 22:56:13 GMT
CMD ["gradle"]
# Mon, 10 Jul 2017 22:56:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Jul 2017 22:56:14 GMT
ENV GRADLE_VERSION=4.0
# Mon, 10 Jul 2017 22:56:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
# Mon, 10 Jul 2017 22:56:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=56bd2dde29ba2a93903c557da1745cafd72cdd8b6b0b83c05a40ed7896b79dfe
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Mon, 10 Jul 2017 22:56:18 GMT
USER [gradle]
# Mon, 10 Jul 2017 22:56:18 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Jul 2017 22:56:19 GMT
WORKDIR /home/gradle
# Mon, 10 Jul 2017 22:56:21 GMT
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
	-	`sha256:328dad85807a5f398b64ea0c8be3efcde956cc704063de150282d5633ed083c7`  
		Last Modified: Mon, 10 Jul 2017 20:23:28 GMT  
		Size: 155.3 MB (155300788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff15f0558596f566925b118b4cc739f51ee5e6159b135b7a6005c7d57fcb210a`  
		Last Modified: Mon, 10 Jul 2017 23:02:22 GMT  
		Size: 67.5 MB (67502994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f77711db52ed2ea0eed4175992a2de2879eb4004d7ba8c2c22592c3cc7d593`  
		Last Modified: Mon, 10 Jul 2017 23:02:16 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
