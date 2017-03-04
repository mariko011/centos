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
$ docker pull maven@sha256:77bb9828279146626f6d777b48c1a68af9624109dc969357e92aa7e5fe160b58
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261066426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec3de9e621bac5069d9d06308d30ecff63a98663253ef50acf0a25c59a466dd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:01 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:06:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3af85694c55cce4bc5b41abb6bad61088e5813706bf11b3eb40c6e47fbe1e2`  
		Last Modified: Thu, 02 Mar 2017 05:57:34 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f140cd91aa34ebb11c65b5e175a84e99d5bc3f1ff14832175689c6ae44138d84`  
		Last Modified: Thu, 02 Mar 2017 05:57:31 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d353cae8098ae97da6391f68fba876e6cf589f90a3c884afd99f568a68425ac`  
		Last Modified: Thu, 02 Mar 2017 05:57:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7`

```console
$ docker pull maven@sha256:77bb9828279146626f6d777b48c1a68af9624109dc969357e92aa7e5fe160b58
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261066426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec3de9e621bac5069d9d06308d30ecff63a98663253ef50acf0a25c59a466dd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:01 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:06:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3af85694c55cce4bc5b41abb6bad61088e5813706bf11b3eb40c6e47fbe1e2`  
		Last Modified: Thu, 02 Mar 2017 05:57:34 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f140cd91aa34ebb11c65b5e175a84e99d5bc3f1ff14832175689c6ae44138d84`  
		Last Modified: Thu, 02 Mar 2017 05:57:31 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d353cae8098ae97da6391f68fba876e6cf589f90a3c884afd99f568a68425ac`  
		Last Modified: Thu, 02 Mar 2017 05:57:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:77bb9828279146626f6d777b48c1a68af9624109dc969357e92aa7e5fe160b58
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261066426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec3de9e621bac5069d9d06308d30ecff63a98663253ef50acf0a25c59a466dd`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:01 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:06:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3af85694c55cce4bc5b41abb6bad61088e5813706bf11b3eb40c6e47fbe1e2`  
		Last Modified: Thu, 02 Mar 2017 05:57:34 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f140cd91aa34ebb11c65b5e175a84e99d5bc3f1ff14832175689c6ae44138d84`  
		Last Modified: Thu, 02 Mar 2017 05:57:31 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d353cae8098ae97da6391f68fba876e6cf589f90a3c884afd99f568a68425ac`  
		Last Modified: Thu, 02 Mar 2017 05:57:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d6a7e43fd146232464ce14d06ef947b3c3c2e7bca2aa5df16ae6afc0daeab2a6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34298d8504789e8cf2fc3899339684d39191100265105e86c0f4b222dda655c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:01 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:06:02 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:18 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3af85694c55cce4bc5b41abb6bad61088e5813706bf11b3eb40c6e47fbe1e2`  
		Last Modified: Thu, 02 Mar 2017 05:57:34 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f140cd91aa34ebb11c65b5e175a84e99d5bc3f1ff14832175689c6ae44138d84`  
		Last Modified: Thu, 02 Mar 2017 05:57:31 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d353cae8098ae97da6391f68fba876e6cf589f90a3c884afd99f568a68425ac`  
		Last Modified: Thu, 02 Mar 2017 05:57:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018d251002153307ddf9a0f956a0c27cd3443f604283a98a60d53b134b7bc792`  
		Last Modified: Thu, 02 Mar 2017 05:58:33 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d6a7e43fd146232464ce14d06ef947b3c3c2e7bca2aa5df16ae6afc0daeab2a6
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34298d8504789e8cf2fc3899339684d39191100265105e86c0f4b222dda655c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:01 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:06:02 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:18 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3af85694c55cce4bc5b41abb6bad61088e5813706bf11b3eb40c6e47fbe1e2`  
		Last Modified: Thu, 02 Mar 2017 05:57:34 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f140cd91aa34ebb11c65b5e175a84e99d5bc3f1ff14832175689c6ae44138d84`  
		Last Modified: Thu, 02 Mar 2017 05:57:31 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d353cae8098ae97da6391f68fba876e6cf589f90a3c884afd99f568a68425ac`  
		Last Modified: Thu, 02 Mar 2017 05:57:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018d251002153307ddf9a0f956a0c27cd3443f604283a98a60d53b134b7bc792`  
		Last Modified: Thu, 02 Mar 2017 05:58:33 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild`

```console
$ docker pull maven@sha256:d6a7e43fd146232464ce14d06ef947b3c3c2e7bca2aa5df16ae6afc0daeab2a6
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34298d8504789e8cf2fc3899339684d39191100265105e86c0f4b222dda655c2`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 03:41:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 03:41:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_VERSION=7u121
# Tue, 28 Feb 2017 15:22:08 GMT
ENV JAVA_DEBIAN_VERSION=7u121-2.6.8-2~deb8u1
# Tue, 28 Feb 2017 15:23:18 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:05:40 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:40 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:00 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:01 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:01 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:06:02 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:18 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:19 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:20 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a53adee4b44c6a341116e88f3d45f603a1284c082b01b9ecd2bd5d9642c0d7c`  
		Last Modified: Tue, 28 Feb 2017 21:55:09 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0dfaeb69835f9abb2ad5b52fe322a94834ebdb9760cf195596fad3909838d7`  
		Last Modified: Tue, 28 Feb 2017 21:55:40 GMT  
		Size: 139.5 MB (139472425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3af85694c55cce4bc5b41abb6bad61088e5813706bf11b3eb40c6e47fbe1e2`  
		Last Modified: Thu, 02 Mar 2017 05:57:34 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f140cd91aa34ebb11c65b5e175a84e99d5bc3f1ff14832175689c6ae44138d84`  
		Last Modified: Thu, 02 Mar 2017 05:57:31 GMT  
		Size: 696.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d353cae8098ae97da6391f68fba876e6cf589f90a3c884afd99f568a68425ac`  
		Last Modified: Thu, 02 Mar 2017 05:57:29 GMT  
		Size: 347.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018d251002153307ddf9a0f956a0c27cd3443f604283a98a60d53b134b7bc792`  
		Last Modified: Thu, 02 Mar 2017 05:58:33 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-alpine`

