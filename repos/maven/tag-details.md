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
$ docker pull maven@sha256:92f94ccc479c34753eb00ea56f4b8972b32cc5710b14a72ad463c8d4145331b5
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

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

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:92f94ccc479c34753eb00ea56f4b8972b32cc5710b14a72ad463c8d4145331b5
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

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

## `maven:3.3.9-jdk-7-onbuild`

```console
$ docker pull maven@sha256:7a226678316d0f0cfbfb05a4fc16ea9274adf644390f09d1a4de50333d0cc24d
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261378327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646763105392a204898b58c49ce4bec720060c72b072a7568269e3b1238b0963`
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
# Thu, 10 Nov 2016 07:08:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:08:43 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:08:43 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:08:44 GMT
ONBUILD RUN mvn install
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
	-	`sha256:03f741a77aa987e92d3de62c9471b7b94f7d1aac018b9e864c890f0fd58b8f37`  
		Last Modified: Thu, 10 Nov 2016 07:08:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:7a226678316d0f0cfbfb05a4fc16ea9274adf644390f09d1a4de50333d0cc24d
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261378327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646763105392a204898b58c49ce4bec720060c72b072a7568269e3b1238b0963`
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
# Thu, 10 Nov 2016 07:08:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:08:43 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:08:43 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:08:44 GMT
ONBUILD RUN mvn install
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
	-	`sha256:03f741a77aa987e92d3de62c9471b7b94f7d1aac018b9e864c890f0fd58b8f37`  
		Last Modified: Thu, 10 Nov 2016 07:08:55 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:7a226678316d0f0cfbfb05a4fc16ea9274adf644390f09d1a4de50333d0cc24d
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261378327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646763105392a204898b58c49ce4bec720060c72b072a7568269e3b1238b0963`
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
# Thu, 10 Nov 2016 07:08:42 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:08:43 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:08:43 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:08:44 GMT
ONBUILD RUN mvn install
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
	-	`sha256:03f741a77aa987e92d3de62c9471b7b94f7d1aac018b9e864c890f0fd58b8f37`  
		Last Modified: Thu, 10 Nov 2016 07:08:55 GMT  
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
$ docker pull maven@sha256:a7fd540bc273b7c4f1193fbcd46127ad3912fd095a251382f4e4312b9ac85e9d
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef69e414f5e8b727377e3fc347f4daa5706ac5af2370a137aeba2368aaa7ed`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9`

```console
$ docker pull maven@sha256:a7fd540bc273b7c4f1193fbcd46127ad3912fd095a251382f4e4312b9ac85e9d
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef69e414f5e8b727377e3fc347f4daa5706ac5af2370a137aeba2368aaa7ed`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:a7fd540bc273b7c4f1193fbcd46127ad3912fd095a251382f4e4312b9ac85e9d
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef69e414f5e8b727377e3fc347f4daa5706ac5af2370a137aeba2368aaa7ed`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3`

```console
$ docker pull maven@sha256:a7fd540bc273b7c4f1193fbcd46127ad3912fd095a251382f4e4312b9ac85e9d
```

-	Platforms:
	-	linux; amd64

### `maven:3.3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef69e414f5e8b727377e3fc347f4daa5706ac5af2370a137aeba2368aaa7ed`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:a7fd540bc273b7c4f1193fbcd46127ad3912fd095a251382f4e4312b9ac85e9d
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef69e414f5e8b727377e3fc347f4daa5706ac5af2370a137aeba2368aaa7ed`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:a7fd540bc273b7c4f1193fbcd46127ad3912fd095a251382f4e4312b9ac85e9d
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef69e414f5e8b727377e3fc347f4daa5706ac5af2370a137aeba2368aaa7ed`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:a7fd540bc273b7c4f1193fbcd46127ad3912fd095a251382f4e4312b9ac85e9d
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ef69e414f5e8b727377e3fc347f4daa5706ac5af2370a137aeba2368aaa7ed`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild`

