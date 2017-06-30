<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `maven`

-	[`maven:3.5.0-jdk-7`](#maven350-jdk-7)
-	[`maven:3.5-jdk-7`](#maven35-jdk-7)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3.5.0-jdk-7-alpine`](#maven350-jdk-7-alpine)
-	[`maven:3.5-jdk-7-alpine`](#maven35-jdk-7-alpine)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3.5.0-jdk-8`](#maven350-jdk-8)
-	[`maven:3.5.0`](#maven350)
-	[`maven:3.5-jdk-8`](#maven35-jdk-8)
-	[`maven:3.5`](#maven35)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3`](#maven3)
-	[`maven:latest`](#mavenlatest)
-	[`maven:3.5.0-jdk-8-alpine`](#maven350-jdk-8-alpine)
-	[`maven:3.5.0-alpine`](#maven350-alpine)
-	[`maven:3.5-jdk-8-alpine`](#maven35-jdk-8-alpine)
-	[`maven:3.5-alpine`](#maven35-alpine)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-alpine`](#maven3-alpine)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:3.5.0-jdk-9`](#maven350-jdk-9)
-	[`maven:3.5-jdk-9`](#maven35-jdk-9)
-	[`maven:3-jdk-9`](#maven3-jdk-9)

## `maven:3.5.0-jdk-7`

```console
$ docker pull maven@sha256:6431f3e4d4ac59684ecaa2f83d863a4afb86a97ad212b4d8b825409109e21735
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311336562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3650f430710cf571858a43a8dc7e0e5c791ce0f58be1db792662ebd4b8bf4ab0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 15:44:57 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:44:58 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:44:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:44:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:04 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:07 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:08 GMT
CMD ["mvn"]
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
	-	`sha256:3d5e18dddba0e635fdd4286cadab51ce14d9f026bd69023e7c8f06077af2ab74`  
		Last Modified: Sun, 25 Jun 2017 13:00:58 GMT  
		Size: 8.7 MB (8672774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c3b8b27c2e5f1ab94a713c9ad5fed5aa481cff10af1dee6e418507d6f5683`  
		Last Modified: Sun, 25 Jun 2017 13:00:57 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf139665fb63f6200873cf25c6842f1812f6bc238c7416921e5d21ec8723958`  
		Last Modified: Sun, 25 Jun 2017 13:00:57 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7`

```console
$ docker pull maven@sha256:6431f3e4d4ac59684ecaa2f83d863a4afb86a97ad212b4d8b825409109e21735
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311336562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3650f430710cf571858a43a8dc7e0e5c791ce0f58be1db792662ebd4b8bf4ab0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 15:44:57 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:44:58 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:44:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:44:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:04 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:07 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:08 GMT
CMD ["mvn"]
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
	-	`sha256:3d5e18dddba0e635fdd4286cadab51ce14d9f026bd69023e7c8f06077af2ab74`  
		Last Modified: Sun, 25 Jun 2017 13:00:58 GMT  
		Size: 8.7 MB (8672774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c3b8b27c2e5f1ab94a713c9ad5fed5aa481cff10af1dee6e418507d6f5683`  
		Last Modified: Sun, 25 Jun 2017 13:00:57 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf139665fb63f6200873cf25c6842f1812f6bc238c7416921e5d21ec8723958`  
		Last Modified: Sun, 25 Jun 2017 13:00:57 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:6431f3e4d4ac59684ecaa2f83d863a4afb86a97ad212b4d8b825409109e21735
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311336562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3650f430710cf571858a43a8dc7e0e5c791ce0f58be1db792662ebd4b8bf4ab0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 15:44:57 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:44:58 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:44:58 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:44:59 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:02 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:04 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:07 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:08 GMT
CMD ["mvn"]
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
	-	`sha256:3d5e18dddba0e635fdd4286cadab51ce14d9f026bd69023e7c8f06077af2ab74`  
		Last Modified: Sun, 25 Jun 2017 13:00:58 GMT  
		Size: 8.7 MB (8672774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367c3b8b27c2e5f1ab94a713c9ad5fed5aa481cff10af1dee6e418507d6f5683`  
		Last Modified: Sun, 25 Jun 2017 13:00:57 GMT  
		Size: 726.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf139665fb63f6200873cf25c6842f1812f6bc238c7416921e5d21ec8723958`  
		Last Modified: Sun, 25 Jun 2017 13:00:57 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-alpine`

```console
$ docker pull maven@sha256:45bace61d36fa5064014234f778d6751fcbdf5e514dd21058b45f669e350addc
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489a7477dd007515378635b11385e7c5af8d99f8200e0bb9ea5d851845a706f2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:45:12 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:45:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:45:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:45:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:45:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:45:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:45:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:45:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:45:21 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:45:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:45:23 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:45:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:45:25 GMT
CMD ["mvn"]
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
	-	`sha256:bc31c84e8e851ab8325f57b9f89f60213c42b70027fe4220a143a11e4e2d9b2d`  
		Last Modified: Fri, 30 Jun 2017 18:08:50 GMT  
		Size: 1.8 MB (1771822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a379e725e517d5207054b820c3fc4b9382ed60fb8611f6649ff81ccb7e54eea`  
		Last Modified: Fri, 30 Jun 2017 18:08:48 GMT  
		Size: 8.7 MB (8672771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beebfd67762b84e074dff55e244734a59fdd0c3d73fc4c9e1540e9c5ba62571d`  
		Last Modified: Fri, 30 Jun 2017 18:08:48 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ab1b729071f2e4953876716794d7c318c36a755614bfe02ed1e3ad64a791ae`  
		Last Modified: Fri, 30 Jun 2017 18:08:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-alpine`

```console
$ docker pull maven@sha256:45bace61d36fa5064014234f778d6751fcbdf5e514dd21058b45f669e350addc
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489a7477dd007515378635b11385e7c5af8d99f8200e0bb9ea5d851845a706f2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:45:12 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:45:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:45:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:45:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:45:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:45:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:45:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:45:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:45:21 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:45:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:45:23 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:45:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:45:25 GMT
CMD ["mvn"]
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
	-	`sha256:bc31c84e8e851ab8325f57b9f89f60213c42b70027fe4220a143a11e4e2d9b2d`  
		Last Modified: Fri, 30 Jun 2017 18:08:50 GMT  
		Size: 1.8 MB (1771822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a379e725e517d5207054b820c3fc4b9382ed60fb8611f6649ff81ccb7e54eea`  
		Last Modified: Fri, 30 Jun 2017 18:08:48 GMT  
		Size: 8.7 MB (8672771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beebfd67762b84e074dff55e244734a59fdd0c3d73fc4c9e1540e9c5ba62571d`  
		Last Modified: Fri, 30 Jun 2017 18:08:48 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ab1b729071f2e4953876716794d7c318c36a755614bfe02ed1e3ad64a791ae`  
		Last Modified: Fri, 30 Jun 2017 18:08:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:45bace61d36fa5064014234f778d6751fcbdf5e514dd21058b45f669e350addc
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489a7477dd007515378635b11385e7c5af8d99f8200e0bb9ea5d851845a706f2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:45:12 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:45:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:45:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:45:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:45:16 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:45:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:45:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:45:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:45:21 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:45:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:45:23 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:45:24 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:45:25 GMT
CMD ["mvn"]
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
	-	`sha256:bc31c84e8e851ab8325f57b9f89f60213c42b70027fe4220a143a11e4e2d9b2d`  
		Last Modified: Fri, 30 Jun 2017 18:08:50 GMT  
		Size: 1.8 MB (1771822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a379e725e517d5207054b820c3fc4b9382ed60fb8611f6649ff81ccb7e54eea`  
		Last Modified: Fri, 30 Jun 2017 18:08:48 GMT  
		Size: 8.7 MB (8672771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beebfd67762b84e074dff55e244734a59fdd0c3d73fc4c9e1540e9c5ba62571d`  
		Last Modified: Fri, 30 Jun 2017 18:08:48 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ab1b729071f2e4953876716794d7c318c36a755614bfe02ed1e3ad64a791ae`  
		Last Modified: Fri, 30 Jun 2017 18:08:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8`

```console
$ docker pull maven@sha256:85987e6a9ad9847b65fd0b0cf78aa5542b9f84efd66c89d21b25ee39fffef1e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244030023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089198872b5e68eac9802c6dbff672baf0d611fe3deaddd3bf152a94b3645d4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:45:34 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:45:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:45:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:45:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:45 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:46 GMT
CMD ["mvn"]
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
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0fdd588bb15004950394c4c52ad0436ad5a669c317f3dfe3efec672872e67`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68710068760ff9a24f982cbd9066ac8c2e46fd06f1aecb2e33639f8077527e`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd4e62771df364922a7c7a488547d9b7a38cdf382d182557acc1bbaa921c97`  
		Last Modified: Sun, 25 Jun 2017 13:03:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0`

```console
$ docker pull maven@sha256:85987e6a9ad9847b65fd0b0cf78aa5542b9f84efd66c89d21b25ee39fffef1e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244030023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089198872b5e68eac9802c6dbff672baf0d611fe3deaddd3bf152a94b3645d4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:45:34 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:45:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:45:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:45:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:45 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:46 GMT
CMD ["mvn"]
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
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0fdd588bb15004950394c4c52ad0436ad5a669c317f3dfe3efec672872e67`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68710068760ff9a24f982cbd9066ac8c2e46fd06f1aecb2e33639f8077527e`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd4e62771df364922a7c7a488547d9b7a38cdf382d182557acc1bbaa921c97`  
		Last Modified: Sun, 25 Jun 2017 13:03:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8`

```console
$ docker pull maven@sha256:85987e6a9ad9847b65fd0b0cf78aa5542b9f84efd66c89d21b25ee39fffef1e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244030023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089198872b5e68eac9802c6dbff672baf0d611fe3deaddd3bf152a94b3645d4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:45:34 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:45:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:45:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:45:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:45 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:46 GMT
CMD ["mvn"]
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
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0fdd588bb15004950394c4c52ad0436ad5a669c317f3dfe3efec672872e67`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68710068760ff9a24f982cbd9066ac8c2e46fd06f1aecb2e33639f8077527e`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd4e62771df364922a7c7a488547d9b7a38cdf382d182557acc1bbaa921c97`  
		Last Modified: Sun, 25 Jun 2017 13:03:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5`

```console
$ docker pull maven@sha256:85987e6a9ad9847b65fd0b0cf78aa5542b9f84efd66c89d21b25ee39fffef1e7
```

-	Platforms:
	-	linux; amd64

### `maven:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244030023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089198872b5e68eac9802c6dbff672baf0d611fe3deaddd3bf152a94b3645d4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:45:34 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:45:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:45:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:45:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:45 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:46 GMT
CMD ["mvn"]
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
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0fdd588bb15004950394c4c52ad0436ad5a669c317f3dfe3efec672872e67`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68710068760ff9a24f982cbd9066ac8c2e46fd06f1aecb2e33639f8077527e`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd4e62771df364922a7c7a488547d9b7a38cdf382d182557acc1bbaa921c97`  
		Last Modified: Sun, 25 Jun 2017 13:03:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:85987e6a9ad9847b65fd0b0cf78aa5542b9f84efd66c89d21b25ee39fffef1e7
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244030023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089198872b5e68eac9802c6dbff672baf0d611fe3deaddd3bf152a94b3645d4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:45:34 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:45:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:45:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:45:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:45 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:46 GMT
CMD ["mvn"]
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
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0fdd588bb15004950394c4c52ad0436ad5a669c317f3dfe3efec672872e67`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68710068760ff9a24f982cbd9066ac8c2e46fd06f1aecb2e33639f8077527e`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd4e62771df364922a7c7a488547d9b7a38cdf382d182557acc1bbaa921c97`  
		Last Modified: Sun, 25 Jun 2017 13:03:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:85987e6a9ad9847b65fd0b0cf78aa5542b9f84efd66c89d21b25ee39fffef1e7
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244030023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089198872b5e68eac9802c6dbff672baf0d611fe3deaddd3bf152a94b3645d4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:45:34 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:45:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:45:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:45:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:45 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:46 GMT
CMD ["mvn"]
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
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0fdd588bb15004950394c4c52ad0436ad5a669c317f3dfe3efec672872e67`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68710068760ff9a24f982cbd9066ac8c2e46fd06f1aecb2e33639f8077527e`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd4e62771df364922a7c7a488547d9b7a38cdf382d182557acc1bbaa921c97`  
		Last Modified: Sun, 25 Jun 2017 13:03:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:85987e6a9ad9847b65fd0b0cf78aa5542b9f84efd66c89d21b25ee39fffef1e7
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (244030023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d089198872b5e68eac9802c6dbff672baf0d611fe3deaddd3bf152a94b3645d4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Fri, 23 Jun 2017 02:41:22 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Fri, 23 Jun 2017 02:41:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:41:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:41:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:41:26 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:41:27 GMT
ENV JAVA_VERSION=8u131
# Fri, 23 Jun 2017 02:41:28 GMT
ENV JAVA_DEBIAN_VERSION=8u131-b11-1~bpo8+1
# Fri, 23 Jun 2017 02:41:28 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Fri, 23 Jun 2017 02:42:08 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 02:42:11 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 23 Jun 2017 15:45:34 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:45:35 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:45:36 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:45:37 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:45:39 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:45:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:45:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:45:42 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:45:44 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:45:45 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:45:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:45:46 GMT
CMD ["mvn"]
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
	-	`sha256:a45121f36b267f144e4eb0fcf5eb9d7f9cdfa042a932e7f21644e2180afa1ec2`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ab37d060419095173bd9b57d4e21d2c1b353f23e11241371508d59d43639c8`  
		Last Modified: Fri, 23 Jun 2017 14:09:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03c611b2838da4d4cfad18b4e414d5c40d1bc9c1c54c1b4733a2245a1e71c379`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3c1f5610321e9bff27d7b8f01668ffce08f7519c724137c76aaebf911b9879`  
		Last Modified: Fri, 23 Jun 2017 14:09:26 GMT  
		Size: 119.4 MB (119365066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463554ba15a0ea914e9827ef50734bcdba3dd7fbf525b26b67f8528032bf2c4a`  
		Last Modified: Fri, 23 Jun 2017 14:09:01 GMT  
		Size: 289.7 KB (289653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef0fdd588bb15004950394c4c52ad0436ad5a669c317f3dfe3efec672872e67`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 8.7 MB (8672790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a68710068760ff9a24f982cbd9066ac8c2e46fd06f1aecb2e33639f8077527e`  
		Last Modified: Sun, 25 Jun 2017 13:03:50 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74bd4e62771df364922a7c7a488547d9b7a38cdf382d182557acc1bbaa921c97`  
		Last Modified: Sun, 25 Jun 2017 13:03:49 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-alpine`

```console
$ docker pull maven@sha256:6e61d9569d7648c568e0d69346ee03bd5792a1443985d9211658858559ded0db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca748bddb1bd2c59a6c2a0a1fdde8295628158555bd83a1b7c76200be98ccd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:44:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:44:28 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:44:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:44:30 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:44:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:44:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:44:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:44:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:44:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:44:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:44:38 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:44:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:44:40 GMT
CMD ["mvn"]
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
	-	`sha256:f9cdc72bb9701aaddf9bb96b70f711392112d83495137965cf387236d0e4b14b`  
		Last Modified: Fri, 30 Jun 2017 18:11:18 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973033b512145b0e4b11b9ad09806609a1d2c16b22de84499106a8516d6a0c44`  
		Last Modified: Fri, 30 Jun 2017 18:11:23 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c19d8fd92d500c72d83406e9a4c18ff930b8cd2a283125d04e95cb8feaad7`  
		Last Modified: Fri, 30 Jun 2017 18:11:17 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b070962cd6af38c0abddc2887321ee8693fd56e6304021867e62713d22b6691f`  
		Last Modified: Fri, 30 Jun 2017 18:11:16 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-alpine`

```console
$ docker pull maven@sha256:6e61d9569d7648c568e0d69346ee03bd5792a1443985d9211658858559ded0db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca748bddb1bd2c59a6c2a0a1fdde8295628158555bd83a1b7c76200be98ccd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:44:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:44:28 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:44:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:44:30 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:44:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:44:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:44:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:44:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:44:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:44:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:44:38 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:44:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:44:40 GMT
CMD ["mvn"]
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
	-	`sha256:f9cdc72bb9701aaddf9bb96b70f711392112d83495137965cf387236d0e4b14b`  
		Last Modified: Fri, 30 Jun 2017 18:11:18 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973033b512145b0e4b11b9ad09806609a1d2c16b22de84499106a8516d6a0c44`  
		Last Modified: Fri, 30 Jun 2017 18:11:23 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c19d8fd92d500c72d83406e9a4c18ff930b8cd2a283125d04e95cb8feaad7`  
		Last Modified: Fri, 30 Jun 2017 18:11:17 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b070962cd6af38c0abddc2887321ee8693fd56e6304021867e62713d22b6691f`  
		Last Modified: Fri, 30 Jun 2017 18:11:16 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-alpine`

```console
$ docker pull maven@sha256:6e61d9569d7648c568e0d69346ee03bd5792a1443985d9211658858559ded0db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca748bddb1bd2c59a6c2a0a1fdde8295628158555bd83a1b7c76200be98ccd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:44:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:44:28 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:44:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:44:30 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:44:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:44:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:44:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:44:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:44:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:44:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:44:38 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:44:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:44:40 GMT
CMD ["mvn"]
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
	-	`sha256:f9cdc72bb9701aaddf9bb96b70f711392112d83495137965cf387236d0e4b14b`  
		Last Modified: Fri, 30 Jun 2017 18:11:18 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973033b512145b0e4b11b9ad09806609a1d2c16b22de84499106a8516d6a0c44`  
		Last Modified: Fri, 30 Jun 2017 18:11:23 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c19d8fd92d500c72d83406e9a4c18ff930b8cd2a283125d04e95cb8feaad7`  
		Last Modified: Fri, 30 Jun 2017 18:11:17 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b070962cd6af38c0abddc2887321ee8693fd56e6304021867e62713d22b6691f`  
		Last Modified: Fri, 30 Jun 2017 18:11:16 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-alpine`

```console
$ docker pull maven@sha256:6e61d9569d7648c568e0d69346ee03bd5792a1443985d9211658858559ded0db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca748bddb1bd2c59a6c2a0a1fdde8295628158555bd83a1b7c76200be98ccd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:44:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:44:28 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:44:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:44:30 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:44:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:44:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:44:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:44:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:44:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:44:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:44:38 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:44:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:44:40 GMT
CMD ["mvn"]
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
	-	`sha256:f9cdc72bb9701aaddf9bb96b70f711392112d83495137965cf387236d0e4b14b`  
		Last Modified: Fri, 30 Jun 2017 18:11:18 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973033b512145b0e4b11b9ad09806609a1d2c16b22de84499106a8516d6a0c44`  
		Last Modified: Fri, 30 Jun 2017 18:11:23 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c19d8fd92d500c72d83406e9a4c18ff930b8cd2a283125d04e95cb8feaad7`  
		Last Modified: Fri, 30 Jun 2017 18:11:17 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b070962cd6af38c0abddc2887321ee8693fd56e6304021867e62713d22b6691f`  
		Last Modified: Fri, 30 Jun 2017 18:11:16 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:6e61d9569d7648c568e0d69346ee03bd5792a1443985d9211658858559ded0db
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca748bddb1bd2c59a6c2a0a1fdde8295628158555bd83a1b7c76200be98ccd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:44:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:44:28 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:44:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:44:30 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:44:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:44:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:44:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:44:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:44:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:44:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:44:38 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:44:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:44:40 GMT
CMD ["mvn"]
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
	-	`sha256:f9cdc72bb9701aaddf9bb96b70f711392112d83495137965cf387236d0e4b14b`  
		Last Modified: Fri, 30 Jun 2017 18:11:18 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973033b512145b0e4b11b9ad09806609a1d2c16b22de84499106a8516d6a0c44`  
		Last Modified: Fri, 30 Jun 2017 18:11:23 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c19d8fd92d500c72d83406e9a4c18ff930b8cd2a283125d04e95cb8feaad7`  
		Last Modified: Fri, 30 Jun 2017 18:11:17 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b070962cd6af38c0abddc2887321ee8693fd56e6304021867e62713d22b6691f`  
		Last Modified: Fri, 30 Jun 2017 18:11:16 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:6e61d9569d7648c568e0d69346ee03bd5792a1443985d9211658858559ded0db
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca748bddb1bd2c59a6c2a0a1fdde8295628158555bd83a1b7c76200be98ccd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:44:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:44:28 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:44:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:44:30 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:44:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:44:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:44:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:44:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:44:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:44:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:44:38 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:44:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:44:40 GMT
CMD ["mvn"]
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
	-	`sha256:f9cdc72bb9701aaddf9bb96b70f711392112d83495137965cf387236d0e4b14b`  
		Last Modified: Fri, 30 Jun 2017 18:11:18 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973033b512145b0e4b11b9ad09806609a1d2c16b22de84499106a8516d6a0c44`  
		Last Modified: Fri, 30 Jun 2017 18:11:23 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c19d8fd92d500c72d83406e9a4c18ff930b8cd2a283125d04e95cb8feaad7`  
		Last Modified: Fri, 30 Jun 2017 18:11:17 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b070962cd6af38c0abddc2887321ee8693fd56e6304021867e62713d22b6691f`  
		Last Modified: Fri, 30 Jun 2017 18:11:16 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:6e61d9569d7648c568e0d69346ee03bd5792a1443985d9211658858559ded0db
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ca748bddb1bd2c59a6c2a0a1fdde8295628158555bd83a1b7c76200be98ccd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 29 Jun 2017 02:44:27 GMT
RUN apk add --no-cache curl tar bash
# Thu, 29 Jun 2017 02:44:28 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 29 Jun 2017 02:44:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Jun 2017 02:44:30 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 29 Jun 2017 02:44:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 29 Jun 2017 02:44:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Jun 2017 02:44:34 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Jun 2017 02:44:35 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Jun 2017 02:44:36 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Jun 2017 02:44:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Jun 2017 02:44:38 GMT
VOLUME [/root/.m2]
# Thu, 29 Jun 2017 02:44:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Jun 2017 02:44:40 GMT
CMD ["mvn"]
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
	-	`sha256:f9cdc72bb9701aaddf9bb96b70f711392112d83495137965cf387236d0e4b14b`  
		Last Modified: Fri, 30 Jun 2017 18:11:18 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973033b512145b0e4b11b9ad09806609a1d2c16b22de84499106a8516d6a0c44`  
		Last Modified: Fri, 30 Jun 2017 18:11:23 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270c19d8fd92d500c72d83406e9a4c18ff930b8cd2a283125d04e95cb8feaad7`  
		Last Modified: Fri, 30 Jun 2017 18:11:17 GMT  
		Size: 723.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b070962cd6af38c0abddc2887321ee8693fd56e6304021867e62713d22b6691f`  
		Last Modified: Fri, 30 Jun 2017 18:11:16 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9`

```console
$ docker pull maven@sha256:d791ed736f5a639f962eaab062c2f48b80d2d04ba7294f1a0f80f65aac21b15e
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271964667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81adf01eb5618daa38657cef6339a4ec5a633aea6d41c79d2602132025ff870`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:43:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:43:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Jun 2017 02:43:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:43:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:43:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:43:46 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:43:46 GMT
ENV JAVA_VERSION=9~b170
# Fri, 23 Jun 2017 02:43:47 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Fri, 23 Jun 2017 02:44:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 15:46:14 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:46:15 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:46:16 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:46:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:46:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Fri, 23 Jun 2017 15:46:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:46:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:46:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:46:26 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:46:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:46:28 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:46:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:46:30 GMT
CMD ["mvn"]
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
	-	`sha256:d18aed9d248a8afaf498a6787ee843c48d241dc80091cf7efbc33de3acb70820`  
		Last Modified: Wed, 21 Jun 2017 00:38:28 GMT  
		Size: 50.9 MB (50944155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafdc1ff995f06118d33f415857ceb8d4e24d0b7c32b5426088056d5140ff119`  
		Last Modified: Sat, 24 Jun 2017 17:11:53 GMT  
		Size: 655.3 KB (655296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3757ef3932c594ddbc6d58d598e052b19c47c5fc06f27abd582f354e3c19c8ff`  
		Last Modified: Sat, 24 Jun 2017 17:11:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029d9b23b6fb14a96fd7eee8757d8c1ea5f845cd678c9bf2c3810824e4b36615`  
		Last Modified: Sat, 24 Jun 2017 17:11:52 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e75e7398e0bfee00671670df45422320717110fdf1e09cdc73316ea356e09`  
		Last Modified: Sat, 24 Jun 2017 17:11:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff02fd93ff0fa3cfe531b4acca7890e817537957965f773cd1b30bc6d8f59f7a`  
		Last Modified: Sat, 24 Jun 2017 17:12:10 GMT  
		Size: 155.3 MB (155259068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc73b04a74ad6e9e28f6b733b7eeeb5dd3ae97b96af90d0de6b49c79c9d14d`  
		Last Modified: Sun, 25 Jun 2017 13:10:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa5cf86d927301e04383bb4d59388a909245eab012936fb6403c6866a159643`  
		Last Modified: Sun, 25 Jun 2017 13:10:19 GMT  
		Size: 8.7 MB (8672766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f69c2f903f4e980c1aa50fea37b0aa7c0d0e357982a355d3e721e9e0c0e338`  
		Last Modified: Sun, 25 Jun 2017 13:10:21 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14819ba6b3c7b1ca6b1c428e8e033727dd4920f128edd7a2746317c06f358e1c`  
		Last Modified: Sun, 25 Jun 2017 13:10:17 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9`

```console
$ docker pull maven@sha256:d791ed736f5a639f962eaab062c2f48b80d2d04ba7294f1a0f80f65aac21b15e
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271964667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81adf01eb5618daa38657cef6339a4ec5a633aea6d41c79d2602132025ff870`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:43:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:43:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Jun 2017 02:43:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:43:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:43:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:43:46 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:43:46 GMT
ENV JAVA_VERSION=9~b170
# Fri, 23 Jun 2017 02:43:47 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Fri, 23 Jun 2017 02:44:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 15:46:14 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:46:15 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:46:16 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:46:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:46:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Fri, 23 Jun 2017 15:46:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:46:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:46:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:46:26 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:46:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:46:28 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:46:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:46:30 GMT
CMD ["mvn"]
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
	-	`sha256:d18aed9d248a8afaf498a6787ee843c48d241dc80091cf7efbc33de3acb70820`  
		Last Modified: Wed, 21 Jun 2017 00:38:28 GMT  
		Size: 50.9 MB (50944155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafdc1ff995f06118d33f415857ceb8d4e24d0b7c32b5426088056d5140ff119`  
		Last Modified: Sat, 24 Jun 2017 17:11:53 GMT  
		Size: 655.3 KB (655296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3757ef3932c594ddbc6d58d598e052b19c47c5fc06f27abd582f354e3c19c8ff`  
		Last Modified: Sat, 24 Jun 2017 17:11:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029d9b23b6fb14a96fd7eee8757d8c1ea5f845cd678c9bf2c3810824e4b36615`  
		Last Modified: Sat, 24 Jun 2017 17:11:52 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e75e7398e0bfee00671670df45422320717110fdf1e09cdc73316ea356e09`  
		Last Modified: Sat, 24 Jun 2017 17:11:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff02fd93ff0fa3cfe531b4acca7890e817537957965f773cd1b30bc6d8f59f7a`  
		Last Modified: Sat, 24 Jun 2017 17:12:10 GMT  
		Size: 155.3 MB (155259068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc73b04a74ad6e9e28f6b733b7eeeb5dd3ae97b96af90d0de6b49c79c9d14d`  
		Last Modified: Sun, 25 Jun 2017 13:10:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa5cf86d927301e04383bb4d59388a909245eab012936fb6403c6866a159643`  
		Last Modified: Sun, 25 Jun 2017 13:10:19 GMT  
		Size: 8.7 MB (8672766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f69c2f903f4e980c1aa50fea37b0aa7c0d0e357982a355d3e721e9e0c0e338`  
		Last Modified: Sun, 25 Jun 2017 13:10:21 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14819ba6b3c7b1ca6b1c428e8e033727dd4920f128edd7a2746317c06f358e1c`  
		Last Modified: Sun, 25 Jun 2017 13:10:17 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:d791ed736f5a639f962eaab062c2f48b80d2d04ba7294f1a0f80f65aac21b15e
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271964667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81adf01eb5618daa38657cef6339a4ec5a633aea6d41c79d2602132025ff870`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 20 Jun 2017 20:20:10 GMT
ADD file:f1ecd61b58b0033ca44bae2e926027ea8f983690afae114fa2d6909514c1e660 in / 
# Tue, 20 Jun 2017 20:20:11 GMT
CMD ["bash"]
# Tue, 20 Jun 2017 21:12:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 20 Jun 2017 21:15:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:43:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Jun 2017 02:43:41 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Fri, 23 Jun 2017 02:43:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Jun 2017 02:43:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 23 Jun 2017 02:43:45 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 23 Jun 2017 02:43:46 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 23 Jun 2017 02:43:46 GMT
ENV JAVA_VERSION=9~b170
# Fri, 23 Jun 2017 02:43:47 GMT
ENV JAVA_DEBIAN_VERSION=9~b170-2
# Fri, 23 Jun 2017 02:44:23 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 23 Jun 2017 15:46:14 GMT
ARG MAVEN_VERSION=3.5.0
# Fri, 23 Jun 2017 15:46:15 GMT
ARG USER_HOME_DIR=/root
# Fri, 23 Jun 2017 15:46:16 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Fri, 23 Jun 2017 15:46:17 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Fri, 23 Jun 2017 15:46:19 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Fri, 23 Jun 2017 15:46:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 23 Jun 2017 15:46:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 23 Jun 2017 15:46:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 23 Jun 2017 15:46:26 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 23 Jun 2017 15:46:27 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 23 Jun 2017 15:46:28 GMT
VOLUME [/root/.m2]
# Fri, 23 Jun 2017 15:46:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 23 Jun 2017 15:46:30 GMT
CMD ["mvn"]
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
	-	`sha256:d18aed9d248a8afaf498a6787ee843c48d241dc80091cf7efbc33de3acb70820`  
		Last Modified: Wed, 21 Jun 2017 00:38:28 GMT  
		Size: 50.9 MB (50944155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafdc1ff995f06118d33f415857ceb8d4e24d0b7c32b5426088056d5140ff119`  
		Last Modified: Sat, 24 Jun 2017 17:11:53 GMT  
		Size: 655.3 KB (655296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3757ef3932c594ddbc6d58d598e052b19c47c5fc06f27abd582f354e3c19c8ff`  
		Last Modified: Sat, 24 Jun 2017 17:11:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:029d9b23b6fb14a96fd7eee8757d8c1ea5f845cd678c9bf2c3810824e4b36615`  
		Last Modified: Sat, 24 Jun 2017 17:11:52 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:204e75e7398e0bfee00671670df45422320717110fdf1e09cdc73316ea356e09`  
		Last Modified: Sat, 24 Jun 2017 17:11:51 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff02fd93ff0fa3cfe531b4acca7890e817537957965f773cd1b30bc6d8f59f7a`  
		Last Modified: Sat, 24 Jun 2017 17:12:10 GMT  
		Size: 155.3 MB (155259068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edc73b04a74ad6e9e28f6b733b7eeeb5dd3ae97b96af90d0de6b49c79c9d14d`  
		Last Modified: Sun, 25 Jun 2017 13:10:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa5cf86d927301e04383bb4d59388a909245eab012936fb6403c6866a159643`  
		Last Modified: Sun, 25 Jun 2017 13:10:19 GMT  
		Size: 8.7 MB (8672766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f69c2f903f4e980c1aa50fea37b0aa7c0d0e357982a355d3e721e9e0c0e338`  
		Last Modified: Sun, 25 Jun 2017 13:10:21 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14819ba6b3c7b1ca6b1c428e8e033727dd4920f128edd7a2746317c06f358e1c`  
		Last Modified: Sun, 25 Jun 2017 13:10:17 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