```console
$ docker pull maven@sha256:de9404e75306d84696b9fe7d1c2d851769b69689ed3ef3aaa8a6d1ffa2e26c5b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88236030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fab6ac55c9c7f14e860df9a4504eabc09cd04fceb5c234a8ee99bb6a171605`
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
# Sat, 04 Mar 2017 00:13:00 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:13:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:13:02 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:13:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:13:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:13:04 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:13:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:13:04 GMT
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
	-	`sha256:56d1473f5b90ad9fc8072b6b0e57879e5b0a29651adc20d8785b49721a64a565`  
		Last Modified: Sat, 04 Mar 2017 07:15:12 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04578718564c9b2d5a1e4947735906c5da7d8b3468451e2f892f377eefe477`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bab76443f3fb1b176ecceecc473975ef6d3356668046036511db30474e4c97`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-alpine`

```console
$ docker pull maven@sha256:de9404e75306d84696b9fe7d1c2d851769b69689ed3ef3aaa8a6d1ffa2e26c5b
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88236030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fab6ac55c9c7f14e860df9a4504eabc09cd04fceb5c234a8ee99bb6a171605`
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
# Sat, 04 Mar 2017 00:13:00 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:13:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:13:02 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:13:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:13:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:13:04 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:13:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:13:04 GMT
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
	-	`sha256:56d1473f5b90ad9fc8072b6b0e57879e5b0a29651adc20d8785b49721a64a565`  
		Last Modified: Sat, 04 Mar 2017 07:15:12 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04578718564c9b2d5a1e4947735906c5da7d8b3468451e2f892f377eefe477`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bab76443f3fb1b176ecceecc473975ef6d3356668046036511db30474e4c97`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-alpine`

