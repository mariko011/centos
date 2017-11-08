<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gradle`

-	[`gradle:4.3`](#gradle43)
-	[`gradle:4.3.0`](#gradle430)
-	[`gradle:4.3.0-alpine`](#gradle430-alpine)
-	[`gradle:4.3.0-jdk`](#gradle430-jdk)
-	[`gradle:4.3.0-jdk7`](#gradle430-jdk7)
-	[`gradle:4.3.0-jdk7-alpine`](#gradle430-jdk7-alpine)
-	[`gradle:4.3.0-jdk8`](#gradle430-jdk8)
-	[`gradle:4.3.0-jdk8-alpine`](#gradle430-jdk8-alpine)
-	[`gradle:4.3.0-jdk9`](#gradle430-jdk9)
-	[`gradle:4.3.0-jdk-alpine`](#gradle430-jdk-alpine)
-	[`gradle:4.3.0-jre`](#gradle430-jre)
-	[`gradle:4.3.0-jre7`](#gradle430-jre7)
-	[`gradle:4.3.0-jre7-alpine`](#gradle430-jre7-alpine)
-	[`gradle:4.3.0-jre8`](#gradle430-jre8)
-	[`gradle:4.3.0-jre8-alpine`](#gradle430-jre8-alpine)
-	[`gradle:4.3.0-jre9`](#gradle430-jre9)
-	[`gradle:4.3.0-jre-alpine`](#gradle430-jre-alpine)
-	[`gradle:4.3-alpine`](#gradle43-alpine)
-	[`gradle:4.3-jdk`](#gradle43-jdk)
-	[`gradle:4.3-jdk7`](#gradle43-jdk7)
-	[`gradle:4.3-jdk7-alpine`](#gradle43-jdk7-alpine)
-	[`gradle:4.3-jdk8`](#gradle43-jdk8)
-	[`gradle:4.3-jdk8-alpine`](#gradle43-jdk8-alpine)
-	[`gradle:4.3-jdk9`](#gradle43-jdk9)
-	[`gradle:4.3-jdk-alpine`](#gradle43-jdk-alpine)
-	[`gradle:4.3-jre`](#gradle43-jre)
-	[`gradle:4.3-jre7`](#gradle43-jre7)
-	[`gradle:4.3-jre7-alpine`](#gradle43-jre7-alpine)
-	[`gradle:4.3-jre8`](#gradle43-jre8)
-	[`gradle:4.3-jre8-alpine`](#gradle43-jre8-alpine)
-	[`gradle:4.3-jre9`](#gradle43-jre9)
-	[`gradle:4.3-jre-alpine`](#gradle43-jre-alpine)
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

## `gradle:4.3`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jdk`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jdk7`

```console
$ docker pull gradle@sha256:cffbc865052dae2918315495d3054a608abde6fd2d5131a5512884453be84044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:943bf1277470358fdc54334231b2e939bcdff2a7c472c9e80af7a25eb63b60ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318264582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcae419ae361877dbb0000010e965a12fec12b66c7c029f5238c75500138ec2`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:41 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:49:44 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 18:50:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:24:29 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:24:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:06:22 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:06:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:06:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:06:27 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:06:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4327c8f8e66f76d635cd77b3186598a5a64e9acf6e97f996da914ac05072aef2`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 828.7 KB (828683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48eeffa135e7f20af0d0d9ed5d25d1b018becbc1746a1a713177ff82f2ef139b`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b02403a19fa0838b13c276ec3eb695b8439a3c6ed42183c696b4a5c98b3d569`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d1f79adbd2f9f77774288d7500afe5f5718f882f28299b486a18190afea5b6`  
		Last Modified: Sat, 04 Nov 2017 18:58:43 GMT  
		Size: 129.3 MB (129348794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07011b398360b1cf551d771167947968d63bf0fcfd7b08a15603da47a989cf9`  
		Last Modified: Wed, 08 Nov 2017 20:17:45 GMT  
		Size: 73.0 MB (72998586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770d3cdb72be386e31e8658a4d5ea572db913e9ebde80881760f9a4af4876d85`  
		Last Modified: Wed, 08 Nov 2017 20:17:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jdk7-alpine`

```console
$ docker pull gradle@sha256:951050189d7f7730fd4a37f53aacf15ec534d41f8391d4a9d030dfbb4f7995e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c83ab32d73a423c17fcefc914b5045d96302d8927a30fa37a27e61e716923d2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152791080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c305b4051d1f372f469e0408556a73babf19dd18aaa2c1d6b71f5bd6685c05c`
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
# Wed, 08 Nov 2017 20:07:54 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:07:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:08:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:08:57 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:08:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:08:57 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:09:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:74f768ca2a0dbc5fc5fc9d88afdd967c95db05f27f2f05e35f0450990a7c667d`  
		Last Modified: Wed, 08 Nov 2017 20:19:11 GMT  
		Size: 73.4 MB (73366227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0498866c12d5e5df092cd4fb13217ab6dce9942a0e8426b7722e551234e4e3f`  
		Last Modified: Wed, 08 Nov 2017 20:19:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jdk8`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jdk8-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jdk9`

```console
$ docker pull gradle@sha256:5128b055e4aadaa30dca4ff1ce1e19850ec137c79e42bef66d1431f03fbbc918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:e1b978e8a3b2fb010c9b5238145936f320fcd855827a3722727fd3ef0f4fb913
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.2 MB (475162978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86fd0f28fb5dd50a03638f0b7f378524233d6b145358855600d4b2c7c5c6074`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:54:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:55:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:55:49 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 21:25:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:11:31 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:12:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:12:39 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:12:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:12:40 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:12:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b7995e681833c3d84c968418853a917689b0042028abec3fe207e5faccd49`  
		Last Modified: Sat, 04 Nov 2017 15:46:24 GMT  
		Size: 50.3 MB (50348398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba17810239b5966216df89e6b749821c7d9d9ac156e0987c1b5d1c6a0e05d5c`  
		Last Modified: Sat, 04 Nov 2017 19:04:03 GMT  
		Size: 893.8 KB (893765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1f01b39b42c5b5e23aa5c05366d610b1db9655e28c727d48f83133671447c`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8389e3e759fc9093031393afbcd3c96a8b0dfc09b0ac812512c119d43c6e`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94110959eca020bbed1fcffd00bc4c9c5162f1663126bee527f904083ae90d1d`  
		Last Modified: Sat, 04 Nov 2017 19:04:44 GMT  
		Size: 285.2 MB (285216688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a355044fb1e7cfa7bdfab0146ec1ea7944140fdcf304d30b80ce1daf38396eb`  
		Last Modified: Wed, 08 Nov 2017 20:25:50 GMT  
		Size: 73.0 MB (72998728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352437a03aa31a913f65b0684d25773db2e2488940dfd0694a9cf1c54791de7`  
		Last Modified: Wed, 08 Nov 2017 20:25:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jdk-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jre`

```console
$ docker pull gradle@sha256:8744e0440ef89a31389df5da0fbcb5e942eacfb9482aa734ff7cbb1effc59dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jre` - linux; amd64

```console
$ docker pull gradle@sha256:9937a9cd9966edfb6ea83049c904bf13e7ee2a067bd0d929e6bbca061fa3da7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300087497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d14fdde42b5827e56f03b8654207bdbd64b0a4d9cec4653d57aace03e26476`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 17:24:13 GMT
CMD ["gradle"]
# Tue, 07 Nov 2017 17:24:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:10:13 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:18 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc67afec49f8f930a508a2758fb15d3c72d68893bced304b351c4878a8b94da5`  
		Last Modified: Wed, 08 Nov 2017 20:22:20 GMT  
		Size: 73.0 MB (72998352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d081755742194a42021edbc4a4e27fff2b16681b80d529315de5b13d214f26`  
		Last Modified: Wed, 08 Nov 2017 20:22:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jre7`

```console
$ docker pull gradle@sha256:8d197b12ff865c41a8439b8c6bb2c5111004703e0f5c2fa776205aeb3e3b67a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jre7` - linux; amd64

```console
$ docker pull gradle@sha256:5bd5c785d39fad47488f04f892395441dc81bf03800d239032a494621c40a1d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262986069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03fc2d2003a1d77ba087679ccfe72b466a3900453b4a7d9369febc0329c0cac`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:50:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:50:50 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:50:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:50:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 18:52:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:24:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:24:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:06:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:06:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:07:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:07:33 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:07:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:07:33 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:07:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa4dbe97e5b63bd1346397b8654ed128fc921461eec37d422553901d4cc52b`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 795.6 KB (795608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e61d008c81f137f4c363ec8f7ec90a7f1a7bf47c3088ff9c2b7a407c09b2d42`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29ddaee35698323a54210b8b02af863070f19e84949e3e50eba7584027c66c7`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134c34ceaaa56b7851cfa92c81667602df25bb9fa28fef5d454b3f173873e174`  
		Last Modified: Sat, 04 Nov 2017 18:59:24 GMT  
		Size: 117.3 MB (117331537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16f46a9db086e14e196bbcba34f672208cbaf89cf2a442cdd5a39c942501688`  
		Last Modified: Wed, 08 Nov 2017 20:18:30 GMT  
		Size: 73.0 MB (72998602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a13473db2a7be497a59f4159d24989488ac5bc2d4bccae76919b9394bd6970`  
		Last Modified: Wed, 08 Nov 2017 20:18:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jre7-alpine`

```console
$ docker pull gradle@sha256:5ff0d2e888eb3393c9887141f588a06af883c59bb436a0d656daeb3b013d5814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:33bc4649870d2d35e6226a6564378a9890903b32b24981cffb222434604d0c96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136476661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f7a51fc307848bea66169ae68c96d282a83d84d0d383de10bee2528111e032`
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
# Wed, 08 Nov 2017 20:09:22 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:33 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:34 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:09:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:c31e06315dd324ea3cd62808a5fbcadeed4273b038863924b506e463ad3e30bc`  
		Last Modified: Wed, 08 Nov 2017 20:19:50 GMT  
		Size: 73.4 MB (73353049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ce1f23b52e049d9b5ae4107daa6524c7d1f4937f02192b99beecc91e9f8bce`  
		Last Modified: Wed, 08 Nov 2017 20:19:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jre8`

```console
$ docker pull gradle@sha256:8744e0440ef89a31389df5da0fbcb5e942eacfb9482aa734ff7cbb1effc59dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:9937a9cd9966edfb6ea83049c904bf13e7ee2a067bd0d929e6bbca061fa3da7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300087497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d14fdde42b5827e56f03b8654207bdbd64b0a4d9cec4653d57aace03e26476`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 17:24:13 GMT
CMD ["gradle"]
# Tue, 07 Nov 2017 17:24:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:10:13 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:18 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc67afec49f8f930a508a2758fb15d3c72d68893bced304b351c4878a8b94da5`  
		Last Modified: Wed, 08 Nov 2017 20:22:20 GMT  
		Size: 73.0 MB (72998352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d081755742194a42021edbc4a4e27fff2b16681b80d529315de5b13d214f26`  
		Last Modified: Wed, 08 Nov 2017 20:22:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jre8-alpine`

```console
$ docker pull gradle@sha256:087e1584eea84e1a9cd09ad23900528f00c99a7348c9eaf569b2ef19be010204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:70928f065f1dc73d1ed50dd3ea52af71196d18f90efcfe1b3bb5461dec500593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129603290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07cedb0f049cbed845352daf4506afd304f836bec366f592c1e32196c1d6ca`
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
# Wed, 08 Nov 2017 20:11:04 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:11:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:11:16 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:37df3fa36394c216777c4fe931277a8a5b1c817eb97f819f832dd3aa6bdb65fd`  
		Last Modified: Wed, 08 Nov 2017 20:25:02 GMT  
		Size: 73.3 MB (73325091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c963b6ea9954a1300b95e55a20fbfb0248d504c9debdd64962d78fbbc0718e`  
		Last Modified: Wed, 08 Nov 2017 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jre9`

```console
$ docker pull gradle@sha256:3525caee9c08ee401a42a7784dc696e6d00d455d0c1f3b7cd0609422dee60be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jre9` - linux; amd64

```console
$ docker pull gradle@sha256:146b731e512cad8c37f43023a0a1a258878bc845d558da5f13ed0990c3774ac7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339373314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f44456b13f8728e8f3ed12777d36b69234baa56dcdb0734f23b89f5e2b2d5c8`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:56:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:56:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:56:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:25:35 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:13:02 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:13:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:13:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:13:08 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:13:08 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:13:09 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:13:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c26c1c94d5d4a0ef5acdf7b1fbee94a790368e9614210ed68d7ecda436bea`  
		Last Modified: Sat, 04 Nov 2017 19:05:32 GMT  
		Size: 855.5 KB (855473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06b9b5dba20339e663479b51caf0676be4275b4afb0d6147c828ce6b1c6dbf4`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575425a3fcf40302c971a89bc2e0b0b1c99c7351390118233c122fc4b6125abf`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55eb4e2af396ff2ad411d2b965cf677cd6b57c24a5e87d90568a1e8d3a09b88`  
		Last Modified: Sat, 04 Nov 2017 19:06:04 GMT  
		Size: 199.8 MB (199813754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d8757fc3e31ac574c6af5f66c5761dbdcaf2ecd99fdfe14537fd7f3d5a138a`  
		Last Modified: Wed, 08 Nov 2017 20:26:27 GMT  
		Size: 73.0 MB (72998689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5283be5b59e99bc35a8a4458f66ed50864627356c082ee961f9d4297f348fb58`  
		Last Modified: Wed, 08 Nov 2017 20:26:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3.0-jre-alpine`

```console
$ docker pull gradle@sha256:087e1584eea84e1a9cd09ad23900528f00c99a7348c9eaf569b2ef19be010204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3.0-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:70928f065f1dc73d1ed50dd3ea52af71196d18f90efcfe1b3bb5461dec500593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129603290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07cedb0f049cbed845352daf4506afd304f836bec366f592c1e32196c1d6ca`
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
# Wed, 08 Nov 2017 20:11:04 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:11:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:11:16 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:37df3fa36394c216777c4fe931277a8a5b1c817eb97f819f832dd3aa6bdb65fd`  
		Last Modified: Wed, 08 Nov 2017 20:25:02 GMT  
		Size: 73.3 MB (73325091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c963b6ea9954a1300b95e55a20fbfb0248d504c9debdd64962d78fbbc0718e`  
		Last Modified: Wed, 08 Nov 2017 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jdk`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jdk7`

```console
$ docker pull gradle@sha256:cffbc865052dae2918315495d3054a608abde6fd2d5131a5512884453be84044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:943bf1277470358fdc54334231b2e939bcdff2a7c472c9e80af7a25eb63b60ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318264582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcae419ae361877dbb0000010e965a12fec12b66c7c029f5238c75500138ec2`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:41 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:49:44 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 18:50:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:24:29 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:24:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:06:22 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:06:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:06:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:06:27 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:06:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4327c8f8e66f76d635cd77b3186598a5a64e9acf6e97f996da914ac05072aef2`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 828.7 KB (828683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48eeffa135e7f20af0d0d9ed5d25d1b018becbc1746a1a713177ff82f2ef139b`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b02403a19fa0838b13c276ec3eb695b8439a3c6ed42183c696b4a5c98b3d569`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d1f79adbd2f9f77774288d7500afe5f5718f882f28299b486a18190afea5b6`  
		Last Modified: Sat, 04 Nov 2017 18:58:43 GMT  
		Size: 129.3 MB (129348794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07011b398360b1cf551d771167947968d63bf0fcfd7b08a15603da47a989cf9`  
		Last Modified: Wed, 08 Nov 2017 20:17:45 GMT  
		Size: 73.0 MB (72998586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770d3cdb72be386e31e8658a4d5ea572db913e9ebde80881760f9a4af4876d85`  
		Last Modified: Wed, 08 Nov 2017 20:17:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jdk7-alpine`

```console
$ docker pull gradle@sha256:951050189d7f7730fd4a37f53aacf15ec534d41f8391d4a9d030dfbb4f7995e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c83ab32d73a423c17fcefc914b5045d96302d8927a30fa37a27e61e716923d2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152791080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c305b4051d1f372f469e0408556a73babf19dd18aaa2c1d6b71f5bd6685c05c`
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
# Wed, 08 Nov 2017 20:07:54 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:07:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:08:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:08:57 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:08:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:08:57 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:09:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:74f768ca2a0dbc5fc5fc9d88afdd967c95db05f27f2f05e35f0450990a7c667d`  
		Last Modified: Wed, 08 Nov 2017 20:19:11 GMT  
		Size: 73.4 MB (73366227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0498866c12d5e5df092cd4fb13217ab6dce9942a0e8426b7722e551234e4e3f`  
		Last Modified: Wed, 08 Nov 2017 20:19:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jdk8`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jdk8-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jdk9`

```console
$ docker pull gradle@sha256:5128b055e4aadaa30dca4ff1ce1e19850ec137c79e42bef66d1431f03fbbc918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:e1b978e8a3b2fb010c9b5238145936f320fcd855827a3722727fd3ef0f4fb913
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.2 MB (475162978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86fd0f28fb5dd50a03638f0b7f378524233d6b145358855600d4b2c7c5c6074`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:54:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:55:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:55:49 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 21:25:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:11:31 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:12:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:12:39 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:12:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:12:40 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:12:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b7995e681833c3d84c968418853a917689b0042028abec3fe207e5faccd49`  
		Last Modified: Sat, 04 Nov 2017 15:46:24 GMT  
		Size: 50.3 MB (50348398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba17810239b5966216df89e6b749821c7d9d9ac156e0987c1b5d1c6a0e05d5c`  
		Last Modified: Sat, 04 Nov 2017 19:04:03 GMT  
		Size: 893.8 KB (893765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1f01b39b42c5b5e23aa5c05366d610b1db9655e28c727d48f83133671447c`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8389e3e759fc9093031393afbcd3c96a8b0dfc09b0ac812512c119d43c6e`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94110959eca020bbed1fcffd00bc4c9c5162f1663126bee527f904083ae90d1d`  
		Last Modified: Sat, 04 Nov 2017 19:04:44 GMT  
		Size: 285.2 MB (285216688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a355044fb1e7cfa7bdfab0146ec1ea7944140fdcf304d30b80ce1daf38396eb`  
		Last Modified: Wed, 08 Nov 2017 20:25:50 GMT  
		Size: 73.0 MB (72998728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352437a03aa31a913f65b0684d25773db2e2488940dfd0694a9cf1c54791de7`  
		Last Modified: Wed, 08 Nov 2017 20:25:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jdk-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jre`

```console
$ docker pull gradle@sha256:8744e0440ef89a31389df5da0fbcb5e942eacfb9482aa734ff7cbb1effc59dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jre` - linux; amd64

```console
$ docker pull gradle@sha256:9937a9cd9966edfb6ea83049c904bf13e7ee2a067bd0d929e6bbca061fa3da7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300087497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d14fdde42b5827e56f03b8654207bdbd64b0a4d9cec4653d57aace03e26476`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 17:24:13 GMT
CMD ["gradle"]
# Tue, 07 Nov 2017 17:24:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:10:13 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:18 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc67afec49f8f930a508a2758fb15d3c72d68893bced304b351c4878a8b94da5`  
		Last Modified: Wed, 08 Nov 2017 20:22:20 GMT  
		Size: 73.0 MB (72998352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d081755742194a42021edbc4a4e27fff2b16681b80d529315de5b13d214f26`  
		Last Modified: Wed, 08 Nov 2017 20:22:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jre7`

```console
$ docker pull gradle@sha256:8d197b12ff865c41a8439b8c6bb2c5111004703e0f5c2fa776205aeb3e3b67a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jre7` - linux; amd64

```console
$ docker pull gradle@sha256:5bd5c785d39fad47488f04f892395441dc81bf03800d239032a494621c40a1d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262986069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03fc2d2003a1d77ba087679ccfe72b466a3900453b4a7d9369febc0329c0cac`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:50:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:50:50 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:50:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:50:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 18:52:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:24:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:24:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:06:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:06:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:07:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:07:33 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:07:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:07:33 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:07:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa4dbe97e5b63bd1346397b8654ed128fc921461eec37d422553901d4cc52b`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 795.6 KB (795608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e61d008c81f137f4c363ec8f7ec90a7f1a7bf47c3088ff9c2b7a407c09b2d42`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29ddaee35698323a54210b8b02af863070f19e84949e3e50eba7584027c66c7`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134c34ceaaa56b7851cfa92c81667602df25bb9fa28fef5d454b3f173873e174`  
		Last Modified: Sat, 04 Nov 2017 18:59:24 GMT  
		Size: 117.3 MB (117331537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16f46a9db086e14e196bbcba34f672208cbaf89cf2a442cdd5a39c942501688`  
		Last Modified: Wed, 08 Nov 2017 20:18:30 GMT  
		Size: 73.0 MB (72998602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a13473db2a7be497a59f4159d24989488ac5bc2d4bccae76919b9394bd6970`  
		Last Modified: Wed, 08 Nov 2017 20:18:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jre7-alpine`

```console
$ docker pull gradle@sha256:5ff0d2e888eb3393c9887141f588a06af883c59bb436a0d656daeb3b013d5814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:33bc4649870d2d35e6226a6564378a9890903b32b24981cffb222434604d0c96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136476661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f7a51fc307848bea66169ae68c96d282a83d84d0d383de10bee2528111e032`
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
# Wed, 08 Nov 2017 20:09:22 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:33 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:34 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:09:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:c31e06315dd324ea3cd62808a5fbcadeed4273b038863924b506e463ad3e30bc`  
		Last Modified: Wed, 08 Nov 2017 20:19:50 GMT  
		Size: 73.4 MB (73353049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ce1f23b52e049d9b5ae4107daa6524c7d1f4937f02192b99beecc91e9f8bce`  
		Last Modified: Wed, 08 Nov 2017 20:19:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jre8`

```console
$ docker pull gradle@sha256:8744e0440ef89a31389df5da0fbcb5e942eacfb9482aa734ff7cbb1effc59dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:9937a9cd9966edfb6ea83049c904bf13e7ee2a067bd0d929e6bbca061fa3da7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300087497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d14fdde42b5827e56f03b8654207bdbd64b0a4d9cec4653d57aace03e26476`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 17:24:13 GMT
CMD ["gradle"]
# Tue, 07 Nov 2017 17:24:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:10:13 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:18 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc67afec49f8f930a508a2758fb15d3c72d68893bced304b351c4878a8b94da5`  
		Last Modified: Wed, 08 Nov 2017 20:22:20 GMT  
		Size: 73.0 MB (72998352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d081755742194a42021edbc4a4e27fff2b16681b80d529315de5b13d214f26`  
		Last Modified: Wed, 08 Nov 2017 20:22:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jre8-alpine`

```console
$ docker pull gradle@sha256:087e1584eea84e1a9cd09ad23900528f00c99a7348c9eaf569b2ef19be010204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:70928f065f1dc73d1ed50dd3ea52af71196d18f90efcfe1b3bb5461dec500593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129603290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07cedb0f049cbed845352daf4506afd304f836bec366f592c1e32196c1d6ca`
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
# Wed, 08 Nov 2017 20:11:04 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:11:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:11:16 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:37df3fa36394c216777c4fe931277a8a5b1c817eb97f819f832dd3aa6bdb65fd`  
		Last Modified: Wed, 08 Nov 2017 20:25:02 GMT  
		Size: 73.3 MB (73325091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c963b6ea9954a1300b95e55a20fbfb0248d504c9debdd64962d78fbbc0718e`  
		Last Modified: Wed, 08 Nov 2017 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jre9`

```console
$ docker pull gradle@sha256:3525caee9c08ee401a42a7784dc696e6d00d455d0c1f3b7cd0609422dee60be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jre9` - linux; amd64

```console
$ docker pull gradle@sha256:146b731e512cad8c37f43023a0a1a258878bc845d558da5f13ed0990c3774ac7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339373314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f44456b13f8728e8f3ed12777d36b69234baa56dcdb0734f23b89f5e2b2d5c8`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:56:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:56:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:56:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:25:35 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:13:02 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:13:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:13:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:13:08 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:13:08 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:13:09 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:13:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c26c1c94d5d4a0ef5acdf7b1fbee94a790368e9614210ed68d7ecda436bea`  
		Last Modified: Sat, 04 Nov 2017 19:05:32 GMT  
		Size: 855.5 KB (855473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06b9b5dba20339e663479b51caf0676be4275b4afb0d6147c828ce6b1c6dbf4`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575425a3fcf40302c971a89bc2e0b0b1c99c7351390118233c122fc4b6125abf`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55eb4e2af396ff2ad411d2b965cf677cd6b57c24a5e87d90568a1e8d3a09b88`  
		Last Modified: Sat, 04 Nov 2017 19:06:04 GMT  
		Size: 199.8 MB (199813754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d8757fc3e31ac574c6af5f66c5761dbdcaf2ecd99fdfe14537fd7f3d5a138a`  
		Last Modified: Wed, 08 Nov 2017 20:26:27 GMT  
		Size: 73.0 MB (72998689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5283be5b59e99bc35a8a4458f66ed50864627356c082ee961f9d4297f348fb58`  
		Last Modified: Wed, 08 Nov 2017 20:26:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:4.3-jre-alpine`

```console
$ docker pull gradle@sha256:087e1584eea84e1a9cd09ad23900528f00c99a7348c9eaf569b2ef19be010204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:4.3-jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:70928f065f1dc73d1ed50dd3ea52af71196d18f90efcfe1b3bb5461dec500593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129603290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07cedb0f049cbed845352daf4506afd304f836bec366f592c1e32196c1d6ca`
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
# Wed, 08 Nov 2017 20:11:04 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:11:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:11:16 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:37df3fa36394c216777c4fe931277a8a5b1c817eb97f819f832dd3aa6bdb65fd`  
		Last Modified: Wed, 08 Nov 2017 20:25:02 GMT  
		Size: 73.3 MB (73325091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c963b6ea9954a1300b95e55a20fbfb0248d504c9debdd64962d78fbbc0718e`  
		Last Modified: Wed, 08 Nov 2017 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7`

```console
$ docker pull gradle@sha256:cffbc865052dae2918315495d3054a608abde6fd2d5131a5512884453be84044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7` - linux; amd64

```console
$ docker pull gradle@sha256:943bf1277470358fdc54334231b2e939bcdff2a7c472c9e80af7a25eb63b60ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.3 MB (318264582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcae419ae361877dbb0000010e965a12fec12b66c7c029f5238c75500138ec2`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:25:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:49:41 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:49:44 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 18:49:45 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 18:50:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:24:29 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:24:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:06:22 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:06:22 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:06:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:06:27 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:06:27 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:06:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817c8cd48a09f6f7d54fc509d1890d349d1ba1720848531ed8bcb19fccc42962`  
		Last Modified: Sat, 04 Nov 2017 15:45:07 GMT  
		Size: 43.2 MB (43228197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4327c8f8e66f76d635cd77b3186598a5a64e9acf6e97f996da914ac05072aef2`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 828.7 KB (828683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48eeffa135e7f20af0d0d9ed5d25d1b018becbc1746a1a713177ff82f2ef139b`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b02403a19fa0838b13c276ec3eb695b8439a3c6ed42183c696b4a5c98b3d569`  
		Last Modified: Sat, 04 Nov 2017 18:58:26 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d1f79adbd2f9f77774288d7500afe5f5718f882f28299b486a18190afea5b6`  
		Last Modified: Sat, 04 Nov 2017 18:58:43 GMT  
		Size: 129.3 MB (129348794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07011b398360b1cf551d771167947968d63bf0fcfd7b08a15603da47a989cf9`  
		Last Modified: Wed, 08 Nov 2017 20:17:45 GMT  
		Size: 73.0 MB (72998586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770d3cdb72be386e31e8658a4d5ea572db913e9ebde80881760f9a4af4876d85`  
		Last Modified: Wed, 08 Nov 2017 20:17:36 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk7-alpine`

```console
$ docker pull gradle@sha256:951050189d7f7730fd4a37f53aacf15ec534d41f8391d4a9d030dfbb4f7995e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:c83ab32d73a423c17fcefc914b5045d96302d8927a30fa37a27e61e716923d2a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152791080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c305b4051d1f372f469e0408556a73babf19dd18aaa2c1d6b71f5bd6685c05c`
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
# Wed, 08 Nov 2017 20:07:54 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:07:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:08:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:08:57 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:08:57 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:08:57 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:09:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:74f768ca2a0dbc5fc5fc9d88afdd967c95db05f27f2f05e35f0450990a7c667d`  
		Last Modified: Wed, 08 Nov 2017 20:19:11 GMT  
		Size: 73.4 MB (73366227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0498866c12d5e5df092cd4fb13217ab6dce9942a0e8426b7722e551234e4e3f`  
		Last Modified: Wed, 08 Nov 2017 20:19:02 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk9`

```console
$ docker pull gradle@sha256:5128b055e4aadaa30dca4ff1ce1e19850ec137c79e42bef66d1431f03fbbc918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk9` - linux; amd64

```console
$ docker pull gradle@sha256:e1b978e8a3b2fb010c9b5238145936f320fcd855827a3722727fd3ef0f4fb913
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.2 MB (475162978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d86fd0f28fb5dd50a03638f0b7f378524233d6b145358855600d4b2c7c5c6074`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:54:54 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:54:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:54:56 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:55:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:55:49 GMT
CMD ["jshell"]
# Sat, 04 Nov 2017 21:25:16 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:11:31 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:12:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:12:39 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:12:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:12:40 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:12:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872b7995e681833c3d84c968418853a917689b0042028abec3fe207e5faccd49`  
		Last Modified: Sat, 04 Nov 2017 15:46:24 GMT  
		Size: 50.3 MB (50348398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba17810239b5966216df89e6b749821c7d9d9ac156e0987c1b5d1c6a0e05d5c`  
		Last Modified: Sat, 04 Nov 2017 19:04:03 GMT  
		Size: 893.8 KB (893765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f1f01b39b42c5b5e23aa5c05366d610b1db9655e28c727d48f83133671447c`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00d8389e3e759fc9093031393afbcd3c96a8b0dfc09b0ac812512c119d43c6e`  
		Last Modified: Sat, 04 Nov 2017 19:04:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94110959eca020bbed1fcffd00bc4c9c5162f1663126bee527f904083ae90d1d`  
		Last Modified: Sat, 04 Nov 2017 19:04:44 GMT  
		Size: 285.2 MB (285216688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a355044fb1e7cfa7bdfab0146ec1ea7944140fdcf304d30b80ce1daf38396eb`  
		Last Modified: Wed, 08 Nov 2017 20:25:50 GMT  
		Size: 73.0 MB (72998728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1352437a03aa31a913f65b0684d25773db2e2488940dfd0694a9cf1c54791de7`  
		Last Modified: Wed, 08 Nov 2017 20:25:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk-alpine`

```console
$ docker pull gradle@sha256:70ffd9a3190928e8b1914f9ce287506467161128e8661ddd602166c46d68b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:7365a522b8074ee43caa343ee4606656b9ba995fd086400737e3c7f046f20225
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145373351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b803ec92baec0492de1a6af4be4cd670b3ee721ec6465cb00aab3c074207b803`
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
# Wed, 08 Nov 2017 20:10:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:48 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:49 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:cfb2f305b93d21f4bfd0c7a32b213426b3a2e68d1d71efe6623609302bd3020b`  
		Last Modified: Wed, 08 Nov 2017 20:23:36 GMT  
		Size: 73.3 MB (73327773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f0ae5e2bd65afb5edd87664b1daf633f25bc7df0868ec011cd614cb8afb0ad`  
		Last Modified: Wed, 08 Nov 2017 20:23:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:8744e0440ef89a31389df5da0fbcb5e942eacfb9482aa734ff7cbb1effc59dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre` - linux; amd64

```console
$ docker pull gradle@sha256:9937a9cd9966edfb6ea83049c904bf13e7ee2a067bd0d929e6bbca061fa3da7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300087497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d14fdde42b5827e56f03b8654207bdbd64b0a4d9cec4653d57aace03e26476`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 17:24:13 GMT
CMD ["gradle"]
# Tue, 07 Nov 2017 17:24:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:10:13 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:18 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc67afec49f8f930a508a2758fb15d3c72d68893bced304b351c4878a8b94da5`  
		Last Modified: Wed, 08 Nov 2017 20:22:20 GMT  
		Size: 73.0 MB (72998352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d081755742194a42021edbc4a4e27fff2b16681b80d529315de5b13d214f26`  
		Last Modified: Wed, 08 Nov 2017 20:22:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7`

```console
$ docker pull gradle@sha256:8d197b12ff865c41a8439b8c6bb2c5111004703e0f5c2fa776205aeb3e3b67a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7` - linux; amd64

```console
$ docker pull gradle@sha256:5bd5c785d39fad47488f04f892395441dc81bf03800d239032a494621c40a1d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.0 MB (262986069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a03fc2d2003a1d77ba087679ccfe72b466a3900453b4a7d9369febc0329c0cac`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:21:35 GMT
ADD file:55b071e2cfc3ea2f4bbf048d7d676e3c06a77a9a98d63f7af291f3decb495ec8 in / 
# Sat, 04 Nov 2017 05:21:36 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:25:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:25:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:50:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:50:50 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:50:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:50:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_VERSION=7u151
# Sat, 04 Nov 2017 18:50:54 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-1~deb8u1
# Sat, 04 Nov 2017 18:52:06 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:24:45 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:24:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:06:38 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:06:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:07:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:07:33 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:07:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:07:33 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:07:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:85b1f47fba49da65256f07c8790542a3880e9216f9c491965040f35ce2c6ca7a`  
		Last Modified: Mon, 09 Oct 2017 21:36:40 GMT  
		Size: 52.6 MB (52595124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6bd283713a743ee651be9e0a833547e00c6f31584a948db2df96fded4def55`  
		Last Modified: Sat, 04 Nov 2017 15:44:37 GMT  
		Size: 19.3 MB (19264682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa4dbe97e5b63bd1346397b8654ed128fc921461eec37d422553901d4cc52b`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 795.6 KB (795608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e61d008c81f137f4c363ec8f7ec90a7f1a7bf47c3088ff9c2b7a407c09b2d42`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29ddaee35698323a54210b8b02af863070f19e84949e3e50eba7584027c66c7`  
		Last Modified: Sat, 04 Nov 2017 18:59:07 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134c34ceaaa56b7851cfa92c81667602df25bb9fa28fef5d454b3f173873e174`  
		Last Modified: Sat, 04 Nov 2017 18:59:24 GMT  
		Size: 117.3 MB (117331537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b16f46a9db086e14e196bbcba34f672208cbaf89cf2a442cdd5a39c942501688`  
		Last Modified: Wed, 08 Nov 2017 20:18:30 GMT  
		Size: 73.0 MB (72998602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a13473db2a7be497a59f4159d24989488ac5bc2d4bccae76919b9394bd6970`  
		Last Modified: Wed, 08 Nov 2017 20:18:17 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre7-alpine`

```console
$ docker pull gradle@sha256:5ff0d2e888eb3393c9887141f588a06af883c59bb436a0d656daeb3b013d5814
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre7-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:33bc4649870d2d35e6226a6564378a9890903b32b24981cffb222434604d0c96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.5 MB (136476661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f7a51fc307848bea66169ae68c96d282a83d84d0d383de10bee2528111e032`
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
# Wed, 08 Nov 2017 20:09:22 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:33 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:33 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:34 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:09:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:c31e06315dd324ea3cd62808a5fbcadeed4273b038863924b506e463ad3e30bc`  
		Last Modified: Wed, 08 Nov 2017 20:19:50 GMT  
		Size: 73.4 MB (73353049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ce1f23b52e049d9b5ae4107daa6524c7d1f4937f02192b99beecc91e9f8bce`  
		Last Modified: Wed, 08 Nov 2017 20:19:41 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:8744e0440ef89a31389df5da0fbcb5e942eacfb9482aa734ff7cbb1effc59dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8` - linux; amd64

```console
$ docker pull gradle@sha256:9937a9cd9966edfb6ea83049c904bf13e7ee2a067bd0d929e6bbca061fa3da7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300087497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d14fdde42b5827e56f03b8654207bdbd64b0a4d9cec4653d57aace03e26476`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:53:28 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:53:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:53:29 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:53:30 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:54:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:54:40 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Nov 2017 17:24:13 GMT
CMD ["gradle"]
# Tue, 07 Nov 2017 17:24:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:10:13 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:10:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:10:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:10:18 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:10:19 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5161d2a139e23531bd57da2c4efcfb995ffc259cb71fe294d5c596cb7ed56820`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 852.2 KB (852248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7659b327f9ec020ee056493b2430bdeefef64099838c800336b961e86dd1d062`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce47e69f11aded41391731e054540d166020a44cfbc33c59dfff8093c954ca5d`  
		Last Modified: Sat, 04 Nov 2017 19:01:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d946df3a3d8d91f5878e3c2b324f9590e8541f62300e0ec727306b572b6660a`  
		Last Modified: Sat, 04 Nov 2017 19:01:48 GMT  
		Size: 165.4 MB (165392972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a57cba73d7977ca47d248fab866c392b2aae43508f8649dd0c515b12d5bd7dcf`  
		Last Modified: Sat, 04 Nov 2017 19:01:18 GMT  
		Size: 272.1 KB (272085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc67afec49f8f930a508a2758fb15d3c72d68893bced304b351c4878a8b94da5`  
		Last Modified: Wed, 08 Nov 2017 20:22:20 GMT  
		Size: 73.0 MB (72998352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d081755742194a42021edbc4a4e27fff2b16681b80d529315de5b13d214f26`  
		Last Modified: Wed, 08 Nov 2017 20:22:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8-alpine`

```console
$ docker pull gradle@sha256:087e1584eea84e1a9cd09ad23900528f00c99a7348c9eaf569b2ef19be010204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre8-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:70928f065f1dc73d1ed50dd3ea52af71196d18f90efcfe1b3bb5461dec500593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129603290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07cedb0f049cbed845352daf4506afd304f836bec366f592c1e32196c1d6ca`
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
# Wed, 08 Nov 2017 20:11:04 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:11:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:11:16 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:37df3fa36394c216777c4fe931277a8a5b1c817eb97f819f832dd3aa6bdb65fd`  
		Last Modified: Wed, 08 Nov 2017 20:25:02 GMT  
		Size: 73.3 MB (73325091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c963b6ea9954a1300b95e55a20fbfb0248d504c9debdd64962d78fbbc0718e`  
		Last Modified: Wed, 08 Nov 2017 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre9`

```console
$ docker pull gradle@sha256:3525caee9c08ee401a42a7784dc696e6d00d455d0c1f3b7cd0609422dee60be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre9` - linux; amd64

```console
$ docker pull gradle@sha256:146b731e512cad8c37f43023a0a1a258878bc845d558da5f13ed0990c3774ac7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.4 MB (339373314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f44456b13f8728e8f3ed12777d36b69234baa56dcdb0734f23b89f5e2b2d5c8`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:10 GMT
ADD file:d558b03d3d859cf66504349fc540b4c9ea26365896e7cc64fa87a79ca21bcf78 in / 
# Sat, 04 Nov 2017 05:26:11 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:28:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 18:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:56:05 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:56:05 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:56:06 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_VERSION=9.0.1+11
# Sat, 04 Nov 2017 18:56:09 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Sat, 04 Nov 2017 18:56:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 21:25:35 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:13:02 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:13:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:13:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:13:08 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:13:08 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:13:09 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:13:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3a8649ffa174245c68120e05b22db9c8a8f781cc4d9c24816fb562ecf8ab9652`  
		Last Modified: Mon, 09 Oct 2017 21:39:55 GMT  
		Size: 47.6 MB (47561948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b3f31b5b5d71ed7ce6bd30da25edc39f05c116f292f6e2a9a206cde538ae`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 8.6 MB (8629999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aedc2c7a79b6aa0fb79d2e79a62e840b7cf70414ece1c9b6fd747267ba76d55`  
		Last Modified: Sat, 04 Nov 2017 15:46:02 GMT  
		Size: 9.5 MB (9512934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c26c1c94d5d4a0ef5acdf7b1fbee94a790368e9614210ed68d7ecda436bea`  
		Last Modified: Sat, 04 Nov 2017 19:05:32 GMT  
		Size: 855.5 KB (855473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06b9b5dba20339e663479b51caf0676be4275b4afb0d6147c828ce6b1c6dbf4`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575425a3fcf40302c971a89bc2e0b0b1c99c7351390118233c122fc4b6125abf`  
		Last Modified: Sat, 04 Nov 2017 19:05:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55eb4e2af396ff2ad411d2b965cf677cd6b57c24a5e87d90568a1e8d3a09b88`  
		Last Modified: Sat, 04 Nov 2017 19:06:04 GMT  
		Size: 199.8 MB (199813754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d8757fc3e31ac574c6af5f66c5761dbdcaf2ecd99fdfe14537fd7f3d5a138a`  
		Last Modified: Wed, 08 Nov 2017 20:26:27 GMT  
		Size: 73.0 MB (72998689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5283be5b59e99bc35a8a4458f66ed50864627356c082ee961f9d4297f348fb58`  
		Last Modified: Wed, 08 Nov 2017 20:26:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre-alpine`

```console
$ docker pull gradle@sha256:087e1584eea84e1a9cd09ad23900528f00c99a7348c9eaf569b2ef19be010204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jre-alpine` - linux; amd64

```console
$ docker pull gradle@sha256:70928f065f1dc73d1ed50dd3ea52af71196d18f90efcfe1b3bb5461dec500593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129603290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a07cedb0f049cbed845352daf4506afd304f836bec366f592c1e32196c1d6ca`
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
# Wed, 08 Nov 2017 20:11:04 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:11:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Installing build dependencies" 	&& apk add --no-cache --virtual .build-deps 		ca-certificates 		openssl 		unzip 		&& echo "Downloading Gradle" 	&& wget -O gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum -c - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mkdir /opt 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln -s "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& apk del .build-deps 		&& echo "Adding gradle user and group" 	&& addgroup -S -g 1000 gradle 	&& adduser -D -S -G gradle -u 1000 -s /bin/ash gradle 	&& mkdir /home/gradle/.gradle 	&& chown -R gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:11:16 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:11:16 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:11:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
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
	-	`sha256:37df3fa36394c216777c4fe931277a8a5b1c817eb97f819f832dd3aa6bdb65fd`  
		Last Modified: Wed, 08 Nov 2017 20:25:02 GMT  
		Size: 73.3 MB (73325091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c963b6ea9954a1300b95e55a20fbfb0248d504c9debdd64962d78fbbc0718e`  
		Last Modified: Wed, 08 Nov 2017 20:24:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:72c6e4752236dbc52606140da99672e9e39f59febfe25dd759d9ad3be5bf485e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:latest` - linux; amd64

```console
$ docker pull gradle@sha256:9e3666be954f614912ea42dc7b6172e116095c5d392102163a89a0b9b546f168
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **367.6 MB (367647162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46f641e238d986f972be37c45d99185bf732d64763d3c1e679a82460d07d8e26`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 04 Nov 2017 05:26:40 GMT
ADD file:a71e077a42995a68ffe4834d85cfe26af4ea12aa8ed43decc03cc487124b1f70 in / 
# Sat, 04 Nov 2017 05:26:40 GMT
CMD ["bash"]
# Sat, 04 Nov 2017 15:30:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 15:30:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 04 Nov 2017 15:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 04 Nov 2017 18:52:27 GMT
ENV LANG=C.UTF-8
# Sat, 04 Nov 2017 18:52:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_VERSION=8u151
# Sat, 04 Nov 2017 18:52:31 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Sat, 04 Nov 2017 18:52:31 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 04 Nov 2017 18:53:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 04 Nov 2017 18:53:16 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 04 Nov 2017 21:25:01 GMT
CMD ["gradle"]
# Sat, 04 Nov 2017 21:25:02 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 08 Nov 2017 20:09:48 GMT
ENV GRADLE_VERSION=4.3
# Wed, 08 Nov 2017 20:09:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
# Wed, 08 Nov 2017 20:09:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Downloading Gradle" 	&& wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip" 		&& echo "Checking download hash" 	&& echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check - 		&& echo "Installing Gradle" 	&& unzip gradle.zip 	&& rm gradle.zip 	&& mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/" 	&& ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle 		&& echo "Adding gradle user and group" 	&& groupadd --system --gid 1000 gradle 	&& useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle 	&& mkdir /home/gradle/.gradle 	&& chown --recursive gradle:gradle /home/gradle 		&& echo "Symlinking root Gradle cache to gradle Gradle cache" 	&& ln -s /home/gradle/.gradle /root/.gradle
# Wed, 08 Nov 2017 20:09:54 GMT
USER [gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 08 Nov 2017 20:09:54 GMT
WORKDIR /home/gradle
# Wed, 08 Nov 2017 20:10:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=8dcbf44eef92575b475dcb1ce12b5f19d38dc79e84c662670248dc8b8247654c
RUN set -o errexit -o nounset 	&& echo "Testing Gradle installation" 	&& gradle --version
```

-	Layers:
	-	`sha256:3e17c6eae66cd23c59751c8d8f5eaf7044e0611dc5cebb12b1273be07cdac242`  
		Last Modified: Mon, 09 Oct 2017 21:41:38 GMT  
		Size: 45.1 MB (45129088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfb54153de72cf4a3cc0efc63ce86aadbf20ce22441eca2cc9aa395b91e3cf1`  
		Last Modified: Sat, 04 Nov 2017 15:47:27 GMT  
		Size: 11.1 MB (11106961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4ca6e73242a7c306a8175afdd4a7d648b35a5dd19523401e6ebb8f903fa0edc`  
		Last Modified: Sat, 04 Nov 2017 15:47:25 GMT  
		Size: 4.3 MB (4335274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bd198d0a5f34c083f529767ffc7052e2754810db4a258db1c560ac4c523730`  
		Last Modified: Sat, 04 Nov 2017 15:47:56 GMT  
		Size: 50.0 MB (50021087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4d78fb08d622a543fe48a8d8bc932fae257861c35c5ad07f21c48102bd1ce1`  
		Last Modified: Sat, 04 Nov 2017 18:59:40 GMT  
		Size: 891.9 KB (891947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3d1bdcab4b0ca41f94ab11c917c609e07c78993870e21d1f71841a7e19578e`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4853d1e6d0c10c3eb4de7eabd40e8cc9b20a78c3ab1754bcb1286658448509b0`  
		Last Modified: Sat, 04 Nov 2017 18:59:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e4624ad45ffa9e64288f35bb424be1cc94c5a33c573f12eb1e82f04800f417`  
		Last Modified: Sat, 04 Nov 2017 19:00:11 GMT  
		Size: 182.9 MB (182891789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbcd4c3ef937fe5c4c7bb9afca55d3d9f3d1068641a1f87b4a8dff02ef19e9a`  
		Last Modified: Sat, 04 Nov 2017 18:59:38 GMT  
		Size: 272.1 KB (272086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87c7865c2b5674f7883ec1c11a314b49d23bed1ac76f95ebf87c89727cf56b79`  
		Last Modified: Wed, 08 Nov 2017 20:20:32 GMT  
		Size: 73.0 MB (72998412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384a034122a537a44aac5089e799465c239cb93155ee035f078407eeb625b8f9`  
		Last Modified: Wed, 08 Nov 2017 20:20:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