```console
$ docker pull maven@sha256:112ac635be2a13ca79e85a400a99d807fc7f0d7c10defca83e7338e10678d84b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfabd75e2620bedaccbd9ed178d7bfc89b489fa65f920880a1bea6ab4509473`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:09:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:09:30 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b1074096c8c96ebbaf365568e5f916d825e324e8ccd7f66502f87a966c1b65`  
		Last Modified: Thu, 10 Nov 2016 07:09:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:112ac635be2a13ca79e85a400a99d807fc7f0d7c10defca83e7338e10678d84b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfabd75e2620bedaccbd9ed178d7bfc89b489fa65f920880a1bea6ab4509473`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:09:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:09:30 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b1074096c8c96ebbaf365568e5f916d825e324e8ccd7f66502f87a966c1b65`  
		Last Modified: Thu, 10 Nov 2016 07:09:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:112ac635be2a13ca79e85a400a99d807fc7f0d7c10defca83e7338e10678d84b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfabd75e2620bedaccbd9ed178d7bfc89b489fa65f920880a1bea6ab4509473`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:09:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:09:30 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b1074096c8c96ebbaf365568e5f916d825e324e8ccd7f66502f87a966c1b65`  
		Last Modified: Thu, 10 Nov 2016 07:09:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:112ac635be2a13ca79e85a400a99d807fc7f0d7c10defca83e7338e10678d84b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfabd75e2620bedaccbd9ed178d7bfc89b489fa65f920880a1bea6ab4509473`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:09:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:09:30 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b1074096c8c96ebbaf365568e5f916d825e324e8ccd7f66502f87a966c1b65`  
		Last Modified: Thu, 10 Nov 2016 07:09:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:112ac635be2a13ca79e85a400a99d807fc7f0d7c10defca83e7338e10678d84b
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfabd75e2620bedaccbd9ed178d7bfc89b489fa65f920880a1bea6ab4509473`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:09:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:09:30 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b1074096c8c96ebbaf365568e5f916d825e324e8ccd7f66502f87a966c1b65`  
		Last Modified: Thu, 10 Nov 2016 07:09:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:112ac635be2a13ca79e85a400a99d807fc7f0d7c10defca83e7338e10678d84b
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfabd75e2620bedaccbd9ed178d7bfc89b489fa65f920880a1bea6ab4509473`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:09:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:09:30 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b1074096c8c96ebbaf365568e5f916d825e324e8ccd7f66502f87a966c1b65`  
		Last Modified: Thu, 10 Nov 2016 07:09:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:112ac635be2a13ca79e85a400a99d807fc7f0d7c10defca83e7338e10678d84b
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251970598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfabd75e2620bedaccbd9ed178d7bfc89b489fa65f920880a1bea6ab4509473`
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
# Tue, 08 Nov 2016 18:52:55 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 08 Nov 2016 18:52:56 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:52:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_VERSION=8u111
# Tue, 08 Nov 2016 18:52:58 GMT
ENV JAVA_DEBIAN_VERSION=8u111-b14-2~bpo8+1
# Tue, 08 Nov 2016 18:52:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20140324
# Tue, 08 Nov 2016 18:53:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 08 Nov 2016 18:53:51 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 08 Nov 2016 22:27:28 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 08 Nov 2016 22:27:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 10 Nov 2016 07:06:00 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 10 Nov 2016 07:06:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 10 Nov 2016 07:06:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 10 Nov 2016 07:06:01 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 10 Nov 2016 07:06:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 10 Nov 2016 07:06:02 GMT
VOLUME [/root/.m2]
# Thu, 10 Nov 2016 07:06:03 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 10 Nov 2016 07:06:03 GMT
CMD ["mvn"]
# Thu, 10 Nov 2016 07:09:28 GMT
RUN mkdir -p /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
WORKDIR /usr/src/app
# Thu, 10 Nov 2016 07:09:29 GMT
ONBUILD ADD . /usr/src/app
# Thu, 10 Nov 2016 07:09:30 GMT
ONBUILD RUN mvn install
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
	-	`sha256:7e401cdd6f18ec55ddebd090e4a39f0db17e1eb68f9db7e2233b1438f6f7dcf5`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58186ddf9a07069e7d41ba4c1d56d5c20ad55222483c80dd3425942952c3224`  
		Last Modified: Tue, 08 Nov 2016 19:06:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49999ed55bc4d3fce78396b5fc5d7b50e35bd4355625be799b7da8cf71b91723`  
		Last Modified: Tue, 08 Nov 2016 19:06:55 GMT  
		Size: 130.1 MB (130108814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb40561aad8f0aaca0d47fd663fce6d8799737cecd64c0a12da5c670fa154b9e`  
		Last Modified: Tue, 08 Nov 2016 19:06:19 GMT  
		Size: 284.2 KB (284242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce0e24588f2b2ef1bdef51115b00555e63b73224cec47d2a8d080026448881a`  
		Last Modified: Thu, 10 Nov 2016 07:06:19 GMT  
		Size: 8.6 MB (8598852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35430242cb99852ddd9db8e015434836e902940cdf6e28061e0804a0bcf8e702`  
		Last Modified: Thu, 10 Nov 2016 07:06:17 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4af041dcf95990868d012d8971672f0f8fbcea19ccb5df3da0bb88544c2c621`  
		Last Modified: Thu, 10 Nov 2016 07:06:16 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b1074096c8c96ebbaf365568e5f916d825e324e8ccd7f66502f87a966c1b65`  
		Last Modified: Thu, 10 Nov 2016 07:09:42 GMT  
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
$ docker pull maven@sha256:58498551028491dc40182d421a0500d31f6b5ad5f2beb0117bc8d72620f60f5c
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.1
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61928202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:907ecf7899ad4b22a2cfd208eb4ae7b269369551eeab9c010b02b3761efc8b2d`
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
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_VERSION=8u92
# Tue, 18 Oct 2016 20:40:26 GMT
ENV JAVA_ALPINE_VERSION=8.92.14-r1
# Tue, 18 Oct 2016 20:40:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 19 Oct 2016 00:48:37 GMT
RUN apk add --no-cache curl tar bash
# Wed, 19 Oct 2016 00:48:37 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 19 Oct 2016 00:48:37 GMT
ARG USER_HOME_DIR=/root
# Wed, 19 Oct 2016 00:48:39 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 19 Oct 2016 00:48:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 19 Oct 2016 00:48:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 19 Oct 2016 00:48:40 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 19 Oct 2016 00:48:41 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 19 Oct 2016 00:48:41 GMT
VOLUME [/root/.m2]
# Wed, 19 Oct 2016 00:48:42 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 19 Oct 2016 00:48:42 GMT
CMD ["mvn"]
# Wed, 19 Oct 2016 00:51:32 GMT
RUN mkdir -p /usr/src/app
# Wed, 19 Oct 2016 00:51:32 GMT
WORKDIR /usr/src/app
# Wed, 19 Oct 2016 00:51:33 GMT
ONBUILD ADD . /usr/src/app
# Wed, 19 Oct 2016 00:51:33 GMT
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
	-	`sha256:0d438913956e1ea2320b12f24358a2b0822a0b3a09aa59d082151759f24486d3`  
		Last Modified: Tue, 18 Oct 2016 20:50:55 GMT  
		Size: 49.3 MB (49327784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8b8049e40c747a1505c45ac9f52a1cba347b5b4852313173bd431d4b2eb92f`  
		Last Modified: Wed, 19 Oct 2016 00:48:52 GMT  
		Size: 1.7 MB (1687191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8aff7e3e994164b7b75ea1e50cd391f0410610c1825619de764b467a3236e1`  
		Last Modified: Wed, 19 Oct 2016 00:48:53 GMT  
		Size: 8.6 MB (8598850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546df286a8fce20689ba8271fea14df15e256549ee6c46a38115bd429b7e2782`  
		Last Modified: Wed, 19 Oct 2016 00:48:52 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abadc4a15abdcccff3982f30eae2edad980b00ba95b6625baff5e51cfa9bfd06`  
		Last Modified: Wed, 19 Oct 2016 00:48:53 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeca2b024b2850d4fd27ecb654983132029e99c122a9f01f0c549d4f473f139f`  
		Last Modified: Wed, 19 Oct 2016 00:51:43 GMT  
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
$ docker pull maven@sha256:abc7b0b6a0710b4c57b8cbdad7d76b76bc4f6df19bb2e4906d5698d581154722
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267771319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb9ae1952a9a8beb36c29c5dc85d92315edaaad4249005896dc452914ad64bc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 08 Nov 2016 18:54:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 06 Dec 2016 20:48:12 GMT
ENV JAVA_VERSION=9~b147
# Tue, 06 Dec 2016 20:48:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b147-1
# Tue, 06 Dec 2016 20:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 07 Dec 2016 22:07:36 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 07 Dec 2016 22:07:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 07 Dec 2016 22:07:40 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 07 Dec 2016 22:07:41 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 07 Dec 2016 22:07:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 07 Dec 2016 22:07:42 GMT
VOLUME [/root/.m2]
# Wed, 07 Dec 2016 22:07:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 07 Dec 2016 22:07:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514ff4b0f0d308024087f10c855ab7412915526a9bba7e3777b0c857e908493`  
		Last Modified: Mon, 07 Nov 2016 23:01:09 GMT  
		Size: 50.8 MB (50774782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24ab6c2095e0bb84448123a4fa0e15b8240a5bbc1229d146022725a63dd9896`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 635.5 KB (635542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06e8f012ab67aee2075e0e4dc0b50d25067c6982112822d498e4239ea7342c`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecc3023cb702682496563a3683d719fb6a3cd56d955cea13b376ba92ed0a7a`  
		Last Modified: Tue, 08 Nov 2016 19:14:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a5b2ea4f4645ea13592cc17482ad689df5890718de8335f70321e9a4bae0b3`  
		Last Modified: Tue, 06 Dec 2016 21:05:43 GMT  
		Size: 143.8 MB (143796866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1904f56713cc306ee938e70f656e0c0c81b62dc78cbc96635b35c41ccdc266d`  
		Last Modified: Wed, 07 Dec 2016 22:17:51 GMT  
		Size: 8.6 MB (8598857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231be8db27f7817445616536014adff4149766b075d9a6113e27513276e484df`  
		Last Modified: Wed, 07 Dec 2016 22:17:49 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c49b7d9c614a789454f1876e9faf6b6484e74a8701477a2dbfe5346484ea8b`  
		Last Modified: Wed, 07 Dec 2016 22:17:50 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:abc7b0b6a0710b4c57b8cbdad7d76b76bc4f6df19bb2e4906d5698d581154722
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267771319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb9ae1952a9a8beb36c29c5dc85d92315edaaad4249005896dc452914ad64bc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 08 Nov 2016 18:54:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 06 Dec 2016 20:48:12 GMT
ENV JAVA_VERSION=9~b147
# Tue, 06 Dec 2016 20:48:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b147-1
# Tue, 06 Dec 2016 20:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 07 Dec 2016 22:07:36 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 07 Dec 2016 22:07:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 07 Dec 2016 22:07:40 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 07 Dec 2016 22:07:41 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 07 Dec 2016 22:07:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 07 Dec 2016 22:07:42 GMT
VOLUME [/root/.m2]
# Wed, 07 Dec 2016 22:07:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 07 Dec 2016 22:07:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514ff4b0f0d308024087f10c855ab7412915526a9bba7e3777b0c857e908493`  
		Last Modified: Mon, 07 Nov 2016 23:01:09 GMT  
		Size: 50.8 MB (50774782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24ab6c2095e0bb84448123a4fa0e15b8240a5bbc1229d146022725a63dd9896`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 635.5 KB (635542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06e8f012ab67aee2075e0e4dc0b50d25067c6982112822d498e4239ea7342c`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecc3023cb702682496563a3683d719fb6a3cd56d955cea13b376ba92ed0a7a`  
		Last Modified: Tue, 08 Nov 2016 19:14:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a5b2ea4f4645ea13592cc17482ad689df5890718de8335f70321e9a4bae0b3`  
		Last Modified: Tue, 06 Dec 2016 21:05:43 GMT  
		Size: 143.8 MB (143796866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1904f56713cc306ee938e70f656e0c0c81b62dc78cbc96635b35c41ccdc266d`  
		Last Modified: Wed, 07 Dec 2016 22:17:51 GMT  
		Size: 8.6 MB (8598857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231be8db27f7817445616536014adff4149766b075d9a6113e27513276e484df`  
		Last Modified: Wed, 07 Dec 2016 22:17:49 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c49b7d9c614a789454f1876e9faf6b6484e74a8701477a2dbfe5346484ea8b`  
		Last Modified: Wed, 07 Dec 2016 22:17:50 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:abc7b0b6a0710b4c57b8cbdad7d76b76bc4f6df19bb2e4906d5698d581154722
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267771319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb9ae1952a9a8beb36c29c5dc85d92315edaaad4249005896dc452914ad64bc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 08 Nov 2016 18:54:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 06 Dec 2016 20:48:12 GMT
ENV JAVA_VERSION=9~b147
# Tue, 06 Dec 2016 20:48:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b147-1
# Tue, 06 Dec 2016 20:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 07 Dec 2016 22:07:36 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 07 Dec 2016 22:07:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 07 Dec 2016 22:07:40 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 07 Dec 2016 22:07:41 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 07 Dec 2016 22:07:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 07 Dec 2016 22:07:42 GMT
VOLUME [/root/.m2]
# Wed, 07 Dec 2016 22:07:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 07 Dec 2016 22:07:43 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514ff4b0f0d308024087f10c855ab7412915526a9bba7e3777b0c857e908493`  
		Last Modified: Mon, 07 Nov 2016 23:01:09 GMT  
		Size: 50.8 MB (50774782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24ab6c2095e0bb84448123a4fa0e15b8240a5bbc1229d146022725a63dd9896`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 635.5 KB (635542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06e8f012ab67aee2075e0e4dc0b50d25067c6982112822d498e4239ea7342c`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecc3023cb702682496563a3683d719fb6a3cd56d955cea13b376ba92ed0a7a`  
		Last Modified: Tue, 08 Nov 2016 19:14:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a5b2ea4f4645ea13592cc17482ad689df5890718de8335f70321e9a4bae0b3`  
		Last Modified: Tue, 06 Dec 2016 21:05:43 GMT  
		Size: 143.8 MB (143796866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1904f56713cc306ee938e70f656e0c0c81b62dc78cbc96635b35c41ccdc266d`  
		Last Modified: Wed, 07 Dec 2016 22:17:51 GMT  
		Size: 8.6 MB (8598857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231be8db27f7817445616536014adff4149766b075d9a6113e27513276e484df`  
		Last Modified: Wed, 07 Dec 2016 22:17:49 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c49b7d9c614a789454f1876e9faf6b6484e74a8701477a2dbfe5346484ea8b`  
		Last Modified: Wed, 07 Dec 2016 22:17:50 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:f0247dc9b813cc25185cbfd99a3b9d3633c071664402a04977be2a2e0ed39bd5
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267771477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0bb8aae324806bd8994495a26724b3e674215c53acf8119a652ef03513e55b6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 08 Nov 2016 18:54:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 06 Dec 2016 20:48:12 GMT
ENV JAVA_VERSION=9~b147
# Tue, 06 Dec 2016 20:48:13 GMT
ENV JAVA_DEBIAN_VERSION=9~b147-1
# Tue, 06 Dec 2016 20:48:49 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 07 Dec 2016 22:07:36 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 07 Dec 2016 22:07:36 GMT
ARG USER_HOME_DIR=/root
# Wed, 07 Dec 2016 22:07:40 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 07 Dec 2016 22:07:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 07 Dec 2016 22:07:41 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 07 Dec 2016 22:07:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 07 Dec 2016 22:07:42 GMT
VOLUME [/root/.m2]
# Wed, 07 Dec 2016 22:07:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 07 Dec 2016 22:07:43 GMT
CMD ["mvn"]
# Wed, 07 Dec 2016 22:07:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 07 Dec 2016 22:07:45 GMT
WORKDIR /usr/src/app
# Wed, 07 Dec 2016 22:07:45 GMT
ONBUILD ADD . /usr/src/app
# Wed, 07 Dec 2016 22:07:46 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514ff4b0f0d308024087f10c855ab7412915526a9bba7e3777b0c857e908493`  
		Last Modified: Mon, 07 Nov 2016 23:01:09 GMT  
		Size: 50.8 MB (50774782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24ab6c2095e0bb84448123a4fa0e15b8240a5bbc1229d146022725a63dd9896`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 635.5 KB (635542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06e8f012ab67aee2075e0e4dc0b50d25067c6982112822d498e4239ea7342c`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecc3023cb702682496563a3683d719fb6a3cd56d955cea13b376ba92ed0a7a`  
		Last Modified: Tue, 08 Nov 2016 19:14:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a5b2ea4f4645ea13592cc17482ad689df5890718de8335f70321e9a4bae0b3`  
		Last Modified: Tue, 06 Dec 2016 21:05:43 GMT  
		Size: 143.8 MB (143796866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1904f56713cc306ee938e70f656e0c0c81b62dc78cbc96635b35c41ccdc266d`  
		Last Modified: Wed, 07 Dec 2016 22:17:51 GMT  
		Size: 8.6 MB (8598857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231be8db27f7817445616536014adff4149766b075d9a6113e27513276e484df`  
		Last Modified: Wed, 07 Dec 2016 22:17:49 GMT  
		Size: 691.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c49b7d9c614a789454f1876e9faf6b6484e74a8701477a2dbfe5346484ea8b`  
		Last Modified: Wed, 07 Dec 2016 22:17:50 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:588b12f3c99ba6e2e4b728a27353c933e46508911088f2fd6e205466fb2c190c`  
		Last Modified: Wed, 07 Dec 2016 22:18:42 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:19805aa65814cfa3e0eda666ccc5d4e9337feb4ba0a7c6982c7771b675e59be6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254948974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa09eebd31dcfdb2f1d00eeceebea5b914c3628cbbcb60832190d10df2d7d75`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 08 Nov 2016 18:54:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 14 Nov 2016 22:51:06 GMT
ENV JAVA_VERSION=9~b144
# Mon, 14 Nov 2016 22:51:06 GMT
ENV JAVA_DEBIAN_VERSION=9~b144-1
# Mon, 14 Nov 2016 22:51:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 15 Nov 2016 18:24:37 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 15 Nov 2016 18:24:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 15 Nov 2016 18:24:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 15 Nov 2016 18:24:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 15 Nov 2016 18:24:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 15 Nov 2016 18:24:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 15 Nov 2016 18:24:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 15 Nov 2016 18:24:43 GMT
VOLUME [/root/.m2]
# Tue, 15 Nov 2016 18:24:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 15 Nov 2016 18:24:44 GMT
CMD ["mvn"]
# Tue, 15 Nov 2016 18:25:34 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 Nov 2016 18:25:34 GMT
WORKDIR /usr/src/app
# Tue, 15 Nov 2016 18:25:35 GMT
ONBUILD ADD . /usr/src/app
# Tue, 15 Nov 2016 18:25:35 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514ff4b0f0d308024087f10c855ab7412915526a9bba7e3777b0c857e908493`  
		Last Modified: Mon, 07 Nov 2016 23:01:09 GMT  
		Size: 50.8 MB (50774782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24ab6c2095e0bb84448123a4fa0e15b8240a5bbc1229d146022725a63dd9896`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 635.5 KB (635542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06e8f012ab67aee2075e0e4dc0b50d25067c6982112822d498e4239ea7342c`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecc3023cb702682496563a3683d719fb6a3cd56d955cea13b376ba92ed0a7a`  
		Last Modified: Tue, 08 Nov 2016 19:14:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d50669c080269702e621cb0b9b61023c6fac0b5c103d45466556847376968d`  
		Last Modified: Mon, 14 Nov 2016 23:07:57 GMT  
		Size: 131.0 MB (130974360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5133611b1e3ab45514d018bc53f0ec44e45c4923dca91c922c3d775bfaf4a2f`  
		Last Modified: Tue, 15 Nov 2016 18:24:57 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f6d7f323f584fe3d9525d526c7e1548fefa42a4e03c18a046740607e0aa7c8`  
		Last Modified: Tue, 15 Nov 2016 18:24:56 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d46ffe9b31ae8f1ed91d75aa47e9215ad1a7064e8ae44af49a2ef136887de45`  
		Last Modified: Tue, 15 Nov 2016 18:24:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c386d32aa01b851aedf6b9b16ebb15c483e0cb50d8313bd43366457ebca07e4`  
		Last Modified: Tue, 15 Nov 2016 18:25:47 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:19805aa65814cfa3e0eda666ccc5d4e9337feb4ba0a7c6982c7771b675e59be6
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.9 MB (254948974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa09eebd31dcfdb2f1d00eeceebea5b914c3628cbbcb60832190d10df2d7d75`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Nov 2016 20:31:17 GMT
ADD file:4946b2fd6ad8f6dad8ce2007df355ffa80fbc0d560ac45600bc0305c812bc331 in / 
# Mon, 07 Nov 2016 20:31:17 GMT
CMD ["/bin/bash"]
# Mon, 07 Nov 2016 22:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 07 Nov 2016 22:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Nov 2016 18:54:38 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 08 Nov 2016 18:54:38 GMT
ENV LANG=C.UTF-8
# Tue, 08 Nov 2016 18:54:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 08 Nov 2016 18:54:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Mon, 14 Nov 2016 22:51:06 GMT
ENV JAVA_VERSION=9~b144
# Mon, 14 Nov 2016 22:51:06 GMT
ENV JAVA_DEBIAN_VERSION=9~b144-1
# Mon, 14 Nov 2016 22:51:53 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 15 Nov 2016 18:24:37 GMT
ARG MAVEN_VERSION=3.3.9
# Tue, 15 Nov 2016 18:24:37 GMT
ARG USER_HOME_DIR=/root
# Tue, 15 Nov 2016 18:24:41 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Tue, 15 Nov 2016 18:24:41 GMT
ENV MAVEN_HOME=/usr/share/maven
# Tue, 15 Nov 2016 18:24:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Tue, 15 Nov 2016 18:24:42 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Tue, 15 Nov 2016 18:24:42 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Tue, 15 Nov 2016 18:24:43 GMT
VOLUME [/root/.m2]
# Tue, 15 Nov 2016 18:24:43 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Tue, 15 Nov 2016 18:24:44 GMT
CMD ["mvn"]
# Tue, 15 Nov 2016 18:25:34 GMT
RUN mkdir -p /usr/src/app
# Tue, 15 Nov 2016 18:25:34 GMT
WORKDIR /usr/src/app
# Tue, 15 Nov 2016 18:25:35 GMT
ONBUILD ADD . /usr/src/app
# Tue, 15 Nov 2016 18:25:35 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:2c2697cc54a4087031e91659113de235e6bd969754303465add193727dc03fa6`  
		Last Modified: Mon, 07 Nov 2016 20:37:10 GMT  
		Size: 43.3 MB (43262401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24aac71f904b1bd9a7a8823a0c8281406c9289c475d7231493950a1ba49f40`  
		Last Modified: Mon, 07 Nov 2016 23:00:27 GMT  
		Size: 20.7 MB (20701379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3514ff4b0f0d308024087f10c855ab7412915526a9bba7e3777b0c857e908493`  
		Last Modified: Mon, 07 Nov 2016 23:01:09 GMT  
		Size: 50.8 MB (50774782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24ab6c2095e0bb84448123a4fa0e15b8240a5bbc1229d146022725a63dd9896`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 635.5 KB (635542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f06e8f012ab67aee2075e0e4dc0b50d25067c6982112822d498e4239ea7342c`  
		Last Modified: Tue, 08 Nov 2016 19:14:49 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ecc3023cb702682496563a3683d719fb6a3cd56d955cea13b376ba92ed0a7a`  
		Last Modified: Tue, 08 Nov 2016 19:14:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d50669c080269702e621cb0b9b61023c6fac0b5c103d45466556847376968d`  
		Last Modified: Mon, 14 Nov 2016 23:07:57 GMT  
		Size: 131.0 MB (130974360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5133611b1e3ab45514d018bc53f0ec44e45c4923dca91c922c3d775bfaf4a2f`  
		Last Modified: Tue, 15 Nov 2016 18:24:57 GMT  
		Size: 8.6 MB (8598855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f6d7f323f584fe3d9525d526c7e1548fefa42a4e03c18a046740607e0aa7c8`  
		Last Modified: Tue, 15 Nov 2016 18:24:56 GMT  
		Size: 695.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d46ffe9b31ae8f1ed91d75aa47e9215ad1a7064e8ae44af49a2ef136887de45`  
		Last Modified: Tue, 15 Nov 2016 18:24:57 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c386d32aa01b851aedf6b9b16ebb15c483e0cb50d8313bd43366457ebca07e4`  
		Last Modified: Tue, 15 Nov 2016 18:25:47 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