```console
$ docker pull maven@sha256:de9404e75306d84696b9fe7d1c2d851769b69689ed3ef3aaa8a6d1ffa2e26c5b
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88236030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fab6ac55c9c7f14e860df9a4504eabc09cd04fceb5c234a8ee99bb6a171605`
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
# Sat, 04 Mar 2017 00:13:00 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:13:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:13:02 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:13:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:13:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:13:04 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:13:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:13:04 GMT
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
	-	`sha256:56d1473f5b90ad9fc8072b6b0e57879e5b0a29651adc20d8785b49721a64a565`  
		Last Modified: Sat, 04 Mar 2017 07:15:12 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04578718564c9b2d5a1e4947735906c5da7d8b3468451e2f892f377eefe477`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bab76443f3fb1b176ecceecc473975ef6d3356668046036511db30474e4c97`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:6d9ac13026b5e2f0097bb9d359e2a2cfe676565e204c7c42dbe907c9573dc6ba
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88236187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f05c8672a0e6d5a4611a00b002bfbd06c0c19ec2ed5104fe35d4a96b051911`
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
# Sat, 04 Mar 2017 00:13:00 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:13:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:13:02 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:13:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:13:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:13:04 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:13:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:13:04 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:06 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:06 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:06 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:07 GMT
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
	-	`sha256:56d1473f5b90ad9fc8072b6b0e57879e5b0a29651adc20d8785b49721a64a565`  
		Last Modified: Sat, 04 Mar 2017 07:15:12 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04578718564c9b2d5a1e4947735906c5da7d8b3468451e2f892f377eefe477`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bab76443f3fb1b176ecceecc473975ef6d3356668046036511db30474e4c97`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47868a2ff220605cadeeb26b08d35784e049293ec09e23581ac2917c08b9ff9`  
		Last Modified: Sat, 04 Mar 2017 07:16:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:6d9ac13026b5e2f0097bb9d359e2a2cfe676565e204c7c42dbe907c9573dc6ba
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88236187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f05c8672a0e6d5a4611a00b002bfbd06c0c19ec2ed5104fe35d4a96b051911`
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
# Sat, 04 Mar 2017 00:13:00 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:13:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:13:02 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:13:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:13:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:13:04 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:13:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:13:04 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:06 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:06 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:06 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:07 GMT
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
	-	`sha256:56d1473f5b90ad9fc8072b6b0e57879e5b0a29651adc20d8785b49721a64a565`  
		Last Modified: Sat, 04 Mar 2017 07:15:12 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04578718564c9b2d5a1e4947735906c5da7d8b3468451e2f892f377eefe477`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bab76443f3fb1b176ecceecc473975ef6d3356668046036511db30474e4c97`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47868a2ff220605cadeeb26b08d35784e049293ec09e23581ac2917c08b9ff9`  
		Last Modified: Sat, 04 Mar 2017 07:16:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-7-onbuild-alpine`

```console
$ docker pull maven@sha256:6d9ac13026b5e2f0097bb9d359e2a2cfe676565e204c7c42dbe907c9573dc6ba
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-7-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88236187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f05c8672a0e6d5a4611a00b002bfbd06c0c19ec2ed5104fe35d4a96b051911`
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
# Sat, 04 Mar 2017 00:13:00 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:13:01 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:13:02 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:13:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:13:03 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:13:03 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:13:04 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:13:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:13:04 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:06 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:06 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:06 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:07 GMT
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
	-	`sha256:56d1473f5b90ad9fc8072b6b0e57879e5b0a29651adc20d8785b49721a64a565`  
		Last Modified: Sat, 04 Mar 2017 07:15:12 GMT  
		Size: 8.6 MB (8598847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc04578718564c9b2d5a1e4947735906c5da7d8b3468451e2f892f377eefe477`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bab76443f3fb1b176ecceecc473975ef6d3356668046036511db30474e4c97`  
		Last Modified: Sat, 04 Mar 2017 07:15:10 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47868a2ff220605cadeeb26b08d35784e049293ec09e23581ac2917c08b9ff9`  
		Last Modified: Sat, 04 Mar 2017 07:16:09 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8`

```console
$ docker pull maven@sha256:31b83963b6d20b5bbb7cd306fa0e7adf0635f0602294bb2baaf568c6c784f221
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ab9b7ecf5aba3d80ce84b6620569673590f6b95a9af49a8587dccb50253c63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9`

```console
$ docker pull maven@sha256:31b83963b6d20b5bbb7cd306fa0e7adf0635f0602294bb2baaf568c6c784f221
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ab9b7ecf5aba3d80ce84b6620569673590f6b95a9af49a8587dccb50253c63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8`

```console
$ docker pull maven@sha256:31b83963b6d20b5bbb7cd306fa0e7adf0635f0602294bb2baaf568c6c784f221
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ab9b7ecf5aba3d80ce84b6620569673590f6b95a9af49a8587dccb50253c63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3`

```console
$ docker pull maven@sha256:31b83963b6d20b5bbb7cd306fa0e7adf0635f0602294bb2baaf568c6c784f221
```

-	Platforms:
	-	linux; amd64

### `maven:3.3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ab9b7ecf5aba3d80ce84b6620569673590f6b95a9af49a8587dccb50253c63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8`

```console
$ docker pull maven@sha256:31b83963b6d20b5bbb7cd306fa0e7adf0635f0602294bb2baaf568c6c784f221
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ab9b7ecf5aba3d80ce84b6620569673590f6b95a9af49a8587dccb50253c63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3`

```console
$ docker pull maven@sha256:31b83963b6d20b5bbb7cd306fa0e7adf0635f0602294bb2baaf568c6c784f221
```

-	Platforms:
	-	linux; amd64

### `maven:3` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ab9b7ecf5aba3d80ce84b6620569673590f6b95a9af49a8587dccb50253c63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:latest`

