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
$ docker pull maven@sha256:92f94ccc479c34753eb00ea56f4b8972b32cc5710b14a72ad463c8d4145331b5
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261378170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef2a6a38ac09d1db76f70399c46761fd4f16bbdf4277313fdbc1204b3f53ae`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:30:25 GMT
ADD file:41ea5187c50116884c38d9ec51d920d79cfaeb2a61c52e07a97f457419a10a4f in / 
# Mon, 07 Nov 2016 20:30:26 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:27:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:50:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:51:04 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:51:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:51:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 08 Nov 2016 18:51:13 GMT
ENV JAVA_VERSION=7u111
# Tue, 08 Nov 2016 18:51:14 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 08 Nov 2016 18:52:05 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 10 Nov 2016 07:07:48 GMT
ARG MAVEN_VERSION=3.3.9
# Thu, 10 Nov 2016 07:07:48 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:07:51 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:07:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:07:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:07:52 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:07:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:07:53 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:07:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:07:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:386a066cd84a33a04d560c42bef66d1dd64ebfc76de78550e5fd0f8d57778bca`  
		Last Modified: Mon, 07 Nov 2016 20:34:04 GMT  
		Size: 51.4 MB (51356989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ea8418708338e40dce9179cfe97fd116831f1601be50fef48ea6011653c986`  
		Last Modified: Mon, 07 Nov 2016 22:57:05 GMT  
		Size: 18.5 MB (18528477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b459c9f665cc39ff5fc09071b5dada4dad766573d962276f999d0c466d5405`  
		Last Modified: Mon, 07 Nov 2016 22:57:53 GMT  
		Size: 42.5 MB (42498243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690dbea0e4ca2996b70b102af3c4639bbd2f1b8fcbb2bf602a0a82f74d54bf51`  
		Last Modified: Tue, 08 Nov 2016 18:59:32 GMT  
		Size: 593.3 KB (593322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d24e93d0316c4669a0410b7f32aeb300cbf6645b64cc3df72b36161e8c351e`  
		Last Modified: Tue, 08 Nov 2016 18:59:31 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0425b1e2a6d7f43087fd2253d4b365f16a4d1d50f482d25c715b6a3f1b10b331`  
		Last Modified: Tue, 08 Nov 2016 19:00:12 GMT  
		Size: 139.8 MB (139801004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a6331a5ac28141e4996be70759e37ec5ec6b8ca3097bd0f90fadc66e672545`  
		Last Modified: Thu, 10 Nov 2016 07:08:07 GMT  
		Size: 8.6 MB (8598851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22385e40755014cf7f416d64a488161efc80f776de542bfaa93c16e99ed84f65`  
		Last Modified: Thu, 10 Nov 2016 07:08:06 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6fb9f2e41f0232ced746a7b50b0daa8ef05fa7e071ec567f66c7906d2217308`  
		Last Modified: Thu, 10 Nov 2016 07:08:06 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7`

```console
$ docker pull maven@sha256:70a9993c8c32377dcac565d285252af919d0915afdfdc87ccf42c7d1811e51a2
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260997976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6909b30c08a17bc9e1681db4c4d6f3155d3fe661e9648ababa9a77075cd43eaa`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:53:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 16:49:47 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:47 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:49 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:50 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45493da2313e7f4293d8e5fdf13e248c9e4d537c921e886930e1b753b17e51b1`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727bdc352df610f11ce0a3cc03f477960fb6989cb27a966e558184830034963`  
		Last Modified: Wed, 14 Dec 2016 03:05:05 GMT  
		Size: 139.4 MB (139409356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26917dbc9b2d23651877a1eea38a4c2bb8b68ba7a4946808338cf296f0c940ce`  
		Last Modified: Mon, 19 Dec 2016 23:49:16 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fca4cc47c6f771205bafe1bb5c2bb90c59c6195db893b4165f2d076756b926`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbfbb193298fa99853f9ef9bb29f10dc319854b366ead6ec89a6fc1385cd6ef`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:70a9993c8c32377dcac565d285252af919d0915afdfdc87ccf42c7d1811e51a2
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260997976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6909b30c08a17bc9e1681db4c4d6f3155d3fe661e9648ababa9a77075cd43eaa`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:53:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 16:49:47 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:47 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:49 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:50 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45493da2313e7f4293d8e5fdf13e248c9e4d537c921e886930e1b753b17e51b1`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727bdc352df610f11ce0a3cc03f477960fb6989cb27a966e558184830034963`  
		Last Modified: Wed, 14 Dec 2016 03:05:05 GMT  
		Size: 139.4 MB (139409356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26917dbc9b2d23651877a1eea38a4c2bb8b68ba7a4946808338cf296f0c940ce`  
		Last Modified: Mon, 19 Dec 2016 23:49:16 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fca4cc47c6f771205bafe1bb5c2bb90c59c6195db893b4165f2d076756b926`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbfbb193298fa99853f9ef9bb29f10dc319854b366ead6ec89a6fc1385cd6ef`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild`

```console
$ docker pull maven@sha256:7cc449d9fa99507f80139d20b134638fca7f301162cb558ca6e82577d4b069dc
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260998133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d40afe4cc9d6d81b351a984a2586bad74aeef4cec8a8a19c4be41361fd9a1b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:53:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 16:49:47 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:47 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:49 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:50 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:51 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:52 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:52 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:53 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:53 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45493da2313e7f4293d8e5fdf13e248c9e4d537c921e886930e1b753b17e51b1`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727bdc352df610f11ce0a3cc03f477960fb6989cb27a966e558184830034963`  
		Last Modified: Wed, 14 Dec 2016 03:05:05 GMT  
		Size: 139.4 MB (139409356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26917dbc9b2d23651877a1eea38a4c2bb8b68ba7a4946808338cf296f0c940ce`  
		Last Modified: Mon, 19 Dec 2016 23:49:16 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fca4cc47c6f771205bafe1bb5c2bb90c59c6195db893b4165f2d076756b926`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbfbb193298fa99853f9ef9bb29f10dc319854b366ead6ec89a6fc1385cd6ef`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e6f062e2d30511b27523a9967f090218f91daa8d280f1f71ee1e2a97bdb2d9`  
		Last Modified: Mon, 19 Dec 2016 23:50:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:7cc449d9fa99507f80139d20b134638fca7f301162cb558ca6e82577d4b069dc
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260998133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d40afe4cc9d6d81b351a984a2586bad74aeef4cec8a8a19c4be41361fd9a1b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:53:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 16:49:47 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:47 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:49 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:50 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:51 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:52 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:52 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:53 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:53 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45493da2313e7f4293d8e5fdf13e248c9e4d537c921e886930e1b753b17e51b1`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727bdc352df610f11ce0a3cc03f477960fb6989cb27a966e558184830034963`  
		Last Modified: Wed, 14 Dec 2016 03:05:05 GMT  
		Size: 139.4 MB (139409356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26917dbc9b2d23651877a1eea38a4c2bb8b68ba7a4946808338cf296f0c940ce`  
		Last Modified: Mon, 19 Dec 2016 23:49:16 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fca4cc47c6f771205bafe1bb5c2bb90c59c6195db893b4165f2d076756b926`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbfbb193298fa99853f9ef9bb29f10dc319854b366ead6ec89a6fc1385cd6ef`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e6f062e2d30511b27523a9967f090218f91daa8d280f1f71ee1e2a97bdb2d9`  
		Last Modified: Mon, 19 Dec 2016 23:50:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:7cc449d9fa99507f80139d20b134638fca7f301162cb558ca6e82577d4b069dc
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.0 MB (260998133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38d40afe4cc9d6d81b351a984a2586bad74aeef4cec8a8a19c4be41361fd9a1b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:52:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:52:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_VERSION=7u111
# Tue, 13 Dec 2016 23:52:40 GMT
ENV JAVA_DEBIAN_VERSION=7u111-2.6.7-2~deb8u1
# Tue, 13 Dec 2016 23:53:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 16:49:47 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:47 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:49 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:49 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:50 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:50 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:51 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:52 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:52 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:53 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:53 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45493da2313e7f4293d8e5fdf13e248c9e4d537c921e886930e1b753b17e51b1`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2727bdc352df610f11ce0a3cc03f477960fb6989cb27a966e558184830034963`  
		Last Modified: Wed, 14 Dec 2016 03:05:05 GMT  
		Size: 139.4 MB (139409356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26917dbc9b2d23651877a1eea38a4c2bb8b68ba7a4946808338cf296f0c940ce`  
		Last Modified: Mon, 19 Dec 2016 23:49:16 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42fca4cc47c6f771205bafe1bb5c2bb90c59c6195db893b4165f2d076756b926`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bbfbb193298fa99853f9ef9bb29f10dc319854b366ead6ec89a6fc1385cd6ef`  
		Last Modified: Mon, 19 Dec 2016 23:49:14 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e6f062e2d30511b27523a9967f090218f91daa8d280f1f71ee1e2a97bdb2d9`  
		Last Modified: Mon, 19 Dec 2016 23:50:08 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-alpine`

```console
$ docker pull maven@sha256:c08c38b50ba5f7b610a4aeceedcc63751d54f571a3a32149acdadbfd5c7b327f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19245a6a1ee1e8318921e64205e06707029f3df29a3f1b57c385b8369f88102`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 18 Oct 2016 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:34:48 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:34:49 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:34:49 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:34:51 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:34:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:34:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:34:52 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:34:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:34:53 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:34:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:34:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52044ef2cbfc95e1337f8b54cbbe080c9329cdf1bab6609375645df231e16e9`  
		Last Modified: Thu, 17 Nov 2016 21:53:03 GMT  
		Size: 75.6 MB (75575118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a49fa334ff28e2a90d4805bc3ff46b6ef82bf3c7eb116811e97e0759ee764`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 1.7 MB (1729275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb7456e068ef6526d4d4ecead46a8979afd91f1764e02a166e83d76897885ce`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b99221e3e04ca7ab25237cc769e99084cc84d95d02ca91a2eb3fc0525bedaa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94408771a17504843fcc419edb277c6dcd9af2e3bfcaf655791a53d5bee50dfa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-alpine`

```console
$ docker pull maven@sha256:c08c38b50ba5f7b610a4aeceedcc63751d54f571a3a32149acdadbfd5c7b327f
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19245a6a1ee1e8318921e64205e06707029f3df29a3f1b57c385b8369f88102`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 18 Oct 2016 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:34:48 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:34:49 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:34:49 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:34:51 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:34:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:34:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:34:52 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:34:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:34:53 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:34:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:34:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52044ef2cbfc95e1337f8b54cbbe080c9329cdf1bab6609375645df231e16e9`  
		Last Modified: Thu, 17 Nov 2016 21:53:03 GMT  
		Size: 75.6 MB (75575118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a49fa334ff28e2a90d4805bc3ff46b6ef82bf3c7eb116811e97e0759ee764`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 1.7 MB (1729275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb7456e068ef6526d4d4ecead46a8979afd91f1764e02a166e83d76897885ce`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b99221e3e04ca7ab25237cc769e99084cc84d95d02ca91a2eb3fc0525bedaa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94408771a17504843fcc419edb277c6dcd9af2e3bfcaf655791a53d5bee50dfa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:c08c38b50ba5f7b610a4aeceedcc63751d54f571a3a32149acdadbfd5c7b327f
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19245a6a1ee1e8318921e64205e06707029f3df29a3f1b57c385b8369f88102`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 18 Oct 2016 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:34:48 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:34:49 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:34:49 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:34:51 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:34:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:34:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:34:52 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:34:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:34:53 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:34:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:34:54 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52044ef2cbfc95e1337f8b54cbbe080c9329cdf1bab6609375645df231e16e9`  
		Last Modified: Thu, 17 Nov 2016 21:53:03 GMT  
		Size: 75.6 MB (75575118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a49fa334ff28e2a90d4805bc3ff46b6ef82bf3c7eb116811e97e0759ee764`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 1.7 MB (1729275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb7456e068ef6526d4d4ecead46a8979afd91f1764e02a166e83d76897885ce`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b99221e3e04ca7ab25237cc769e99084cc84d95d02ca91a2eb3fc0525bedaa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94408771a17504843fcc419edb277c6dcd9af2e3bfcaf655791a53d5bee50dfa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:026c51a2e20bd49bbb5418f8f3673de36fb84b1bbc7cace27e4c6426a119c199
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe36a6ebad5380d3a2876bdbfadc38cbc242528862728b4fb9b71a3faeb5939`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 18 Oct 2016 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:34:48 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:34:49 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:34:49 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:34:51 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:34:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:34:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:34:52 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:34:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:34:53 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:34:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:34:54 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:34:56 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:34:56 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:34:56 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:34:57 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52044ef2cbfc95e1337f8b54cbbe080c9329cdf1bab6609375645df231e16e9`  
		Last Modified: Thu, 17 Nov 2016 21:53:03 GMT  
		Size: 75.6 MB (75575118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a49fa334ff28e2a90d4805bc3ff46b6ef82bf3c7eb116811e97e0759ee764`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 1.7 MB (1729275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb7456e068ef6526d4d4ecead46a8979afd91f1764e02a166e83d76897885ce`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b99221e3e04ca7ab25237cc769e99084cc84d95d02ca91a2eb3fc0525bedaa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94408771a17504843fcc419edb277c6dcd9af2e3bfcaf655791a53d5bee50dfa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0a03e307dc544d42263b35f17a9e7024cfcd2f7da202be6510c8068afa1b6a`  
		Last Modified: Fri, 18 Nov 2016 01:37:40 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:026c51a2e20bd49bbb5418f8f3673de36fb84b1bbc7cace27e4c6426a119c199
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe36a6ebad5380d3a2876bdbfadc38cbc242528862728b4fb9b71a3faeb5939`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 18 Oct 2016 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:34:48 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:34:49 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:34:49 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:34:51 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:34:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:34:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:34:52 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:34:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:34:53 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:34:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:34:54 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:34:56 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:34:56 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:34:56 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:34:57 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52044ef2cbfc95e1337f8b54cbbe080c9329cdf1bab6609375645df231e16e9`  
		Last Modified: Thu, 17 Nov 2016 21:53:03 GMT  
		Size: 75.6 MB (75575118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a49fa334ff28e2a90d4805bc3ff46b6ef82bf3c7eb116811e97e0759ee764`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 1.7 MB (1729275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb7456e068ef6526d4d4ecead46a8979afd91f1764e02a166e83d76897885ce`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b99221e3e04ca7ab25237cc769e99084cc84d95d02ca91a2eb3fc0525bedaa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94408771a17504843fcc419edb277c6dcd9af2e3bfcaf655791a53d5bee50dfa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0a03e307dc544d42263b35f17a9e7024cfcd2f7da202be6510c8068afa1b6a`  
		Last Modified: Fri, 18 Nov 2016 01:37:40 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:026c51a2e20bd49bbb5418f8f3673de36fb84b1bbc7cace27e4c6426a119c199
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88217616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe36a6ebad5380d3a2876bdbfadc38cbc242528862728b4fb9b71a3faeb5939`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 18 Oct 2016 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_VERSION=7u121
# Thu, 17 Nov 2016 21:47:22 GMT
ENV JAVA_ALPINE_VERSION=7.121.2.6.8-r0
# Thu, 17 Nov 2016 21:47:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:34:48 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:34:49 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:34:49 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:34:51 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:34:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:34:52 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:34:52 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:34:53 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:34:53 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:34:54 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:34:54 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:34:56 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:34:56 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:34:56 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:34:57 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52044ef2cbfc95e1337f8b54cbbe080c9329cdf1bab6609375645df231e16e9`  
		Last Modified: Thu, 17 Nov 2016 21:53:03 GMT  
		Size: 75.6 MB (75575118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80a49fa334ff28e2a90d4805bc3ff46b6ef82bf3c7eb116811e97e0759ee764`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 1.7 MB (1729275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb7456e068ef6526d4d4ecead46a8979afd91f1764e02a166e83d76897885ce`  
		Last Modified: Fri, 18 Nov 2016 01:36:09 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b99221e3e04ca7ab25237cc769e99084cc84d95d02ca91a2eb3fc0525bedaa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94408771a17504843fcc419edb277c6dcd9af2e3bfcaf655791a53d5bee50dfa`  
		Last Modified: Fri, 18 Nov 2016 01:36:07 GMT  
		Size: 346.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0a03e307dc544d42263b35f17a9e7024cfcd2f7da202be6510c8068afa1b6a`  
		Last Modified: Fri, 18 Nov 2016 01:37:40 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8`

```console
$ docker pull maven@sha256:f327eea5625fc6e769ea6ebd9d96442922227a161a94ac1668c387b0e5f96606
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90451161cc5aa0c2c64b39cc03faa9f57576d356f1d20b50b3c6678e5082bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9`

```console
$ docker pull maven@sha256:f327eea5625fc6e769ea6ebd9d96442922227a161a94ac1668c387b0e5f96606
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90451161cc5aa0c2c64b39cc03faa9f57576d356f1d20b50b3c6678e5082bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:f327eea5625fc6e769ea6ebd9d96442922227a161a94ac1668c387b0e5f96606
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90451161cc5aa0c2c64b39cc03faa9f57576d356f1d20b50b3c6678e5082bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3`

```console
$ docker pull maven@sha256:f327eea5625fc6e769ea6ebd9d96442922227a161a94ac1668c387b0e5f96606
```

-	Platforms:
	-	linux; amd64

### `maven:3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90451161cc5aa0c2c64b39cc03faa9f57576d356f1d20b50b3c6678e5082bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:f327eea5625fc6e769ea6ebd9d96442922227a161a94ac1668c387b0e5f96606
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90451161cc5aa0c2c64b39cc03faa9f57576d356f1d20b50b3c6678e5082bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:f327eea5625fc6e769ea6ebd9d96442922227a161a94ac1668c387b0e5f96606
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90451161cc5aa0c2c64b39cc03faa9f57576d356f1d20b50b3c6678e5082bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:f327eea5625fc6e769ea6ebd9d96442922227a161a94ac1668c387b0e5f96606
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a90451161cc5aa0c2c64b39cc03faa9f57576d356f1d20b50b3c6678e5082bf8`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild`

```console
$ docker pull maven@sha256:5870457433d424668f1b72e122c259f238379e5668b972b3e4840815c34fdd2a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed6262bbbc7e1f748f1ace31841aab8c835b14c2374a1e2cc2d3ba079f000fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:54 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fb3f29eecf727d925a844828032c527ba6b3c6ea09cdd9aee2520a8a029cbf`  
		Last Modified: Mon, 19 Dec 2016 23:53:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:5870457433d424668f1b72e122c259f238379e5668b972b3e4840815c34fdd2a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed6262bbbc7e1f748f1ace31841aab8c835b14c2374a1e2cc2d3ba079f000fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:54 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fb3f29eecf727d925a844828032c527ba6b3c6ea09cdd9aee2520a8a029cbf`  
		Last Modified: Mon, 19 Dec 2016 23:53:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:5870457433d424668f1b72e122c259f238379e5668b972b3e4840815c34fdd2a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed6262bbbc7e1f748f1ace31841aab8c835b14c2374a1e2cc2d3ba079f000fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:54 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fb3f29eecf727d925a844828032c527ba6b3c6ea09cdd9aee2520a8a029cbf`  
		Last Modified: Mon, 19 Dec 2016 23:53:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:5870457433d424668f1b72e122c259f238379e5668b972b3e4840815c34fdd2a
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed6262bbbc7e1f748f1ace31841aab8c835b14c2374a1e2cc2d3ba079f000fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:54 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fb3f29eecf727d925a844828032c527ba6b3c6ea09cdd9aee2520a8a029cbf`  
		Last Modified: Mon, 19 Dec 2016 23:53:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:5870457433d424668f1b72e122c259f238379e5668b972b3e4840815c34fdd2a
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed6262bbbc7e1f748f1ace31841aab8c835b14c2374a1e2cc2d3ba079f000fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:54 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fb3f29eecf727d925a844828032c527ba6b3c6ea09cdd9aee2520a8a029cbf`  
		Last Modified: Mon, 19 Dec 2016 23:53:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:5870457433d424668f1b72e122c259f238379e5668b972b3e4840815c34fdd2a
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed6262bbbc7e1f748f1ace31841aab8c835b14c2374a1e2cc2d3ba079f000fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:54 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fb3f29eecf727d925a844828032c527ba6b3c6ea09cdd9aee2520a8a029cbf`  
		Last Modified: Mon, 19 Dec 2016 23:53:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:5870457433d424668f1b72e122c259f238379e5668b972b3e4840815c34fdd2a
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251981889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed6262bbbc7e1f748f1ace31841aab8c835b14c2374a1e2cc2d3ba079f000fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:10:59 GMT
ADD file:1d214d2782eaccc743b8d683ccecf2f87f12a0ecdfbcd6fdf4943ce616f23870 in / 
# Tue, 13 Dec 2016 22:10:59 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:00:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:52:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:54:12 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 13 Dec 2016 23:54:12 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:54:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_VERSION=8u111
# Tue, 13 Dec 2016 23:54:14 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 13 Dec 2016 23:54:15 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 13 Dec 2016 23:54:58 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 13 Dec 2016 23:55:00 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 19 Dec 2016 16:49:42 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 16:49:42 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 16:49:44 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 16:49:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 16:49:45 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 16:49:45 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 16:49:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 16:49:46 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 16:49:54 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 16:49:54 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 16:49:55 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:75a822cd7888e394c49828b951061402d31745f596b1f502758570f2d0ee79e2`  
		Last Modified: Tue, 13 Dec 2016 22:16:41 GMT  
		Size: 51.4 MB (51363125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57de64c72267e88e952b064236cb906c7626f7c07a1a2d5900cf6953e72632b3`  
		Last Modified: Wed, 14 Dec 2016 03:04:38 GMT  
		Size: 18.5 MB (18529983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306be1e8943b446026b96c2ef7b3ab8471c760774fd1cd11334df7084fed57b`  
		Last Modified: Wed, 14 Dec 2016 03:04:50 GMT  
		Size: 42.5 MB (42502002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6944bfb7182c4b1f546a4bcd888d00bdb92bb016bde7d243af3712549534d9`  
		Last Modified: Wed, 14 Dec 2016 03:04:28 GMT  
		Size: 593.4 KB (593384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3521f2f45ed2f586ef5e6423f3dc3f4e36f7460007c2827b827131d2254ecc44`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2f0d9b5f90c348276759c85fae2d52adae563fad53786e8e99862eb3aeab90`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cedcf6d25273f360503909554028b54a92d914805ed9d834cbe31e8ebfeb923`  
		Last Modified: Wed, 14 Dec 2016 03:12:30 GMT  
		Size: 130.1 MB (130108711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f99da7583d58b782d9a4c14ef448bf6f6771e15a7975a2450111ed0a34b381`  
		Last Modified: Wed, 14 Dec 2016 03:11:34 GMT  
		Size: 284.2 KB (284180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc801fb53e35d73fd267c66eaf162f3a8fe990a50fc99e6ec30dbbe25639baa6`  
		Last Modified: Mon, 19 Dec 2016 23:51:04 GMT  
		Size: 8.6 MB (8598846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f150b71e3b185ebab57f9e8d158d37edbb3aa02a1ceff1ef4bb412a47bb5937`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d4d6fcdf7068f2c39687bde036e4d4be4849aca3c77a8cc1d1c679c38ff02a3`  
		Last Modified: Mon, 19 Dec 2016 23:51:02 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fb3f29eecf727d925a844828032c527ba6b3c6ea09cdd9aee2520a8a029cbf`  
		Last Modified: Mon, 19 Dec 2016 23:53:00 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-alpine`

```console
$ docker pull maven@sha256:7dc3d62f4eb0be6907312665de6a4a5fcbd9878a60c325f74faad81ee3adc680
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf563330eba4a9b5742bf7c294b7e7e1a6930497c2e82553c7a52e63b3db790`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-alpine`

```console
$ docker pull maven@sha256:7dc3d62f4eb0be6907312665de6a4a5fcbd9878a60c325f74faad81ee3adc680
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf563330eba4a9b5742bf7c294b7e7e1a6930497c2e82553c7a52e63b3db790`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-alpine`

```console
$ docker pull maven@sha256:7dc3d62f4eb0be6907312665de6a4a5fcbd9878a60c325f74faad81ee3adc680
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf563330eba4a9b5742bf7c294b7e7e1a6930497c2e82553c7a52e63b3db790`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-alpine`

```console
$ docker pull maven@sha256:7dc3d62f4eb0be6907312665de6a4a5fcbd9878a60c325f74faad81ee3adc680
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf563330eba4a9b5742bf7c294b7e7e1a6930497c2e82553c7a52e63b3db790`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:7dc3d62f4eb0be6907312665de6a4a5fcbd9878a60c325f74faad81ee3adc680
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf563330eba4a9b5742bf7c294b7e7e1a6930497c2e82553c7a52e63b3db790`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:7dc3d62f4eb0be6907312665de6a4a5fcbd9878a60c325f74faad81ee3adc680
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf563330eba4a9b5742bf7c294b7e7e1a6930497c2e82553c7a52e63b3db790`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:7dc3d62f4eb0be6907312665de6a4a5fcbd9878a60c325f74faad81ee3adc680
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cf563330eba4a9b5742bf7c294b7e7e1a6930497c2e82553c7a52e63b3db790`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:d7bb57a929ac48237d9f47f14b1e76cde142a2bf2c7f3a02869df73828765af2
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61956219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9f4cc8a87557ba8057eedd700fccc94e0a609546924549a08cd2d1445b6f0c`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 18 Oct 2016 20:31:22 GMT
ADD file:7afbc23fda8b0b3872623c16af8e3490b2cee951aed14b3794389c2f946cc8c7 in / 
# Tue, 18 Oct 2016 20:39:57 GMT
ENV LANG=C.UTF-8
# Tue, 18 Oct 2016 20:39:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 18 Oct 2016 20:40:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 18 Oct 2016 20:40:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_VERSION=8u111
# Thu, 17 Nov 2016 21:47:44 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Thu, 17 Nov 2016 21:47:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 18 Nov 2016 01:35:01 GMT
RUN apk add --no-cache curl tar bash
# Fri, 18 Nov 2016 01:35:01 GMT
ARG MAVEN_VERSION=3.3.9
# Fri, 18 Nov 2016 01:35:01 GMT
ARG USER_HOME_DIR=/root
# Fri, 18 Nov 2016 01:35:03 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 18 Nov 2016 01:35:03 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 18 Nov 2016 01:35:04 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 18 Nov 2016 01:35:04 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 18 Nov 2016 01:35:05 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 18 Nov 2016 01:35:05 GMT
VOLUME [/root/.m2]
# Fri, 18 Nov 2016 01:35:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 18 Nov 2016 01:35:06 GMT
CMD ["mvn"]
# Fri, 18 Nov 2016 01:35:08 GMT
RUN mkdir -p /usr/src/app
# Fri, 18 Nov 2016 01:35:08 GMT
WORKDIR /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD ADD . /usr/src/app
# Fri, 18 Nov 2016 01:35:09 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:3690ec4760f95690944da86dc4496148a63d85c9e3100669a318110092f6862f`  
		Last Modified: Tue, 18 Oct 2016 20:32:39 GMT  
		Size: 2.3 MB (2312958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdb77eb56b4c44907a822ccdf607323c1f42fd024b7db6be146dd049d95f305`  
		Last Modified: Tue, 18 Oct 2016 20:45:34 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f83c3a978676d457389954188a0d4eae85a2728e4a9ba27f6ec6730e88932fd`  
		Last Modified: Thu, 17 Nov 2016 22:00:11 GMT  
		Size: 49.4 MB (49355709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c85971288aa6d91bf66763b7a8dbb9f60eacb53570e882b7fe3cb7bb1da0a92`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 1.7 MB (1687287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50def74586fa515950a0586f78df4230523afa8bb0d3937a24f7f56a5f7cf07`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039ac1f6fa78a6e087dc53fa646859a824e3e35add854e6441d4c62430e1eea3`  
		Last Modified: Fri, 18 Nov 2016 01:40:09 GMT  
		Size: 687.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bd32a5f12774f27327d83d6fd891570b30c396ef0ddb3f572d0e534ee35e5d`  
		Last Modified: Fri, 18 Nov 2016 01:40:10 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b585567c6732a89833b1e9f15f5ad75c44fe78725cebefc89ff0924d29b4a1ac`  
		Last Modified: Fri, 18 Nov 2016 01:43:32 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9`

```console
$ docker pull maven@sha256:f4f5294412fa92de1faa42761e091dda5a149d7a5b30620c5aed4fd7db7060fd
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269542797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21db92dcc0fdc2d321cb75eb8a52978d824fcb887bfeb1f29c5d66657574b726`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 13 Dec 2016 23:55:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_VERSION=9~b149
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b149-1
# Mon, 19 Dec 2016 21:08:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 23:48:49 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 23:48:50 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 23:48:52 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 23:48:54 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 23:48:55 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 23:48:55 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 23:48:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 23:48:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72591232915f25a33b2dcf0ed9fea09256ec5c0988bce2e515b6e9911274adc`  
		Last Modified: Wed, 14 Dec 2016 03:20:29 GMT  
		Size: 20.9 MB (20945421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e5ec7de751dd011b9b64ec0ee93775040bb91451b2b1dc95ec4a175de462c3`  
		Last Modified: Wed, 14 Dec 2016 03:20:43 GMT  
		Size: 51.2 MB (51219215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121993890cd4b642ee91546b2c0b7c655abd4287f759bed0220f854f61d6608f`  
		Last Modified: Wed, 14 Dec 2016 03:20:20 GMT  
		Size: 648.4 KB (648436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c137dfeb464dfb54e087d20ccb9a6525a515aab6121f1184499fa1b539667d7`  
		Last Modified: Wed, 14 Dec 2016 03:20:23 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6d48ce44eb06a1b268d4330e98380ab8ff70b3b5f746a1db08d33da596f50e`  
		Last Modified: Wed, 14 Dec 2016 03:20:19 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff400272ea3d118646477c1fe56f335cbaa29869ad52808235f3293ab7b7a29a`  
		Last Modified: Mon, 19 Dec 2016 21:27:07 GMT  
		Size: 144.3 MB (144262440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb3bb422efa28a231aa0143462af8f8a38f235efe1387076abb3966700bc445`  
		Last Modified: Mon, 19 Dec 2016 23:55:00 GMT  
		Size: 8.6 MB (8598848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af41f7fd04a6051d9724c942c2bdf39c0571880dd27de6de0784c70699f930c5`  
		Last Modified: Mon, 19 Dec 2016 23:54:58 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e947452c2e1cb8da720a473fd179ccd0e496571dbcb17a5314fb0b207ee5d5`  
		Last Modified: Mon, 19 Dec 2016 23:54:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:f4f5294412fa92de1faa42761e091dda5a149d7a5b30620c5aed4fd7db7060fd
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269542797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21db92dcc0fdc2d321cb75eb8a52978d824fcb887bfeb1f29c5d66657574b726`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 13 Dec 2016 23:55:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_VERSION=9~b149
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b149-1
# Mon, 19 Dec 2016 21:08:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 23:48:49 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 23:48:50 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 23:48:52 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 23:48:54 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 23:48:55 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 23:48:55 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 23:48:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 23:48:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72591232915f25a33b2dcf0ed9fea09256ec5c0988bce2e515b6e9911274adc`  
		Last Modified: Wed, 14 Dec 2016 03:20:29 GMT  
		Size: 20.9 MB (20945421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e5ec7de751dd011b9b64ec0ee93775040bb91451b2b1dc95ec4a175de462c3`  
		Last Modified: Wed, 14 Dec 2016 03:20:43 GMT  
		Size: 51.2 MB (51219215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121993890cd4b642ee91546b2c0b7c655abd4287f759bed0220f854f61d6608f`  
		Last Modified: Wed, 14 Dec 2016 03:20:20 GMT  
		Size: 648.4 KB (648436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c137dfeb464dfb54e087d20ccb9a6525a515aab6121f1184499fa1b539667d7`  
		Last Modified: Wed, 14 Dec 2016 03:20:23 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6d48ce44eb06a1b268d4330e98380ab8ff70b3b5f746a1db08d33da596f50e`  
		Last Modified: Wed, 14 Dec 2016 03:20:19 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff400272ea3d118646477c1fe56f335cbaa29869ad52808235f3293ab7b7a29a`  
		Last Modified: Mon, 19 Dec 2016 21:27:07 GMT  
		Size: 144.3 MB (144262440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb3bb422efa28a231aa0143462af8f8a38f235efe1387076abb3966700bc445`  
		Last Modified: Mon, 19 Dec 2016 23:55:00 GMT  
		Size: 8.6 MB (8598848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af41f7fd04a6051d9724c942c2bdf39c0571880dd27de6de0784c70699f930c5`  
		Last Modified: Mon, 19 Dec 2016 23:54:58 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e947452c2e1cb8da720a473fd179ccd0e496571dbcb17a5314fb0b207ee5d5`  
		Last Modified: Mon, 19 Dec 2016 23:54:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:f4f5294412fa92de1faa42761e091dda5a149d7a5b30620c5aed4fd7db7060fd
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269542797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21db92dcc0fdc2d321cb75eb8a52978d824fcb887bfeb1f29c5d66657574b726`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 13 Dec 2016 23:55:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_VERSION=9~b149
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b149-1
# Mon, 19 Dec 2016 21:08:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 23:48:49 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 23:48:50 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 23:48:52 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 23:48:54 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 23:48:55 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 23:48:55 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 23:48:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 23:48:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72591232915f25a33b2dcf0ed9fea09256ec5c0988bce2e515b6e9911274adc`  
		Last Modified: Wed, 14 Dec 2016 03:20:29 GMT  
		Size: 20.9 MB (20945421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e5ec7de751dd011b9b64ec0ee93775040bb91451b2b1dc95ec4a175de462c3`  
		Last Modified: Wed, 14 Dec 2016 03:20:43 GMT  
		Size: 51.2 MB (51219215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121993890cd4b642ee91546b2c0b7c655abd4287f759bed0220f854f61d6608f`  
		Last Modified: Wed, 14 Dec 2016 03:20:20 GMT  
		Size: 648.4 KB (648436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c137dfeb464dfb54e087d20ccb9a6525a515aab6121f1184499fa1b539667d7`  
		Last Modified: Wed, 14 Dec 2016 03:20:23 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6d48ce44eb06a1b268d4330e98380ab8ff70b3b5f746a1db08d33da596f50e`  
		Last Modified: Wed, 14 Dec 2016 03:20:19 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff400272ea3d118646477c1fe56f335cbaa29869ad52808235f3293ab7b7a29a`  
		Last Modified: Mon, 19 Dec 2016 21:27:07 GMT  
		Size: 144.3 MB (144262440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb3bb422efa28a231aa0143462af8f8a38f235efe1387076abb3966700bc445`  
		Last Modified: Mon, 19 Dec 2016 23:55:00 GMT  
		Size: 8.6 MB (8598848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af41f7fd04a6051d9724c942c2bdf39c0571880dd27de6de0784c70699f930c5`  
		Last Modified: Mon, 19 Dec 2016 23:54:58 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e947452c2e1cb8da720a473fd179ccd0e496571dbcb17a5314fb0b207ee5d5`  
		Last Modified: Mon, 19 Dec 2016 23:54:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0e0b22efa2b12289fe1fb8fff8f193fb69670471bd55db69fcbf079bf70cdfd7
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269542959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dba6313f6d82d0736df358b27f8da662119ac9a8459b613ec48149d06fa7113`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 13 Dec 2016 23:55:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_VERSION=9~b149
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b149-1
# Mon, 19 Dec 2016 21:08:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 23:48:49 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 23:48:50 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 23:48:52 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 23:48:54 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 23:48:55 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 23:48:55 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 23:48:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 23:48:56 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 23:48:57 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 23:48:58 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 23:48:58 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 23:48:59 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72591232915f25a33b2dcf0ed9fea09256ec5c0988bce2e515b6e9911274adc`  
		Last Modified: Wed, 14 Dec 2016 03:20:29 GMT  
		Size: 20.9 MB (20945421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e5ec7de751dd011b9b64ec0ee93775040bb91451b2b1dc95ec4a175de462c3`  
		Last Modified: Wed, 14 Dec 2016 03:20:43 GMT  
		Size: 51.2 MB (51219215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121993890cd4b642ee91546b2c0b7c655abd4287f759bed0220f854f61d6608f`  
		Last Modified: Wed, 14 Dec 2016 03:20:20 GMT  
		Size: 648.4 KB (648436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c137dfeb464dfb54e087d20ccb9a6525a515aab6121f1184499fa1b539667d7`  
		Last Modified: Wed, 14 Dec 2016 03:20:23 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6d48ce44eb06a1b268d4330e98380ab8ff70b3b5f746a1db08d33da596f50e`  
		Last Modified: Wed, 14 Dec 2016 03:20:19 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff400272ea3d118646477c1fe56f335cbaa29869ad52808235f3293ab7b7a29a`  
		Last Modified: Mon, 19 Dec 2016 21:27:07 GMT  
		Size: 144.3 MB (144262440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb3bb422efa28a231aa0143462af8f8a38f235efe1387076abb3966700bc445`  
		Last Modified: Mon, 19 Dec 2016 23:55:00 GMT  
		Size: 8.6 MB (8598848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af41f7fd04a6051d9724c942c2bdf39c0571880dd27de6de0784c70699f930c5`  
		Last Modified: Mon, 19 Dec 2016 23:54:58 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e947452c2e1cb8da720a473fd179ccd0e496571dbcb17a5314fb0b207ee5d5`  
		Last Modified: Mon, 19 Dec 2016 23:54:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219bdeb02fe9694d3b754c14d9da8dea935d9e8f63d6377d764e9927a6822423`  
		Last Modified: Mon, 19 Dec 2016 23:55:53 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0e0b22efa2b12289fe1fb8fff8f193fb69670471bd55db69fcbf079bf70cdfd7
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269542959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dba6313f6d82d0736df358b27f8da662119ac9a8459b613ec48149d06fa7113`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 13 Dec 2016 23:55:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_VERSION=9~b149
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b149-1
# Mon, 19 Dec 2016 21:08:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 23:48:49 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 23:48:50 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 23:48:52 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 23:48:54 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 23:48:55 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 23:48:55 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 23:48:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 23:48:56 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 23:48:57 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 23:48:58 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 23:48:58 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 23:48:59 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72591232915f25a33b2dcf0ed9fea09256ec5c0988bce2e515b6e9911274adc`  
		Last Modified: Wed, 14 Dec 2016 03:20:29 GMT  
		Size: 20.9 MB (20945421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e5ec7de751dd011b9b64ec0ee93775040bb91451b2b1dc95ec4a175de462c3`  
		Last Modified: Wed, 14 Dec 2016 03:20:43 GMT  
		Size: 51.2 MB (51219215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121993890cd4b642ee91546b2c0b7c655abd4287f759bed0220f854f61d6608f`  
		Last Modified: Wed, 14 Dec 2016 03:20:20 GMT  
		Size: 648.4 KB (648436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c137dfeb464dfb54e087d20ccb9a6525a515aab6121f1184499fa1b539667d7`  
		Last Modified: Wed, 14 Dec 2016 03:20:23 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6d48ce44eb06a1b268d4330e98380ab8ff70b3b5f746a1db08d33da596f50e`  
		Last Modified: Wed, 14 Dec 2016 03:20:19 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff400272ea3d118646477c1fe56f335cbaa29869ad52808235f3293ab7b7a29a`  
		Last Modified: Mon, 19 Dec 2016 21:27:07 GMT  
		Size: 144.3 MB (144262440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb3bb422efa28a231aa0143462af8f8a38f235efe1387076abb3966700bc445`  
		Last Modified: Mon, 19 Dec 2016 23:55:00 GMT  
		Size: 8.6 MB (8598848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af41f7fd04a6051d9724c942c2bdf39c0571880dd27de6de0784c70699f930c5`  
		Last Modified: Mon, 19 Dec 2016 23:54:58 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e947452c2e1cb8da720a473fd179ccd0e496571dbcb17a5314fb0b207ee5d5`  
		Last Modified: Mon, 19 Dec 2016 23:54:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219bdeb02fe9694d3b754c14d9da8dea935d9e8f63d6377d764e9927a6822423`  
		Last Modified: Mon, 19 Dec 2016 23:55:53 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:0e0b22efa2b12289fe1fb8fff8f193fb69670471bd55db69fcbf079bf70cdfd7
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269542959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dba6313f6d82d0736df358b27f8da662119ac9a8459b613ec48149d06fa7113`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Dec 2016 22:12:19 GMT
ADD file:1ec9813ae98ad32fbb472ab2d0a10bfffc02970b272ce3595007bf94381ea99d in / 
# Tue, 13 Dec 2016 22:12:20 GMT
CMD ["/bin/bash"]
# Tue, 13 Dec 2016 23:00:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:01:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Dec 2016 23:55:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 13 Dec 2016 23:55:38 GMT
ENV LANG=C.UTF-8
# Tue, 13 Dec 2016 23:55:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 13 Dec 2016 23:55:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_VERSION=9~b149
# Mon, 19 Dec 2016 21:07:42 GMT
ENV JAVA_DEBIAN_VERSION=9~b149-1
# Mon, 19 Dec 2016 21:08:14 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Mon, 19 Dec 2016 23:48:49 GMT
ARG MAVEN_VERSION=3.3.9
# Mon, 19 Dec 2016 23:48:50 GMT
ARG USER_HOME_DIR=/root
# Mon, 19 Dec 2016 23:48:52 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 19 Dec 2016 23:48:53 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 19 Dec 2016 23:48:54 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 19 Dec 2016 23:48:55 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 19 Dec 2016 23:48:55 GMT
VOLUME [/root/.m2]
# Mon, 19 Dec 2016 23:48:55 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 19 Dec 2016 23:48:56 GMT
CMD ["mvn"]
# Mon, 19 Dec 2016 23:48:57 GMT
RUN mkdir -p /usr/src/app
# Mon, 19 Dec 2016 23:48:58 GMT
WORKDIR /usr/src/app
# Mon, 19 Dec 2016 23:48:58 GMT
ONBUILD ADD . /usr/src/app
# Mon, 19 Dec 2016 23:48:59 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:96adffeba9716172608de9e458530715467b8d8a3d22b249de6f7d2f0c6e9f55`  
		Last Modified: Tue, 13 Dec 2016 22:20:27 GMT  
		Size: 43.9 MB (43866938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72591232915f25a33b2dcf0ed9fea09256ec5c0988bce2e515b6e9911274adc`  
		Last Modified: Wed, 14 Dec 2016 03:20:29 GMT  
		Size: 20.9 MB (20945421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e5ec7de751dd011b9b64ec0ee93775040bb91451b2b1dc95ec4a175de462c3`  
		Last Modified: Wed, 14 Dec 2016 03:20:43 GMT  
		Size: 51.2 MB (51219215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121993890cd4b642ee91546b2c0b7c655abd4287f759bed0220f854f61d6608f`  
		Last Modified: Wed, 14 Dec 2016 03:20:20 GMT  
		Size: 648.4 KB (648436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c137dfeb464dfb54e087d20ccb9a6525a515aab6121f1184499fa1b539667d7`  
		Last Modified: Wed, 14 Dec 2016 03:20:23 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6d48ce44eb06a1b268d4330e98380ab8ff70b3b5f746a1db08d33da596f50e`  
		Last Modified: Wed, 14 Dec 2016 03:20:19 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff400272ea3d118646477c1fe56f335cbaa29869ad52808235f3293ab7b7a29a`  
		Last Modified: Mon, 19 Dec 2016 21:27:07 GMT  
		Size: 144.3 MB (144262440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb3bb422efa28a231aa0143462af8f8a38f235efe1387076abb3966700bc445`  
		Last Modified: Mon, 19 Dec 2016 23:55:00 GMT  
		Size: 8.6 MB (8598848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af41f7fd04a6051d9724c942c2bdf39c0571880dd27de6de0784c70699f930c5`  
		Last Modified: Mon, 19 Dec 2016 23:54:58 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e947452c2e1cb8da720a473fd179ccd0e496571dbcb17a5314fb0b207ee5d5`  
		Last Modified: Mon, 19 Dec 2016 23:54:59 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219bdeb02fe9694d3b754c14d9da8dea935d9e8f63d6377d764e9927a6822423`  
		Last Modified: Mon, 19 Dec 2016 23:55:53 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
