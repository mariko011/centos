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
$ docker pull maven@sha256:38f1c5edd79754f9adb20d6a1315d068969ac1be28fac62424c709072769ec4d
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311254671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2152c6cda10407186a192cc644fb082f769a36602d7efb17b544848611dafebf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:21:42 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:21:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:21:44 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:21:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:22:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:22:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:22:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:53:57 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:53:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:00 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:01 GMT
CMD ["mvn"]
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
	-	`sha256:10ea1b9359879bb3e17b363684ec9a24af7124d20f2a6eb6692a2a0aab4e5926`  
		Last Modified: Wed, 14 Jun 2017 14:21:55 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626540a30b89709e2a3d1838eff74389d5c7006c2a8469519f92d3a63afa88c`  
		Last Modified: Thu, 15 Jun 2017 16:56:34 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5eba3697592b9c64f401090fe78f04cc015f4264a21d9ed133b02cd58ee9c9`  
		Last Modified: Thu, 15 Jun 2017 16:56:35 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7`

```console
$ docker pull maven@sha256:38f1c5edd79754f9adb20d6a1315d068969ac1be28fac62424c709072769ec4d
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311254671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2152c6cda10407186a192cc644fb082f769a36602d7efb17b544848611dafebf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:21:42 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:21:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:21:44 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:21:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:22:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:22:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:22:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:53:57 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:53:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:00 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:01 GMT
CMD ["mvn"]
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
	-	`sha256:10ea1b9359879bb3e17b363684ec9a24af7124d20f2a6eb6692a2a0aab4e5926`  
		Last Modified: Wed, 14 Jun 2017 14:21:55 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626540a30b89709e2a3d1838eff74389d5c7006c2a8469519f92d3a63afa88c`  
		Last Modified: Thu, 15 Jun 2017 16:56:34 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5eba3697592b9c64f401090fe78f04cc015f4264a21d9ed133b02cd58ee9c9`  
		Last Modified: Thu, 15 Jun 2017 16:56:35 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:38f1c5edd79754f9adb20d6a1315d068969ac1be28fac62424c709072769ec4d
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311254671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2152c6cda10407186a192cc644fb082f769a36602d7efb17b544848611dafebf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:21:42 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:21:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:21:44 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:21:45 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:22:10 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:22:33 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:22:34 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:53:57 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:53:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:00 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:01 GMT
CMD ["mvn"]
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
	-	`sha256:10ea1b9359879bb3e17b363684ec9a24af7124d20f2a6eb6692a2a0aab4e5926`  
		Last Modified: Wed, 14 Jun 2017 14:21:55 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b626540a30b89709e2a3d1838eff74389d5c7006c2a8469519f92d3a63afa88c`  
		Last Modified: Thu, 15 Jun 2017 16:56:34 GMT  
		Size: 729.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5eba3697592b9c64f401090fe78f04cc015f4264a21d9ed133b02cd58ee9c9`  
		Last Modified: Thu, 15 Jun 2017 16:56:35 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-alpine`

```console
$ docker pull maven@sha256:c4f866061bf5d8e1cdd56d84d1286eb462f99056f6f90389fb840f644c581e89
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e92ee464801a1b9f63c33fe96befb0ab6ed4350735d2bb86fe5b3b84c5aa154`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:25:01 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:25:23 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:25:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:25:25 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:25:26 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:25:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:25:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:25:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:27 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:29 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:31 GMT
CMD ["mvn"]
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
	-	`sha256:ea32cd1303896e1c6ad36cfad612472df6051cc1c5c5bc1c9fb07520893d0199`  
		Last Modified: Wed, 14 Jun 2017 14:26:28 GMT  
		Size: 1.8 MB (1771786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff058b2968752a190f9ce4e154bdaf7b472f7563b790dec4288e288955e103`  
		Last Modified: Wed, 14 Jun 2017 14:26:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f366323ae0f65655d9fca5a0e381e485c1f27f019d8d50e9943d06ff1e2f92b3`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcc968c8988a6fb94e00bbb9684b937a19d283703f6b39bcbd21bdd331f0b09`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-alpine`

```console
$ docker pull maven@sha256:c4f866061bf5d8e1cdd56d84d1286eb462f99056f6f90389fb840f644c581e89
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e92ee464801a1b9f63c33fe96befb0ab6ed4350735d2bb86fe5b3b84c5aa154`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:25:01 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:25:23 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:25:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:25:25 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:25:26 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:25:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:25:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:25:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:27 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:29 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:31 GMT
CMD ["mvn"]
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
	-	`sha256:ea32cd1303896e1c6ad36cfad612472df6051cc1c5c5bc1c9fb07520893d0199`  
		Last Modified: Wed, 14 Jun 2017 14:26:28 GMT  
		Size: 1.8 MB (1771786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff058b2968752a190f9ce4e154bdaf7b472f7563b790dec4288e288955e103`  
		Last Modified: Wed, 14 Jun 2017 14:26:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f366323ae0f65655d9fca5a0e381e485c1f27f019d8d50e9943d06ff1e2f92b3`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcc968c8988a6fb94e00bbb9684b937a19d283703f6b39bcbd21bdd331f0b09`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:c4f866061bf5d8e1cdd56d84d1286eb462f99056f6f90389fb840f644c581e89
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.9 MB (89867063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e92ee464801a1b9f63c33fe96befb0ab6ed4350735d2bb86fe5b3b84c5aa154`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:25:01 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:25:23 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:25:24 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:25:25 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:25:26 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:25:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:25:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:25:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:27 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:28 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:29 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:31 GMT
CMD ["mvn"]
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
	-	`sha256:ea32cd1303896e1c6ad36cfad612472df6051cc1c5c5bc1c9fb07520893d0199`  
		Last Modified: Wed, 14 Jun 2017 14:26:28 GMT  
		Size: 1.8 MB (1771786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff058b2968752a190f9ce4e154bdaf7b472f7563b790dec4288e288955e103`  
		Last Modified: Wed, 14 Jun 2017 14:26:27 GMT  
		Size: 8.7 MB (8672761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f366323ae0f65655d9fca5a0e381e485c1f27f019d8d50e9943d06ff1e2f92b3`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcc968c8988a6fb94e00bbb9684b937a19d283703f6b39bcbd21bdd331f0b09`  
		Last Modified: Thu, 15 Jun 2017 16:57:54 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8`

```console
$ docker pull maven@sha256:32d9f186b96b7752048139fa0640ccff0d4b9cbac0893d012d8848c9f5893f20
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99cade99bfb3c68edc8a6dffff5f41570f3b9960fe60a061abbf5df169388be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:28:16 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:28:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:28:18 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:28:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:28:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:29:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:55 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:57 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:59 GMT
CMD ["mvn"]
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
	-	`sha256:9596c4aa260f15f0d63909acd3281a49a91ce0cb6aa64ef4d126d1fbe5c7d58c`  
		Last Modified: Wed, 14 Jun 2017 14:29:33 GMT  
		Size: 8.7 MB (8672797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5924f9687a56b0d87ebafe8ab11d57e50ce949491ee4f7f9ee4c3d47da003d`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33feae70f671f8ca5d3f9ed0daefb7b5798be9c30577bd43f0ad628d4e53f1b3`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0`

```console
$ docker pull maven@sha256:32d9f186b96b7752048139fa0640ccff0d4b9cbac0893d012d8848c9f5893f20
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99cade99bfb3c68edc8a6dffff5f41570f3b9960fe60a061abbf5df169388be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:28:16 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:28:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:28:18 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:28:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:28:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:29:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:55 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:57 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:59 GMT
CMD ["mvn"]
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
	-	`sha256:9596c4aa260f15f0d63909acd3281a49a91ce0cb6aa64ef4d126d1fbe5c7d58c`  
		Last Modified: Wed, 14 Jun 2017 14:29:33 GMT  
		Size: 8.7 MB (8672797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5924f9687a56b0d87ebafe8ab11d57e50ce949491ee4f7f9ee4c3d47da003d`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33feae70f671f8ca5d3f9ed0daefb7b5798be9c30577bd43f0ad628d4e53f1b3`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8`

```console
$ docker pull maven@sha256:32d9f186b96b7752048139fa0640ccff0d4b9cbac0893d012d8848c9f5893f20
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99cade99bfb3c68edc8a6dffff5f41570f3b9960fe60a061abbf5df169388be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:28:16 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:28:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:28:18 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:28:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:28:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:29:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:55 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:57 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:59 GMT
CMD ["mvn"]
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
	-	`sha256:9596c4aa260f15f0d63909acd3281a49a91ce0cb6aa64ef4d126d1fbe5c7d58c`  
		Last Modified: Wed, 14 Jun 2017 14:29:33 GMT  
		Size: 8.7 MB (8672797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5924f9687a56b0d87ebafe8ab11d57e50ce949491ee4f7f9ee4c3d47da003d`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33feae70f671f8ca5d3f9ed0daefb7b5798be9c30577bd43f0ad628d4e53f1b3`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5`

```console
$ docker pull maven@sha256:32d9f186b96b7752048139fa0640ccff0d4b9cbac0893d012d8848c9f5893f20
```

-	Platforms:
	-	linux; amd64

### `maven:3.5` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99cade99bfb3c68edc8a6dffff5f41570f3b9960fe60a061abbf5df169388be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:28:16 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:28:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:28:18 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:28:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:28:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:29:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:55 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:57 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:59 GMT
CMD ["mvn"]
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
	-	`sha256:9596c4aa260f15f0d63909acd3281a49a91ce0cb6aa64ef4d126d1fbe5c7d58c`  
		Last Modified: Wed, 14 Jun 2017 14:29:33 GMT  
		Size: 8.7 MB (8672797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5924f9687a56b0d87ebafe8ab11d57e50ce949491ee4f7f9ee4c3d47da003d`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33feae70f671f8ca5d3f9ed0daefb7b5798be9c30577bd43f0ad628d4e53f1b3`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:32d9f186b96b7752048139fa0640ccff0d4b9cbac0893d012d8848c9f5893f20
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99cade99bfb3c68edc8a6dffff5f41570f3b9960fe60a061abbf5df169388be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:28:16 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:28:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:28:18 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:28:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:28:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:29:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:55 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:57 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:59 GMT
CMD ["mvn"]
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
	-	`sha256:9596c4aa260f15f0d63909acd3281a49a91ce0cb6aa64ef4d126d1fbe5c7d58c`  
		Last Modified: Wed, 14 Jun 2017 14:29:33 GMT  
		Size: 8.7 MB (8672797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5924f9687a56b0d87ebafe8ab11d57e50ce949491ee4f7f9ee4c3d47da003d`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33feae70f671f8ca5d3f9ed0daefb7b5798be9c30577bd43f0ad628d4e53f1b3`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:32d9f186b96b7752048139fa0640ccff0d4b9cbac0893d012d8848c9f5893f20
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99cade99bfb3c68edc8a6dffff5f41570f3b9960fe60a061abbf5df169388be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:28:16 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:28:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:28:18 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:28:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:28:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:29:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:55 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:57 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:59 GMT
CMD ["mvn"]
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
	-	`sha256:9596c4aa260f15f0d63909acd3281a49a91ce0cb6aa64ef4d126d1fbe5c7d58c`  
		Last Modified: Wed, 14 Jun 2017 14:29:33 GMT  
		Size: 8.7 MB (8672797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5924f9687a56b0d87ebafe8ab11d57e50ce949491ee4f7f9ee4c3d47da003d`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33feae70f671f8ca5d3f9ed0daefb7b5798be9c30577bd43f0ad628d4e53f1b3`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:32d9f186b96b7752048139fa0640ccff0d4b9cbac0893d012d8848c9f5893f20
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243965864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e99cade99bfb3c68edc8a6dffff5f41570f3b9960fe60a061abbf5df169388be`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:28:16 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:28:17 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:28:18 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:28:19 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:28:44 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:29:07 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:29:08 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:54:55 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:54:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:54:57 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:54:58 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:54:59 GMT
CMD ["mvn"]
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
	-	`sha256:9596c4aa260f15f0d63909acd3281a49a91ce0cb6aa64ef4d126d1fbe5c7d58c`  
		Last Modified: Wed, 14 Jun 2017 14:29:33 GMT  
		Size: 8.7 MB (8672797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5924f9687a56b0d87ebafe8ab11d57e50ce949491ee4f7f9ee4c3d47da003d`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 728.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33feae70f671f8ca5d3f9ed0daefb7b5798be9c30577bd43f0ad628d4e53f1b3`  
		Last Modified: Thu, 15 Jun 2017 16:59:13 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
CMD ["mvn"]
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
CMD ["mvn"]
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
CMD ["mvn"]
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
CMD ["mvn"]
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
CMD ["mvn"]
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
CMD ["mvn"]
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:90ad6e6ef5c83d18de61aa9adfa22e4c6019b3398a177596d722869d2a44111f
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.4 MB (82447184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc040281fd6f59ed2abe9d094f301229d3a2fc003292478c10736030983472cf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Thu, 01 Jun 2017 17:00:00 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r1
# Thu, 01 Jun 2017 17:00:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 14 Jun 2017 00:31:14 GMT
RUN apk add --no-cache curl tar bash
# Wed, 14 Jun 2017 00:31:37 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:31:38 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:31:39 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:31:39 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Wed, 14 Jun 2017 00:31:42 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 14 Jun 2017 00:32:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 14 Jun 2017 00:32:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:55:24 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:55:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:55:26 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:55:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:55:28 GMT
CMD ["mvn"]
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
	-	`sha256:06ec60720c7edfacf63a1b600f53b3f8fd79f794ff8825bb1806d48ac7ff6eee`  
		Last Modified: Thu, 01 Jun 2017 17:11:30 GMT  
		Size: 70.0 MB (70049880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8788e58d139b92282a86e60ee7b92009ec403fe59bac35d28b1da9059f665815`  
		Last Modified: Wed, 14 Jun 2017 14:38:36 GMT  
		Size: 1.7 MB (1733158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5453cfcd082bc3fda9291cb3405c0eef6b18b92dd9abcb13277f203753e263`  
		Last Modified: Wed, 14 Jun 2017 14:38:35 GMT  
		Size: 8.7 MB (8672746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85acba4150879ac46e5e5b261520fd885727fdd6bdc3942d01a358edc6415336`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86c11da1fa3470749ac7a5d80da3e371a00b47754e88fbc73f68c1f13a50357e`  
		Last Modified: Thu, 15 Jun 2017 17:02:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9`

```console
$ docker pull maven@sha256:86b65869d7c7a2d8267ad0b868f89757766ce003a6c0469e57fcfc1364dcc59a
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272072180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8626397645eb39272a87930cd207ed9fb3e60ffdc9dc1aff01bd589ae5e3b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:33:46 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:33:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:33:47 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:33:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 15 Jun 2017 16:55:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Thu, 15 Jun 2017 16:55:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Jun 2017 16:55:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Jun 2017 16:56:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:56:01 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:56:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:56:03 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:56:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:56:04 GMT
CMD ["mvn"]
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
	-	`sha256:1b2e6914d8540426b18a5316e3fbbec0f2786ed9790fe1ad4f68d38d90e2cd4a`  
		Last Modified: Thu, 15 Jun 2017 17:05:16 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a1d3ab16ac7e2b9886a4baa6cbec00c9912e607e23fecfb3e04c54deac8ceb`  
		Last Modified: Thu, 15 Jun 2017 17:05:16 GMT  
		Size: 8.7 MB (8672789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873698bcb1e97c3abb9a20b260cea9d2eade99a0a10fe982a111a042c9197c6f`  
		Last Modified: Thu, 15 Jun 2017 17:05:15 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfb7509d880f73f01328b6e2398cf44e97ff4a548cfba85b9c0d93696f3b04a`  
		Last Modified: Thu, 15 Jun 2017 17:05:15 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9`

```console
$ docker pull maven@sha256:86b65869d7c7a2d8267ad0b868f89757766ce003a6c0469e57fcfc1364dcc59a
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272072180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8626397645eb39272a87930cd207ed9fb3e60ffdc9dc1aff01bd589ae5e3b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:33:46 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:33:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:33:47 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:33:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 15 Jun 2017 16:55:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Thu, 15 Jun 2017 16:55:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Jun 2017 16:55:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Jun 2017 16:56:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:56:01 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:56:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:56:03 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:56:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:56:04 GMT
CMD ["mvn"]
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
	-	`sha256:1b2e6914d8540426b18a5316e3fbbec0f2786ed9790fe1ad4f68d38d90e2cd4a`  
		Last Modified: Thu, 15 Jun 2017 17:05:16 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a1d3ab16ac7e2b9886a4baa6cbec00c9912e607e23fecfb3e04c54deac8ceb`  
		Last Modified: Thu, 15 Jun 2017 17:05:16 GMT  
		Size: 8.7 MB (8672789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873698bcb1e97c3abb9a20b260cea9d2eade99a0a10fe982a111a042c9197c6f`  
		Last Modified: Thu, 15 Jun 2017 17:05:15 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfb7509d880f73f01328b6e2398cf44e97ff4a548cfba85b9c0d93696f3b04a`  
		Last Modified: Thu, 15 Jun 2017 17:05:15 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:86b65869d7c7a2d8267ad0b868f89757766ce003a6c0469e57fcfc1364dcc59a
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 17.03.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272072180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8626397645eb39272a87930cd207ed9fb3e60ffdc9dc1aff01bd589ae5e3b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Wed, 14 Jun 2017 00:33:46 GMT
ARG MAVEN_VERSION=3.5.0
# Wed, 14 Jun 2017 00:33:46 GMT
ARG USER_HOME_DIR=/root
# Wed, 14 Jun 2017 00:33:47 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Wed, 14 Jun 2017 00:33:48 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 15 Jun 2017 16:55:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-amd64/conf
# Thu, 15 Jun 2017 16:55:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 15 Jun 2017 16:55:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 15 Jun 2017 16:56:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 15 Jun 2017 16:56:01 GMT
COPY file:e4099db07053a2301f4263d416cab324c1f89ee74c752bebec511d8b59464cb6 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 15 Jun 2017 16:56:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 15 Jun 2017 16:56:03 GMT
VOLUME [/root/.m2]
# Thu, 15 Jun 2017 16:56:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 15 Jun 2017 16:56:04 GMT
CMD ["mvn"]
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
	-	`sha256:1b2e6914d8540426b18a5316e3fbbec0f2786ed9790fe1ad4f68d38d90e2cd4a`  
		Last Modified: Thu, 15 Jun 2017 17:05:16 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a1d3ab16ac7e2b9886a4baa6cbec00c9912e607e23fecfb3e04c54deac8ceb`  
		Last Modified: Thu, 15 Jun 2017 17:05:16 GMT  
		Size: 8.7 MB (8672789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873698bcb1e97c3abb9a20b260cea9d2eade99a0a10fe982a111a042c9197c6f`  
		Last Modified: Thu, 15 Jun 2017 17:05:15 GMT  
		Size: 727.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfb7509d880f73f01328b6e2398cf44e97ff4a548cfba85b9c0d93696f3b04a`  
		Last Modified: Thu, 15 Jun 2017 17:05:15 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