```console
$ docker pull maven@sha256:31b83963b6d20b5bbb7cd306fa0e7adf0635f0602294bb2baaf568c6c784f221
```

-	Platforms:
	-	linux; amd64

### `maven:latest` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ab9b7ecf5aba3d80ce84b6620569673590f6b95a9af49a8587dccb50253c63`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild`

```console
$ docker pull maven@sha256:ae4df002382e979748506c10b18598344ce548fcd5b4a4da7bd853a74232857e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff30e823ad18c15973dd9ce842cbf553f925b797e1205b62bdd0c187008a0a1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:21 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:23 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f036c08f1bc3c84721689789ce09d42a49a7ba2c800d27e2239f6c9c58d01`  
		Last Modified: Thu, 02 Mar 2017 06:01:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild`

```console
$ docker pull maven@sha256:ae4df002382e979748506c10b18598344ce548fcd5b4a4da7bd853a74232857e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff30e823ad18c15973dd9ce842cbf553f925b797e1205b62bdd0c187008a0a1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:21 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:23 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f036c08f1bc3c84721689789ce09d42a49a7ba2c800d27e2239f6c9c58d01`  
		Last Modified: Thu, 02 Mar 2017 06:01:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:ae4df002382e979748506c10b18598344ce548fcd5b4a4da7bd853a74232857e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff30e823ad18c15973dd9ce842cbf553f925b797e1205b62bdd0c187008a0a1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:21 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:23 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f036c08f1bc3c84721689789ce09d42a49a7ba2c800d27e2239f6c9c58d01`  
		Last Modified: Thu, 02 Mar 2017 06:01:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild`

```console
$ docker pull maven@sha256:ae4df002382e979748506c10b18598344ce548fcd5b4a4da7bd853a74232857e
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff30e823ad18c15973dd9ce842cbf553f925b797e1205b62bdd0c187008a0a1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:21 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:23 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f036c08f1bc3c84721689789ce09d42a49a7ba2c800d27e2239f6c9c58d01`  
		Last Modified: Thu, 02 Mar 2017 06:01:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild`

```console
$ docker pull maven@sha256:ae4df002382e979748506c10b18598344ce548fcd5b4a4da7bd853a74232857e
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff30e823ad18c15973dd9ce842cbf553f925b797e1205b62bdd0c187008a0a1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:21 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:23 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f036c08f1bc3c84721689789ce09d42a49a7ba2c800d27e2239f6c9c58d01`  
		Last Modified: Thu, 02 Mar 2017 06:01:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild`

```console
$ docker pull maven@sha256:ae4df002382e979748506c10b18598344ce548fcd5b4a4da7bd853a74232857e
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff30e823ad18c15973dd9ce842cbf553f925b797e1205b62bdd0c187008a0a1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:21 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:23 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f036c08f1bc3c84721689789ce09d42a49a7ba2c800d27e2239f6c9c58d01`  
		Last Modified: Thu, 02 Mar 2017 06:01:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild`

