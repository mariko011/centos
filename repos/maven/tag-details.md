<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `maven`

-	[`maven:3.3.9-jdk-7`](#maven339-jdk-7)
-	[`maven:3.3-jdk-7`](#maven33-jdk-7)
-	[`maven:3-jdk-7`](#maven3-jdk-7)
-	[`maven:3.3.9-jdk-7-onbuild`](#maven339-jdk-7-onbuild)
-	[`maven:3.3-jdk-7-onbuild`](#maven33-jdk-7-onbuild)
-	[`maven:3-jdk-7-onbuild`](#maven3-jdk-7-onbuild)
-	[`maven:3.3.9-jdk-7-alpine`](#maven339-jdk-7-alpine)
-	[`maven:3.3-jdk-7-alpine`](#maven33-jdk-7-alpine)
-	[`maven:3-jdk-7-alpine`](#maven3-jdk-7-alpine)
-	[`maven:3.3.9-jdk-7-onbuild-alpine`](#maven339-jdk-7-onbuild-alpine)
-	[`maven:3.3-jdk-7-onbuild-alpine`](#maven33-jdk-7-onbuild-alpine)
-	[`maven:3-jdk-7-onbuild-alpine`](#maven3-jdk-7-onbuild-alpine)
-	[`maven:3.3.9-jdk-8`](#maven339-jdk-8)
-	[`maven:3.3.9`](#maven339)
-	[`maven:3.3-jdk-8`](#maven33-jdk-8)
-	[`maven:3.3`](#maven33)
-	[`maven:3-jdk-8`](#maven3-jdk-8)
-	[`maven:3`](#maven3)
-	[`maven:latest`](#mavenlatest)
-	[`maven:3.3.9-jdk-8-onbuild`](#maven339-jdk-8-onbuild)
-	[`maven:3.3.9-onbuild`](#maven339-onbuild)
-	[`maven:3.3-jdk-8-onbuild`](#maven33-jdk-8-onbuild)
-	[`maven:3.3-onbuild`](#maven33-onbuild)
-	[`maven:3-jdk-8-onbuild`](#maven3-jdk-8-onbuild)
-	[`maven:3-onbuild`](#maven3-onbuild)
-	[`maven:onbuild`](#mavenonbuild)
-	[`maven:3.3.9-jdk-8-alpine`](#maven339-jdk-8-alpine)
-	[`maven:3.3.9-alpine`](#maven339-alpine)
-	[`maven:3.3-jdk-8-alpine`](#maven33-jdk-8-alpine)
-	[`maven:3.3-alpine`](#maven33-alpine)
-	[`maven:3-jdk-8-alpine`](#maven3-jdk-8-alpine)
-	[`maven:3-alpine`](#maven3-alpine)
-	[`maven:alpine`](#mavenalpine)
-	[`maven:3.3.9-jdk-8-onbuild-alpine`](#maven339-jdk-8-onbuild-alpine)
-	[`maven:3.3.9-onbuild-alpine`](#maven339-onbuild-alpine)
-	[`maven:3.3-jdk-8-onbuild-alpine`](#maven33-jdk-8-onbuild-alpine)
-	[`maven:3.3-onbuild-alpine`](#maven33-onbuild-alpine)
-	[`maven:3-jdk-8-onbuild-alpine`](#maven3-jdk-8-onbuild-alpine)
-	[`maven:3-onbuild-alpine`](#maven3-onbuild-alpine)
-	[`maven:onbuild-alpine`](#mavenonbuild-alpine)
-	[`maven:3.3.9-jdk-9`](#maven339-jdk-9)
-	[`maven:3.3-jdk-9`](#maven33-jdk-9)
-	[`maven:3-jdk-9`](#maven3-jdk-9)
-	[`maven:3.3.9-jdk-9-onbuild`](#maven339-jdk-9-onbuild)
-	[`maven:3.3-jdk-9-onbuild`](#maven33-jdk-9-onbuild)
-	[`maven:3-jdk-9-onbuild`](#maven3-jdk-9-onbuild)

## `maven:3.3.9-jdk-7`

```console
$ docker pull maven@sha256:c63305c57fe05fe62e0ff0da6d69eceb044fd4dfc700098b158caac2a4d98083
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261064439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a40c0c1803298582bb857753c246b37ba45fc6a762be65b54788def22cabcc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:16:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 23:20:42 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 08 Feb 2017 23:20:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Feb 2017 23:20:45 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 Feb 2017 23:20:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Feb 2017 23:20:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Feb 2017 23:20:46 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 Feb 2017 23:20:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 08 Feb 2017 23:20:48 GMT
VOLUME [/root/.m2]
# Wed, 08 Feb 2017 23:20:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Feb 2017 23:20:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b144b1d5b09e72e8e108a39bb1586e607c7ade5c637df2b8ba46108cb0ae8f`  
		Last Modified: Wed, 18 Jan 2017 05:20:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87eea6d613426a3f8614e95fe1e8ebbf7e58168271f8dd10983a7bb24ed6ae`  
		Last Modified: Wed, 08 Feb 2017 22:19:46 GMT  
		Size: 139.5 MB (139472105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac1df5437e175b18bc48ae7ae96d5fdcaa3e572459feef6f3a77c23a712685`  
		Last Modified: Wed, 08 Feb 2017 23:21:15 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4412f1bd09768602e8b7b249e5a8e2ca57759edcaafceb6aff69cea33885b`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda670ff6e578b14af1a66c6e02eee2bc3216bb9ce04dcefd0eef8c8da0ac4db`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7`

```console
$ docker pull maven@sha256:c63305c57fe05fe62e0ff0da6d69eceb044fd4dfc700098b158caac2a4d98083
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261064439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a40c0c1803298582bb857753c246b37ba45fc6a762be65b54788def22cabcc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:16:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 23:20:42 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 08 Feb 2017 23:20:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Feb 2017 23:20:45 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 Feb 2017 23:20:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Feb 2017 23:20:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Feb 2017 23:20:46 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 Feb 2017 23:20:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 08 Feb 2017 23:20:48 GMT
VOLUME [/root/.m2]
# Wed, 08 Feb 2017 23:20:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Feb 2017 23:20:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b144b1d5b09e72e8e108a39bb1586e607c7ade5c637df2b8ba46108cb0ae8f`  
		Last Modified: Wed, 18 Jan 2017 05:20:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87eea6d613426a3f8614e95fe1e8ebbf7e58168271f8dd10983a7bb24ed6ae`  
		Last Modified: Wed, 08 Feb 2017 22:19:46 GMT  
		Size: 139.5 MB (139472105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac1df5437e175b18bc48ae7ae96d5fdcaa3e572459feef6f3a77c23a712685`  
		Last Modified: Wed, 08 Feb 2017 23:21:15 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4412f1bd09768602e8b7b249e5a8e2ca57759edcaafceb6aff69cea33885b`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda670ff6e578b14af1a66c6e02eee2bc3216bb9ce04dcefd0eef8c8da0ac4db`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:c63305c57fe05fe62e0ff0da6d69eceb044fd4dfc700098b158caac2a4d98083
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261064439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a40c0c1803298582bb857753c246b37ba45fc6a762be65b54788def22cabcc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:16:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 23:20:42 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 08 Feb 2017 23:20:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Feb 2017 23:20:45 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 Feb 2017 23:20:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Feb 2017 23:20:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Feb 2017 23:20:46 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 Feb 2017 23:20:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 08 Feb 2017 23:20:48 GMT
VOLUME [/root/.m2]
# Wed, 08 Feb 2017 23:20:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Feb 2017 23:20:49 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b144b1d5b09e72e8e108a39bb1586e607c7ade5c637df2b8ba46108cb0ae8f`  
		Last Modified: Wed, 18 Jan 2017 05:20:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87eea6d613426a3f8614e95fe1e8ebbf7e58168271f8dd10983a7bb24ed6ae`  
		Last Modified: Wed, 08 Feb 2017 22:19:46 GMT  
		Size: 139.5 MB (139472105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac1df5437e175b18bc48ae7ae96d5fdcaa3e572459feef6f3a77c23a712685`  
		Last Modified: Wed, 08 Feb 2017 23:21:15 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4412f1bd09768602e8b7b249e5a8e2ca57759edcaafceb6aff69cea33885b`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda670ff6e578b14af1a66c6e02eee2bc3216bb9ce04dcefd0eef8c8da0ac4db`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d1dbf17f7eac77cc9fa00b5a99fd3ffbe1e44d2f059415073dc408b050babe81
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261064597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6646f88f86728d4122caa2274577426beb7b59b1863e11ecae46cd6beef25e35`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:16:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 23:20:42 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 08 Feb 2017 23:20:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Feb 2017 23:20:45 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 Feb 2017 23:20:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Feb 2017 23:20:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Feb 2017 23:20:46 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 Feb 2017 23:20:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 08 Feb 2017 23:20:48 GMT
VOLUME [/root/.m2]
# Wed, 08 Feb 2017 23:20:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Feb 2017 23:20:49 GMT
CMD ["mvn"]
# Wed, 08 Feb 2017 23:20:51 GMT
RUN mkdir -p /usr/src/app
# Wed, 08 Feb 2017 23:20:51 GMT
WORKDIR /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD ADD . /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b144b1d5b09e72e8e108a39bb1586e607c7ade5c637df2b8ba46108cb0ae8f`  
		Last Modified: Wed, 18 Jan 2017 05:20:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87eea6d613426a3f8614e95fe1e8ebbf7e58168271f8dd10983a7bb24ed6ae`  
		Last Modified: Wed, 08 Feb 2017 22:19:46 GMT  
		Size: 139.5 MB (139472105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac1df5437e175b18bc48ae7ae96d5fdcaa3e572459feef6f3a77c23a712685`  
		Last Modified: Wed, 08 Feb 2017 23:21:15 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4412f1bd09768602e8b7b249e5a8e2ca57759edcaafceb6aff69cea33885b`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda670ff6e578b14af1a66c6e02eee2bc3216bb9ce04dcefd0eef8c8da0ac4db`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c30ddb5d831f1c5f7dcb711bf06ad03a96049c539c0422ec17bbd3f41458ea3`  
		Last Modified: Wed, 08 Feb 2017 23:22:53 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d1dbf17f7eac77cc9fa00b5a99fd3ffbe1e44d2f059415073dc408b050babe81
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261064597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6646f88f86728d4122caa2274577426beb7b59b1863e11ecae46cd6beef25e35`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:16:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 23:20:42 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 08 Feb 2017 23:20:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Feb 2017 23:20:45 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 Feb 2017 23:20:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Feb 2017 23:20:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Feb 2017 23:20:46 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 Feb 2017 23:20:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 08 Feb 2017 23:20:48 GMT
VOLUME [/root/.m2]
# Wed, 08 Feb 2017 23:20:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Feb 2017 23:20:49 GMT
CMD ["mvn"]
# Wed, 08 Feb 2017 23:20:51 GMT
RUN mkdir -p /usr/src/app
# Wed, 08 Feb 2017 23:20:51 GMT
WORKDIR /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD ADD . /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b144b1d5b09e72e8e108a39bb1586e607c7ade5c637df2b8ba46108cb0ae8f`  
		Last Modified: Wed, 18 Jan 2017 05:20:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87eea6d613426a3f8614e95fe1e8ebbf7e58168271f8dd10983a7bb24ed6ae`  
		Last Modified: Wed, 08 Feb 2017 22:19:46 GMT  
		Size: 139.5 MB (139472105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac1df5437e175b18bc48ae7ae96d5fdcaa3e572459feef6f3a77c23a712685`  
		Last Modified: Wed, 08 Feb 2017 23:21:15 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4412f1bd09768602e8b7b249e5a8e2ca57759edcaafceb6aff69cea33885b`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda670ff6e578b14af1a66c6e02eee2bc3216bb9ce04dcefd0eef8c8da0ac4db`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c30ddb5d831f1c5f7dcb711bf06ad03a96049c539c0422ec17bbd3f41458ea3`  
		Last Modified: Wed, 08 Feb 2017 23:22:53 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d1dbf17f7eac77cc9fa00b5a99fd3ffbe1e44d2f059415073dc408b050babe81
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261064597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6646f88f86728d4122caa2274577426beb7b59b1863e11ecae46cd6beef25e35`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:52 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:49:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:49:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_VERSION=7u121
# Wed, 08 Feb 2017 22:15:43 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Wed, 08 Feb 2017 22:16:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 08 Feb 2017 23:20:42 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 08 Feb 2017 23:20:43 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 Feb 2017 23:20:45 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 Feb 2017 23:20:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 Feb 2017 23:20:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 Feb 2017 23:20:46 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 Feb 2017 23:20:47 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 08 Feb 2017 23:20:48 GMT
VOLUME [/root/.m2]
# Wed, 08 Feb 2017 23:20:48 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 Feb 2017 23:20:49 GMT
CMD ["mvn"]
# Wed, 08 Feb 2017 23:20:51 GMT
RUN mkdir -p /usr/src/app
# Wed, 08 Feb 2017 23:20:51 GMT
WORKDIR /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD ADD . /usr/src/app
# Wed, 08 Feb 2017 23:20:52 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b144b1d5b09e72e8e108a39bb1586e607c7ade5c637df2b8ba46108cb0ae8f`  
		Last Modified: Wed, 18 Jan 2017 05:20:49 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c87eea6d613426a3f8614e95fe1e8ebbf7e58168271f8dd10983a7bb24ed6ae`  
		Last Modified: Wed, 08 Feb 2017 22:19:46 GMT  
		Size: 139.5 MB (139472105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ac1df5437e175b18bc48ae7ae96d5fdcaa3e572459feef6f3a77c23a712685`  
		Last Modified: Wed, 08 Feb 2017 23:21:15 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4412f1bd09768602e8b7b249e5a8e2ca57759edcaafceb6aff69cea33885b`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda670ff6e578b14af1a66c6e02eee2bc3216bb9ce04dcefd0eef8c8da0ac4db`  
		Last Modified: Wed, 08 Feb 2017 23:21:14 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c30ddb5d831f1c5f7dcb711bf06ad03a96049c539c0422ec17bbd3f41458ea3`  
		Last Modified: Wed, 08 Feb 2017 23:22:53 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-alpine`

```console
$ docker pull maven@sha256:51e01f69c3737b12e374fee0400b95d242d8a08110c4663d44562f15f250476f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c5ec64a829ba1ce62288be167b9b9477ffc2c67c956d909813015009b48e37`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 27 Dec 2016 18:37:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:37:56 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:37:57 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:40 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:41 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:46 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bbd2553e88b90a36c201f7a6f3684a15eb897c719c278d1e1f825c493582ce`  
		Last Modified: Tue, 27 Dec 2016 18:46:36 GMT  
		Size: 75.6 MB (75575508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6680a878a74adf6c60efc51fd274331aaf96be713fa04635e58be00bde4741`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 1.7 MB (1729282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f4cfe9d8359a4379a7b2708c97190b909c333eeae8a7e06cbbe96d41702cee`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a9801d029af4b4f7ce4402aec46ceb252322d96f61e786a63ccce4d17bb671`  
		Last Modified: Tue, 27 Dec 2016 22:53:02 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccdad240a726b5ccbca49842438fe96b6c082c1110db4cb3d189782103b749b`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-alpine`

```console
$ docker pull maven@sha256:51e01f69c3737b12e374fee0400b95d242d8a08110c4663d44562f15f250476f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c5ec64a829ba1ce62288be167b9b9477ffc2c67c956d909813015009b48e37`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 27 Dec 2016 18:37:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:37:56 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:37:57 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:40 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:41 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:46 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bbd2553e88b90a36c201f7a6f3684a15eb897c719c278d1e1f825c493582ce`  
		Last Modified: Tue, 27 Dec 2016 18:46:36 GMT  
		Size: 75.6 MB (75575508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6680a878a74adf6c60efc51fd274331aaf96be713fa04635e58be00bde4741`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 1.7 MB (1729282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f4cfe9d8359a4379a7b2708c97190b909c333eeae8a7e06cbbe96d41702cee`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a9801d029af4b4f7ce4402aec46ceb252322d96f61e786a63ccce4d17bb671`  
		Last Modified: Tue, 27 Dec 2016 22:53:02 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccdad240a726b5ccbca49842438fe96b6c082c1110db4cb3d189782103b749b`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:51e01f69c3737b12e374fee0400b95d242d8a08110c4663d44562f15f250476f
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25c5ec64a829ba1ce62288be167b9b9477ffc2c67c956d909813015009b48e37`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 27 Dec 2016 18:37:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:37:56 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:37:57 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:40 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:41 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:46 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:47 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bbd2553e88b90a36c201f7a6f3684a15eb897c719c278d1e1f825c493582ce`  
		Last Modified: Tue, 27 Dec 2016 18:46:36 GMT  
		Size: 75.6 MB (75575508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6680a878a74adf6c60efc51fd274331aaf96be713fa04635e58be00bde4741`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 1.7 MB (1729282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f4cfe9d8359a4379a7b2708c97190b909c333eeae8a7e06cbbe96d41702cee`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a9801d029af4b4f7ce4402aec46ceb252322d96f61e786a63ccce4d17bb671`  
		Last Modified: Tue, 27 Dec 2016 22:53:02 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccdad240a726b5ccbca49842438fe96b6c082c1110db4cb3d189782103b749b`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:9756f147d94f9418e5556323a191b81383c7ad436e72107b13de9621307f30d2
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88218146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1ae035f48cd6f1f9ff4d0606c5abb2ad92a3d34cb741c8b36847e92006fea6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 27 Dec 2016 18:37:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:37:56 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:37:57 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:40 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:41 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:46 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:47 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:20:49 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:20:50 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:20:50 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bbd2553e88b90a36c201f7a6f3684a15eb897c719c278d1e1f825c493582ce`  
		Last Modified: Tue, 27 Dec 2016 18:46:36 GMT  
		Size: 75.6 MB (75575508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6680a878a74adf6c60efc51fd274331aaf96be713fa04635e58be00bde4741`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 1.7 MB (1729282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f4cfe9d8359a4379a7b2708c97190b909c333eeae8a7e06cbbe96d41702cee`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a9801d029af4b4f7ce4402aec46ceb252322d96f61e786a63ccce4d17bb671`  
		Last Modified: Tue, 27 Dec 2016 22:53:02 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccdad240a726b5ccbca49842438fe96b6c082c1110db4cb3d189782103b749b`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e92697a4a36de985441b1a497e6cc5a7a40b00572c22e804a66260166b6342`  
		Last Modified: Tue, 27 Dec 2016 22:53:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:9756f147d94f9418e5556323a191b81383c7ad436e72107b13de9621307f30d2
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88218146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1ae035f48cd6f1f9ff4d0606c5abb2ad92a3d34cb741c8b36847e92006fea6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 27 Dec 2016 18:37:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:37:56 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:37:57 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:40 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:41 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:46 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:47 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:20:49 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:20:50 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:20:50 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bbd2553e88b90a36c201f7a6f3684a15eb897c719c278d1e1f825c493582ce`  
		Last Modified: Tue, 27 Dec 2016 18:46:36 GMT  
		Size: 75.6 MB (75575508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6680a878a74adf6c60efc51fd274331aaf96be713fa04635e58be00bde4741`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 1.7 MB (1729282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f4cfe9d8359a4379a7b2708c97190b909c333eeae8a7e06cbbe96d41702cee`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a9801d029af4b4f7ce4402aec46ceb252322d96f61e786a63ccce4d17bb671`  
		Last Modified: Tue, 27 Dec 2016 22:53:02 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccdad240a726b5ccbca49842438fe96b6c082c1110db4cb3d189782103b749b`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e92697a4a36de985441b1a497e6cc5a7a40b00572c22e804a66260166b6342`  
		Last Modified: Tue, 27 Dec 2016 22:53:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:9756f147d94f9418e5556323a191b81383c7ad436e72107b13de9621307f30d2
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88218146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f1ae035f48cd6f1f9ff4d0606c5abb2ad92a3d34cb741c8b36847e92006fea6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:37:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 27 Dec 2016 18:37:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 27 Dec 2016 18:37:56 GMT
ENV JAVA_VERSION=7u121
# Tue, 27 Dec 2016 18:37:57 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Tue, 27 Dec 2016 18:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:40 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:41 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:41 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:46 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:47 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:47 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:49 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:20:49 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:20:50 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:20:50 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61bbd2553e88b90a36c201f7a6f3684a15eb897c719c278d1e1f825c493582ce`  
		Last Modified: Tue, 27 Dec 2016 18:46:36 GMT  
		Size: 75.6 MB (75575508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6680a878a74adf6c60efc51fd274331aaf96be713fa04635e58be00bde4741`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 1.7 MB (1729282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f4cfe9d8359a4379a7b2708c97190b909c333eeae8a7e06cbbe96d41702cee`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a9801d029af4b4f7ce4402aec46ceb252322d96f61e786a63ccce4d17bb671`  
		Last Modified: Tue, 27 Dec 2016 22:53:02 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccdad240a726b5ccbca49842438fe96b6c082c1110db4cb3d189782103b749b`  
		Last Modified: Tue, 27 Dec 2016 22:53:03 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e92697a4a36de985441b1a497e6cc5a7a40b00572c22e804a66260166b6342`  
		Last Modified: Tue, 27 Dec 2016 22:53:48 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8`

```console
$ docker pull maven@sha256:a2349005e83a00694450b59e92de4e53e6790f19bddc8d0784a106ee3af04ad7
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252196942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4340d04cbdfa8622b888aeec77cec6ef6ce7ff5884babcdca47621da54e83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9`

```console
$ docker pull maven@sha256:a2349005e83a00694450b59e92de4e53e6790f19bddc8d0784a106ee3af04ad7
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252196942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4340d04cbdfa8622b888aeec77cec6ef6ce7ff5884babcdca47621da54e83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:a2349005e83a00694450b59e92de4e53e6790f19bddc8d0784a106ee3af04ad7
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252196942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4340d04cbdfa8622b888aeec77cec6ef6ce7ff5884babcdca47621da54e83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3`

```console
$ docker pull maven@sha256:a2349005e83a00694450b59e92de4e53e6790f19bddc8d0784a106ee3af04ad7
```

-	Platforms:
	-	linux; amd64

### `maven:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252196942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4340d04cbdfa8622b888aeec77cec6ef6ce7ff5884babcdca47621da54e83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:a2349005e83a00694450b59e92de4e53e6790f19bddc8d0784a106ee3af04ad7
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252196942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4340d04cbdfa8622b888aeec77cec6ef6ce7ff5884babcdca47621da54e83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:a2349005e83a00694450b59e92de4e53e6790f19bddc8d0784a106ee3af04ad7
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252196942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4340d04cbdfa8622b888aeec77cec6ef6ce7ff5884babcdca47621da54e83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:a2349005e83a00694450b59e92de4e53e6790f19bddc8d0784a106ee3af04ad7
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252196942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f4340d04cbdfa8622b888aeec77cec6ef6ce7ff5884babcdca47621da54e83`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild`

```console
$ docker pull maven@sha256:42492ccca256fd6cb643697779ae4c4570b866029ff3247056d95e4ed06cc7ea
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252197101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffc1752e55e0793d900031921c403b27d2df17e097134106badd078d850071`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:17 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:17 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b7423ecd1a9bb6a1d5d8a69c0b6c70687ebbd66e68d3054c92e2291263f17`  
		Last Modified: Tue, 07 Feb 2017 21:40:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:42492ccca256fd6cb643697779ae4c4570b866029ff3247056d95e4ed06cc7ea
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252197101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffc1752e55e0793d900031921c403b27d2df17e097134106badd078d850071`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:17 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:17 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b7423ecd1a9bb6a1d5d8a69c0b6c70687ebbd66e68d3054c92e2291263f17`  
		Last Modified: Tue, 07 Feb 2017 21:40:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:42492ccca256fd6cb643697779ae4c4570b866029ff3247056d95e4ed06cc7ea
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252197101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffc1752e55e0793d900031921c403b27d2df17e097134106badd078d850071`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:17 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:17 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b7423ecd1a9bb6a1d5d8a69c0b6c70687ebbd66e68d3054c92e2291263f17`  
		Last Modified: Tue, 07 Feb 2017 21:40:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:42492ccca256fd6cb643697779ae4c4570b866029ff3247056d95e4ed06cc7ea
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252197101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffc1752e55e0793d900031921c403b27d2df17e097134106badd078d850071`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:17 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:17 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b7423ecd1a9bb6a1d5d8a69c0b6c70687ebbd66e68d3054c92e2291263f17`  
		Last Modified: Tue, 07 Feb 2017 21:40:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:42492ccca256fd6cb643697779ae4c4570b866029ff3247056d95e4ed06cc7ea
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252197101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffc1752e55e0793d900031921c403b27d2df17e097134106badd078d850071`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:17 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:17 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b7423ecd1a9bb6a1d5d8a69c0b6c70687ebbd66e68d3054c92e2291263f17`  
		Last Modified: Tue, 07 Feb 2017 21:40:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:42492ccca256fd6cb643697779ae4c4570b866029ff3247056d95e4ed06cc7ea
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252197101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffc1752e55e0793d900031921c403b27d2df17e097134106badd078d850071`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:17 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:17 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b7423ecd1a9bb6a1d5d8a69c0b6c70687ebbd66e68d3054c92e2291263f17`  
		Last Modified: Tue, 07 Feb 2017 21:40:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:42492ccca256fd6cb643697779ae4c4570b866029ff3247056d95e4ed06cc7ea
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252197101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccffc1752e55e0793d900031921c403b27d2df17e097134106badd078d850071`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:35:09 GMT
ADD file:89ecb642d662ee7edbb868340551106d51336c7e589fdaca4111725ec64da957 in / 
# Mon, 16 Jan 2017 20:35:16 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:00:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:51:48 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 17 Jan 2017 00:51:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:51:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 07 Feb 2017 20:03:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 07 Feb 2017 20:03:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 07 Feb 2017 20:03:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 07 Feb 2017 20:04:15 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 20:04:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 07 Feb 2017 21:33:09 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:09 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:11 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:12 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:12 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:13 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:14 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:15 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:17 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:17 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:18 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:5040bd2983909aa8896b9932438c3f1479d25ae837a5f6220242a264d0221f2d`  
		Last Modified: Mon, 16 Jan 2017 20:43:26 GMT  
		Size: 51.4 MB (51361210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce5728aad85a763fe3c419db16885eb6f7a670a42824ea618414b8fb309ccde`  
		Last Modified: Tue, 17 Jan 2017 00:19:41 GMT  
		Size: 18.5 MB (18535441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76610ec20bf5892e24cebd4153c7668284aa1d1151b7c3b0c7d50c579aa5ce75`  
		Last Modified: Tue, 17 Jan 2017 00:20:34 GMT  
		Size: 42.5 MB (42502406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60170fec2151d2108ed1420625c51138434ba4e0223d3023353d3f32ffe3cfc2`  
		Last Modified: Tue, 17 Jan 2017 21:41:40 GMT  
		Size: 593.1 KB (593146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e98f73de8f0d2ef292f58b004d67bc6e9ee779dcfaff7ebb3964649d4787b872`  
		Last Modified: Tue, 17 Jan 2017 21:41:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f7af24ed9cf47597dd6cf9963bb3e9109c963f0135e869a9e9b4999fdc12a3`  
		Last Modified: Tue, 17 Jan 2017 21:41:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39ff935bbe4714f7cc9638ee005342e6c447288e9eea2ed0f59fa07558f2362`  
		Last Modified: Tue, 07 Feb 2017 20:10:58 GMT  
		Size: 130.3 MB (130315361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e03296a7302dfafbdeffadb741ec495a2191c49ffc734a1b6366ff287bad5b5`  
		Last Modified: Tue, 07 Feb 2017 20:10:30 GMT  
		Size: 289.0 KB (289035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bae91599dbe1b4700e8dfd36125d79343cfa1346e91d54d393eedeac1a42cc9`  
		Last Modified: Tue, 07 Feb 2017 21:36:53 GMT  
		Size: 8.6 MB (8598845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48c2a84c9ceb7db33dbb8abce630202b8fd208077d96219d70706a4618e072f`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7769c914d43b4f87e663062dd624967daf4af106aa1d7d08761a51dc58f3b4c`  
		Last Modified: Tue, 07 Feb 2017 21:36:52 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862b7423ecd1a9bb6a1d5d8a69c0b6c70687ebbd66e68d3054c92e2291263f17`  
		Last Modified: Tue, 07 Feb 2017 21:40:30 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-alpine`

```console
$ docker pull maven@sha256:d5aabe35d2ede10587c7d826aab02482751504f39fab21aa5f6ee35cd2cc16b4
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aec54ab8209dec0723e709ab186f0cf4d9d739ef9d9428a01eb6ce844e88ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-alpine`

```console
$ docker pull maven@sha256:d5aabe35d2ede10587c7d826aab02482751504f39fab21aa5f6ee35cd2cc16b4
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aec54ab8209dec0723e709ab186f0cf4d9d739ef9d9428a01eb6ce844e88ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-alpine`

```console
$ docker pull maven@sha256:d5aabe35d2ede10587c7d826aab02482751504f39fab21aa5f6ee35cd2cc16b4
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aec54ab8209dec0723e709ab186f0cf4d9d739ef9d9428a01eb6ce844e88ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-alpine`

```console
$ docker pull maven@sha256:d5aabe35d2ede10587c7d826aab02482751504f39fab21aa5f6ee35cd2cc16b4
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aec54ab8209dec0723e709ab186f0cf4d9d739ef9d9428a01eb6ce844e88ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:d5aabe35d2ede10587c7d826aab02482751504f39fab21aa5f6ee35cd2cc16b4
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aec54ab8209dec0723e709ab186f0cf4d9d739ef9d9428a01eb6ce844e88ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:d5aabe35d2ede10587c7d826aab02482751504f39fab21aa5f6ee35cd2cc16b4
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aec54ab8209dec0723e709ab186f0cf4d9d739ef9d9428a01eb6ce844e88ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:d5aabe35d2ede10587c7d826aab02482751504f39fab21aa5f6ee35cd2cc16b4
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aec54ab8209dec0723e709ab186f0cf4d9d739ef9d9428a01eb6ce844e88ca`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:5295a173a6eb4ea9248fd314b5fd57ba08c3c1b2cdb5d02fecf6a6d6c65d4217
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdaf4d73721a3c94b570ff2a6183b2343c029292baa4fbd533b97d3375249fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:21:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe05380815d75622a983329c62f3851960da8cae615e57ef6e5b75724d0d67`  
		Last Modified: Tue, 27 Dec 2016 22:56:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild-alpine`

```console
$ docker pull maven@sha256:5295a173a6eb4ea9248fd314b5fd57ba08c3c1b2cdb5d02fecf6a6d6c65d4217
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdaf4d73721a3c94b570ff2a6183b2343c029292baa4fbd533b97d3375249fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:21:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe05380815d75622a983329c62f3851960da8cae615e57ef6e5b75724d0d67`  
		Last Modified: Tue, 27 Dec 2016 22:56:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:5295a173a6eb4ea9248fd314b5fd57ba08c3c1b2cdb5d02fecf6a6d6c65d4217
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdaf4d73721a3c94b570ff2a6183b2343c029292baa4fbd533b97d3375249fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:21:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe05380815d75622a983329c62f3851960da8cae615e57ef6e5b75724d0d67`  
		Last Modified: Tue, 27 Dec 2016 22:56:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild-alpine`

```console
$ docker pull maven@sha256:5295a173a6eb4ea9248fd314b5fd57ba08c3c1b2cdb5d02fecf6a6d6c65d4217
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdaf4d73721a3c94b570ff2a6183b2343c029292baa4fbd533b97d3375249fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:21:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe05380815d75622a983329c62f3851960da8cae615e57ef6e5b75724d0d67`  
		Last Modified: Tue, 27 Dec 2016 22:56:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:5295a173a6eb4ea9248fd314b5fd57ba08c3c1b2cdb5d02fecf6a6d6c65d4217
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdaf4d73721a3c94b570ff2a6183b2343c029292baa4fbd533b97d3375249fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:21:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe05380815d75622a983329c62f3851960da8cae615e57ef6e5b75724d0d67`  
		Last Modified: Tue, 27 Dec 2016 22:56:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:5295a173a6eb4ea9248fd314b5fd57ba08c3c1b2cdb5d02fecf6a6d6c65d4217
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdaf4d73721a3c94b570ff2a6183b2343c029292baa4fbd533b97d3375249fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:21:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe05380815d75622a983329c62f3851960da8cae615e57ef6e5b75724d0d67`  
		Last Modified: Tue, 27 Dec 2016 22:56:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:5295a173a6eb4ea9248fd314b5fd57ba08c3c1b2cdb5d02fecf6a6d6c65d4217
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fdaf4d73721a3c94b570ff2a6183b2343c029292baa4fbd533b97d3375249fd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Dec 2016 18:17:13 GMT
ADD file:eeed5f514a35d18fcd9cbfe6c40c582211020bffdd53e4799018d33826fe5067 in / 
# Tue, 27 Dec 2016 18:37:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Dec 2016 18:37:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Dec 2016 18:38:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 27 Dec 2016 18:38:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 27 Dec 2016 18:38:36 GMT
ENV JAVA_VERSION=8u111
# Tue, 27 Dec 2016 18:38:37 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Tue, 27 Dec 2016 18:38:42 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 27 Dec 2016 22:20:19 GMT
RUN apk add --no-cache curl tar bash
# Tue, 27 Dec 2016 22:20:29 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 27 Dec 2016 22:20:30 GMT
ARG USER_HOME_DIR=/root
# Tue, 27 Dec 2016 22:20:32 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 27 Dec 2016 22:20:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 27 Dec 2016 22:20:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 27 Dec 2016 22:20:34 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 27 Dec 2016 22:20:35 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 27 Dec 2016 22:20:35 GMT
VOLUME [/root/.m2]
# Tue, 27 Dec 2016 22:20:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 27 Dec 2016 22:20:36 GMT
CMD ["mvn"]
# Tue, 27 Dec 2016 22:20:52 GMT
RUN mkdir -p /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
WORKDIR /usr/src/app
# Tue, 27 Dec 2016 22:21:04 GMT
ONBUILD ADD . /usr/src/app
# Tue, 27 Dec 2016 22:21:05 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:b7f33cc0b48ea4fb2f0745def58c25483a5f6b7aed5b41ce8f1cb6e17f5723cf`  
		Last Modified: Tue, 27 Dec 2016 18:18:49 GMT  
		Size: 2.3 MB (2313090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a564ae36a32a4575a2cc6de78b6d1b7ce5c581bca7b875d789e026198c1d55`  
		Last Modified: Tue, 27 Dec 2016 18:46:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b294f0e7874be262527ff531f370b2b61652d226fa8c51f9d6a0a46c4d71fdb5`  
		Last Modified: Tue, 27 Dec 2016 18:55:18 GMT  
		Size: 49.4 MB (49355643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb538fa84dbbe6015267f494476920ac312693669ef68a9bdd6dcecfe75e44b`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 1.7 MB (1687301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a548b0fa00c6a4db978dcc395a7cd049579cbfb6cfa6bc0c5224bd1dd19f6121`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 8.6 MB (8598854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a7674f7a3e6209b18f90eca9a96aad0476f8b8a51e3dcda6bb7fa94c61898`  
		Last Modified: Tue, 27 Dec 2016 22:54:33 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19eeb19d308af793b9befd5f376044e816b2997c0fbd04921f76dfc2603d0e0c`  
		Last Modified: Tue, 27 Dec 2016 22:54:34 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbe05380815d75622a983329c62f3851960da8cae615e57ef6e5b75724d0d67`  
		Last Modified: Tue, 27 Dec 2016 22:56:11 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9`

```console
$ docker pull maven@sha256:76f668934e89e7278d9585ec491870cc3fde333c090505c4009765b537190e4f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3667734b829d6166331c4061625f55107411b54717790cbe0b34867bd1d0f6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 00:53:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:53:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:53:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_VERSION=9~b155
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_DEBIAN_VERSION=9~b155-1
# Tue, 07 Feb 2017 20:05:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 21:33:20 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:23 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:25 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:26 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62c0d008417308de1a3260177cbd1e10a682ea9f3a61174a3d79501785bc8d4`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 649.8 KB (649821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0f9a7fc7d3389b9a4b257f7f98708c2b0dba5eaa4c7acbf6727df89d0afe1`  
		Last Modified: Wed, 18 Jan 2017 06:23:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce797e1c405b5124fe52d0063d4689e3c509212bde8fcb4b3ad80ba2d11084e`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a7df1f08e49b203964a8c09d7450c044a5c9e8f42d2e227e1f8c270e72d3d`  
		Last Modified: Tue, 07 Feb 2017 20:16:14 GMT  
		Size: 145.3 MB (145310406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f9f32fa7871b08d249e81ea61a2d93a56eaba42964d29eca937aa4d6e41260`  
		Last Modified: Tue, 07 Feb 2017 21:44:17 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea0c9f47507d7db883b3fbe6bb4e4bf04d69567aa1a9f23f53ea9edac2e7e5`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7db3fd9dd84bd318223fb0491c62830b9c09667ea59c5f6153802d44ebf8ca`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:76f668934e89e7278d9585ec491870cc3fde333c090505c4009765b537190e4f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3667734b829d6166331c4061625f55107411b54717790cbe0b34867bd1d0f6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 00:53:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:53:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:53:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_VERSION=9~b155
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_DEBIAN_VERSION=9~b155-1
# Tue, 07 Feb 2017 20:05:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 21:33:20 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:23 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:25 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:26 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62c0d008417308de1a3260177cbd1e10a682ea9f3a61174a3d79501785bc8d4`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 649.8 KB (649821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0f9a7fc7d3389b9a4b257f7f98708c2b0dba5eaa4c7acbf6727df89d0afe1`  
		Last Modified: Wed, 18 Jan 2017 06:23:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce797e1c405b5124fe52d0063d4689e3c509212bde8fcb4b3ad80ba2d11084e`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a7df1f08e49b203964a8c09d7450c044a5c9e8f42d2e227e1f8c270e72d3d`  
		Last Modified: Tue, 07 Feb 2017 20:16:14 GMT  
		Size: 145.3 MB (145310406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f9f32fa7871b08d249e81ea61a2d93a56eaba42964d29eca937aa4d6e41260`  
		Last Modified: Tue, 07 Feb 2017 21:44:17 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea0c9f47507d7db883b3fbe6bb4e4bf04d69567aa1a9f23f53ea9edac2e7e5`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7db3fd9dd84bd318223fb0491c62830b9c09667ea59c5f6153802d44ebf8ca`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:76f668934e89e7278d9585ec491870cc3fde333c090505c4009765b537190e4f
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271616771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3667734b829d6166331c4061625f55107411b54717790cbe0b34867bd1d0f6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 00:53:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:53:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:53:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_VERSION=9~b155
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_DEBIAN_VERSION=9~b155-1
# Tue, 07 Feb 2017 20:05:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 21:33:20 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:23 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:25 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:26 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62c0d008417308de1a3260177cbd1e10a682ea9f3a61174a3d79501785bc8d4`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 649.8 KB (649821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0f9a7fc7d3389b9a4b257f7f98708c2b0dba5eaa4c7acbf6727df89d0afe1`  
		Last Modified: Wed, 18 Jan 2017 06:23:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce797e1c405b5124fe52d0063d4689e3c509212bde8fcb4b3ad80ba2d11084e`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a7df1f08e49b203964a8c09d7450c044a5c9e8f42d2e227e1f8c270e72d3d`  
		Last Modified: Tue, 07 Feb 2017 20:16:14 GMT  
		Size: 145.3 MB (145310406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f9f32fa7871b08d249e81ea61a2d93a56eaba42964d29eca937aa4d6e41260`  
		Last Modified: Tue, 07 Feb 2017 21:44:17 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea0c9f47507d7db883b3fbe6bb4e4bf04d69567aa1a9f23f53ea9edac2e7e5`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7db3fd9dd84bd318223fb0491c62830b9c09667ea59c5f6153802d44ebf8ca`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:45a12b088fdcfd9a20d588052a56fbe3e9119a1f02270bf204fb4c7595bfc473
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271616930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98f26ac46bd4dff169dc80dc8e47123d4b3cb29592ee8df51093c72fba6413d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 00:53:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:53:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:53:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_VERSION=9~b155
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_DEBIAN_VERSION=9~b155-1
# Tue, 07 Feb 2017 20:05:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 21:33:20 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:23 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:25 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:26 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:27 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:29 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:30 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:30 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62c0d008417308de1a3260177cbd1e10a682ea9f3a61174a3d79501785bc8d4`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 649.8 KB (649821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0f9a7fc7d3389b9a4b257f7f98708c2b0dba5eaa4c7acbf6727df89d0afe1`  
		Last Modified: Wed, 18 Jan 2017 06:23:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce797e1c405b5124fe52d0063d4689e3c509212bde8fcb4b3ad80ba2d11084e`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a7df1f08e49b203964a8c09d7450c044a5c9e8f42d2e227e1f8c270e72d3d`  
		Last Modified: Tue, 07 Feb 2017 20:16:14 GMT  
		Size: 145.3 MB (145310406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f9f32fa7871b08d249e81ea61a2d93a56eaba42964d29eca937aa4d6e41260`  
		Last Modified: Tue, 07 Feb 2017 21:44:17 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea0c9f47507d7db883b3fbe6bb4e4bf04d69567aa1a9f23f53ea9edac2e7e5`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7db3fd9dd84bd318223fb0491c62830b9c09667ea59c5f6153802d44ebf8ca`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605c96430065e3589e40cbff1e9f46e03909e5e3bd3ee8cd0bf71c2bd535746e`  
		Last Modified: Tue, 07 Feb 2017 21:45:10 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:45a12b088fdcfd9a20d588052a56fbe3e9119a1f02270bf204fb4c7595bfc473
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271616930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98f26ac46bd4dff169dc80dc8e47123d4b3cb29592ee8df51093c72fba6413d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 00:53:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:53:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:53:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_VERSION=9~b155
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_DEBIAN_VERSION=9~b155-1
# Tue, 07 Feb 2017 20:05:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 21:33:20 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:23 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:25 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:26 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:27 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:29 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:30 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:30 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62c0d008417308de1a3260177cbd1e10a682ea9f3a61174a3d79501785bc8d4`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 649.8 KB (649821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0f9a7fc7d3389b9a4b257f7f98708c2b0dba5eaa4c7acbf6727df89d0afe1`  
		Last Modified: Wed, 18 Jan 2017 06:23:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce797e1c405b5124fe52d0063d4689e3c509212bde8fcb4b3ad80ba2d11084e`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a7df1f08e49b203964a8c09d7450c044a5c9e8f42d2e227e1f8c270e72d3d`  
		Last Modified: Tue, 07 Feb 2017 20:16:14 GMT  
		Size: 145.3 MB (145310406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f9f32fa7871b08d249e81ea61a2d93a56eaba42964d29eca937aa4d6e41260`  
		Last Modified: Tue, 07 Feb 2017 21:44:17 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea0c9f47507d7db883b3fbe6bb4e4bf04d69567aa1a9f23f53ea9edac2e7e5`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7db3fd9dd84bd318223fb0491c62830b9c09667ea59c5f6153802d44ebf8ca`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605c96430065e3589e40cbff1e9f46e03909e5e3bd3ee8cd0bf71c2bd535746e`  
		Last Modified: Tue, 07 Feb 2017 21:45:10 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:45a12b088fdcfd9a20d588052a56fbe3e9119a1f02270bf204fb4c7595bfc473
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.6 MB (271616930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b98f26ac46bd4dff169dc80dc8e47123d4b3cb29592ee8df51093c72fba6413d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 16 Jan 2017 20:37:19 GMT
ADD file:9d5e2a376a3a1005ec449a01b6afb4a2f264284d88861474541467b835a7edfc in / 
# Mon, 16 Jan 2017 20:37:27 GMT
CMD ["/bin/bash"]
# Tue, 17 Jan 2017 00:01:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jan 2017 00:53:29 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 17 Jan 2017 00:53:30 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jan 2017 00:53:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jan 2017 00:53:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_VERSION=9~b155
# Tue, 07 Feb 2017 20:04:44 GMT
ENV JAVA_DEBIAN_VERSION=9~b155-1
# Tue, 07 Feb 2017 20:05:16 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 Feb 2017 21:33:20 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 07 Feb 2017 21:33:20 GMT
ARG USER_HOME_DIR=/root
# Tue, 07 Feb 2017 21:33:23 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 07 Feb 2017 21:33:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 07 Feb 2017 21:33:25 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 07 Feb 2017 21:33:26 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 07 Feb 2017 21:33:26 GMT
VOLUME [/root/.m2]
# Tue, 07 Feb 2017 21:33:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 07 Feb 2017 21:33:27 GMT
CMD ["mvn"]
# Tue, 07 Feb 2017 21:33:29 GMT
RUN mkdir -p /usr/src/app
# Tue, 07 Feb 2017 21:33:29 GMT
WORKDIR /usr/src/app
# Tue, 07 Feb 2017 21:33:30 GMT
ONBUILD ADD . /usr/src/app
# Tue, 07 Feb 2017 21:33:30 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:f6add9a5d611457943cd08d9e4e8160a51728a916702da8ece8704c13f50a720`  
		Last Modified: Mon, 16 Jan 2017 20:47:37 GMT  
		Size: 44.0 MB (43955096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e0ea68a9faf406529a8f73151a10a1a6bfd6ccb993721627f30e36001892e5`  
		Last Modified: Tue, 17 Jan 2017 00:21:18 GMT  
		Size: 23.1 MB (23078867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f71ae9ffad2ee14617f1f7b5f26c6773f07c814544b94d172feb3a9afa19758`  
		Last Modified: Tue, 17 Jan 2017 00:22:10 GMT  
		Size: 50.0 MB (50022229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b62c0d008417308de1a3260177cbd1e10a682ea9f3a61174a3d79501785bc8d4`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 649.8 KB (649821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc0f9a7fc7d3389b9a4b257f7f98708c2b0dba5eaa4c7acbf6727df89d0afe1`  
		Last Modified: Wed, 18 Jan 2017 06:23:56 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce797e1c405b5124fe52d0063d4689e3c509212bde8fcb4b3ad80ba2d11084e`  
		Last Modified: Wed, 18 Jan 2017 06:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a09a7df1f08e49b203964a8c09d7450c044a5c9e8f42d2e227e1f8c270e72d3d`  
		Last Modified: Tue, 07 Feb 2017 20:16:14 GMT  
		Size: 145.3 MB (145310406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f9f32fa7871b08d249e81ea61a2d93a56eaba42964d29eca937aa4d6e41260`  
		Last Modified: Tue, 07 Feb 2017 21:44:17 GMT  
		Size: 8.6 MB (8598858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ea0c9f47507d7db883b3fbe6bb4e4bf04d69567aa1a9f23f53ea9edac2e7e5`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 692.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef7db3fd9dd84bd318223fb0491c62830b9c09667ea59c5f6153802d44ebf8ca`  
		Last Modified: Tue, 07 Feb 2017 21:44:15 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605c96430065e3589e40cbff1e9f46e03909e5e3bd3ee8cd0bf71c2bd535746e`  
		Last Modified: Tue, 07 Feb 2017 21:45:10 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
