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
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk7`

```console
$ docker pull gradle@sha256:4b5f3e624ae145353a7198a8c8c154ef80f4d6f6b5fc606c6c70ab87bc6c1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:8f82753f12a2a2496d79a898e5651e92494c9be29bcf4cda9051b8b000bd5d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316341922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422489de81956068a996c8fe144ed4cea4a371672baeed16fc703b9fff43089b`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:37:31 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:37:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 05:39:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:37:03 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:37:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:37:03 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:37:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:37:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:37:09 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:37:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:37:09 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:37:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0683814c2d56fd3a057ffdbc2fde15c60c9abbc9aabaa4b740aac847a85f638f`  
		Last Modified: Sat, 04 Nov 2017 01:13:38 GMT  
		Size: 43.2 MB (43227933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d657d9d8089d9f6342d56d8072181cc5423b8a51bb37472f349e07bba1fe11f8`  
		Last Modified: Sat, 04 Nov 2017 05:57:16 GMT  
		Size: 828.7 KB (828671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67684d654fe2ea2f155a86ad76daba9aa7f2d48dff8a56d8723eb973b5161a66`  
		Last Modified: Sat, 04 Nov 2017 05:57:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c754d63a7fadf6e23efb2a85eb9119ca3683c1e0bf6fc9af6d0d54e0b4ed340`  
		Last Modified: Sat, 04 Nov 2017 05:57:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4dedd073758af2446ca22a0a59341ebfd21411d482f722ad5c8b88a6ef9bdc`  
		Last Modified: Sat, 04 Nov 2017 05:57:35 GMT  
		Size: 129.3 MB (129349147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b387d86a6b54368693245c671cc19172b0ccae6161842d20ffef3dee46b2fb`  
		Last Modified: Sat, 04 Nov 2017 11:40:59 GMT  
		Size: 71.1 MB (71075983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541502b58da5d19cca587228f44a75b8c7fb29e7dbe9df25dad12858b1977247`  
		Last Modified: Sat, 04 Nov 2017 11:40:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk7-alpine`

```console
$ docker pull gradle@sha256:fc6e0c8090d80dd36081c7435d441b5529d25bd48dd76c8bf2aa0222d1a294f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c46c27bc74e60e1973c21983ba7671813b8a6a0cd86292582f8ce9aac7b7b310
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150866231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3edc72155bba85261246df6c0499b8667f478c7d63276b5cd215d7f05630c35`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:41:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 04 Nov 2017 05:41:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 04 Nov 2017 05:41:41 GMT
ENV JAVA_VERSION=7u131
# Sat, 04 Nov 2017 05:41:41 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Sat, 04 Nov 2017 05:41:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:38:29 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:38:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:38:29 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:38:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:36 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:37 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:37 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b523c1c6444e443426e81748ff890fec891bcce7b913e7324c0e2ac608dab06`  
		Last Modified: Sat, 04 Nov 2017 05:58:41 GMT  
		Size: 77.4 MB (77433041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bdc2866cbd809191c7d33cad6c08404efbc803cc39da717cecaa8fc74534b3`  
		Last Modified: Sat, 04 Nov 2017 11:41:59 GMT  
		Size: 71.4 MB (71441378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506d5cba9790d243be2201b1c37e7d53762782420d4634885cf6bb1f5d6bfbd8`  
		Last Modified: Sat, 04 Nov 2017 11:41:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk8`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk8-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk9`

```console
$ docker pull gradle@sha256:70b824bc4014c29200ae65df19d8302cc965f017d7c0430c698045db178fd8f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:778c1a41ed47747d6cffa1d3a84938f1934284ea3beaa178fa831d359ec27bbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.2 MB (473239365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8ba528cc96fa474b69429b13c2f5246999773ff7d3ad8497266bd1cdf2cf26`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:52:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:51:10 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:51:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:51:11 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:51:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:51:12 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:51:12 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:52:38 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 11:40:03 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:40:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:40:03 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:40:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:40:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:40:10 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:40:11 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:40:11 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:40:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476ce59eb0aded279b30f21d862e0846aa2198c8612836491ccf43537ead91d`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 8.6 MB (8629941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3d5d5b992c14b7ccd5ba5d0dc4ee9f302f78fc4b1adb80c1266ffba391647b`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 9.5 MB (9512911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919c5072dcfb00cd4f7c42f8155df36c012308e91f6ab988c3b6b7d24f66a7d6`  
		Last Modified: Sat, 04 Nov 2017 01:14:37 GMT  
		Size: 50.3 MB (50348756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe54d07f2d7d5369101afd2048fa0ffddee842f09dd749640097615b9f8a8e3b`  
		Last Modified: Sat, 04 Nov 2017 06:04:49 GMT  
		Size: 893.7 KB (893719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1722f33334375f86b2935f72b67c0fd336aec559d77baf62025c5e85628423e`  
		Last Modified: Sat, 04 Nov 2017 06:04:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d82124bae47ccf1443248017728636b7b8e346f85156565592ff297990f7f4`  
		Last Modified: Sat, 04 Nov 2017 06:04:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130279523749da22c09907272cb21290013930a4fecb8f76d79658eb2b28b638`  
		Last Modified: Sat, 04 Nov 2017 06:05:33 GMT  
		Size: 285.2 MB (285215447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16abf8c1218df53e949138fe8d4c8952312a3737547c740ce7e8240e6a04710`  
		Last Modified: Sat, 04 Nov 2017 11:46:14 GMT  
		Size: 71.1 MB (71076126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf00ce6394f4228c1757cd31506976e3c08a2980803903358a309013dcaf2a30`  
		Last Modified: Sat, 04 Nov 2017 11:46:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jdk-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre`

```console
$ docker pull gradle@sha256:e4390c906dffcb2948d5d58d377ee152bb3d22bf51b6f2b7ab07e3951f076763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre` - linux; amd64

```console
$ docker pull gradle@sha256:16382bdc50e729404952ae02f6b8f8b7072625737df1d48dcaa0ba48d4ae62b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298165160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d745423dc60ef13b1117ae66d7dda180df0a31157e26dfd75ec3104376bb8e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:19 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9653b7b4ee1950653afb7e0f1e586de3d41335f6fd76aa27ae7e348d4371ef0`  
		Last Modified: Sat, 04 Nov 2017 11:43:52 GMT  
		Size: 71.1 MB (71075668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adad8c3c06123a0aed33e4a4d8351d4d83ab0953366b34c10b23f539e058a48`  
		Last Modified: Sat, 04 Nov 2017 11:43:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre7`

```console
$ docker pull gradle@sha256:ea3f4cfcad3d41e0b397c1a646e77175b22b19e8df9ed10e1a7a1f49f15cba4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre7` - linux; amd64

```console
$ docker pull gradle@sha256:b594e9aeec9cc7d69d994b64688772a7f3eb79211559117ebe2d7e3f6f5a6458
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261065704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d152330f8ff1d6f25248b2ec06dc33d442c44734a2622783d15cf0b4a7be3cd`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:42:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:42:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:42:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 05:43:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:37:19 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:37:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:15 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73e29532543f210524cfbf7a5f7841d76a2f26b0258f83e88817fec3c1931dd`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 795.6 KB (795593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed98915939eb67bd35a04238b090a92f86a0dafe9807d20ac34615e9ca1a94b4`  
		Last Modified: Sat, 04 Nov 2017 05:58:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afdebfc1908cbdf3ea58cca4249d59825e381afb9ff61ae7d745e0b8416381`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3409d1f5c73f2d829ea7eb2916bd6d1b18802861a848cbf8635f4ab4f1cc179b`  
		Last Modified: Sat, 04 Nov 2017 05:59:23 GMT  
		Size: 117.3 MB (117333928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e80bdcd5d1302e1f2a381fc6996ae4a5fa19b4b69338aa98575a1899b637cd`  
		Last Modified: Sat, 04 Nov 2017 11:41:28 GMT  
		Size: 71.1 MB (71075997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349890494af5b286a9f73ec0da442cb058e026f52e7030330ea958859b32ff54`  
		Last Modified: Sat, 04 Nov 2017 11:41:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre7-alpine`

```console
$ docker pull gradle@sha256:cce968d1a1e1a31fe8a63ff2b9691e187c600a9d2461914c84a9b1c7eaf68547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:a57185343b3ea7679bd1bbe767781eccd53501c74cd0c1c12d3499d869200962
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134553188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dea104d4eb967816b0451a66d34123641d2faf93250257acfa4d3d9085960e0`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 04 Nov 2017 05:45:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_VERSION=7u131
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Sat, 04 Nov 2017 05:45:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:38:44 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:38:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:38:44 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:38:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc603c55e576ffeaa5edb02cd3553c064d87070bc545bd25f5a3dd160bfe11e`  
		Last Modified: Sat, 04 Nov 2017 06:00:17 GMT  
		Size: 61.1 MB (61131799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5080b89073708e9e1569cc437172bf9acfb89241f47996673eca20182dc0a7`  
		Last Modified: Sat, 04 Nov 2017 11:42:34 GMT  
		Size: 71.4 MB (71429577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6995b56079c71d03ac5faa0ad3acc9c82d6b927ecaa9d6375b132702eae0ae`  
		Last Modified: Sat, 04 Nov 2017 11:42:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre8`

```console
$ docker pull gradle@sha256:e4390c906dffcb2948d5d58d377ee152bb3d22bf51b6f2b7ab07e3951f076763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:16382bdc50e729404952ae02f6b8f8b7072625737df1d48dcaa0ba48d4ae62b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298165160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d745423dc60ef13b1117ae66d7dda180df0a31157e26dfd75ec3104376bb8e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:19 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9653b7b4ee1950653afb7e0f1e586de3d41335f6fd76aa27ae7e348d4371ef0`  
		Last Modified: Sat, 04 Nov 2017 11:43:52 GMT  
		Size: 71.1 MB (71075668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adad8c3c06123a0aed33e4a4d8351d4d83ab0953366b34c10b23f539e058a48`  
		Last Modified: Sat, 04 Nov 2017 11:43:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre8-alpine`

```console
$ docker pull gradle@sha256:3489ae564e0d2beee95eca4c342939a9cd79c8ec97b6b56707ad28e3682d7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:01d681bc52a2c3c178867ed1545d7c07aa49c3faa020345bba9b6b2828c7b919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127683270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7a893bb09bc4a6ab8ad2c41a285135da1d280e50c5cd107008182868dffe88`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073db7a5b861e42d864c1bb09b38d4f7a1c50038077375643b2d2ecc050ab64b`  
		Last Modified: Sat, 04 Nov 2017 11:45:29 GMT  
		Size: 71.4 MB (71405071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9bdbee97b1e7289adcd481fb03961117d74212e7ba0fd4815b438837b3fa8`  
		Last Modified: Sat, 04 Nov 2017 11:45:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre9`

```console
$ docker pull gradle@sha256:b271d274cdfbb6b2c1023a4978f3a2fea1af91659ed83335810fa92ac04f7284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre9` - linux; amd64

```console
$ docker pull gradle@sha256:4c274a2c9ee316be5d81bd39c5537f75435e30c30ab8bdd9c7a1685445e5c5c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337449352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06665b3060c692b8658be7719df8ddd41a146889d232d6f2c7eb6875627b6bf1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:52:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:53:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:54:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:40:22 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:40:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:40:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:40:27 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:40:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476ce59eb0aded279b30f21d862e0846aa2198c8612836491ccf43537ead91d`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 8.6 MB (8629941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3d5d5b992c14b7ccd5ba5d0dc4ee9f302f78fc4b1adb80c1266ffba391647b`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 9.5 MB (9512911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a4ab4d338c6fe266ffb6aa9aec5ac796635105ee7826dab7ffb85c69ed0ca9`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 855.4 KB (855445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b6b2551273c2cd035d0ce577a6db36a755fe8fb835fb6dfe3e7f5b418843ff`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f6bd99b1fdcc2bdb46fdf8f54e74c14cd99e20d198afd8fe3bc1c51e255c7`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffc2093aa6b005ed68ae00a9033489c9b2efbfcc223a68b32c517f592d25d6a`  
		Last Modified: Sat, 04 Nov 2017 06:07:43 GMT  
		Size: 199.8 MB (199812610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89126d17f9a96d06b53327309ba47233308dcd612e48adaccf35de719264caf`  
		Last Modified: Sat, 04 Nov 2017 11:46:44 GMT  
		Size: 71.1 MB (71075980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45746e26dca2544145ee05553564a3466cc961b703e16223e3bec08c88eb44a3`  
		Last Modified: Sat, 04 Nov 2017 11:46:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2.1-jre-alpine`

```console
$ docker pull gradle@sha256:3489ae564e0d2beee95eca4c342939a9cd79c8ec97b6b56707ad28e3682d7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2.1-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:01d681bc52a2c3c178867ed1545d7c07aa49c3faa020345bba9b6b2828c7b919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127683270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7a893bb09bc4a6ab8ad2c41a285135da1d280e50c5cd107008182868dffe88`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073db7a5b861e42d864c1bb09b38d4f7a1c50038077375643b2d2ecc050ab64b`  
		Last Modified: Sat, 04 Nov 2017 11:45:29 GMT  
		Size: 71.4 MB (71405071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9bdbee97b1e7289adcd481fb03961117d74212e7ba0fd4815b438837b3fa8`  
		Last Modified: Sat, 04 Nov 2017 11:45:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk7`

```console
$ docker pull gradle@sha256:4b5f3e624ae145353a7198a8c8c154ef80f4d6f6b5fc606c6c70ab87bc6c1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:8f82753f12a2a2496d79a898e5651e92494c9be29bcf4cda9051b8b000bd5d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316341922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422489de81956068a996c8fe144ed4cea4a371672baeed16fc703b9fff43089b`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:37:31 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:37:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 05:39:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:37:03 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:37:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:37:03 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:37:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:37:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:37:09 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:37:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:37:09 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:37:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0683814c2d56fd3a057ffdbc2fde15c60c9abbc9aabaa4b740aac847a85f638f`  
		Last Modified: Sat, 04 Nov 2017 01:13:38 GMT  
		Size: 43.2 MB (43227933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d657d9d8089d9f6342d56d8072181cc5423b8a51bb37472f349e07bba1fe11f8`  
		Last Modified: Sat, 04 Nov 2017 05:57:16 GMT  
		Size: 828.7 KB (828671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67684d654fe2ea2f155a86ad76daba9aa7f2d48dff8a56d8723eb973b5161a66`  
		Last Modified: Sat, 04 Nov 2017 05:57:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c754d63a7fadf6e23efb2a85eb9119ca3683c1e0bf6fc9af6d0d54e0b4ed340`  
		Last Modified: Sat, 04 Nov 2017 05:57:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4dedd073758af2446ca22a0a59341ebfd21411d482f722ad5c8b88a6ef9bdc`  
		Last Modified: Sat, 04 Nov 2017 05:57:35 GMT  
		Size: 129.3 MB (129349147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b387d86a6b54368693245c671cc19172b0ccae6161842d20ffef3dee46b2fb`  
		Last Modified: Sat, 04 Nov 2017 11:40:59 GMT  
		Size: 71.1 MB (71075983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541502b58da5d19cca587228f44a75b8c7fb29e7dbe9df25dad12858b1977247`  
		Last Modified: Sat, 04 Nov 2017 11:40:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk7-alpine`

```console
$ docker pull gradle@sha256:fc6e0c8090d80dd36081c7435d441b5529d25bd48dd76c8bf2aa0222d1a294f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c46c27bc74e60e1973c21983ba7671813b8a6a0cd86292582f8ce9aac7b7b310
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150866231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3edc72155bba85261246df6c0499b8667f478c7d63276b5cd215d7f05630c35`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:41:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 04 Nov 2017 05:41:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 04 Nov 2017 05:41:41 GMT
ENV JAVA_VERSION=7u131
# Sat, 04 Nov 2017 05:41:41 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Sat, 04 Nov 2017 05:41:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:38:29 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:38:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:38:29 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:38:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:36 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:37 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:37 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b523c1c6444e443426e81748ff890fec891bcce7b913e7324c0e2ac608dab06`  
		Last Modified: Sat, 04 Nov 2017 05:58:41 GMT  
		Size: 77.4 MB (77433041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bdc2866cbd809191c7d33cad6c08404efbc803cc39da717cecaa8fc74534b3`  
		Last Modified: Sat, 04 Nov 2017 11:41:59 GMT  
		Size: 71.4 MB (71441378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506d5cba9790d243be2201b1c37e7d53762782420d4634885cf6bb1f5d6bfbd8`  
		Last Modified: Sat, 04 Nov 2017 11:41:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk8`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk8-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk9`

```console
$ docker pull gradle@sha256:70b824bc4014c29200ae65df19d8302cc965f017d7c0430c698045db178fd8f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:778c1a41ed47747d6cffa1d3a84938f1934284ea3beaa178fa831d359ec27bbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.2 MB (473239365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8ba528cc96fa474b69429b13c2f5246999773ff7d3ad8497266bd1cdf2cf26`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:52:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:51:10 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:51:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:51:11 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:51:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:51:12 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:51:12 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:52:38 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 11:40:03 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:40:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:40:03 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:40:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:40:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:40:10 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:40:11 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:40:11 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:40:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476ce59eb0aded279b30f21d862e0846aa2198c8612836491ccf43537ead91d`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 8.6 MB (8629941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3d5d5b992c14b7ccd5ba5d0dc4ee9f302f78fc4b1adb80c1266ffba391647b`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 9.5 MB (9512911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919c5072dcfb00cd4f7c42f8155df36c012308e91f6ab988c3b6b7d24f66a7d6`  
		Last Modified: Sat, 04 Nov 2017 01:14:37 GMT  
		Size: 50.3 MB (50348756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe54d07f2d7d5369101afd2048fa0ffddee842f09dd749640097615b9f8a8e3b`  
		Last Modified: Sat, 04 Nov 2017 06:04:49 GMT  
		Size: 893.7 KB (893719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1722f33334375f86b2935f72b67c0fd336aec559d77baf62025c5e85628423e`  
		Last Modified: Sat, 04 Nov 2017 06:04:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d82124bae47ccf1443248017728636b7b8e346f85156565592ff297990f7f4`  
		Last Modified: Sat, 04 Nov 2017 06:04:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130279523749da22c09907272cb21290013930a4fecb8f76d79658eb2b28b638`  
		Last Modified: Sat, 04 Nov 2017 06:05:33 GMT  
		Size: 285.2 MB (285215447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16abf8c1218df53e949138fe8d4c8952312a3737547c740ce7e8240e6a04710`  
		Last Modified: Sat, 04 Nov 2017 11:46:14 GMT  
		Size: 71.1 MB (71076126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf00ce6394f4228c1757cd31506976e3c08a2980803903358a309013dcaf2a30`  
		Last Modified: Sat, 04 Nov 2017 11:46:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jdk-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre`

```console
$ docker pull gradle@sha256:e4390c906dffcb2948d5d58d377ee152bb3d22bf51b6f2b7ab07e3951f076763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre` - linux; amd64

```console
$ docker pull gradle@sha256:16382bdc50e729404952ae02f6b8f8b7072625737df1d48dcaa0ba48d4ae62b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298165160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d745423dc60ef13b1117ae66d7dda180df0a31157e26dfd75ec3104376bb8e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:19 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9653b7b4ee1950653afb7e0f1e586de3d41335f6fd76aa27ae7e348d4371ef0`  
		Last Modified: Sat, 04 Nov 2017 11:43:52 GMT  
		Size: 71.1 MB (71075668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adad8c3c06123a0aed33e4a4d8351d4d83ab0953366b34c10b23f539e058a48`  
		Last Modified: Sat, 04 Nov 2017 11:43:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre7`

```console
$ docker pull gradle@sha256:ea3f4cfcad3d41e0b397c1a646e77175b22b19e8df9ed10e1a7a1f49f15cba4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre7` - linux; amd64

```console
$ docker pull gradle@sha256:b594e9aeec9cc7d69d994b64688772a7f3eb79211559117ebe2d7e3f6f5a6458
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261065704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d152330f8ff1d6f25248b2ec06dc33d442c44734a2622783d15cf0b4a7be3cd`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:42:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:42:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:42:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 05:43:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:37:19 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:37:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:15 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73e29532543f210524cfbf7a5f7841d76a2f26b0258f83e88817fec3c1931dd`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 795.6 KB (795593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed98915939eb67bd35a04238b090a92f86a0dafe9807d20ac34615e9ca1a94b4`  
		Last Modified: Sat, 04 Nov 2017 05:58:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afdebfc1908cbdf3ea58cca4249d59825e381afb9ff61ae7d745e0b8416381`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3409d1f5c73f2d829ea7eb2916bd6d1b18802861a848cbf8635f4ab4f1cc179b`  
		Last Modified: Sat, 04 Nov 2017 05:59:23 GMT  
		Size: 117.3 MB (117333928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e80bdcd5d1302e1f2a381fc6996ae4a5fa19b4b69338aa98575a1899b637cd`  
		Last Modified: Sat, 04 Nov 2017 11:41:28 GMT  
		Size: 71.1 MB (71075997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349890494af5b286a9f73ec0da442cb058e026f52e7030330ea958859b32ff54`  
		Last Modified: Sat, 04 Nov 2017 11:41:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre7-alpine`

```console
$ docker pull gradle@sha256:cce968d1a1e1a31fe8a63ff2b9691e187c600a9d2461914c84a9b1c7eaf68547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:a57185343b3ea7679bd1bbe767781eccd53501c74cd0c1c12d3499d869200962
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134553188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dea104d4eb967816b0451a66d34123641d2faf93250257acfa4d3d9085960e0`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 04 Nov 2017 05:45:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_VERSION=7u131
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Sat, 04 Nov 2017 05:45:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:38:44 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:38:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:38:44 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:38:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc603c55e576ffeaa5edb02cd3553c064d87070bc545bd25f5a3dd160bfe11e`  
		Last Modified: Sat, 04 Nov 2017 06:00:17 GMT  
		Size: 61.1 MB (61131799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5080b89073708e9e1569cc437172bf9acfb89241f47996673eca20182dc0a7`  
		Last Modified: Sat, 04 Nov 2017 11:42:34 GMT  
		Size: 71.4 MB (71429577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6995b56079c71d03ac5faa0ad3acc9c82d6b927ecaa9d6375b132702eae0ae`  
		Last Modified: Sat, 04 Nov 2017 11:42:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre8`

```console
$ docker pull gradle@sha256:e4390c906dffcb2948d5d58d377ee152bb3d22bf51b6f2b7ab07e3951f076763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:16382bdc50e729404952ae02f6b8f8b7072625737df1d48dcaa0ba48d4ae62b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298165160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d745423dc60ef13b1117ae66d7dda180df0a31157e26dfd75ec3104376bb8e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:19 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9653b7b4ee1950653afb7e0f1e586de3d41335f6fd76aa27ae7e348d4371ef0`  
		Last Modified: Sat, 04 Nov 2017 11:43:52 GMT  
		Size: 71.1 MB (71075668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adad8c3c06123a0aed33e4a4d8351d4d83ab0953366b34c10b23f539e058a48`  
		Last Modified: Sat, 04 Nov 2017 11:43:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre8-alpine`

```console
$ docker pull gradle@sha256:3489ae564e0d2beee95eca4c342939a9cd79c8ec97b6b56707ad28e3682d7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:01d681bc52a2c3c178867ed1545d7c07aa49c3faa020345bba9b6b2828c7b919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127683270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7a893bb09bc4a6ab8ad2c41a285135da1d280e50c5cd107008182868dffe88`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073db7a5b861e42d864c1bb09b38d4f7a1c50038077375643b2d2ecc050ab64b`  
		Last Modified: Sat, 04 Nov 2017 11:45:29 GMT  
		Size: 71.4 MB (71405071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9bdbee97b1e7289adcd481fb03961117d74212e7ba0fd4815b438837b3fa8`  
		Last Modified: Sat, 04 Nov 2017 11:45:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre9`

```console
$ docker pull gradle@sha256:b271d274cdfbb6b2c1023a4978f3a2fea1af91659ed83335810fa92ac04f7284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre9` - linux; amd64

```console
$ docker pull gradle@sha256:4c274a2c9ee316be5d81bd39c5537f75435e30c30ab8bdd9c7a1685445e5c5c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337449352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06665b3060c692b8658be7719df8ddd41a146889d232d6f2c7eb6875627b6bf1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:52:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:53:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:54:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:40:22 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:40:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:40:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:40:27 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:40:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476ce59eb0aded279b30f21d862e0846aa2198c8612836491ccf43537ead91d`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 8.6 MB (8629941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3d5d5b992c14b7ccd5ba5d0dc4ee9f302f78fc4b1adb80c1266ffba391647b`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 9.5 MB (9512911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a4ab4d338c6fe266ffb6aa9aec5ac796635105ee7826dab7ffb85c69ed0ca9`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 855.4 KB (855445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b6b2551273c2cd035d0ce577a6db36a755fe8fb835fb6dfe3e7f5b418843ff`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f6bd99b1fdcc2bdb46fdf8f54e74c14cd99e20d198afd8fe3bc1c51e255c7`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffc2093aa6b005ed68ae00a9033489c9b2efbfcc223a68b32c517f592d25d6a`  
		Last Modified: Sat, 04 Nov 2017 06:07:43 GMT  
		Size: 199.8 MB (199812610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89126d17f9a96d06b53327309ba47233308dcd612e48adaccf35de719264caf`  
		Last Modified: Sat, 04 Nov 2017 11:46:44 GMT  
		Size: 71.1 MB (71075980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45746e26dca2544145ee05553564a3466cc961b703e16223e3bec08c88eb44a3`  
		Last Modified: Sat, 04 Nov 2017 11:46:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.2-jre-alpine`

```console
$ docker pull gradle@sha256:3489ae564e0d2beee95eca4c342939a9cd79c8ec97b6b56707ad28e3682d7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.2-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:01d681bc52a2c3c178867ed1545d7c07aa49c3faa020345bba9b6b2828c7b919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127683270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7a893bb09bc4a6ab8ad2c41a285135da1d280e50c5cd107008182868dffe88`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073db7a5b861e42d864c1bb09b38d4f7a1c50038077375643b2d2ecc050ab64b`  
		Last Modified: Sat, 04 Nov 2017 11:45:29 GMT  
		Size: 71.4 MB (71405071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9bdbee97b1e7289adcd481fb03961117d74212e7ba0fd4815b438837b3fa8`  
		Last Modified: Sat, 04 Nov 2017 11:45:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7`

```console
$ docker pull gradle@sha256:4b5f3e624ae145353a7198a8c8c154ef80f4d6f6b5fc606c6c70ab87bc6c1ea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:8f82753f12a2a2496d79a898e5651e92494c9be29bcf4cda9051b8b000bd5d5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.3 MB (316341922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:422489de81956068a996c8fe144ed4cea4a371672baeed16fc703b9fff43089b`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:37:31 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:37:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 05:37:33 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 05:39:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:37:03 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:37:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:37:03 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:37:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:37:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:37:09 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:37:09 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:37:09 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:37:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0683814c2d56fd3a057ffdbc2fde15c60c9abbc9aabaa4b740aac847a85f638f`  
		Last Modified: Sat, 04 Nov 2017 01:13:38 GMT  
		Size: 43.2 MB (43227933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d657d9d8089d9f6342d56d8072181cc5423b8a51bb37472f349e07bba1fe11f8`  
		Last Modified: Sat, 04 Nov 2017 05:57:16 GMT  
		Size: 828.7 KB (828671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67684d654fe2ea2f155a86ad76daba9aa7f2d48dff8a56d8723eb973b5161a66`  
		Last Modified: Sat, 04 Nov 2017 05:57:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c754d63a7fadf6e23efb2a85eb9119ca3683c1e0bf6fc9af6d0d54e0b4ed340`  
		Last Modified: Sat, 04 Nov 2017 05:57:14 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4dedd073758af2446ca22a0a59341ebfd21411d482f722ad5c8b88a6ef9bdc`  
		Last Modified: Sat, 04 Nov 2017 05:57:35 GMT  
		Size: 129.3 MB (129349147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b387d86a6b54368693245c671cc19172b0ccae6161842d20ffef3dee46b2fb`  
		Last Modified: Sat, 04 Nov 2017 11:40:59 GMT  
		Size: 71.1 MB (71075983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:541502b58da5d19cca587228f44a75b8c7fb29e7dbe9df25dad12858b1977247`  
		Last Modified: Sat, 04 Nov 2017 11:40:52 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:fc6e0c8090d80dd36081c7435d441b5529d25bd48dd76c8bf2aa0222d1a294f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c46c27bc74e60e1973c21983ba7671813b8a6a0cd86292582f8ce9aac7b7b310
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.9 MB (150866231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3edc72155bba85261246df6c0499b8667f478c7d63276b5cd215d7f05630c35`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:41:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 04 Nov 2017 05:41:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 04 Nov 2017 05:41:41 GMT
ENV JAVA_VERSION=7u131
# Sat, 04 Nov 2017 05:41:41 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Sat, 04 Nov 2017 05:41:52 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:38:29 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:38:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:38:29 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:38:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:36 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:37 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:37 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b523c1c6444e443426e81748ff890fec891bcce7b913e7324c0e2ac608dab06`  
		Last Modified: Sat, 04 Nov 2017 05:58:41 GMT  
		Size: 77.4 MB (77433041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bdc2866cbd809191c7d33cad6c08404efbc803cc39da717cecaa8fc74534b3`  
		Last Modified: Sat, 04 Nov 2017 11:41:59 GMT  
		Size: 71.4 MB (71441378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506d5cba9790d243be2201b1c37e7d53762782420d4634885cf6bb1f5d6bfbd8`  
		Last Modified: Sat, 04 Nov 2017 11:41:51 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk9`

```console
$ docker pull gradle@sha256:70b824bc4014c29200ae65df19d8302cc965f017d7c0430c698045db178fd8f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:778c1a41ed47747d6cffa1d3a84938f1934284ea3beaa178fa831d359ec27bbd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.2 MB (473239365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e8ba528cc96fa474b69429b13c2f5246999773ff7d3ad8497266bd1cdf2cf26`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:52:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:53:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:51:10 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:51:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:51:11 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:51:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:51:12 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:51:12 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:52:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:52:38 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 11:40:03 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:40:03 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:40:03 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:40:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:40:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:40:10 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:40:11 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:40:11 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:40:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476ce59eb0aded279b30f21d862e0846aa2198c8612836491ccf43537ead91d`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 8.6 MB (8629941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3d5d5b992c14b7ccd5ba5d0dc4ee9f302f78fc4b1adb80c1266ffba391647b`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 9.5 MB (9512911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:919c5072dcfb00cd4f7c42f8155df36c012308e91f6ab988c3b6b7d24f66a7d6`  
		Last Modified: Sat, 04 Nov 2017 01:14:37 GMT  
		Size: 50.3 MB (50348756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe54d07f2d7d5369101afd2048fa0ffddee842f09dd749640097615b9f8a8e3b`  
		Last Modified: Sat, 04 Nov 2017 06:04:49 GMT  
		Size: 893.7 KB (893719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1722f33334375f86b2935f72b67c0fd336aec559d77baf62025c5e85628423e`  
		Last Modified: Sat, 04 Nov 2017 06:04:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d82124bae47ccf1443248017728636b7b8e346f85156565592ff297990f7f4`  
		Last Modified: Sat, 04 Nov 2017 06:04:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130279523749da22c09907272cb21290013930a4fecb8f76d79658eb2b28b638`  
		Last Modified: Sat, 04 Nov 2017 06:05:33 GMT  
		Size: 285.2 MB (285215447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16abf8c1218df53e949138fe8d4c8952312a3737547c740ce7e8240e6a04710`  
		Last Modified: Sat, 04 Nov 2017 11:46:14 GMT  
		Size: 71.1 MB (71076126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf00ce6394f4228c1757cd31506976e3c08a2980803903358a309013dcaf2a30`  
		Last Modified: Sat, 04 Nov 2017 11:46:05 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:d4218e213e9fa4a4e7715eeede9cfc8978834662c49e7990da44af47a34d7ba9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:9e7848807d38b84b1e690dab4d17cb1e4d2436af2100ccd1131b12a35be68e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143452531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:874e93a4569c2234a2cd330d9b7f5a615ae773e9c2176d9b298d58a61d96bf24`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 04 Nov 2017 05:48:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:48:22 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:48:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:30 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:31 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:38 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:39 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7678525069841024e8702b5d9dbc066f2c8970afee9c11248f7af18c147ec3`  
		Last Modified: Sat, 04 Nov 2017 06:02:25 GMT  
		Size: 70.1 MB (70053766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aba241b8126b285fa17911258b73e2d9d28896e09d9301857441ed2957fc1a1`  
		Last Modified: Sat, 04 Nov 2017 11:44:30 GMT  
		Size: 71.4 MB (71406953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74681def917d27245241e20e901257491cd73dec923257dd039a0622e4461023`  
		Last Modified: Sat, 04 Nov 2017 11:44:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:e4390c906dffcb2948d5d58d377ee152bb3d22bf51b6f2b7ab07e3951f076763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

```console
$ docker pull gradle@sha256:16382bdc50e729404952ae02f6b8f8b7072625737df1d48dcaa0ba48d4ae62b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298165160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d745423dc60ef13b1117ae66d7dda180df0a31157e26dfd75ec3104376bb8e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:19 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9653b7b4ee1950653afb7e0f1e586de3d41335f6fd76aa27ae7e348d4371ef0`  
		Last Modified: Sat, 04 Nov 2017 11:43:52 GMT  
		Size: 71.1 MB (71075668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adad8c3c06123a0aed33e4a4d8351d4d83ab0953366b34c10b23f539e058a48`  
		Last Modified: Sat, 04 Nov 2017 11:43:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:ea3f4cfcad3d41e0b397c1a646e77175b22b19e8df9ed10e1a7a1f49f15cba4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

```console
$ docker pull gradle@sha256:b594e9aeec9cc7d69d994b64688772a7f3eb79211559117ebe2d7e3f6f5a6458
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261065704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d152330f8ff1d6f25248b2ec06dc33d442c44734a2622783d15cf0b4a7be3cd`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:30:05 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Mon, 09 Oct 2017 21:30:05 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:50:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:50:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:42:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:42:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:42:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:42:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 05:42:08 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 05:43:54 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:37:19 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:37:20 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:37:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:15 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:15 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5329942f4e13e951ce053802ed6e828ec102ebddfd5df71452f8c573307b5d2d`  
		Last Modified: Sat, 04 Nov 2017 01:13:15 GMT  
		Size: 19.3 MB (19264546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e73e29532543f210524cfbf7a5f7841d76a2f26b0258f83e88817fec3c1931dd`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 795.6 KB (795593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed98915939eb67bd35a04238b090a92f86a0dafe9807d20ac34615e9ca1a94b4`  
		Last Modified: Sat, 04 Nov 2017 05:58:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afdebfc1908cbdf3ea58cca4249d59825e381afb9ff61ae7d745e0b8416381`  
		Last Modified: Sat, 04 Nov 2017 05:58:58 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3409d1f5c73f2d829ea7eb2916bd6d1b18802861a848cbf8635f4ab4f1cc179b`  
		Last Modified: Sat, 04 Nov 2017 05:59:23 GMT  
		Size: 117.3 MB (117333928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12e80bdcd5d1302e1f2a381fc6996ae4a5fa19b4b69338aa98575a1899b637cd`  
		Last Modified: Sat, 04 Nov 2017 11:41:28 GMT  
		Size: 71.1 MB (71075997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349890494af5b286a9f73ec0da442cb058e026f52e7030330ea958859b32ff54`  
		Last Modified: Sat, 04 Nov 2017 11:41:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:cce968d1a1e1a31fe8a63ff2b9691e187c600a9d2461914c84a9b1c7eaf68547
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:a57185343b3ea7679bd1bbe767781eccd53501c74cd0c1c12d3499d869200962
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134553188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dea104d4eb967816b0451a66d34123641d2faf93250257acfa4d3d9085960e0`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 04 Nov 2017 05:45:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_VERSION=7u131
# Sat, 04 Nov 2017 05:45:28 GMT
ENV JAVA_ALPINE_VERSION=7.131.2.6.9-r1
# Sat, 04 Nov 2017 05:45:41 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:38:44 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:38:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:38:44 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:38:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:38:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:38:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:38:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:38:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:38:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc603c55e576ffeaa5edb02cd3553c064d87070bc545bd25f5a3dd160bfe11e`  
		Last Modified: Sat, 04 Nov 2017 06:00:17 GMT  
		Size: 61.1 MB (61131799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf5080b89073708e9e1569cc437172bf9acfb89241f47996673eca20182dc0a7`  
		Last Modified: Sat, 04 Nov 2017 11:42:34 GMT  
		Size: 71.4 MB (71429577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6995b56079c71d03ac5faa0ad3acc9c82d6b927ecaa9d6375b132702eae0ae`  
		Last Modified: Sat, 04 Nov 2017 11:42:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:e4390c906dffcb2948d5d58d377ee152bb3d22bf51b6f2b7ab07e3951f076763
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

```console
$ docker pull gradle@sha256:16382bdc50e729404952ae02f6b8f8b7072625737df1d48dcaa0ba48d4ae62b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298165160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d745423dc60ef13b1117ae66d7dda180df0a31157e26dfd75ec3104376bb8e`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:48:36 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:48:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:48:38 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:48:38 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:50:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:50:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:16 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:19 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:20 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3adc05996e38a93e8e2585cc5df22a66fac151eee215f3491bee91d0b97e52`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 852.3 KB (852282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44753faac15ca98504aa297b8b2bbc354d5cf29045d0915fa02aea4489ec4490`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1233f777b5b8e4deb49038055315e320f02e9eb63e2a3ecc4c3c589a61e9009`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bcc5b1cf03a07e6f520a69fa7663b44c99f0933da944a5d806f9b366f48a3`  
		Last Modified: Sat, 04 Nov 2017 06:03:40 GMT  
		Size: 165.4 MB (165393338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc48ebfa00c33dd298e1517555e5cf90655e3b454abc25690086072c4c43cb5`  
		Last Modified: Sat, 04 Nov 2017 06:02:52 GMT  
		Size: 272.1 KB (272062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9653b7b4ee1950653afb7e0f1e586de3d41335f6fd76aa27ae7e348d4371ef0`  
		Last Modified: Sat, 04 Nov 2017 11:43:52 GMT  
		Size: 71.1 MB (71075668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adad8c3c06123a0aed33e4a4d8351d4d83ab0953366b34c10b23f539e058a48`  
		Last Modified: Sat, 04 Nov 2017 11:43:46 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:3489ae564e0d2beee95eca4c342939a9cd79c8ec97b6b56707ad28e3682d7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:01d681bc52a2c3c178867ed1545d7c07aa49c3faa020345bba9b6b2828c7b919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127683270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7a893bb09bc4a6ab8ad2c41a285135da1d280e50c5cd107008182868dffe88`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073db7a5b861e42d864c1bb09b38d4f7a1c50038077375643b2d2ecc050ab64b`  
		Last Modified: Sat, 04 Nov 2017 11:45:29 GMT  
		Size: 71.4 MB (71405071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9bdbee97b1e7289adcd481fb03961117d74212e7ba0fd4815b438837b3fa8`  
		Last Modified: Sat, 04 Nov 2017 11:45:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:b271d274cdfbb6b2c1023a4978f3a2fea1af91659ed83335810fa92ac04f7284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

```console
$ docker pull gradle@sha256:4c274a2c9ee316be5d81bd39c5537f75435e30c30ab8bdd9c7a1685445e5c5c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.4 MB (337449352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06665b3060c692b8658be7719df8ddd41a146889d232d6f2c7eb6875627b6bf1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:32:24 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Mon, 09 Oct 2017 21:32:24 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:52:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:52:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 05:53:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:53:33 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:53:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 05:53:34 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 05:54:20 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 11:40:22 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:40:22 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:40:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:40:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:40:27 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:40:28 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:40:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c476ce59eb0aded279b30f21d862e0846aa2198c8612836491ccf43537ead91d`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 8.6 MB (8629941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3d5d5b992c14b7ccd5ba5d0dc4ee9f302f78fc4b1adb80c1266ffba391647b`  
		Last Modified: Sat, 04 Nov 2017 01:14:17 GMT  
		Size: 9.5 MB (9512911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a4ab4d338c6fe266ffb6aa9aec5ac796635105ee7826dab7ffb85c69ed0ca9`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 855.4 KB (855445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b6b2551273c2cd035d0ce577a6db36a755fe8fb835fb6dfe3e7f5b418843ff`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f6bd99b1fdcc2bdb46fdf8f54e74c14cd99e20d198afd8fe3bc1c51e255c7`  
		Last Modified: Sat, 04 Nov 2017 06:07:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ffc2093aa6b005ed68ae00a9033489c9b2efbfcc223a68b32c517f592d25d6a`  
		Last Modified: Sat, 04 Nov 2017 06:07:43 GMT  
		Size: 199.8 MB (199812610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89126d17f9a96d06b53327309ba47233308dcd612e48adaccf35de719264caf`  
		Last Modified: Sat, 04 Nov 2017 11:46:44 GMT  
		Size: 71.1 MB (71075980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45746e26dca2544145ee05553564a3466cc961b703e16223e3bec08c88eb44a3`  
		Last Modified: Sat, 04 Nov 2017 11:46:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:3489ae564e0d2beee95eca4c342939a9cd79c8ec97b6b56707ad28e3682d7d10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:01d681bc52a2c3c178867ed1545d7c07aa49c3faa020345bba9b6b2828c7b919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127683270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7a893bb09bc4a6ab8ad2c41a285135da1d280e50c5cd107008182868dffe88`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 03 Nov 2017 22:10:18 GMT
ADD file:1e87ff33d1b6765b793888cd50e01b2bd0dfe152b7dbb4048008bfc2658faea7 in / 
# Fri, 03 Nov 2017 22:10:18 GMT
CMD ["/bin/sh"]
# Sat, 04 Nov 2017 05:41:40 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:41:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 04 Nov 2017 05:50:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 04 Nov 2017 05:50:52 GMT
ENV JAVA_VERSION=8u131
# Sat, 04 Nov 2017 05:50:53 GMT
ENV JAVA_ALPINE_VERSION=8.131.11-r2
# Sat, 04 Nov 2017 05:51:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 11:39:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:45 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:53 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:53 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:b56ae66c29370df48e7377c8f9baa744a3958058a766793f821dadcb144a4647`  
		Last Modified: Wed, 25 Oct 2017 23:21:25 GMT  
		Size: 2.0 MB (1991435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cebc5bcaf8176775fb87f51b16c709f4c03f3848a658c9a400facb452c7cdc`  
		Last Modified: Sat, 04 Nov 2017 05:58:30 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b27fd892ecb54137910751102dfb835b185276f359a85b2ba953ce4436a4773`  
		Last Modified: Sat, 04 Nov 2017 06:04:34 GMT  
		Size: 54.3 MB (54286387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073db7a5b861e42d864c1bb09b38d4f7a1c50038077375643b2d2ecc050ab64b`  
		Last Modified: Sat, 04 Nov 2017 11:45:29 GMT  
		Size: 71.4 MB (71405071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e9bdbee97b1e7289adcd481fb03961117d74212e7ba0fd4815b438837b3fa8`  
		Last Modified: Sat, 04 Nov 2017 11:45:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:1472fb4607ab2650709e22fae358356fd3c756b88349ad21f1d91aacf3a7a756
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

```console
$ docker pull gradle@sha256:26c5494f552c991cae207b29ecc9a3a0d2bc160728af81ffe73029f7a8170306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.7 MB (365724228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2823b50581cb9b2dbd747965a92eac53e917b1c7b007b73d40561d1ab3d2646c`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 09 Oct 2017 21:33:25 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Mon, 09 Oct 2017 21:33:25 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 00:54:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 00:54:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 00:55:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 05:45:53 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 05:45:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 05:45:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 05:45:56 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 05:45:56 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 05:47:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 05:47:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 11:39:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 04 Nov 2017 11:39:01 GMT
ENV GRADLE_VERSION=4.2.1
# Sat, 04 Nov 2017 11:39:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
# Sat, 04 Nov 2017 11:39:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Sat, 04 Nov 2017 11:39:06 GMT
USER [gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 04 Nov 2017 11:39:06 GMT
WORKDIR /home/gradle
# Sat, 04 Nov 2017 11:39:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=b551cc04f2ca51c78dd14edb060621f0e5439bdfafa6fd167032a09ac708fbc0
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c1cae4f87837d9d61448aceb335992065dc5c80585391782500c4346903fba`  
		Last Modified: Sat, 04 Nov 2017 01:09:20 GMT  
		Size: 11.1 MB (11106957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7da8791d1177f333ca323342681219e16b2e3ceff3cc3811b84f20f2d89062`  
		Last Modified: Sat, 04 Nov 2017 01:09:15 GMT  
		Size: 4.3 MB (4335249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aff2cf9d6ff622a0f9e58d1473e124aada744e5754e1080a97a37b6339058d1`  
		Last Modified: Sat, 04 Nov 2017 01:09:26 GMT  
		Size: 50.0 MB (50021150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a0f3ebf69ddd4696d771377742fd6727719e031851e4f7e1ad2c413d362c2c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 891.9 KB (891927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2c8fc8b7d3ac546ae3562ce4038489f92242e1e073ca512434473bb85aa13c`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97509d4fb150de0cadca8e9617b9a1814f0c627a5cfbabd0ded3a75fec8da405`  
		Last Modified: Sat, 04 Nov 2017 06:00:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c607b4963f2420755ce8a793e2764a787f5cb4bdc1ae61eaf39d225808fb4b7b`  
		Last Modified: Sat, 04 Nov 2017 06:01:14 GMT  
		Size: 182.9 MB (182891519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fce948dda281e2b575280ff231e1ff21e14226fd30881eeb4206885121d389`  
		Last Modified: Sat, 04 Nov 2017 06:00:28 GMT  
		Size: 272.1 KB (272103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe8a5afe7004ad20e35911e8374fae6f3db5c6d43df06247a9562873f63c0ae`  
		Last Modified: Sat, 04 Nov 2017 11:43:01 GMT  
		Size: 71.1 MB (71075719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c9dcbe80f36111ad5f760d380bf6c0e013c74233afe9d2864bd8c45311428d`  
		Last Modified: Sat, 04 Nov 2017 11:42:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