```console
$ docker pull maven@sha256:ae4df002382e979748506c10b18598344ce548fcd5b4a4da7bd853a74232857e
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252198925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff30e823ad18c15973dd9ce842cbf553f925b797e1205b62bdd0c187008a0a1e`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:34:36 GMT
ADD file:41ac8d85ee35954bf6c8353d9681a045ba260aa9a96dbbded7bcd6e37ee49bea in / 
# Mon, 27 Feb 2017 20:34:37 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:14:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:14:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 03:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 05:32:23 GMT
RUN echo 'deb http://deb.debian.org/debian jessie-backports main' > /etc/apt/sources.list.d/jessie-backports.list
# Tue, 28 Feb 2017 05:32:25 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 05:32:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 05:32:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
# Tue, 28 Feb 2017 15:24:06 GMT
ENV JAVA_VERSION=8u121
# Tue, 28 Feb 2017 15:24:07 GMT
ENV JAVA_DEBIAN_VERSION=8u121-b13-1~bpo8+1
# Tue, 28 Feb 2017 15:24:07 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20161107~bpo8+1
# Tue, 28 Feb 2017 15:25:10 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 28 Feb 2017 15:25:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 01 Mar 2017 16:05:32 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:05:32 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:05:35 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:05:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:05:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:05:36 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:05:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:05:38 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:05:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:05:39 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:06:21 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:06:22 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:06:23 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:693502eb7dfbc6b94964ae66ebc72d3e32facd981c72995b09794f1e87bac184`  
		Last Modified: Mon, 27 Feb 2017 20:40:26 GMT  
		Size: 51.4 MB (51363374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081cd4bfd5210ff69949cc356db9693d11d103cd2380117cff7d4be6966eafdf`  
		Last Modified: Mon, 27 Feb 2017 21:53:23 GMT  
		Size: 18.5 MB (18535995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d2dc01312f3714eed4630a1317629f9131f307b3fc6d83506444d3eeebc0e41`  
		Last Modified: Mon, 27 Feb 2017 21:54:18 GMT  
		Size: 42.5 MB (42501192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d685db7bb71147e30eb7d022fc5a50e8c65da95d0b6e67176b0c867659099d3b`  
		Last Modified: Tue, 28 Feb 2017 21:55:13 GMT  
		Size: 593.3 KB (593314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ab343af037602fff671566ab102be6c4c775f0d965f1fbf47b9bcd68c4aa95`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3c1db2c50a3f3f3f9acf4ed37ac235a1a13d575329055c34e201026d2d8729`  
		Last Modified: Tue, 28 Feb 2017 22:00:15 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcb396c94a88eb0ecedf360540dbf04d1067683283563b663498e796dd67c3f`  
		Last Modified: Tue, 28 Feb 2017 22:00:53 GMT  
		Size: 130.3 MB (130315538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b803c12278f8b72ab97a7de8bab9173b473868c2416b0767e7d73a83da526bd3`  
		Last Modified: Tue, 28 Feb 2017 22:00:17 GMT  
		Size: 289.0 KB (289019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d2daa91a9b3bed76521d50b766961b08c0dac93f5e53b360c9ba5d63b463e3`  
		Last Modified: Thu, 02 Mar 2017 05:59:35 GMT  
		Size: 8.6 MB (8598834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2132f734529911f858a7ec97e8a09906a7696e4e4d022b8adff78980d13eefa`  
		Last Modified: Thu, 02 Mar 2017 05:59:37 GMT  
		Size: 694.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cd3ee8859d26a1c999425fecb165f39284b7dbf71b9444d11a438e75894caf`  
		Last Modified: Thu, 02 Mar 2017 05:59:34 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88f036c08f1bc3c84721689789ce09d42a49a7ba2c800d27e2239f6c9c58d01`  
		Last Modified: Thu, 02 Mar 2017 06:01:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-alpine`

```console
$ docker pull maven@sha256:dc447647515448edacee1eb63255b5d2eb5e88b32b7b030b2227775c222f8a57
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fd12b09a58c4fbaf5e359e1952717bf74f47154a1c508779629c994d590f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-alpine`

```console
$ docker pull maven@sha256:dc447647515448edacee1eb63255b5d2eb5e88b32b7b030b2227775c222f8a57
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fd12b09a58c4fbaf5e359e1952717bf74f47154a1c508779629c994d590f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-alpine`

```console
$ docker pull maven@sha256:dc447647515448edacee1eb63255b5d2eb5e88b32b7b030b2227775c222f8a57
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fd12b09a58c4fbaf5e359e1952717bf74f47154a1c508779629c994d590f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-alpine`

```console
$ docker pull maven@sha256:dc447647515448edacee1eb63255b5d2eb5e88b32b7b030b2227775c222f8a57
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fd12b09a58c4fbaf5e359e1952717bf74f47154a1c508779629c994d590f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-alpine`

```console
$ docker pull maven@sha256:dc447647515448edacee1eb63255b5d2eb5e88b32b7b030b2227775c222f8a57
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fd12b09a58c4fbaf5e359e1952717bf74f47154a1c508779629c994d590f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-alpine`

```console
$ docker pull maven@sha256:dc447647515448edacee1eb63255b5d2eb5e88b32b7b030b2227775c222f8a57
```

-	Platforms:
	-	linux; amd64

### `maven:3-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fd12b09a58c4fbaf5e359e1952717bf74f47154a1c508779629c994d590f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:alpine`

```console
$ docker pull maven@sha256:dc447647515448edacee1eb63255b5d2eb5e88b32b7b030b2227775c222f8a57
```

-	Platforms:
	-	linux; amd64

### `maven:alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94fd12b09a58c4fbaf5e359e1952717bf74f47154a1c508779629c994d590f29`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-8-onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-8-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:3-onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:onbuild-alpine`

```console
$ docker pull maven@sha256:89c3fb7422ef14916be0f89ad92fadab31244aaf6a8c2207d4b8b6cfeadee719
```

-	Platforms:
	-	linux; amd64

### `maven:onbuild-alpine` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.0 MB (61966383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c170d5a46e10bdb7fbdf24e6be515897aee91f1b1614e6835e9fc39d0d6c85f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 03 Mar 2017 20:32:21 GMT
ADD file:3df55c321c1c8d73f22bc69240c0764290d6cb293da46ba8f94ed25473fb5853 in / 
# Fri, 03 Mar 2017 22:00:57 GMT
ENV LANG=C.UTF-8
# Fri, 03 Mar 2017 22:00:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 03 Mar 2017 22:01:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Mar 2017 22:01:21 GMT
ENV JAVA_VERSION=8u111
# Fri, 03 Mar 2017 22:01:22 GMT
ENV JAVA_ALPINE_VERSION=8.111.14-r0
# Fri, 03 Mar 2017 22:01:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Mar 2017 00:12:52 GMT
RUN apk add --no-cache curl tar bash
# Sat, 04 Mar 2017 00:12:52 GMT
ARG MAVEN_VERSION=3.3.9
# Sat, 04 Mar 2017 00:12:53 GMT
ARG USER_HOME_DIR=/root
# Sat, 04 Mar 2017 00:12:55 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Sat, 04 Mar 2017 00:12:55 GMT
ENV MAVEN_CONFIG=/root/.m2
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Sat, 04 Mar 2017 00:12:56 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Sat, 04 Mar 2017 00:12:56 GMT
VOLUME [/root/.m2]
# Sat, 04 Mar 2017 00:12:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Sat, 04 Mar 2017 00:12:57 GMT
CMD ["mvn"]
# Sat, 04 Mar 2017 00:13:08 GMT
RUN mkdir -p /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
WORKDIR /usr/src/app
# Sat, 04 Mar 2017 00:13:08 GMT
ONBUILD ADD . /usr/src/app
# Sat, 04 Mar 2017 00:13:09 GMT
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
	-	`sha256:5b58c996e33ea9b6701cb8935434be70cb9e5908d81a81f360b47e6f9394a1d7`  
		Last Modified: Sat, 04 Mar 2017 02:56:01 GMT  
		Size: 49.4 MB (49360641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53be528b2e5235956093de8c02e85f1307e77983745adf811cbab232d280c82d`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 1.7 MB (1692094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcae5eff86257570382680290e4e619201c6ee211068b4c860fc6e6e684ac8e`  
		Last Modified: Sat, 04 Mar 2017 07:17:08 GMT  
		Size: 8.6 MB (8598844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac2aa7b848469ee13f7acf81fdaf83c0b2c70223b4644937848b339fbd9d9e5`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 686.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5431ae5aee468e184a15eb4877209b6480153a811972186e8ff09b6d87d20c95`  
		Last Modified: Sat, 04 Mar 2017 07:17:06 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f534a0f3c702c64e1cd12c5365e639d12ce73dfb2e7b3b9418d2efefbb86d781`  
		Last Modified: Sat, 04 Mar 2017 07:19:16 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9`

```console
$ docker pull maven@sha256:94e35572d50c38f52c7daf4bd4496a479cf3175951a7cb5af88a386d3ced0028
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269046214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0295210d1921b9d13eb7504973043eb4a0889791246c22b9fc4db9ab454f79b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_VERSION=9~b158
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Tue, 28 Feb 2017 15:26:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:06:39 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:06:39 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:06:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:06:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:06:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:57 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:59 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:07:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24729d22759903a2b87105ec905a3b31064bef26300bb6688b698fd1073c135e`  
		Last Modified: Tue, 28 Feb 2017 22:11:03 GMT  
		Size: 154.3 MB (154348400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe4eb183228d88a1c8390ed1e6a8e43f717d9647b2c49102f673b49bdc7fa7`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d5c64aeacec23f1d751d257da0535202bf3737e2c37c6f499faadfd6aeae27`  
		Last Modified: Thu, 02 Mar 2017 06:04:04 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b32bc503462b6c1eb068dfdbc6a38de9de11471ce45cd711fbf176ebc4a6f`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9`

```console
$ docker pull maven@sha256:94e35572d50c38f52c7daf4bd4496a479cf3175951a7cb5af88a386d3ced0028
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269046214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0295210d1921b9d13eb7504973043eb4a0889791246c22b9fc4db9ab454f79b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_VERSION=9~b158
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Tue, 28 Feb 2017 15:26:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:06:39 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:06:39 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:06:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:06:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:06:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:57 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:59 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:07:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24729d22759903a2b87105ec905a3b31064bef26300bb6688b698fd1073c135e`  
		Last Modified: Tue, 28 Feb 2017 22:11:03 GMT  
		Size: 154.3 MB (154348400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe4eb183228d88a1c8390ed1e6a8e43f717d9647b2c49102f673b49bdc7fa7`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d5c64aeacec23f1d751d257da0535202bf3737e2c37c6f499faadfd6aeae27`  
		Last Modified: Thu, 02 Mar 2017 06:04:04 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b32bc503462b6c1eb068dfdbc6a38de9de11471ce45cd711fbf176ebc4a6f`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:94e35572d50c38f52c7daf4bd4496a479cf3175951a7cb5af88a386d3ced0028
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269046214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0295210d1921b9d13eb7504973043eb4a0889791246c22b9fc4db9ab454f79b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_VERSION=9~b158
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Tue, 28 Feb 2017 15:26:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:06:39 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:06:39 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:06:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:06:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:06:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:57 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:59 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:07:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24729d22759903a2b87105ec905a3b31064bef26300bb6688b698fd1073c135e`  
		Last Modified: Tue, 28 Feb 2017 22:11:03 GMT  
		Size: 154.3 MB (154348400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe4eb183228d88a1c8390ed1e6a8e43f717d9647b2c49102f673b49bdc7fa7`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d5c64aeacec23f1d751d257da0535202bf3737e2c37c6f499faadfd6aeae27`  
		Last Modified: Thu, 02 Mar 2017 06:04:04 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b32bc503462b6c1eb068dfdbc6a38de9de11471ce45cd711fbf176ebc4a6f`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3.9-jdk-9-onbuild`

```console
$ docker pull maven@sha256:42bf7e2d11b367f8c1a5e651bb6a1de3f0ce10bd6375954d6db9a8e77e109f11
```

-	Platforms:
	-	linux; amd64

### `maven:3.3.9-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269046375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3880a4786d36a89f3d5075dd6d49c181e665dbe9793949a87c5815837ea553fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_VERSION=9~b158
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Tue, 28 Feb 2017 15:26:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:06:39 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:06:39 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:06:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:06:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:06:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:57 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:59 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:07:00 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:07:01 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:07:02 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:07:02 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:07:03 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24729d22759903a2b87105ec905a3b31064bef26300bb6688b698fd1073c135e`  
		Last Modified: Tue, 28 Feb 2017 22:11:03 GMT  
		Size: 154.3 MB (154348400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe4eb183228d88a1c8390ed1e6a8e43f717d9647b2c49102f673b49bdc7fa7`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d5c64aeacec23f1d751d257da0535202bf3737e2c37c6f499faadfd6aeae27`  
		Last Modified: Thu, 02 Mar 2017 06:04:04 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b32bc503462b6c1eb068dfdbc6a38de9de11471ce45cd711fbf176ebc4a6f`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb97db37123289ad056fe41c52f7b3039bd705f9ac03650b94b84a8760f914c`  
		Last Modified: Thu, 02 Mar 2017 06:05:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3.3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:42bf7e2d11b367f8c1a5e651bb6a1de3f0ce10bd6375954d6db9a8e77e109f11
```

-	Platforms:
	-	linux; amd64

### `maven:3.3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269046375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3880a4786d36a89f3d5075dd6d49c181e665dbe9793949a87c5815837ea553fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_VERSION=9~b158
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Tue, 28 Feb 2017 15:26:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:06:39 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:06:39 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:06:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:06:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:06:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:57 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:59 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:07:00 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:07:01 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:07:02 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:07:02 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:07:03 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24729d22759903a2b87105ec905a3b31064bef26300bb6688b698fd1073c135e`  
		Last Modified: Tue, 28 Feb 2017 22:11:03 GMT  
		Size: 154.3 MB (154348400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe4eb183228d88a1c8390ed1e6a8e43f717d9647b2c49102f673b49bdc7fa7`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d5c64aeacec23f1d751d257da0535202bf3737e2c37c6f499faadfd6aeae27`  
		Last Modified: Thu, 02 Mar 2017 06:04:04 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b32bc503462b6c1eb068dfdbc6a38de9de11471ce45cd711fbf176ebc4a6f`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb97db37123289ad056fe41c52f7b3039bd705f9ac03650b94b84a8760f914c`  
		Last Modified: Thu, 02 Mar 2017 06:05:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `maven:3-jdk-9-onbuild`

```console
$ docker pull maven@sha256:42bf7e2d11b367f8c1a5e651bb6a1de3f0ce10bd6375954d6db9a8e77e109f11
```

-	Platforms:
	-	linux; amd64

### `maven:3-jdk-9-onbuild` - linux; amd64

-	Docker Version: 1.12.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269046375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3880a4786d36a89f3d5075dd6d49c181e665dbe9793949a87c5815837ea553fc`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 27 Feb 2017 20:36:00 GMT
ADD file:976136a811110184c7ff305b3354fc765d3d21ce0d7ce86eee8900a231e0e38a in / 
# Mon, 27 Feb 2017 20:36:01 GMT
CMD ["/bin/bash"]
# Mon, 27 Feb 2017 21:17:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Mon, 27 Feb 2017 21:18:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 28 Feb 2017 15:25:51 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Tue, 28 Feb 2017 15:25:51 GMT
ENV LANG=C.UTF-8
# Tue, 28 Feb 2017 15:25:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 28 Feb 2017 15:25:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-9-openjdk-amd64
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_VERSION=9~b158
# Tue, 28 Feb 2017 15:25:53 GMT
ENV JAVA_DEBIAN_VERSION=9~b158-1
# Tue, 28 Feb 2017 15:26:23 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y 		openjdk-9-jdk-headless="$JAVA_DEBIAN_VERSION" 	&& rm -rf /var/lib/apt/lists/* 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 01 Mar 2017 16:06:39 GMT
ARG MAVEN_VERSION=3.3.9
# Wed, 01 Mar 2017 16:06:39 GMT
ARG USER_HOME_DIR=/root
# Wed, 01 Mar 2017 16:06:43 GMT
# ARGS: MAVEN_VERSION=3.3.9 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 01 Mar 2017 16:06:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 01 Mar 2017 16:06:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 01 Mar 2017 16:06:57 GMT
COPY file:e3aa30a24fcf60a59710465ac66fc1d53c35590a74fcdd51e12a5cbce393904b in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 01 Mar 2017 16:06:58 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 01 Mar 2017 16:06:59 GMT
VOLUME [/root/.m2]
# Wed, 01 Mar 2017 16:06:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 01 Mar 2017 16:07:00 GMT
CMD ["mvn"]
# Wed, 01 Mar 2017 16:07:01 GMT
RUN mkdir -p /usr/src/app
# Wed, 01 Mar 2017 16:07:02 GMT
WORKDIR /usr/src/app
# Wed, 01 Mar 2017 16:07:02 GMT
ONBUILD ADD . /usr/src/app
# Wed, 01 Mar 2017 16:07:03 GMT
ONBUILD RUN mvn install
```

-	Layers:
	-	`sha256:a40c9d226366db9384aa684e3d34913cdacf75282bdc70dff4ff186e130ee2c3`  
		Last Modified: Mon, 27 Feb 2017 20:44:12 GMT  
		Size: 44.3 MB (44250775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370d333d5093cd32956cf56f9aae4f0b66699bcae00e5dabfd442881776f9ce9`  
		Last Modified: Mon, 27 Feb 2017 21:58:16 GMT  
		Size: 21.1 MB (21146887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05576433df0ed43f1d775c55f43190e4f804b1a2125f0653f3aca0da5dc1b9eb`  
		Last Modified: Mon, 27 Feb 2017 21:58:55 GMT  
		Size: 40.0 MB (40048126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1074fc6a6eb725a42e59a4a152dbcce3c92ddd5b441c6c8dcb891d7a8c3ca7f`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 651.7 KB (651691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a217b2041ecf93dcad732fcdf5e68fd6491537f89645a44c78738007039cbad`  
		Last Modified: Tue, 28 Feb 2017 22:10:27 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f50c71f32ae033ed06cc00bac252494e71cf49032d4bd8791c0ef172a93d2dd`  
		Last Modified: Tue, 28 Feb 2017 22:10:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24729d22759903a2b87105ec905a3b31064bef26300bb6688b698fd1073c135e`  
		Last Modified: Tue, 28 Feb 2017 22:11:03 GMT  
		Size: 154.3 MB (154348400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80fe4eb183228d88a1c8390ed1e6a8e43f717d9647b2c49102f673b49bdc7fa7`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 8.6 MB (8598841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d5c64aeacec23f1d751d257da0535202bf3737e2c37c6f499faadfd6aeae27`  
		Last Modified: Thu, 02 Mar 2017 06:04:04 GMT  
		Size: 693.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83b32bc503462b6c1eb068dfdbc6a38de9de11471ce45cd711fbf176ebc4a6f`  
		Last Modified: Thu, 02 Mar 2017 06:04:05 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb97db37123289ad056fe41c52f7b3039bd705f9ac03650b94b84a8760f914c`  
		Last Modified: Thu, 02 Mar 2017 06:05:05 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
