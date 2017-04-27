<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `maven`

-	[`maven:3.5.0-jdk-7`](#maven350-jdk-7)
-	[`maven:3.5-jdk-7`](#maven35-jdk-7)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3.5.0-jdk-7-onbuild`](#maven350-jdk-7-onbuild)
-	[`maven:3.5-jdk-7-onbuild`](#maven35-jdk-7-onbuild)
-	[`maven:3-jdk-7-onbuild`](#maven3-jdk-7-onbuild)
-	[`maven:3.5.0-jdk-7-alpine`](#maven350-jdk-7-alpine)
-	[`maven:3.5-jdk-7-alpine`](#maven35-jdk-7-alpine)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3.5.0-jdk-7-onbuild-alpine`](#maven350-jdk-7-onbuild-alpine)
-	[`maven:3.5-jdk-7-onbuild-alpine`](#maven35-jdk-7-onbuild-alpine)
-	[`maven:3-jdk-7-onbuild-alpine`](#maven3-jdk-7-onbuild-alpine)
-	[`maven:3.5.0-jdk-8`](#maven350-jdk-8)
-	[`maven:3.5.0`](#maven350)
-	[`maven:3.5-jdk-8`](#maven35-jdk-8)
-	[`maven:3.5`](#maven35)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3`](#maven3)
-	[`maven:latest`](#mavenlatest)
-	[`maven:3.5.0-jdk-8-onbuild`](#maven350-jdk-8-onbuild)
-	[`maven:3.5.0-onbuild`](#maven350-onbuild)
-	[`maven:3.5-jdk-8-onbuild`](#maven35-jdk-8-onbuild)
-	[`maven:3.5-onbuild`](#maven35-onbuild)
-	[`maven:3-jdk-8-onbuild`](#maven3-jdk-8-onbuild)
-	[`maven:3-onbuild`](#maven3-onbuild)
-	[`maven:onbuild`](#mavenonbuild)
-	[`maven:3.5.0-jdk-8-alpine`](#maven350-jdk-8-alpine)
-	[`maven:3.5.0-alpine`](#maven350-alpine)
-	[`maven:3.5-jdk-8-alpine`](#maven35-jdk-8-alpine)
-	[`maven:3.5-alpine`](#maven35-alpine)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-alpine`](#maven3-alpine)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:3.5.0-jdk-8-onbuild-alpine`](#maven350-jdk-8-onbuild-alpine)
-	[`maven:3.5.0-onbuild-alpine`](#maven350-onbuild-alpine)
-	[`maven:3.5-jdk-8-onbuild-alpine`](#maven35-jdk-8-onbuild-alpine)
-	[`maven:3.5-onbuild-alpine`](#maven35-onbuild-alpine)
-	[`maven:3-jdk-8-onbuild-alpine`](#maven3-jdk-8-onbuild-alpine)
-	[`maven:3-onbuild-alpine`](#maven3-onbuild-alpine)
-	[`maven:onbuild-alpine`](#mavenonbuild-alpine)
-	[`maven:3.5.0-jdk-9`](#maven350-jdk-9)
-	[`maven:3.5-jdk-9`](#maven35-jdk-9)
-	[`maven:3-jdk-9`](#maven3-jdk-9)
-	[`maven:3.5.0-jdk-9-onbuild`](#maven350-jdk-9-onbuild)
-	[`maven:3.5-jdk-9-onbuild`](#maven35-jdk-9-onbuild)
-	[`maven:3-jdk-9-onbuild`](#maven3-jdk-9-onbuild)

## `maven:3.5.0-jdk-7`

```console
$ docker pull maven@sha256:ff7b8efca7f0cf5369f66c3bdaa57e056973b5e39519b2e4b48fa919c00786ad
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265243351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc2d1f249869fae431d1b0333752caf58bf2f9eea8bd7cbb9e0d4273e23d1a8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 25 Apr 2017 00:38:30 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:38:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:07:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 01:29:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 27 Apr 2017 01:29:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 27 Apr 2017 01:29:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 27 Apr 2017 01:29:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 27 Apr 2017 01:29:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 27 Apr 2017 01:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 27 Apr 2017 01:29:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 27 Apr 2017 01:29:21 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 27 Apr 2017 01:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 27 Apr 2017 01:29:22 GMT
VOLUME [/root/.m2]
# Thu, 27 Apr 2017 01:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 27 Apr 2017 01:29:24 GMT
CMD ["mvn"]
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
	-	`sha256:66b1b3ab88c741ec5926f6739ed31bd7bb3fd696e671de0d63dbaa7ff87f4411`  
		Last Modified: Wed, 26 Apr 2017 23:15:40 GMT  
		Size: 140.9 MB (140921886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0339f475e80c6704c1ff2134c89276187b8bf944eb8e58d77ecd4f3013eae1e2`  
		Last Modified: Thu, 27 Apr 2017 01:31:48 GMT  
		Size: 8.7 MB (8672755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab109502a66b46de120119811f835a0a0d4e01abf4661c86652dd5d38058dad`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770772dccea97fb4c9b49052b278de3fad766ef43b2054132edfb504057e9a0`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7`

```console
$ docker pull maven@sha256:ff7b8efca7f0cf5369f66c3bdaa57e056973b5e39519b2e4b48fa919c00786ad
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265243351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc2d1f249869fae431d1b0333752caf58bf2f9eea8bd7cbb9e0d4273e23d1a8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 25 Apr 2017 00:38:30 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:38:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:07:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 01:29:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 27 Apr 2017 01:29:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 27 Apr 2017 01:29:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 27 Apr 2017 01:29:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 27 Apr 2017 01:29:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 27 Apr 2017 01:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 27 Apr 2017 01:29:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 27 Apr 2017 01:29:21 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 27 Apr 2017 01:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 27 Apr 2017 01:29:22 GMT
VOLUME [/root/.m2]
# Thu, 27 Apr 2017 01:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 27 Apr 2017 01:29:24 GMT
CMD ["mvn"]
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
	-	`sha256:66b1b3ab88c741ec5926f6739ed31bd7bb3fd696e671de0d63dbaa7ff87f4411`  
		Last Modified: Wed, 26 Apr 2017 23:15:40 GMT  
		Size: 140.9 MB (140921886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0339f475e80c6704c1ff2134c89276187b8bf944eb8e58d77ecd4f3013eae1e2`  
		Last Modified: Thu, 27 Apr 2017 01:31:48 GMT  
		Size: 8.7 MB (8672755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab109502a66b46de120119811f835a0a0d4e01abf4661c86652dd5d38058dad`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770772dccea97fb4c9b49052b278de3fad766ef43b2054132edfb504057e9a0`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:ff7b8efca7f0cf5369f66c3bdaa57e056973b5e39519b2e4b48fa919c00786ad
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265243351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cc2d1f249869fae431d1b0333752caf58bf2f9eea8bd7cbb9e0d4273e23d1a8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 25 Apr 2017 00:38:30 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:38:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:07:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 01:29:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 27 Apr 2017 01:29:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 27 Apr 2017 01:29:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 27 Apr 2017 01:29:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 27 Apr 2017 01:29:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 27 Apr 2017 01:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 27 Apr 2017 01:29:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 27 Apr 2017 01:29:21 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 27 Apr 2017 01:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 27 Apr 2017 01:29:22 GMT
VOLUME [/root/.m2]
# Thu, 27 Apr 2017 01:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 27 Apr 2017 01:29:24 GMT
CMD ["mvn"]
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
	-	`sha256:66b1b3ab88c741ec5926f6739ed31bd7bb3fd696e671de0d63dbaa7ff87f4411`  
		Last Modified: Wed, 26 Apr 2017 23:15:40 GMT  
		Size: 140.9 MB (140921886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0339f475e80c6704c1ff2134c89276187b8bf944eb8e58d77ecd4f3013eae1e2`  
		Last Modified: Thu, 27 Apr 2017 01:31:48 GMT  
		Size: 8.7 MB (8672755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab109502a66b46de120119811f835a0a0d4e01abf4661c86652dd5d38058dad`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770772dccea97fb4c9b49052b278de3fad766ef43b2054132edfb504057e9a0`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-onbuild`

```console
$ docker pull maven@sha256:eaa6449191836d2ed6103b446a7c17a837c00a1f07d6adb246222ed80718b3dd
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265243507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f40810c5104a2c2b55e2361a093af697ff6862c4cead4fcf9b50a45f179487`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 25 Apr 2017 00:38:30 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:38:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:07:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 01:29:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 27 Apr 2017 01:29:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 27 Apr 2017 01:29:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 27 Apr 2017 01:29:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 27 Apr 2017 01:29:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 27 Apr 2017 01:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 27 Apr 2017 01:29:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 27 Apr 2017 01:29:21 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 27 Apr 2017 01:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 27 Apr 2017 01:29:22 GMT
VOLUME [/root/.m2]
# Thu, 27 Apr 2017 01:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 27 Apr 2017 01:29:24 GMT
CMD ["mvn"]
# Thu, 27 Apr 2017 01:29:43 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:29:43 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:29:44 GMT
ONBUILD ADD . /usr/src/app
# Thu, 27 Apr 2017 01:29:45 GMT
ONBUILD RUN mvn install
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
	-	`sha256:66b1b3ab88c741ec5926f6739ed31bd7bb3fd696e671de0d63dbaa7ff87f4411`  
		Last Modified: Wed, 26 Apr 2017 23:15:40 GMT  
		Size: 140.9 MB (140921886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0339f475e80c6704c1ff2134c89276187b8bf944eb8e58d77ecd4f3013eae1e2`  
		Last Modified: Thu, 27 Apr 2017 01:31:48 GMT  
		Size: 8.7 MB (8672755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab109502a66b46de120119811f835a0a0d4e01abf4661c86652dd5d38058dad`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770772dccea97fb4c9b49052b278de3fad766ef43b2054132edfb504057e9a0`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e3fbfe2f7c47697cf0858fee3557a93adcb4c1c7375ff652c15ea27ef64db6`  
		Last Modified: Thu, 27 Apr 2017 01:33:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-onbuild`

```console
$ docker pull maven@sha256:eaa6449191836d2ed6103b446a7c17a837c00a1f07d6adb246222ed80718b3dd
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265243507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f40810c5104a2c2b55e2361a093af697ff6862c4cead4fcf9b50a45f179487`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 25 Apr 2017 00:38:30 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:38:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:07:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 01:29:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 27 Apr 2017 01:29:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 27 Apr 2017 01:29:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 27 Apr 2017 01:29:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 27 Apr 2017 01:29:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 27 Apr 2017 01:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 27 Apr 2017 01:29:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 27 Apr 2017 01:29:21 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 27 Apr 2017 01:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 27 Apr 2017 01:29:22 GMT
VOLUME [/root/.m2]
# Thu, 27 Apr 2017 01:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 27 Apr 2017 01:29:24 GMT
CMD ["mvn"]
# Thu, 27 Apr 2017 01:29:43 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:29:43 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:29:44 GMT
ONBUILD ADD . /usr/src/app
# Thu, 27 Apr 2017 01:29:45 GMT
ONBUILD RUN mvn install
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
	-	`sha256:66b1b3ab88c741ec5926f6739ed31bd7bb3fd696e671de0d63dbaa7ff87f4411`  
		Last Modified: Wed, 26 Apr 2017 23:15:40 GMT  
		Size: 140.9 MB (140921886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0339f475e80c6704c1ff2134c89276187b8bf944eb8e58d77ecd4f3013eae1e2`  
		Last Modified: Thu, 27 Apr 2017 01:31:48 GMT  
		Size: 8.7 MB (8672755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab109502a66b46de120119811f835a0a0d4e01abf4661c86652dd5d38058dad`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770772dccea97fb4c9b49052b278de3fad766ef43b2054132edfb504057e9a0`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e3fbfe2f7c47697cf0858fee3557a93adcb4c1c7375ff652c15ea27ef64db6`  
		Last Modified: Thu, 27 Apr 2017 01:33:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:eaa6449191836d2ed6103b446a7c17a837c00a1f07d6adb246222ed80718b3dd
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265243507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1f40810c5104a2c2b55e2361a093af697ff6862c4cead4fcf9b50a45f179487`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:38:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 25 Apr 2017 00:38:30 GMT
ENV JAVA_VERSION=7u121
# Tue, 25 Apr 2017 00:38:31 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 26 Apr 2017 23:07:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$JAVA_HOME" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$JAVA_HOME" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 27 Apr 2017 01:29:13 GMT
ARG MAVEN_VERSION=3.5.0
# Thu, 27 Apr 2017 01:29:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 27 Apr 2017 01:29:15 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Thu, 27 Apr 2017 01:29:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Thu, 27 Apr 2017 01:29:18 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 27 Apr 2017 01:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 27 Apr 2017 01:29:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 27 Apr 2017 01:29:21 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 27 Apr 2017 01:29:22 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 27 Apr 2017 01:29:22 GMT
VOLUME [/root/.m2]
# Thu, 27 Apr 2017 01:29:23 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 27 Apr 2017 01:29:24 GMT
CMD ["mvn"]
# Thu, 27 Apr 2017 01:29:43 GMT
RUN mkdir -p /usr/src/app
# Thu, 27 Apr 2017 01:29:43 GMT
WORKDIR /usr/src/app
# Thu, 27 Apr 2017 01:29:44 GMT
ONBUILD ADD . /usr/src/app
# Thu, 27 Apr 2017 01:29:45 GMT
ONBUILD RUN mvn install
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
	-	`sha256:66b1b3ab88c741ec5926f6739ed31bd7bb3fd696e671de0d63dbaa7ff87f4411`  
		Last Modified: Wed, 26 Apr 2017 23:15:40 GMT  
		Size: 140.9 MB (140921886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0339f475e80c6704c1ff2134c89276187b8bf944eb8e58d77ecd4f3013eae1e2`  
		Last Modified: Thu, 27 Apr 2017 01:31:48 GMT  
		Size: 8.7 MB (8672755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab109502a66b46de120119811f835a0a0d4e01abf4661c86652dd5d38058dad`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d770772dccea97fb4c9b49052b278de3fad766ef43b2054132edfb504057e9a0`  
		Last Modified: Thu, 27 Apr 2017 01:31:47 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e3fbfe2f7c47697cf0858fee3557a93adcb4c1c7375ff652c15ea27ef64db6`  
		Last Modified: Thu, 27 Apr 2017 01:33:49 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-alpine`

```console
$ docker pull maven@sha256:444272b74dbcb0f5d5c53ffdb43d9700d2ab8e2c79433de4a965d4d54870b5f1
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88305555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55a9d58bcd3d2868dd11c1a406b6da98c09dd93b5ceab571ffbaf98dd14721b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Sat, 04 Mar 2017 00:13:00 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:00 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:01 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:05 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:06 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:07 GMT
CMD ["mvn"]
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
	-	`sha256:ecdae65c9f111db1127e86f4c3578a3f9e105cf3ef89cbddaee7a3380091c9f2`  
		Last Modified: Sat, 04 Mar 2017 07:15:11 GMT  
		Size: 1.7 MB (1737330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73cc5212cd5a024fd933dc8b94b94d011a3a7334ba77338a5d2b7203dc550`  
		Last Modified: Mon, 10 Apr 2017 17:17:35 GMT  
		Size: 8.7 MB (8668374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07738166af560c7c5f87e75bda89845b677be177892893eedb0e0baf4398617`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5512e3f43ba673abbc3b4abaaafea4d682cfce64a234674d0216eacafe268`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-alpine`

```console
$ docker pull maven@sha256:444272b74dbcb0f5d5c53ffdb43d9700d2ab8e2c79433de4a965d4d54870b5f1
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88305555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55a9d58bcd3d2868dd11c1a406b6da98c09dd93b5ceab571ffbaf98dd14721b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Sat, 04 Mar 2017 00:13:00 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:00 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:01 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:05 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:06 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:07 GMT
CMD ["mvn"]
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
	-	`sha256:ecdae65c9f111db1127e86f4c3578a3f9e105cf3ef89cbddaee7a3380091c9f2`  
		Last Modified: Sat, 04 Mar 2017 07:15:11 GMT  
		Size: 1.7 MB (1737330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73cc5212cd5a024fd933dc8b94b94d011a3a7334ba77338a5d2b7203dc550`  
		Last Modified: Mon, 10 Apr 2017 17:17:35 GMT  
		Size: 8.7 MB (8668374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07738166af560c7c5f87e75bda89845b677be177892893eedb0e0baf4398617`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5512e3f43ba673abbc3b4abaaafea4d682cfce64a234674d0216eacafe268`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:444272b74dbcb0f5d5c53ffdb43d9700d2ab8e2c79433de4a965d4d54870b5f1
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88305555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55a9d58bcd3d2868dd11c1a406b6da98c09dd93b5ceab571ffbaf98dd14721b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Sat, 04 Mar 2017 00:13:00 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:00 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:01 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:05 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:06 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:07 GMT
CMD ["mvn"]
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
	-	`sha256:ecdae65c9f111db1127e86f4c3578a3f9e105cf3ef89cbddaee7a3380091c9f2`  
		Last Modified: Sat, 04 Mar 2017 07:15:11 GMT  
		Size: 1.7 MB (1737330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73cc5212cd5a024fd933dc8b94b94d011a3a7334ba77338a5d2b7203dc550`  
		Last Modified: Mon, 10 Apr 2017 17:17:35 GMT  
		Size: 8.7 MB (8668374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07738166af560c7c5f87e75bda89845b677be177892893eedb0e0baf4398617`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5512e3f43ba673abbc3b4abaaafea4d682cfce64a234674d0216eacafe268`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:500be8635410d5e8554ea8bd14e4d07f5e21ce2a1bf93731a67e384f1970288e
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88305715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27488c020de10c87d7f15003b7289d24e902e821e70ed4b27844a1bd41d4e04d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Sat, 04 Mar 2017 00:13:00 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:00 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:01 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:05 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:06 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:07 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:08 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:09 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:09 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:10 GMT
ONBUILD RUN mvn install
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
	-	`sha256:ecdae65c9f111db1127e86f4c3578a3f9e105cf3ef89cbddaee7a3380091c9f2`  
		Last Modified: Sat, 04 Mar 2017 07:15:11 GMT  
		Size: 1.7 MB (1737330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73cc5212cd5a024fd933dc8b94b94d011a3a7334ba77338a5d2b7203dc550`  
		Last Modified: Mon, 10 Apr 2017 17:17:35 GMT  
		Size: 8.7 MB (8668374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07738166af560c7c5f87e75bda89845b677be177892893eedb0e0baf4398617`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5512e3f43ba673abbc3b4abaaafea4d682cfce64a234674d0216eacafe268`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d755283abaa7a738d0a4e5d5d6ea2e3e41c748017b39d56c565e98d9924684f4`  
		Last Modified: Mon, 10 Apr 2017 17:18:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:500be8635410d5e8554ea8bd14e4d07f5e21ce2a1bf93731a67e384f1970288e
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88305715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27488c020de10c87d7f15003b7289d24e902e821e70ed4b27844a1bd41d4e04d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Sat, 04 Mar 2017 00:13:00 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:00 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:01 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:05 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:06 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:07 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:08 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:09 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:09 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:10 GMT
ONBUILD RUN mvn install
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
	-	`sha256:ecdae65c9f111db1127e86f4c3578a3f9e105cf3ef89cbddaee7a3380091c9f2`  
		Last Modified: Sat, 04 Mar 2017 07:15:11 GMT  
		Size: 1.7 MB (1737330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73cc5212cd5a024fd933dc8b94b94d011a3a7334ba77338a5d2b7203dc550`  
		Last Modified: Mon, 10 Apr 2017 17:17:35 GMT  
		Size: 8.7 MB (8668374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07738166af560c7c5f87e75bda89845b677be177892893eedb0e0baf4398617`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5512e3f43ba673abbc3b4abaaafea4d682cfce64a234674d0216eacafe268`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d755283abaa7a738d0a4e5d5d6ea2e3e41c748017b39d56c565e98d9924684f4`  
		Last Modified: Mon, 10 Apr 2017 17:18:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:500be8635410d5e8554ea8bd14e4d07f5e21ce2a1bf93731a67e384f1970288e
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.3 MB (88305715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27488c020de10c87d7f15003b7289d24e902e821e70ed4b27844a1bd41d4e04d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Sat, 04 Mar 2017 00:13:00 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:00 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:00 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:01 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:01 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:03 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:04 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:05 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:05 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:06 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:06 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:07 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:07 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:08 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:09 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:09 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:10 GMT
ONBUILD RUN mvn install
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
	-	`sha256:ecdae65c9f111db1127e86f4c3578a3f9e105cf3ef89cbddaee7a3380091c9f2`  
		Last Modified: Sat, 04 Mar 2017 07:15:11 GMT  
		Size: 1.7 MB (1737330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af73cc5212cd5a024fd933dc8b94b94d011a3a7334ba77338a5d2b7203dc550`  
		Last Modified: Mon, 10 Apr 2017 17:17:35 GMT  
		Size: 8.7 MB (8668374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07738166af560c7c5f87e75bda89845b677be177892893eedb0e0baf4398617`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc5512e3f43ba673abbc3b4abaaafea4d682cfce64a234674d0216eacafe268`  
		Last Modified: Mon, 10 Apr 2017 17:17:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d755283abaa7a738d0a4e5d5d6ea2e3e41c748017b39d56c565e98d9924684f4`  
		Last Modified: Mon, 10 Apr 2017 17:18:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8`

```console
$ docker pull maven@sha256:449cba392c4217d557f7f40ce945d88dd299e46e57f865254be40e122f05e4b1
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc17a36c740b1d80892c6027463b43e2dd502f7e53f91a821e04709dc3ba39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0`

```console
$ docker pull maven@sha256:449cba392c4217d557f7f40ce945d88dd299e46e57f865254be40e122f05e4b1
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc17a36c740b1d80892c6027463b43e2dd502f7e53f91a821e04709dc3ba39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8`

```console
$ docker pull maven@sha256:449cba392c4217d557f7f40ce945d88dd299e46e57f865254be40e122f05e4b1
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc17a36c740b1d80892c6027463b43e2dd502f7e53f91a821e04709dc3ba39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5`

```console
$ docker pull maven@sha256:449cba392c4217d557f7f40ce945d88dd299e46e57f865254be40e122f05e4b1
```

-	Platforms:
	-	linux; amd64

### `maven:3.5` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc17a36c740b1d80892c6027463b43e2dd502f7e53f91a821e04709dc3ba39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:449cba392c4217d557f7f40ce945d88dd299e46e57f865254be40e122f05e4b1
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc17a36c740b1d80892c6027463b43e2dd502f7e53f91a821e04709dc3ba39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:449cba392c4217d557f7f40ce945d88dd299e46e57f865254be40e122f05e4b1
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc17a36c740b1d80892c6027463b43e2dd502f7e53f91a821e04709dc3ba39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:449cba392c4217d557f7f40ce945d88dd299e46e57f865254be40e122f05e4b1
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6cc17a36c740b1d80892c6027463b43e2dd502f7e53f91a821e04709dc3ba39`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-onbuild`

```console
$ docker pull maven@sha256:5d853f9f5dcef60da2c37bf8b127cd553e72e2cb172a260d73bdc09c3138b75d
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f776efd21ee1da0c6544e9a7a8b6fb9fcee44d35898db35ec00aad9a410e29c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:53:21 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:53:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f5a64dad09b552fad5e5a642e23e218a1d03760025475375f5b132e6e772d`  
		Last Modified: Tue, 25 Apr 2017 15:13:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-onbuild`

```console
$ docker pull maven@sha256:5d853f9f5dcef60da2c37bf8b127cd553e72e2cb172a260d73bdc09c3138b75d
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f776efd21ee1da0c6544e9a7a8b6fb9fcee44d35898db35ec00aad9a410e29c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:53:21 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:53:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f5a64dad09b552fad5e5a642e23e218a1d03760025475375f5b132e6e772d`  
		Last Modified: Tue, 25 Apr 2017 15:13:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-onbuild`

```console
$ docker pull maven@sha256:5d853f9f5dcef60da2c37bf8b127cd553e72e2cb172a260d73bdc09c3138b75d
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f776efd21ee1da0c6544e9a7a8b6fb9fcee44d35898db35ec00aad9a410e29c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:53:21 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:53:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f5a64dad09b552fad5e5a642e23e218a1d03760025475375f5b132e6e772d`  
		Last Modified: Tue, 25 Apr 2017 15:13:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-onbuild`

```console
$ docker pull maven@sha256:5d853f9f5dcef60da2c37bf8b127cd553e72e2cb172a260d73bdc09c3138b75d
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f776efd21ee1da0c6544e9a7a8b6fb9fcee44d35898db35ec00aad9a410e29c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:53:21 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:53:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f5a64dad09b552fad5e5a642e23e218a1d03760025475375f5b132e6e772d`  
		Last Modified: Tue, 25 Apr 2017 15:13:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:5d853f9f5dcef60da2c37bf8b127cd553e72e2cb172a260d73bdc09c3138b75d
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f776efd21ee1da0c6544e9a7a8b6fb9fcee44d35898db35ec00aad9a410e29c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:53:21 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:53:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f5a64dad09b552fad5e5a642e23e218a1d03760025475375f5b132e6e772d`  
		Last Modified: Tue, 25 Apr 2017 15:13:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:5d853f9f5dcef60da2c37bf8b127cd553e72e2cb172a260d73bdc09c3138b75d
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f776efd21ee1da0c6544e9a7a8b6fb9fcee44d35898db35ec00aad9a410e29c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:53:21 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:53:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f5a64dad09b552fad5e5a642e23e218a1d03760025475375f5b132e6e772d`  
		Last Modified: Tue, 25 Apr 2017 15:13:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:5d853f9f5dcef60da2c37bf8b127cd553e72e2cb172a260d73bdc09c3138b75d
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256486619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f776efd21ee1da0c6544e9a7a8b6fb9fcee44d35898db35ec00aad9a410e29c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:41:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_VERSION=8u121
# Tue, 25 Apr 2017 00:41:11 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 25 Apr 2017 00:41:12 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 25 Apr 2017 00:42:17 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 00:42:20 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 25 Apr 2017 10:52:09 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:52:10 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:52:10 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:52:11 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:52:13 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:52:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:52:15 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:52:16 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:52:16 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:52:17 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:52:18 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:53:21 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:53:22 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:53:23 GMT
ONBUILD RUN mvn install
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
	-	`sha256:22e9e110f314c1151aa0bc4b538eafd5bd53f1bdb1ca00356e1b9318ad1e171f`  
		Last Modified: Tue, 25 Apr 2017 00:52:23 GMT  
		Size: 131.9 MB (131875124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7082199c57eaf7b0105a9b93107b5bdc19526d0cdacc540f865817f06ad1050`  
		Last Modified: Tue, 25 Apr 2017 00:52:05 GMT  
		Size: 289.6 KB (289642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f21cf49ed28944c2810f7455a5b1e67a2439b4d0a84ab0942ce788ba06cad38`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 8.7 MB (8672750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4dd7b3969ed968b924f285d4adbcd1df8df149d684c05afc44189cc2f93cb`  
		Last Modified: Tue, 25 Apr 2017 15:08:43 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f247ea2821ccedcd24f2bd866825e9fc85d4d6276d341f7b92a693e6ba255d70`  
		Last Modified: Tue, 25 Apr 2017 15:08:42 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971f5a64dad09b552fad5e5a642e23e218a1d03760025475375f5b132e6e772d`  
		Last Modified: Tue, 25 Apr 2017 15:13:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-alpine`

```console
$ docker pull maven@sha256:3f695d60104004d6ba6aa3903c033ea585109135a51d2e2bba15de9fc02516db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69990b985df182edc67ae3ec79d133b25dc9579732d4bba1145285461ad3e746`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-alpine`

```console
$ docker pull maven@sha256:3f695d60104004d6ba6aa3903c033ea585109135a51d2e2bba15de9fc02516db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69990b985df182edc67ae3ec79d133b25dc9579732d4bba1145285461ad3e746`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-alpine`

```console
$ docker pull maven@sha256:3f695d60104004d6ba6aa3903c033ea585109135a51d2e2bba15de9fc02516db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69990b985df182edc67ae3ec79d133b25dc9579732d4bba1145285461ad3e746`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-alpine`

```console
$ docker pull maven@sha256:3f695d60104004d6ba6aa3903c033ea585109135a51d2e2bba15de9fc02516db
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69990b985df182edc67ae3ec79d133b25dc9579732d4bba1145285461ad3e746`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:3f695d60104004d6ba6aa3903c033ea585109135a51d2e2bba15de9fc02516db
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69990b985df182edc67ae3ec79d133b25dc9579732d4bba1145285461ad3e746`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:3f695d60104004d6ba6aa3903c033ea585109135a51d2e2bba15de9fc02516db
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69990b985df182edc67ae3ec79d133b25dc9579732d4bba1145285461ad3e746`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:3f695d60104004d6ba6aa3903c033ea585109135a51d2e2bba15de9fc02516db
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69990b985df182edc67ae3ec79d133b25dc9579732d4bba1145285461ad3e746`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:a16eaaf0fd550b2dba781e633b3e90c321cf01ad812a769f50669e090022b628
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.8 MB (81820799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc882c7680ef73694d4788847c47e79d8a1fc1549c7380e2def2c8bec67adf86`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 07 Mar 2017 19:06:18 GMT
RUN apk add --no-cache curl tar bash
# Mon, 10 Apr 2017 17:14:23 GMT
ARG MAVEN_VERSION=3.5.0
# Mon, 10 Apr 2017 17:14:24 GMT
ARG USER_HOME_DIR=/root
# Mon, 10 Apr 2017 17:14:24 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Mon, 10 Apr 2017 17:14:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Mon, 10 Apr 2017 17:14:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 10 Apr 2017 17:14:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 10 Apr 2017 17:14:28 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 10 Apr 2017 17:14:29 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 10 Apr 2017 17:14:29 GMT
VOLUME [/root/.m2]
# Mon, 10 Apr 2017 17:14:30 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 10 Apr 2017 17:14:30 GMT
CMD ["mvn"]
# Mon, 10 Apr 2017 17:14:32 GMT
RUN mkdir -p /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
WORKDIR /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD ADD . /usr/src/app
# Mon, 10 Apr 2017 17:14:33 GMT
ONBUILD RUN mvn install
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
	-	`sha256:25c4d56785f520d3c82b1d0bccaee823db6d02aafe534d91bc6c66c899e28b08`  
		Last Modified: Tue, 07 Mar 2017 19:12:52 GMT  
		Size: 1.7 MB (1680780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a39224c81497bea2181199e842d09c6e7b837793f23e63136e1750520dabb5`  
		Last Modified: Mon, 10 Apr 2017 17:24:44 GMT  
		Size: 8.7 MB (8668383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf77cb9d4dd90348a3c910455e1a7b3a7ebfdd0b8f69965dd332a1c245cea262`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b91b571a3963ac1fd3001a1ed7ecbc5dcb97a90e8e0099f601414e9f646afdf`  
		Last Modified: Mon, 10 Apr 2017 17:24:42 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d32d1b67e3a05e02ab61c695ccbd38598da6c0268f8d8c4725170400b72f19`  
		Last Modified: Mon, 10 Apr 2017 17:27:06 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9`

```console
$ docker pull maven@sha256:826946a12041445c2579c648cf7d09431cb6ab100ac21fdc3c42b6ac16a7ae86
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271843977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1a02b2cde1b895a9008ffb1895967b8bee18855bdb5a4c7d52c1a921d88b41`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_VERSION=9~b161
# Tue, 25 Apr 2017 00:43:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 25 Apr 2017 00:44:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 10:53:40 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:53:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:53:42 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:53:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:53:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:53:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:53:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:53:47 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:53:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:53:48 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:53:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:53:49 GMT
CMD ["mvn"]
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
	-	`sha256:268edccf90e80ca2042291e9d3a1e25786b268300b17d2f4fba402b63f7f3bce`  
		Last Modified: Tue, 25 Apr 2017 00:58:25 GMT  
		Size: 155.1 MB (155054092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafe2c8c5d58b92d4b8a08f18658ba18210f7697f55acb8d9283b17b4c297b6c`  
		Last Modified: Tue, 25 Apr 2017 15:17:43 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c43076fe7985a1e8dfe4b231bd4038543c5f9144b1200ba5d0623adc2b20ee7`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30cb5a7daef64c5403e7ce278b3473dc7b9887781aec1c59a93e64e349cb16b`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9`

```console
$ docker pull maven@sha256:826946a12041445c2579c648cf7d09431cb6ab100ac21fdc3c42b6ac16a7ae86
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271843977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1a02b2cde1b895a9008ffb1895967b8bee18855bdb5a4c7d52c1a921d88b41`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_VERSION=9~b161
# Tue, 25 Apr 2017 00:43:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 25 Apr 2017 00:44:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 10:53:40 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:53:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:53:42 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:53:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:53:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:53:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:53:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:53:47 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:53:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:53:48 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:53:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:53:49 GMT
CMD ["mvn"]
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
	-	`sha256:268edccf90e80ca2042291e9d3a1e25786b268300b17d2f4fba402b63f7f3bce`  
		Last Modified: Tue, 25 Apr 2017 00:58:25 GMT  
		Size: 155.1 MB (155054092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafe2c8c5d58b92d4b8a08f18658ba18210f7697f55acb8d9283b17b4c297b6c`  
		Last Modified: Tue, 25 Apr 2017 15:17:43 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c43076fe7985a1e8dfe4b231bd4038543c5f9144b1200ba5d0623adc2b20ee7`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30cb5a7daef64c5403e7ce278b3473dc7b9887781aec1c59a93e64e349cb16b`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:826946a12041445c2579c648cf7d09431cb6ab100ac21fdc3c42b6ac16a7ae86
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271843977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1a02b2cde1b895a9008ffb1895967b8bee18855bdb5a4c7d52c1a921d88b41`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_VERSION=9~b161
# Tue, 25 Apr 2017 00:43:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 25 Apr 2017 00:44:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 10:53:40 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:53:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:53:42 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:53:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:53:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:53:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:53:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:53:47 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:53:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:53:48 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:53:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:53:49 GMT
CMD ["mvn"]
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
	-	`sha256:268edccf90e80ca2042291e9d3a1e25786b268300b17d2f4fba402b63f7f3bce`  
		Last Modified: Tue, 25 Apr 2017 00:58:25 GMT  
		Size: 155.1 MB (155054092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafe2c8c5d58b92d4b8a08f18658ba18210f7697f55acb8d9283b17b4c297b6c`  
		Last Modified: Tue, 25 Apr 2017 15:17:43 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c43076fe7985a1e8dfe4b231bd4038543c5f9144b1200ba5d0623adc2b20ee7`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30cb5a7daef64c5403e7ce278b3473dc7b9887781aec1c59a93e64e349cb16b`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5.0-jdk-9-onbuild`

```console
$ docker pull maven@sha256:f8627bef580311ba0eef1d0e311fcc2888cfaf786385328b6c079f1823245e2e
```

-	Platforms:
	-	linux; amd64

### `maven:3.5.0-jdk-9-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271844138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c347d1770c22c18265e3aebbfd15b55dbe80c9fec51c26de479a463c06e2c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_VERSION=9~b161
# Tue, 25 Apr 2017 00:43:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 25 Apr 2017 00:44:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 10:53:40 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:53:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:53:42 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:53:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:53:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:53:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:53:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:53:47 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:53:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:53:48 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:53:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:53:49 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:54:07 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:54:08 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:54:09 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:54:09 GMT
ONBUILD RUN mvn install
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
	-	`sha256:268edccf90e80ca2042291e9d3a1e25786b268300b17d2f4fba402b63f7f3bce`  
		Last Modified: Tue, 25 Apr 2017 00:58:25 GMT  
		Size: 155.1 MB (155054092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafe2c8c5d58b92d4b8a08f18658ba18210f7697f55acb8d9283b17b4c297b6c`  
		Last Modified: Tue, 25 Apr 2017 15:17:43 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c43076fe7985a1e8dfe4b231bd4038543c5f9144b1200ba5d0623adc2b20ee7`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30cb5a7daef64c5403e7ce278b3473dc7b9887781aec1c59a93e64e349cb16b`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65649b46caaa54abf0951e7a29b6b9bca9167547841166841059427544f7a0`  
		Last Modified: Tue, 25 Apr 2017 15:18:45 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.5-jdk-9-onbuild`

```console
$ docker pull maven@sha256:f8627bef580311ba0eef1d0e311fcc2888cfaf786385328b6c079f1823245e2e
```

-	Platforms:
	-	linux; amd64

### `maven:3.5-jdk-9-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271844138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c347d1770c22c18265e3aebbfd15b55dbe80c9fec51c26de479a463c06e2c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_VERSION=9~b161
# Tue, 25 Apr 2017 00:43:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 25 Apr 2017 00:44:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 10:53:40 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:53:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:53:42 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:53:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:53:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:53:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:53:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:53:47 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:53:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:53:48 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:53:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:53:49 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:54:07 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:54:08 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:54:09 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:54:09 GMT
ONBUILD RUN mvn install
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
	-	`sha256:268edccf90e80ca2042291e9d3a1e25786b268300b17d2f4fba402b63f7f3bce`  
		Last Modified: Tue, 25 Apr 2017 00:58:25 GMT  
		Size: 155.1 MB (155054092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafe2c8c5d58b92d4b8a08f18658ba18210f7697f55acb8d9283b17b4c297b6c`  
		Last Modified: Tue, 25 Apr 2017 15:17:43 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c43076fe7985a1e8dfe4b231bd4038543c5f9144b1200ba5d0623adc2b20ee7`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30cb5a7daef64c5403e7ce278b3473dc7b9887781aec1c59a93e64e349cb16b`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65649b46caaa54abf0951e7a29b6b9bca9167547841166841059427544f7a0`  
		Last Modified: Tue, 25 Apr 2017 15:18:45 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:f8627bef580311ba0eef1d0e311fcc2888cfaf786385328b6c079f1823245e2e
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 17.04.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.8 MB (271844138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7c347d1770c22c18265e3aebbfd15b55dbe80c9fec51c26de479a463c06e2c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 25 Apr 2017 00:43:52 GMT
ENV JAVA_VERSION=9~b161
# Tue, 25 Apr 2017 00:43:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b161-1
# Tue, 25 Apr 2017 00:44:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 25 Apr 2017 10:53:40 GMT
ARG MAVEN_VERSION=3.5.0
# Tue, 25 Apr 2017 10:53:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 25 Apr 2017 10:53:42 GMT
ARG SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034
# Tue, 25 Apr 2017 10:53:42 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries
# Tue, 25 Apr 2017 10:53:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.0/binaries MAVEN_VERSION=3.5.0 SHA=beb91419245395bd69a4a6edad5ca3ec1a8b64e41457672dc687c173a495f034 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 25 Apr 2017 10:53:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 25 Apr 2017 10:53:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 25 Apr 2017 10:53:47 GMT
COPY file:0ef06202c434fd6422eaf47010435819a589a77ab2d8d5d3b9e497de2fd57b3f in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 25 Apr 2017 10:53:48 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 25 Apr 2017 10:53:48 GMT
VOLUME [/root/.m2]
# Tue, 25 Apr 2017 10:53:49 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 25 Apr 2017 10:53:49 GMT
CMD ["mvn"]
# Tue, 25 Apr 2017 10:54:07 GMT
RUN mkdir -p /usr/src/app
# Tue, 25 Apr 2017 10:54:08 GMT
WORKDIR /usr/src/app
# Tue, 25 Apr 2017 10:54:09 GMT
ONBUILD ADD . /usr/src/app
# Tue, 25 Apr 2017 10:54:09 GMT
ONBUILD RUN mvn install
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
	-	`sha256:268edccf90e80ca2042291e9d3a1e25786b268300b17d2f4fba402b63f7f3bce`  
		Last Modified: Tue, 25 Apr 2017 00:58:25 GMT  
		Size: 155.1 MB (155054092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eafe2c8c5d58b92d4b8a08f18658ba18210f7697f55acb8d9283b17b4c297b6c`  
		Last Modified: Tue, 25 Apr 2017 15:17:43 GMT  
		Size: 8.7 MB (8672749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c43076fe7985a1e8dfe4b231bd4038543c5f9144b1200ba5d0623adc2b20ee7`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 722.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30cb5a7daef64c5403e7ce278b3473dc7b9887781aec1c59a93e64e349cb16b`  
		Last Modified: Tue, 25 Apr 2017 15:17:41 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e65649b46caaa54abf0951e7a29b6b9bca9167547841166841059427544f7a0`  
		Last Modified: Tue, 25 Apr 2017 15:18:45 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
