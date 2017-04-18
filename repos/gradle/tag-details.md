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
$ docker pull gradle@sha256:9ff0bae18d66e1954227bbd093efafd060607048d08a0b4e472840f1e4453f92
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.1 MB (326063341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21751803eb0d7ade4ea9b2195241430314260b9e350f99d47c10cf4a2f6403c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:13:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:13:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 21 Mar 2017 22:13:20 GMT
ENV JAVA_VERSION=7u121
# Tue, 21 Mar 2017 22:13:20 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 21 Mar 2017 22:14:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:30:07 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:30:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:51:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:51:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:51:19 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:51:20 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:51:20 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:51:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351379492b05c38649d657294dcda89a680113bca69f5cf5a937e428dad867`  
		Last Modified: Thu, 23 Mar 2017 18:41:07 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e21d5fa0723e184d86d90e0324d97dedc7295e2909d8a743d5644d3bfe7fb3`  
		Last Modified: Thu, 23 Mar 2017 18:41:42 GMT  
		Size: 139.5 MB (139542360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2874a0f1dda5e5af9af8bb01da849d0586d4803486f41f39cfd78b71934dd`  
		Last Modified: Tue, 18 Apr 2017 16:56:27 GMT  
		Size: 73.3 MB (73310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8c81b3e26b4067579cb6fa32ef5c39e837272903938cf656559ead6d808d8c`  
		Last Modified: Tue, 18 Apr 2017 16:56:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7`

```console
$ docker pull gradle@sha256:9ff0bae18d66e1954227bbd093efafd060607048d08a0b4e472840f1e4453f92
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.1 MB (326063341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a21751803eb0d7ade4ea9b2195241430314260b9e350f99d47c10cf4a2f6403c`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:13:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:13:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 21 Mar 2017 22:13:20 GMT
ENV JAVA_VERSION=7u121
# Tue, 21 Mar 2017 22:13:20 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 21 Mar 2017 22:14:26 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:30:07 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:30:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:51:01 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:51:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:51:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:51:19 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:51:20 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:51:20 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:51:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7351379492b05c38649d657294dcda89a680113bca69f5cf5a937e428dad867`  
		Last Modified: Thu, 23 Mar 2017 18:41:07 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e21d5fa0723e184d86d90e0324d97dedc7295e2909d8a743d5644d3bfe7fb3`  
		Last Modified: Thu, 23 Mar 2017 18:41:42 GMT  
		Size: 139.5 MB (139542360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc2874a0f1dda5e5af9af8bb01da849d0586d4803486f41f39cfd78b71934dd`  
		Last Modified: Tue, 18 Apr 2017 16:56:27 GMT  
		Size: 73.3 MB (73310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8c81b3e26b4067579cb6fa32ef5c39e837272903938cf656559ead6d808d8c`  
		Last Modified: Tue, 18 Apr 2017 16:56:21 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre7`

```console
$ docker pull gradle@sha256:5ecdc5e3434649f64a620867e547f766caa58f30a59c8fc84fc2e9e0266ce258
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221809257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad5c4d4efb18b371a496246b283bc5dcf4671c8b1aea06fb2c7ccce6def14ac`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:14:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:14:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_VERSION=7u121
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 21 Mar 2017 22:15:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:31:17 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:31:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:51:41 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:51:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:51:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:51:46 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:51:47 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:51:47 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:51:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab260573986a6f458fbd449b93a3f83d9cd20472c078533020e9a6d8cffb017`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c48cee0b2bcdda413b013c4222041500677be368ce932c606c8f3b94fe3f5f`  
		Last Modified: Thu, 23 Mar 2017 18:43:04 GMT  
		Size: 77.9 MB (77886489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac35ae674eb3fd9ec71681dfbac58966f1c3e60dd0bc10d60e3b48941bb804cb`  
		Last Modified: Tue, 18 Apr 2017 16:57:14 GMT  
		Size: 73.3 MB (73310470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97566126dbed87cab2a95fa59c73ed18b11a4c0f522d24cb0dd546dfb76c8a60`  
		Last Modified: Tue, 18 Apr 2017 16:57:09 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:5ecdc5e3434649f64a620867e547f766caa58f30a59c8fc84fc2e9e0266ce258
```

-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.8 MB (221809257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad5c4d4efb18b371a496246b283bc5dcf4671c8b1aea06fb2c7ccce6def14ac`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:37 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:14:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:14:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_VERSION=7u121
# Tue, 21 Mar 2017 22:14:39 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 21 Mar 2017 22:15:40 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:31:17 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:31:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:51:41 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:51:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:51:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:51:46 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:51:47 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:51:47 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:51:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab260573986a6f458fbd449b93a3f83d9cd20472c078533020e9a6d8cffb017`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c48cee0b2bcdda413b013c4222041500677be368ce932c606c8f3b94fe3f5f`  
		Last Modified: Thu, 23 Mar 2017 18:43:04 GMT  
		Size: 77.9 MB (77886489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac35ae674eb3fd9ec71681dfbac58966f1c3e60dd0bc10d60e3b48941bb804cb`  
		Last Modified: Tue, 18 Apr 2017 16:57:14 GMT  
		Size: 73.3 MB (73310470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97566126dbed87cab2a95fa59c73ed18b11a4c0f522d24cb0dd546dfb76c8a60`  
		Last Modified: Tue, 18 Apr 2017 16:57:09 GMT  
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
$ docker pull gradle@sha256:8e2640babaf84852048e036a67fa74dd3d3696483dc7cb619c83b667f05bb839
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317196425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497a1b4d0fbf5e0a4e01170107a3a2a4900624e01c8f2e862b70bde12f40c487`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:35:50 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:35:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:04 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:09 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:10 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb1967174cbb2e93dcfba7249f0b1db94831fc099a0d2249f8ac5c14dda552`  
		Last Modified: Tue, 18 Apr 2017 16:59:36 GMT  
		Size: 73.3 MB (73310429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d68adf5e742e1ee487df12644641f702bd0ab21ed33204c089f0f984ae44f0`  
		Last Modified: Tue, 18 Apr 2017 16:59:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:8e2640babaf84852048e036a67fa74dd3d3696483dc7cb619c83b667f05bb839
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317196425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497a1b4d0fbf5e0a4e01170107a3a2a4900624e01c8f2e862b70bde12f40c487`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:35:50 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:35:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:04 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:09 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:10 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb1967174cbb2e93dcfba7249f0b1db94831fc099a0d2249f8ac5c14dda552`  
		Last Modified: Tue, 18 Apr 2017 16:59:36 GMT  
		Size: 73.3 MB (73310429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d68adf5e742e1ee487df12644641f702bd0ab21ed33204c089f0f984ae44f0`  
		Last Modified: Tue, 18 Apr 2017 16:59:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jdk`

```console
$ docker pull gradle@sha256:8e2640babaf84852048e036a67fa74dd3d3696483dc7cb619c83b667f05bb839
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317196425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497a1b4d0fbf5e0a4e01170107a3a2a4900624e01c8f2e862b70bde12f40c487`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:35:50 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:35:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:04 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:09 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:10 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb1967174cbb2e93dcfba7249f0b1db94831fc099a0d2249f8ac5c14dda552`  
		Last Modified: Tue, 18 Apr 2017 16:59:36 GMT  
		Size: 73.3 MB (73310429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d68adf5e742e1ee487df12644641f702bd0ab21ed33204c089f0f984ae44f0`  
		Last Modified: Tue, 18 Apr 2017 16:59:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:8e2640babaf84852048e036a67fa74dd3d3696483dc7cb619c83b667f05bb839
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317196425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497a1b4d0fbf5e0a4e01170107a3a2a4900624e01c8f2e862b70bde12f40c487`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:35:50 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:35:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:04 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:09 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:10 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb1967174cbb2e93dcfba7249f0b1db94831fc099a0d2249f8ac5c14dda552`  
		Last Modified: Tue, 18 Apr 2017 16:59:36 GMT  
		Size: 73.3 MB (73310429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d68adf5e742e1ee487df12644641f702bd0ab21ed33204c089f0f984ae44f0`  
		Last Modified: Tue, 18 Apr 2017 16:59:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5`

```console
$ docker pull gradle@sha256:8e2640babaf84852048e036a67fa74dd3d3696483dc7cb619c83b667f05bb839
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317196425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497a1b4d0fbf5e0a4e01170107a3a2a4900624e01c8f2e862b70bde12f40c487`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:35:50 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:35:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:04 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:09 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:10 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb1967174cbb2e93dcfba7249f0b1db94831fc099a0d2249f8ac5c14dda552`  
		Last Modified: Tue, 18 Apr 2017 16:59:36 GMT  
		Size: 73.3 MB (73310429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d68adf5e742e1ee487df12644641f702bd0ab21ed33204c089f0f984ae44f0`  
		Last Modified: Tue, 18 Apr 2017 16:59:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:8e2640babaf84852048e036a67fa74dd3d3696483dc7cb619c83b667f05bb839
```

-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.2 MB (317196425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497a1b4d0fbf5e0a4e01170107a3a2a4900624e01c8f2e862b70bde12f40c487`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:11:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:47:46 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:47:47 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:47:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:48:04 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:48:05 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:48:06 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:49:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:49:13 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:35:50 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:35:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:04 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:09 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:09 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:10 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d27bd3d7fecb89d4028f4afa3ee866d2262c5105fc37f57aa82af918dc2f84c`  
		Last Modified: Tue, 21 Mar 2017 19:59:57 GMT  
		Size: 42.6 MB (42571803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61641c845ed10c60ee9ec652f04ed75c16c4defef698b5d8ce3162c275d85f1`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 593.4 KB (593432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce4cca5b76b6a22d24703b3337fd31d23a3e1d502918300f6c1fbf9a26bac58`  
		Last Modified: Wed, 22 Mar 2017 17:41:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6826227500b0c71a7f0f4f9f733dbee91bff2e153ae682e9586ec1d5e6e1d34f`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03b117ffd91e23430bf3c72c8e1f84a2be955c1277ddb8b836f226b5be3a3fb`  
		Last Modified: Wed, 22 Mar 2017 17:41:55 GMT  
		Size: 130.4 MB (130386158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821a1547b43512b5d418584e755787a6efabe608671646a24b1ea5b8cb3b2fbf`  
		Last Modified: Wed, 22 Mar 2017 17:41:14 GMT  
		Size: 289.1 KB (289053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb1967174cbb2e93dcfba7249f0b1db94831fc099a0d2249f8ac5c14dda552`  
		Last Modified: Tue, 18 Apr 2017 16:59:36 GMT  
		Size: 73.3 MB (73310429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d68adf5e742e1ee487df12644641f702bd0ab21ed33204c089f0f984ae44f0`  
		Last Modified: Tue, 18 Apr 2017 16:59:30 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre8`

```console
$ docker pull gradle@sha256:6afb41b4bf36bbc68c82c97bbf98d4c3dffc93c810081555ece78835486055ef
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197802197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200853040bd3532a18c087e0a291b424e25b333a126f68c963a86e116f24997`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:36:35 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:36:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:33 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:38 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:39 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbea486f81a97f9dff50afa22ff9ea6497f7f2b004c7517ca344652395f988d`  
		Last Modified: Tue, 18 Apr 2017 17:01:35 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882343f204e48da696d3a5e8300b54b7a48df956583245eb556404bda2da10aa`  
		Last Modified: Tue, 18 Apr 2017 17:01:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:6afb41b4bf36bbc68c82c97bbf98d4c3dffc93c810081555ece78835486055ef
```

-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197802197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200853040bd3532a18c087e0a291b424e25b333a126f68c963a86e116f24997`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:36:35 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:36:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:33 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:38 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:39 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbea486f81a97f9dff50afa22ff9ea6497f7f2b004c7517ca344652395f988d`  
		Last Modified: Tue, 18 Apr 2017 17:01:35 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882343f204e48da696d3a5e8300b54b7a48df956583245eb556404bda2da10aa`  
		Last Modified: Tue, 18 Apr 2017 17:01:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre`

```console
$ docker pull gradle@sha256:6afb41b4bf36bbc68c82c97bbf98d4c3dffc93c810081555ece78835486055ef
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197802197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200853040bd3532a18c087e0a291b424e25b333a126f68c963a86e116f24997`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:36:35 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:36:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:33 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:38 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:39 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbea486f81a97f9dff50afa22ff9ea6497f7f2b004c7517ca344652395f988d`  
		Last Modified: Tue, 18 Apr 2017 17:01:35 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882343f204e48da696d3a5e8300b54b7a48df956583245eb556404bda2da10aa`  
		Last Modified: Tue, 18 Apr 2017 17:01:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:6afb41b4bf36bbc68c82c97bbf98d4c3dffc93c810081555ece78835486055ef
```

-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197802197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9200853040bd3532a18c087e0a291b424e25b333a126f68c963a86e116f24997`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:28:51 GMT
ADD file:4eedf861fb567fffb2694b65ebdd58d5e371a2c28c3863f363f333cb34e5eb7b in / 
# Tue, 21 Mar 2017 18:29:05 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:10:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:14:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:49:14 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 21 Mar 2017 22:49:15 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:49:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
# Tue, 21 Mar 2017 22:49:17 GMT
ENV JAVA_VERSION=8u121
# Tue, 21 Mar 2017 22:49:18 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 21 Mar 2017 22:49:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 21 Mar 2017 22:51:33 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 21 Mar 2017 22:51:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 23 Mar 2017 18:36:35 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:36:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:53:33 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:53:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:53:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:53:38 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:53:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:53:39 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:53:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:6d827a3ef358f4fa21ef8251f95492e667da826653fd43641cef5a877dc03a70`  
		Last Modified: Tue, 21 Mar 2017 18:38:18 GMT  
		Size: 51.4 MB (51438476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2726297beaf19be957416750338c095ae15b94adc0e8c1306cebbf113f8b9a5c`  
		Last Modified: Tue, 21 Mar 2017 19:58:58 GMT  
		Size: 18.6 MB (18606479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e483851652b9825b74947a58f00868b38247c47aa454d09adcbc42ca5a4404`  
		Last Modified: Thu, 23 Mar 2017 18:42:42 GMT  
		Size: 567.0 KB (566964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef624abeb7b86d6e49695d5e19f510137408c991650ff916ccf1d613aa8924a3`  
		Last Modified: Thu, 23 Mar 2017 18:50:10 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e108ce2208d5e025afd56527699370e2c719b307767fa724af487b796cb1579`  
		Last Modified: Thu, 23 Mar 2017 18:50:07 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a77bcb48281269d007610db1bdef9ab31529861d13edd629ed65e8098c6fc4b`  
		Last Modified: Thu, 23 Mar 2017 18:50:25 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:016fd08a71c81e3ed7358c4856c567a2571f98e8a2953f672d81c5e964a2262c`  
		Last Modified: Thu, 23 Mar 2017 18:50:13 GMT  
		Size: 289.0 KB (289029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbea486f81a97f9dff50afa22ff9ea6497f7f2b004c7517ca344652395f988d`  
		Last Modified: Tue, 18 Apr 2017 17:01:35 GMT  
		Size: 73.3 MB (73310451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882343f204e48da696d3a5e8300b54b7a48df956583245eb556404bda2da10aa`  
		Last Modified: Tue, 18 Apr 2017 17:01:29 GMT  
		Size: 138.0 B  
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
$ docker pull gradle@sha256:695a1c0d3012385bbfd18c1f1ff16cfd4d447cdc16138ee5d2b010eb1c69a7e4
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jdk9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333908214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f20ede9d16ead860431d42ebd54805cabf4f64d039e6af8c1a158c29a68060e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:51:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:51:45 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 21 Mar 2017 22:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:51:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:51:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 21 Mar 2017 22:51:48 GMT
ENV JAVA_VERSION=9~b161
# Tue, 21 Mar 2017 22:51:49 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 21 Mar 2017 22:52:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:38:59 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:39:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:55:05 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:55:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:55:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:55:12 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:55:13 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:55:13 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:55:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fbfa5a51b31a9bd473e3d51a02d9d26c6e3681624b5fe0526e3de7ba6b7eac`  
		Last Modified: Tue, 21 Mar 2017 20:03:47 GMT  
		Size: 40.0 MB (40049369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c6d4dcde8a91252c5b59911856b40fa393f5c43555bb0ec30d0266373be7a8`  
		Last Modified: Thu, 23 Mar 2017 18:55:44 GMT  
		Size: 651.8 KB (651843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056b597bb0447460e5a3f9229e907f4519974fd1cafa3d2306d1ead4c1d61ef3`  
		Last Modified: Thu, 23 Mar 2017 18:55:42 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb44b26812eae902f12ad6e045bf43b2714ac28b5d6ad67cc65fb3861675132`  
		Last Modified: Thu, 23 Mar 2017 18:55:41 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93808fe9b2f98daceb36fd746d8ade3035e65cbb172b8a0e512425866ec3435`  
		Last Modified: Thu, 23 Mar 2017 18:56:07 GMT  
		Size: 154.5 MB (154476439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a69c3f2c9e89888ccc1c08fb26183f0fb1fc8746e016a8076e6942050c7963`  
		Last Modified: Tue, 18 Apr 2017 17:06:12 GMT  
		Size: 73.3 MB (73310660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afd8be8f460e5544d298ba7ad56d384268c9798dc66451c60d289230b3ee51`  
		Last Modified: Tue, 18 Apr 2017 17:06:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk9`

```console
$ docker pull gradle@sha256:695a1c0d3012385bbfd18c1f1ff16cfd4d447cdc16138ee5d2b010eb1c69a7e4
```

-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333908214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f20ede9d16ead860431d42ebd54805cabf4f64d039e6af8c1a158c29a68060e`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 19:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:51:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:51:45 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 21 Mar 2017 22:51:46 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:51:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:51:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 21 Mar 2017 22:51:48 GMT
ENV JAVA_VERSION=9~b161
# Tue, 21 Mar 2017 22:51:49 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 21 Mar 2017 22:52:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:38:59 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:39:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:55:05 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:55:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:55:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:55:12 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:55:13 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:55:13 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:55:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fbfa5a51b31a9bd473e3d51a02d9d26c6e3681624b5fe0526e3de7ba6b7eac`  
		Last Modified: Tue, 21 Mar 2017 20:03:47 GMT  
		Size: 40.0 MB (40049369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5c6d4dcde8a91252c5b59911856b40fa393f5c43555bb0ec30d0266373be7a8`  
		Last Modified: Thu, 23 Mar 2017 18:55:44 GMT  
		Size: 651.8 KB (651843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056b597bb0447460e5a3f9229e907f4519974fd1cafa3d2306d1ead4c1d61ef3`  
		Last Modified: Thu, 23 Mar 2017 18:55:42 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb44b26812eae902f12ad6e045bf43b2714ac28b5d6ad67cc65fb3861675132`  
		Last Modified: Thu, 23 Mar 2017 18:55:41 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93808fe9b2f98daceb36fd746d8ade3035e65cbb172b8a0e512425866ec3435`  
		Last Modified: Thu, 23 Mar 2017 18:56:07 GMT  
		Size: 154.5 MB (154476439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a69c3f2c9e89888ccc1c08fb26183f0fb1fc8746e016a8076e6942050c7963`  
		Last Modified: Tue, 18 Apr 2017 17:06:12 GMT  
		Size: 73.3 MB (73310660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87afd8be8f460e5544d298ba7ad56d384268c9798dc66451c60d289230b3ee51`  
		Last Modified: Tue, 18 Apr 2017 17:06:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:3.5-jre9`

```console
$ docker pull gradle@sha256:fe5847aa03d207af72e64bc490acf942aa8d21e9353e7095f31394b1703a9729
```

-	Platforms:
	-	linux; amd64

### `gradle:3.5-jre9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.3 MB (294340922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7c45f8782a0c86040adad15691eb025e0675a0bad0400e017f56093221bb4f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:52:31 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 21 Mar 2017 22:52:31 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:52:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 21 Mar 2017 22:52:34 GMT
ENV JAVA_VERSION=9~b161
# Tue, 21 Mar 2017 22:52:34 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 21 Mar 2017 22:52:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:39:45 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:39:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:55:42 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:55:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:55:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:55:47 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:55:47 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:55:48 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:56:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e3b45ca6f7b167b4ef26368cf09d21b2b8e8f75b5b78dd49498dc78f09176f`  
		Last Modified: Thu, 23 Mar 2017 18:56:53 GMT  
		Size: 627.4 KB (627440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf09c4384be8b6a902d9d2457f9e5bbd949d8dc159e41fc047ab5eb9223955`  
		Last Modified: Thu, 23 Mar 2017 18:56:52 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631d5a85d6bf6041a8e10de19bd29bef3997d2aadf05bd2329ff4bacbb9c18e3`  
		Last Modified: Thu, 23 Mar 2017 18:56:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a3fbb4d14e2ce8909975faf8e0f32cde08584da323efd247727df67a67663`  
		Last Modified: Thu, 23 Mar 2017 18:57:16 GMT  
		Size: 155.0 MB (154982959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4157ede622c3bb872e35e79ebd3e50b09a250c091795ac03c26143a45f7c3d`  
		Last Modified: Tue, 18 Apr 2017 17:07:06 GMT  
		Size: 73.3 MB (73310621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e26558404250a81ba82698ee1f36d22ecbc4f05b55761dbcf085fed8b1ca026`  
		Last Modified: Tue, 18 Apr 2017 17:06:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:fe5847aa03d207af72e64bc490acf942aa8d21e9353e7095f31394b1703a9729
```

-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.3 MB (294340922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7c45f8782a0c86040adad15691eb025e0675a0bad0400e017f56093221bb4f`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Mar 2017 18:31:29 GMT
ADD file:c8a621347a67ba4a8bb70860663bb66e3d9e758ad2d8e53eabce6274b5a6c77b in / 
# Tue, 21 Mar 2017 18:31:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Mar 2017 19:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 21 Mar 2017 22:52:31 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 21 Mar 2017 22:52:31 GMT
ENV LANG=C.UTF-8
# Tue, 21 Mar 2017 22:52:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 21 Mar 2017 22:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 21 Mar 2017 22:52:34 GMT
ENV JAVA_VERSION=9~b161
# Tue, 21 Mar 2017 22:52:34 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 21 Mar 2017 22:52:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 23 Mar 2017 18:39:45 GMT
CMD ["gradle"]
# Thu, 23 Mar 2017 18:39:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Apr 2017 16:55:42 GMT
ENV GRADLE_VERSION=3.5
# Tue, 18 Apr 2017 16:55:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
# Tue, 18 Apr 2017 16:55:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle
# Tue, 18 Apr 2017 16:55:47 GMT
USER [gradle]
# Tue, 18 Apr 2017 16:55:47 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Apr 2017 16:55:48 GMT
WORKDIR /home/gradle
# Tue, 18 Apr 2017 16:56:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=0b7450798c190ff76b9f9a3d02e18b33d94553f708ebc08ebe09bdf99111d110
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:0d62cc759168569be1547237908d9f01ae76df507f508033feaed6291c60a06e`  
		Last Modified: Tue, 21 Mar 2017 18:44:16 GMT  
		Size: 44.3 MB (44268563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a452a4ba8c66e6b557070473289879410f055e30ac86e4cb9dd2d6f50f0685`  
		Last Modified: Tue, 21 Mar 2017 20:03:07 GMT  
		Size: 21.2 MB (21150746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e3b45ca6f7b167b4ef26368cf09d21b2b8e8f75b5b78dd49498dc78f09176f`  
		Last Modified: Thu, 23 Mar 2017 18:56:53 GMT  
		Size: 627.4 KB (627440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdf09c4384be8b6a902d9d2457f9e5bbd949d8dc159e41fc047ab5eb9223955`  
		Last Modified: Thu, 23 Mar 2017 18:56:52 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631d5a85d6bf6041a8e10de19bd29bef3997d2aadf05bd2329ff4bacbb9c18e3`  
		Last Modified: Thu, 23 Mar 2017 18:56:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a3fbb4d14e2ce8909975faf8e0f32cde08584da323efd247727df67a67663`  
		Last Modified: Thu, 23 Mar 2017 18:57:16 GMT  
		Size: 155.0 MB (154982959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa4157ede622c3bb872e35e79ebd3e50b09a250c091795ac03c26143a45f7c3d`  
		Last Modified: Tue, 18 Apr 2017 17:07:06 GMT  
		Size: 73.3 MB (73310621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e26558404250a81ba82698ee1f36d22ecbc4f05b55761dbcf085fed8b1ca026`  
		Last Modified: Tue, 18 Apr 2017 17:06:53 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
